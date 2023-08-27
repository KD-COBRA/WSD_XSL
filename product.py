from lxml import etree

try:
    
    xml_tree = etree.parse("My_XML/product.xml")
    xsl_tree = etree.parse("My_XML/product.xsl")

    
    transform = etree.XSLT(xsl_tree)
    html_result = transform(xml_tree)

    
    with open("My_XML/output.html", "wb") as html_file:
        html_file.write(etree.tostring(html_result, pretty_print=True))

    print("HTML file 'output.html' generated successfully.")
except Exception as e:
    print(f"An error occurred: {e}")
