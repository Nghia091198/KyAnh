<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ProductList">
        <div class="section-title">
            <xsl:value-of disable-output-escaping="yes" select="ModuleTitle"></xsl:value-of>
        </div>
        <div class="swiper-cosmetic">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <xsl:apply-templates select="Product"></xsl:apply-templates>
                </div>
            </div>
            <div class="main-button">
                <div class="button-prev">
                    <em class="ri-arrow-left-s-line"></em>
                </div>
                <div class="button-next">
                    <em class="ri-arrow-right-s-line"></em>
                </div>
            </div>
        </div>
        <a class="btn gradient-border">
            <xsl:attribute name="href">
                <xsl:text disable-output-escaping="yes">/my-pham</xsl:text>
            </xsl:attribute>
            <xsl:attribute name="title">
                <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            <xsl:text disable-output-escaping="yes">XEM tất cả</xsl:text>
            <em class="ri-add-line"></em>
        </a>
    </xsl:template>
    <xsl:template match="Product">
        <div class="swiper-slide">
            <div class="item">
                <div class="img">
                    <a>
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
                    </a>
                </div>
                <div class="title">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </a>
                    <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
