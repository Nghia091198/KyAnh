<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <ul>
            <xsl:apply-templates select="Zone" mode="LV1"></xsl:apply-templates>
        </ul>
    </xsl:template>
    <xsl:template match="Zone" mode="LV1">
        <xsl:if test="position() != 1">
            <li class="nav-item">
                <xsl:if test="IsActive='true'">
                    <xsl:attribute name="class">
                        <xsl:text>nav-item active</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <xsl:if test="ZoneId = 85">
                    <xsl:attribute name="class">
                        <xsl:text disable-output-escaping="yes">nav-item dropdown</xsl:text>
                    </xsl:attribute>
                    <xsl:if test="IsActive='true'">
                        <xsl:attribute name="class">
                            <xsl:text>nav-item active dropdown</xsl:text>
                        </xsl:attribute>
                    </xsl:if>
                </xsl:if>
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
                </div>
                <xsl:if test="count(Zone)>0">
                    <xsl:choose>
                        <xsl:when test="ZoneId=85">
                            <ul class="sub-menu">
                                <xsl:apply-templates select="Zone" mode="LV2"></xsl:apply-templates>
                            </ul>
                        </xsl:when>
                    </xsl:choose>
                </xsl:if>
            </li>
        </xsl:if>
    </xsl:template>
    <xsl:template match="Zone" mode="LV2">
        <li>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>
