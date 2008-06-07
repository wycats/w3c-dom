describe W3C::DOM::Node do
  context "#insertBefore" do
    it "has a method for inserting a child" do
      lambda { W3C::DOM::Node.instance_method(:insertBefore) }.must_not raise_error
    end
    
    it "has arity of 2" do
      W3C::DOM::Node.instance_method(:insertBefore).arity.must == 2
    end
  end
  
  context "#replaceChild" do
    it "has a method for replacing a child" do
      lambda { W3C::DOM::Node.instance_method(:replaceChild) }.must_not raise_error
    end
    
    it "has arity of 2" do
      W3C::DOM::Node.instance_method(:replaceChild).arity.must == 2
    end      
  end
  
  context "#removeChild" do
    it "has a method for remove a child" do
      lambda { W3C::DOM::Node.instance_method(:removeChild) }.must_not raise_error
    end
    
    it "has arity of 1" do
      W3C::DOM::Node.instance_method(:removeChild).arity.must == 1
    end
  end

  context "#appendChild" do
    it "has a method for appending a child" do
      lambda { W3C::DOM::Node.instance_method(:appendChild) }.must_not raise_error
    end
    
    it "has arity of 1" do
      W3C::DOM::Node.instance_method(:appendChild).arity.must == 1
    end
  end
  
  context "#hasChildNodes" do
    it "has a method for checking whether any child nodes exist" do
      lambda { W3C::DOM::Node.instance_method(:hasChildNodes) }.must_not raise_error
    end
    
    it "has arity of 1" do
      W3C::DOM::Node.instance_method(:hasChildNodes).arity.must == 0
    end
  end

  context "#cloneNode" do
    it "has a method for cloning a node" do
      lambda { W3C::DOM::Node.instance_method(:cloneNode) }.must_not raise_error
    end
    
    it "has arity of 1" do
      W3C::DOM::Node.instance_method(:cloneNode).arity.must == 1
    end
  end
  
  context "#normalize" do
    it "has a method for normalizing a node" do
      lambda { W3C::DOM::Node.instance_method(:normalize) }.must_not raise_error
    end
    
    it "has arity of 1" do
      W3C::DOM::Node.instance_method(:normalize).arity.must == 0
    end
  end

  context "#isSupported" do
    it "has a method for checking whether features are supported" do
      lambda { W3C::DOM::Node.instance_method(:isSupported) }.must_not raise_error
    end
    
    it "has arity of 1" do
      W3C::DOM::Node.instance_method(:isSupported).arity.must == 2
    end
  end
  
  context "#hasAttributes" do
    it "has a method for checking whether any attributes exist" do
      lambda { W3C::DOM::Node.instance_method(:hasAttributes) }.must_not raise_error
    end
    
    it "has arity of 1" do
      W3C::DOM::Node.instance_method(:hasAttributes).arity.must == 0
    end
  end
end