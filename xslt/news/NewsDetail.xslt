<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsDetail">
        <section class="section-page-newsdetail">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 mx-auto">
                        <div class="wrap-header">
                            <div class="section-title">
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                            </div>
                            <div class="wrap-bottom">
                                <time>
                                    <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
                                </time>
                                <div class="wrap-social">
                                    <a>
                                        <xsl:attribute name="href">
                                            <xsl:text>https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
                                            <xsl:value-of select="FullUrl"/>
                                        </xsl:attribute>
                                        <em class="facebook"></em>
                                    </a>
                                    <a>
                                        <xsl:attribute name="href">
                                            <xsl:text>https://twitter.com/home?status=</xsl:text>
                                            <xsl:value-of select="FullUrl"/>
                                        </xsl:attribute>
                                        <em class="twitter"></em>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="wrap-content">
                            <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="section-newsrelated section-news">
            <div class="container">
                <div class="section-title">Tin liên quan</div>
                <div class="swiper-newsrelated">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="NewsOther"></xsl:apply-templates>
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
            </div>
        </section>
    </xsl:template>
    <xsl:template match="NewsOther">
        <div class="swiper-slide">
            <a class="item" href="">
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
                <div class="wrap-content">
                    <div class="title">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </div>
                    <div class="seemore">
                        <span>Xem thêm</span>
                        <img class="black" src="/Data/Sites/1/skins/default/img/rightblack.png" alt=""/>
                        <img class="linear" src="/Data/Sites/1/skins/default/img/rightlinear.png" alt=""/>
                    </div>
                </div>
            </a>
        </div>
    </xsl:template>
</xsl:stylesheet>
