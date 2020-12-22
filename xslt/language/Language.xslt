<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/LanguageList">
        <div class="language">
            <xsl:apply-templates select="Language[IsActive='true']" mode="Active"></xsl:apply-templates>
            <div class="dropdown">
                <xsl:apply-templates select="Language[IsActive='false']" mode="Dropdown"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Language" mode="Active">
        <div class="item">
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <span>
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </span>
            </a>
            <em class="ri-arrow-down-s-line"></em>
        </div>
    </xsl:template>
    <xsl:template match="Language" mode="Dropdown">
        <a>
            <xsl:attribute name="href">
                <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
                <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
        </a>
    </xsl:template>
</xsl:stylesheet>
