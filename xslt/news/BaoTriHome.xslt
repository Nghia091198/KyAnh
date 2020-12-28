<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsList">
        <div class="on-row">
            <xsl:apply-templates select="News"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <div class="img">
            <a class="fancy">
                <xsl:attribute name="data-fancybox">
                    <xsl:text disable-output-escaping="yes">Video</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <img class="lazyload">
                    <xsl:attribute name="data-src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
                <div class="play"></div>
            </a>
        </div>
        <div class="repair-content">
            <div class="title-sub">
                <xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
            </div>
            <div class="title">
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
            </div>
            <div class="content">
                <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
