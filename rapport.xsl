<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <head></head>
            <body>
                <h1>Rapports</h1>
                <table border="1" bgcolor="green">
                    <tr>
                        <th>Num</th>
                        <th>Date</th>
                        <th>expediteur</th>
                        <th>Destinataire</th>
                        <th>Montant</th>
                        <th>Etat</th>
                    </tr>
                    <xsl:for-each select="rapport/mandat">
                        <tr>
                            <td>
                                <xsl:for-each select="@num"></xsl:for-each>
                            </td>
                            <td>
                                <xsl:for-each select="@date"></xsl:for-each>
                            </td>
                            
                            <td>
                                <ul>
                                    <li>
                                        <xsl:for-each select="expediteur/@cin"></xsl:for-each>
                                    </li>
                                    <li>
                                        <xsl:for-each select="expediteur/@nom"></xsl:for-each> <xsl:for-each select="expediteur/@prenom"></xsl:for-each>
                                     </li>
                                </ul>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>