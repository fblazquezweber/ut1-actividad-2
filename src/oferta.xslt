<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8"/>

  <xsl:template match="/">
    <html><body>
      <h1>Informe</h1>

      <table border="1" cellpadding="6">
        <tr><th>Código</th><th>Módulo</th><th>Horas</th></tr>

        <xsl:for-each select="oferta/modulo">
          <tr>
            <td><xsl:value-of select="codigo"/></td>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="horas"/></td>
          </tr>
        </xsl:for-each>

      </table>

      <p><strong>Total horas:</strong>
        <xsl:value-of select="sum(oferta/modulo/horas)"/>
      </p>
    </body></html>
  </xsl:template>

</xsl:stylesheet>