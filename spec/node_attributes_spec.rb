describe W3C::DOM::Node do
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
end
