require File.dirname(__FILE__) + '/spec_helper'

describe W3C::DOM do
  it "has a Node type" do
    lambda { W3C::DOM::Node }.must_not raise_error
  end
  
  it "can have a Document Node" do
    W3C::DOM::Document.ancestors.must include(W3C::DOM::Node)
  end

  it "can have a ProcessingInstruction Node" do
    W3C::DOM::ProcessingInstruction.ancestors.must include(W3C::DOM::Node)
  end
  
  it "can have a Comment Node" do
    W3C::DOM::Comment.ancestors.must include(W3C::DOM::Node)
  end
  
  it "can have a DocumentType Node" do
    W3C::DOM::DocumentType.ancestors.must include(W3C::DOM::Node)
  end
  
end