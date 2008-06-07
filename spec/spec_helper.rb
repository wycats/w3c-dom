$TESTING=true
$:.push File.join(File.dirname(__FILE__), '..', 'lib')
require 'w3c-dom'

require 'stringio'

module Spec::Expectations::ObjectExpectations
  alias_method :must, :should
  alias_method :must_not, :should_not
  undef_method :should
  undef_method :should_not
end

module W3CMatchers
  class ReadOnlyAttr
    def initialize(expected)
      @expected = expected
    end
    
    def matches?(target)
      @errors = {}
      
      # for 1.9 compat
      unless target.instance_methods.include?(@expected) || target.instance_methods.include?(@expected.to_s)
        @errors.merge!(:reader => @expected)
      end
      
      if target.instance_methods.include?(:"#{@expected}=") || 
        target.instance_methods.include?("#{@expected}=")
          @errors.merge!(:writer => @expected)
      end
      
      @errors.empty?
    end
    
    def failure_message
      ret = ""
      ret << "Expected #{@errors[:reader]} to have attr_reader :#{@expected}" if @errors[:reader]
      ret << "Expected #{@errors[:writer]} not to have attr_writer :#{@expected}" if @errors[:writer]
    end
  end

  def have_read_only_attr(attr)
    ReadOnlyAttr.new(attr)
  end
  
end

Spec::Runner.configure do |config|
  def capture(stream)
    begin
      stream = stream.to_s
      eval "$#{stream} = StringIO.new"
      yield
      result = eval("$#{stream}").string
    ensure 
      eval("$#{stream} = #{stream.upcase}")
    end

    result
  end
  
  alias silence capture
  
  config.include W3CMatchers
end
