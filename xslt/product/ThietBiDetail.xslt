<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ProductDetail">
        <section class="block_cosmetic-detail-3">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <div class="cosmetic-swiper-2">
                            <div class="swiper-container gallery-thumbs-3">
                                <div class="swiper-wrapper">
                                    <xsl:apply-templates select="ProductImages" mode="Thumbnail"></xsl:apply-templates>
                                </div>
                            </div>
                            <div class="swiper-container gallery-top">
                                <div class="swiper-wrapper">
                                    <xsl:apply-templates select="ProductImages" mode="Top"></xsl:apply-templates>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="wraper-cosmetic">
                            <div class="name-cosmetic">
                                <h1>
                                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                                </h1>
                                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                            </div>
                        </div>
                        <div class="wraper-cosmetic">
                            <div class="price-box">
                                <div class="price">
                                    <xsl:value-of disable-output-escaping="yes" select="Price"></xsl:value-of>
                                </div>
                                <div class="cost">
                                    <xsl:value-of disable-output-escaping="yes" select="OldPrice"></xsl:value-of>
                                </div>
                            </div>
                        </div>
                        <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                        <div class="button-box">
                            <a class="hotline" href="#">Hotline</a>
                            <a class="contact" href="#">Liên hệ</a>
                        </div>
                        <div class="icon-box">
                            <a class="ri-facebook-box-fill">
                                <xsl:attribute name="href">
                                    <xsl:text>https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
                                    <xsl:value-of select="FullUrl"/>
                                </xsl:attribute>
                            </a>
                            <a class="ri-twitter-fill">
                                <xsl:attribute name="href">
                                    <xsl:text>https://twitter.com/home?status=</xsl:text>
                                    <xsl:value-of select="FullUrl"/>
                                </xsl:attribute>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="tab-description">
                            <ul class="tab-navigation">
                                <xsl:apply-templates select="ProductAttributes" mode="Title"></xsl:apply-templates>
                            </ul>
                        </div>
                        <div class="content-description">
                            <div class="tab-wrapper">
                                <xsl:apply-templates select="ProductAttributes" mode="Content"></xsl:apply-templates>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="block-2_cosmetic-detail">
            <div class="container">
                <div class="section-title">Thiết bị thẩm Mỹ khác</div>
                <div class="swiper-devices">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="ProductOther"></xsl:apply-templates>
                        </div>
                    </div>
                    <div class="main-button">
                        <div class="button-prev">
                            <em class="mdi mdi-chevron-left"></em>
                        </div>
                        <div class="button-next">
                            <em class="mdi mdi-chevron-right"></em>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="ProductImages" mode="Thumbnail">
        <div class="swiper-slide">
            <div class="img">
                <img class="lazyload">
                    <xsl:attribute name="data-src">
                        <xsl:value-of select="ThumbnailUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="ProductImages" mode="Top">
        <div class="swiper-slide">
            <img class="lazyload">
                <xsl:attribute name="data-src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
            </img>
        </div>
    </xsl:template>
    <xsl:template match="ProductAttributes" mode="Title">
        <li>
            <xsl:if test="position() = 1">
                <xsl:attribute name="class">
                    <xsl:text>active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <a data-type="fruit-detail-tab-1">
                <xsl:attribute name="data-type">
                    <xsl:text disable-output-escaping="yes">fruit-detail-tab-</xsl:text>
                    <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
    <xsl:template match="ProductAttributes" mode="Content">
        <div class="tab-item" id="fruit-detail-tab-1">
            <xsl:if test="position() = 1">
                <xsl:attribute name="class">
                    <xsl:text>tab-item active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>tab-item active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="id">
                <xsl:text disable-output-escaping="yes">fruit-detail-tab-</xsl:text>
                <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
            </xsl:attribute>
            <div class="fullcontent">
                <xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
            </div>
            <div class="readmore">
                <a href="#">Xem thêm</a>
                <em class="ri-arrow-drop-down-line"></em>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="ProductOther">
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
                <div class="title">
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </div>
            </a>
        </div>
    </xsl:template>
</xsl:stylesheet>
