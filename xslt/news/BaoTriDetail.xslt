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
            <section class="section-maintenance-1">
                <div class="container">
                    <div class="section-title">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                    <div class="row">
                        <xsl:apply-templates select="News" mode="TrungTam"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 2">
            <section class="section-maintenance-2">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-10 mx-auto col-md-12">
                            <xsl:apply-templates select="News" mode="NoiDung"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 3">
            <section class="section-steps">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-10 col-md-12 mx-auto">
                            <div class="section-title">
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </div>
                        </div>
                        <div class="img">
                            <img class="lazyload">
                                <xsl:attribute name="data-src">
                                    <xsl:value-of select="News/ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 4">
            <section class="section-benefit">
                <div class="container">
                    <div class="section-title">
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </div>
                    <div class="row">
                        <xsl:apply-templates select="News" mode="LoiIch"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 5">
            <section class="section-maintenance-3 section-repair">
                <div class="container">
                    <div class="on-row">
                        <xsl:apply-templates select="News" mode="DamBao"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position() = 6">
            <section class="section-maintenance-4 section-timerepair">
                <div class="container">
                    <div class="row">
                        <xsl:apply-templates select="News" mode="ThoiGian"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="TrungTam">
        <xsl:if test="position() = 1">
            <div class="col-lg-6 col-md-12">
                <div class="img">
                    <a class="zoom-in">
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
            </div>
            <div class="col-lg-6 col-md-12">
                <div class="wrap-content">
                    <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position() = 2">
            <div class="col-lg-6 col-md-12">
                <div class="image-gray">
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
            <div class="col-lg-6 col-md-12">
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
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="NoiDung">
        <div class="section-title">
            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
        </div>
        <div class="wrap-table">
            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
        </div>
        <div class="wrap-include">
            <div class="title">Bao gồm</div>
            <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="LoiIch">
        <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
    </xsl:template>
    <xsl:template match="News" mode="DamBao">
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
            </div>
            <div class="content">
                <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="ThoiGian">
        <div class="col-lg-3 col-md-6 col-sm-12">
            <a class="timeto">
                <xsl:attribute name="href">
                    <xsl:text disable-output-escaping="yes">#</xsl:text>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <div class="time">
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </div>
                <div class="desc">
                    <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                </div>
            </a>
        </div>
    </xsl:template>
</xsl:stylesheet>
