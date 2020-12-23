<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <xsl:apply-templates select="Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="position() = 1">
            <section class="block_about">
                <div class="container">
                    <div class="section-title">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </div>
                    <div class="row">
                        <xsl:apply-templates select="News" mode="AboutUs"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 2">
            <section class="block_about-2">
                <div class="container">
                    <div class="section-title">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </div>
                    <div class="section-content">
                        <xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
                    </div>
                    <div class="row">
                        <xsl:apply-templates select="News" mode="BigImg"></xsl:apply-templates>
                    </div>
                    <div class="swiper-about">
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="News" mode="SlideImg"></xsl:apply-templates>
                            </div>
                        </div>
                        <div class="button-arrow">
                            <div class="button-prev">
                                <span class="ri-arrow-left-s-line"></span>
                            </div>
                            <div class="button-next">
                                <span class="ri-arrow-right-s-line"></span>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 3">
            <section class="section-why">
                <div class="container">
                    <div class="section-title">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </div>
                    <div class="swiper-why">
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="News" mode="TaiSaoChon"></xsl:apply-templates>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 4">
            <section class="section-partner">
                <div class="container">
                    <div class="box-title">
                        <div class="section-title">
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </div>
                        <a href="#">
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:text disable-output-escaping="yes">Xem tất cả</xsl:text>
                        </a>
                    </div>
                    <div class="swiper-partner">
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="News" mode="DoiTac"></xsl:apply-templates>
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
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 5">
            <section class="section-assess">
                <div class="container">
                    <div class="section-title">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </div>
                    <div class="swiper-assess">
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="News" mode="DanhGia"></xsl:apply-templates>
                            </div>
                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                </div>
            </section>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="AboutUs">
        <xsl:if test="position() = 1">
            <div class="col-lg-6">
                <div class="content_about-us">
                    <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="item-img">
                    <a>
                        <xsl:attribute name="data-fancybox">
                            <xsl:text disable-output-escaping="yes">video</xsl:text>
                        </xsl:attribute>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <div class="img">
                            <img >
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </div>
                        <div class="play"></div>
                    </a>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="BigImg">
        <xsl:if test="position() &lt; 3">
            <div class="col-lg-6 col-md-6">
                <div class="item-img">
                    <a href="#">
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <div class="img">
                            <img >
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </div>
                        <div class="content">
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </div>
                    </a>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="SlideImg">
        <xsl:if test="position() &lt; 2">
            <div class="swiper-slide">
                <div class="item-img">
                    <a href="#">
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <div class="img">
                            <img >
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </div>
                        <div class="content">
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </div>
                    </a>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="TaiSaoChon">
        <div class="swiper-slide">
            <div class="why-item">
                <div class="why-img">
                    <img class="lazyload">
                        <xsl:attribute name="data-src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </div>
                <div class="why-content">
                    <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="DoiTac">
        <div class="swiper-slide">
            <a class="item" href="">
                <xsl:attribute name="href">
                    <xsl:text disable-output-escaping="yes">#</xsl:text>
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
    <xsl:template match="News" mode="DanhGia">
        <div class="swiper-slide">
            <div class="item">
                <div class="content">
                    <div class="name">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </div>
                    <div class="position">
                        <xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
                    </div>
                    <div class="text">
                        <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                    </div>
                </div>
                <div class="item-img">
                    <a>
                        <xsl:attribute name="data-fancybox">
                            <xsl:text disable-output-escaping="yes">video</xsl:text>
                        </xsl:attribute>
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
                        <div class="play"></div>
                    </a>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
