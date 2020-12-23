<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsList">
        <div class="box-title">
            <div class="section-title">
                <xsl:value-of disable-output-escaping="yes" select="ModuleTitle"></xsl:value-of>
            </div>
            <a class="seemore">
                <xsl:attribute name="href">
                    <xsl:text disable-output-escaping="yes">/gioi-thieu</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:text disable-output-escaping="yes">Xem tất cả</xsl:text>
            </a>
        </div>
        <div class="swiper-partner">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <xsl:apply-templates select="News"></xsl:apply-templates>
                </div>
            </div>
            <div class="main-button">
                <div class="button-prev">
                    <img src="/Data/Sites/1/skins/default/img/left.png" alt=""/>
                </div>
                <div class="button-next">
                    <img src="/Data/Sites/1/skins/default/img/right.png" alt=""/>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <div class="swiper-slide">
            <a class="item">
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
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
            </a>
        </div>
    </xsl:template>
</xsl:stylesheet>
