<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Edited by XMLSpy® -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tt="http://www.baidu.com" >

<xsl:template match="/">
  <html>
      <head>
          <link rel="stylesheet" href="css/bootstrap.min.css" />
      </head>
  <body>
  <h2>My CD Collection</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Title</th>
        <th>Artist</th>
      </tr>
      <xsl:for-each select="tt:catalog/tt:cd">
      <tr>
        <td><xsl:value-of select="tt:title"/></td>
        <td><xsl:value-of select="tt:artist"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>