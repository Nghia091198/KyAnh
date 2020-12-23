<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsList">
        <div class="section-title">
            <xsl:value-of disable-output-escaping="yes" select="ZoneTitle"></xsl:value-of>
        </div>
        <div class="row">
            <xsl:apply-templates select="News"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <xsl:if test="position() = 1">
            <div class="col-lg-8 col-md-12">
                <div class="item lg-item">
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
                    <div class="wrap-content">
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
                        <div class="content">
                            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                        </div>
                        <div class="seemore">
                            <span>Xem thêm</span>
                            <img class="black" src="/Data/Sites/1/skins/default/img/rightblack.png" />
                            <img class="linear" src="/Data/Sites/1/skins/default/img/rightlinear.png" />
                        </div>
                    </div>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position() != 1">
            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="item">
                    <a>
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
                    <div class="wrap-content">
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
                        <div class="seemore">
                            <span>Xem thêm</span>
                            <img class="black" src="/Data/Sites/1/skins/default/img/rightblack.png" />
                            <img class="linear" src="/Data/Sites/1/skins/default/img/rightlinear.png" />
                        </div>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
