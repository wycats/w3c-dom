require File.dirname(__FILE__) + '/spec_helper'

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
end