<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  
  <xsl:template match="/products">
    <html>
      
      <body>
        <table border="1" >
          <tr>
            <th>id</th>
            <th>name</th>
            <th>price</th>
            <th>description</th>
          </tr>
          
          <xsl:apply-templates select="product" />
        </table>
      </body>
    </html>
  </xsl:template>

  
  <xsl:template match="product">
    <tr>
      <td><xsl:value-of select="id" /></td>
      <td><xsl:value-of select="name" /></td>
      <td><xsl:value-of select="price" /></td>
      <td><xsl:value-of select="description" /></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
