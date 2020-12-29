<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsList">
        <div class="row">
            <xsl:apply-templates select="News" mode="Big"></xsl:apply-templates>
            <div class="col-lg-4 col-sm-8">
                <div class="row">
                    <xsl:apply-templates select="News[position() &gt;1 and position() &lt;4]" mode="Big1"></xsl:apply-templates>
                </div>
            </div>
            <xsl:apply-templates select="News[position() &gt;3]" mode="Small"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Big">
        <xsl:if test="position() = 1">
            <div class="col-lg-8 col-sm-4">
                <div class="item-img big">
                    <a>
                        <xsl:attribute name="data-fancybox">
                            <xsl:text disable-output-escaping="yes">Images</xsl:text>
                        </xsl:attribute>
                        <xsl:attribute name="href">
                            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <div class="img">
                            <img class="lazyload">
                                <xsl:attribute name="data-src">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </div>
                        <div class="play"></div>
                        <div class="content">
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </div>
                    </a>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Big1">
        <div class="col-lg-12 col-sm-6">
            <div class="item-img">
                <a>
                    <xsl:attribute name="data-fancybox">
                        <xsl:text disable-output-escaping="yes">Images</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="href">
                        <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <div class="img">
                        <img class="lazyload">
                            <xsl:attribute name="data-src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                    <div class="play"></div>
                    <div class="content">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </div>
                </a>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Small">
        <div class="col-lg-4 col-sm-4">
            <div class="item-img">
                <a>
                    <xsl:attribute name="data-fancybox">
                        <xsl:text disable-output-escaping="yes">Images</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="href">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <div class="img">
                        <img class="lazyload">
                            <xsl:attribute name="data-src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                    <div class="play"></div>
                    <div class="content">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </div>
                </a>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
