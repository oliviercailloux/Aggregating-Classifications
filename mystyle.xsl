<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:d="http://docbook.org/ns/docbook" version="1.0">
	<xsl:import href="/usr/share/xml/docbook/stylesheet/docbook-xsl-ns/fo/docbook.xsl"/>
	<xsl:param name="paper.type" select="'A4'"/>
	<xsl:param name="fop1.extensions" select="1"/>
	<xsl:param name="ulink.footnotes" select="1"/>
	<xsl:param name="generate.toc" select="'article nop'"/>
	<xsl:template name="article.titlepage.before.recto">
		<fo:block text-align-last="end">
			<fo:external-graphic src="https://github.com/Dauphine-MIDO/M1-alternance/raw/master/DauphineBleu.png" height="8mm" content-width="scale-to-fit"/>
		</fo:block>
	</xsl:template>
	<xsl:template name="article.titlepage.recto">
		<fo:block text-align="center" font-size="24.8832pt" font-weight="bold">
		      <xsl:apply-templates mode="article.titlepage.mode" select="d:info/d:title"/>
		</fo:block>
		<fo:block text-align="center" font-weight="bold">
		      <xsl:apply-templates mode="article.titlepage.mode" select="d:info/d:subtitle"/>
		</fo:block>
	</xsl:template>
</xsl:stylesheet>

