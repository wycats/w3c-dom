module W3C
  module Exceptions
    class DOMException < StandardError
    end
  end
  
  module DOM
    
    module Node
      ELEMENT_NODE                   = 1
      ATTRIBUTE_NODE                 = 2
      TEXT_NODE                      = 3
      CDATA_SECTION_NODE             = 4
      ENTITY_REFERENCE_NODE          = 5
      ENTITY_NODE                    = 6
      PROCESSING_INSTRUCTION_NODE    = 7
      COMMENT_NODE                   = 8
      DOCUMENT_NODE                  = 9
      DOCUMENT_TYPE_NODE             = 10
      DOCUMENT_FRAGMENT_NODE         = 11
      NOTATION_NODE                  = 12
      
      attr_reader :nodeName, :nodeValue, :nodeType, :parentNode, :childNodes,
                  :firstChild, :lastChild, :previousSibling, :nextSibling,
                  :attributes, :ownerDocument, :namespaceURI, :prefix,
                  :localName
      
      # @param newChild<W3C::DOM::Node>
      # @param refChild<W3C::DOM::Node>
      # @return <W3C::DOM::Node> The current node
      # @raise <W3C::DOMException>
      def insertBefore(newChild, refChild)
      end

      # @param newChild<W3C::DOM::Node>
      # @param oldChild<W3C::DOM::Node>
      # @return <W3C::DOM::Node> The current node
      # @raise <W3C::Exceptions::DOMException>
      def replaceChild(newChild, oldChild)
      end

      # @param oldChild<W3C::DOM::Node>
      # @return <W3C::DOM::Node> The current node
      # @raise <W3C::DOMException>
      def removeChild(oldChild)
      end
      
      # @param newChild<W3C::DOM::Node>
      # @return <W3C::DOM::Node> The current node
      # @raise <W3C::DOMException>
      def appendChild(newChild)
      end
      
      # @return <Boolean>
      def hasChildNodes
      end
      
      # @param deep<Boolean>
      # @return <W3C::DOM::Node>
      def cloneNode(deep)
      end
      
      # @return <NilClass> void in the IDL
      def normalize
        nil
      end
      
      # @param feature<W3C::DOM::String>
      # @param version<W3C::DOM::String>
      # @return <Boolean>
      def isSupported(feature, version)
      end
      
      # @return <Boolean>
      def hasAttributes
      end
    end
    
    module Element
      include Node
    end
    
    class Document
      include Element
    end
    
    class ProcessingInstruction
      include Node
    end
    
    class Comment
      include Node
    end
    
    class DocumentType
      include Node
    end
    
  end
end