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
  
  describe W3C::DOM::Node do
    it "has a list of constants for node types" do
      W3C::DOM::Node::ELEMENT_NODE                  .must == 1
      W3C::DOM::Node::ATTRIBUTE_NODE                .must == 2
      W3C::DOM::Node::TEXT_NODE                     .must == 3
      W3C::DOM::Node::CDATA_SECTION_NODE            .must == 4
      W3C::DOM::Node::ENTITY_REFERENCE_NODE         .must == 5
      W3C::DOM::Node::ENTITY_NODE                   .must == 6
      W3C::DOM::Node::PROCESSING_INSTRUCTION_NODE   .must == 7
      W3C::DOM::Node::COMMENT_NODE                  .must == 8
      W3C::DOM::Node::DOCUMENT_NODE                 .must == 9
      W3C::DOM::Node::DOCUMENT_TYPE_NODE            .must == 10
      W3C::DOM::Node::DOCUMENT_FRAGMENT_NODE        .must == 11
      W3C::DOM::Node::NOTATION_NODE                 .must == 12
    end
    
    it "has a read-only nodeName attribute" do
      W3C::DOM::Node.must have_read_only_attr(:nodeName)
    end

    it "has a read-only nodeValue attribute" do
      W3C::DOM::Node.must have_read_only_attr(:nodeValue)
    end
    
    it "has a read-only nodeType attribute" do
      W3C::DOM::Node.must have_read_only_attr(:nodeType)
    end
    
    it "has a read-only parentNode attribute" do
      W3C::DOM::Node.must have_read_only_attr(:parentNode)
    end
    
    it "has a read-only childNodes attribute" do
      W3C::DOM::Node.must have_read_only_attr(:childNodes)
    end
    
    it "has a read-only firstChild attribute" do
      W3C::DOM::Node.must have_read_only_attr(:firstChild)
    end
    
    it "has a read-only lastChild attribute" do
      W3C::DOM::Node.must have_read_only_attr(:lastChild)
    end
    
    it "has a read-only previousSibling attribute" do
      W3C::DOM::Node.must have_read_only_attr(:previousSibling)
    end

    it "has a read-only nodeType attribute" do
      W3C::DOM::Node.must have_read_only_attr(:nextSibling)
    end
    
    it "has a read-only attributes attribute" do
      W3C::DOM::Node.must have_read_only_attr(:attributes)
    end
    
    it "has a read-only ownerDocument attribute" do
      W3C::DOM::Node.must have_read_only_attr(:ownerDocument)
    end
    
    it "has a read-only namespaceURI attribute" do
      W3C::DOM::Node.must have_read_only_attr(:namespaceURI)
    end

    it "has a read-only prefix attribute" do
      W3C::DOM::Node.must have_read_only_attr(:prefix)
    end
    
    it "has a read-only localName attribute" do
      W3C::DOM::Node.must have_read_only_attr(:localName)
    end
        
    
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
  
  describe W3C::DOM::Document do
    it "inherits from DOM::Element" do
      W3C::DOM::Document.ancestors.must include(W3C::DOM::Element)
    end
  end
  
end