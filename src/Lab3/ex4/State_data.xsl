<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/states">
        <HTML>
            <HEAD>
                <TITLE>
                    State Data
                </TITLE>
            </HEAD>
            <BODY>
                <H1>
                    State Data
                </H1>
                <TABLE BORDER="1">
                    <TR BGCOLOR="CYAN">
                        <TH>Name</TH>
                        <TH>Population</TH>
                        <TH>Capital</TH>
                        <TH>Bird</TH>
                        <TH>Flower</TH>
                        <TH>Area</TH>
                    </TR>
                    <xsl:apply-templates/>
                </TABLE>
            </BODY>
        </HTML>
    </xsl:template>
    <xsl:template match="state">
        <TR>
            <TD>
                <xsl:value-of select="name"/>
            </TD>
            <TD>
                <xsl:apply-templates select="population"/>
            </TD>
            <TD>
                <xsl:apply-templates select="captital"/>
            </TD>
            <TD>
                <xsl:apply-templates select="bird"/>
            </TD>
            <TD>
                <xsl:apply-templates select="flower"/>
            </TD>
            <TD>
                <xsl:apply-templates select="area"/>
            </TD>
        </TR>
    </xsl:template>
    <xsl:template match="population">
        <xsl:value-of select="."/>
        <xsl:text> </xsl:text>
        <xsl:value-of select="@units"/>
    </xsl:template>

    <xsl:template match="capital">
        <xsl:value-of select="."/>
    </xsl:template>

    <xsl:template match="bird">
        <xsl:value-of select="."/>
    </xsl:template>

    <xsl:template match="flower">
        <xsl:value-of select="."/>
    </xsl:template>

    <xsl:template match="area">
        <xsl:value-of select="."/>
        <xsl:text> </xsl:text>
        <xsl:value-of select="@units"/>
    </xsl:template>
</xsl:stylesheet>