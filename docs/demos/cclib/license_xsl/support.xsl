<?xml version="1.0" encoding="utf8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template name="version">
    <xsl:param name="specified_version" />
    <xsl:param name="jurisdiction" />

    <xsl:choose>
	<xsl:when test="$specified_version != ''">
	   <xsl:value-of select="$specified_version"/>
	</xsl:when>
	<xsl:otherwise>
	   <xsl:choose>
  		<xsl:when test="$jurisdiction='fi'">1.0</xsl:when>

  		<xsl:when test="$jurisdiction='jp'">2.1</xsl:when>

  		<xsl:when test="$jurisdiction='dk' or 
				$jurisdiction='es' or 
				$jurisdiction='ar' or 
				$jurisdiction='au' or 
				$jurisdiction='hu' or 
				$jurisdiction='si' or 
				$jurisdiction='se' or 
				$jurisdiction='scotland' or 
				$jurisdiction='ca' or 
				$jurisdiction='my' or 
				$jurisdiction='br' or 
				$jurisdiction='bg' or 
				$jurisdiction='mx' or 
				$jurisdiction='pl' or 
				$jurisdiction='cn' or 
				$jurisdiction='it' or 
				$jurisdiction='pe' or 
				$jurisdiction='mt' or 
				$jurisdiction='co' or 
				$jurisdiction='za' or 
				$jurisdiction='pt' or 
				$jurisdiction='in' or 
				$jurisdiction='ch' or 
				$jurisdiction='il' or 
				$jurisdiction='mk' or 
				$jurisdiction='tw'">2.5</xsl:when>

  		<xsl:when test="$jurisdiction='' or 
                $jurisdiction='generic' or 
				$jurisdiction='-' or 
				$jurisdiction='nl' or 
				$jurisdiction='gr' or 
				$jurisdiction='lu' or 
				$jurisdiction='nz' or 
				$jurisdiction='ph' or 
				$jurisdiction='rs' or 
                $jurisdiction='us' or
                $jurisdiction='pr' or
                $jurisdiction='hr'">3.0</xsl:when>

  		<xsl:otherwise>2.0</xsl:otherwise>
	   </xsl:choose>
	</xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
