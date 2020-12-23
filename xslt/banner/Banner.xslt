<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/BannerList">
        <section class="banner-home" id="banner-home">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <xsl:apply-templates select="Banner"></xsl:apply-templates>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="Banner">
        <div class="swiper-slide">
            <div class="banner">
                <div id="overplay"></div>
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
                <xsl:if test="Description != ''">
                    <div class="container">
                        <div class="banner-content">
                            <span>
                                <xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
                            </span>
                            <a class="btn btn-primary">
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:text disable-output-escaping="yes">Tìm hiểu thêm</xsl:text>
                            </a>
                        </div>
                    </div>
                </xsl:if>
                <div class="wrap-down">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>