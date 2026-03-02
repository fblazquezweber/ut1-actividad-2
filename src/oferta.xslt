<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8"/>

  <xsl:template match="/">
    <html><body>
      <h1>Informe</h1>

      <table border="1" cellpadding="6">
        <tr><th>Código</th><th>Módulo</th><th>Horas</th></tr>
        <tr>
          <td><xsl:value-of select="oferta/modulo/codigo"/></td>
          <td><xsl:value-of select="oferta/modulo/nombre"/></td>
          <td><xsl:value-of select="oferta/modulo/horas"/></td>
        </tr>
      </table>

      <p><strong>Total horas:</strong>
        <xsl:value-of select="sum(oferta/modulo/horas)"/>
      </p>
    </body></html>
  </xsl:template>

</xsl:stylesheet>