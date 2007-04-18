<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<!-- ============================================================================================= -->

	<xsl:output method="xml" encoding="UTF-8" indent="yes"/>

	<!-- ============================================================================================= -->
	<!-- === Generate a table row for the harvesting's WAF privileges list -->
	<!-- ============================================================================================= -->

	<xsl:template match="/root/group">

		<tr id="group_{@id}">
			<td class="padded" align="center"><xsl:value-of select="@name"/></td>
			
			<!-- view - - - - - - - - - - - - - - - - - - - - - - -->
			
			<td class="padded" align="center">
				<input name="view" type="checkbox">
					<xsl:if test="operation/@name = 'view'">
						<xsl:attribute name="checked" select="'on'"/>
					</xsl:if>
				</input>
			</td>
		
			<!-- download - - - - - - - - - - - - - - - - - - - - - - -->
			
			<td class="padded" align="center">
				<input name="download" type="checkbox">
					<xsl:if test="operation/@name = 'download'">
						<xsl:attribute name="checked" select="'on'"/>
					</xsl:if>
				</input>
			</td>
			
			<!-- notify - - - - - - - - - - - - - - - - - - - - - - -->
			
			<td class="padded" align="center">
				<input name="notify" type="checkbox">
					<xsl:if test="operation/@name = 'notify'">
						<xsl:attribute name="checked" select="'on'"/>
					</xsl:if>
				</input>
			</td>
			
			<!-- dynamic - - - - - - - - - - - - - - - - - - - - - - -->
			
			<td class="padded" align="center">
				<input name="dynamic" type="checkbox">
					<xsl:if test="operation/@name = 'dynamic'">
						<xsl:attribute name="checked" select="'on'"/>
					</xsl:if>
				</input>
			</td>
			
			<!-- featured - - - - - - - - - - - - - - - - - - - - - - -->
			
			<td class="padded" align="center">
				<input name="featured" type="checkbox">
					<xsl:if test="operation/@name = 'featured'">
						<xsl:attribute name="checked" select="'on'"/>
					</xsl:if>
				</input>
			</td>
			
			<!-- actions - - - - - - - - - - - - - - - - - - - - - - -->
			
			<td class="padded" align="center">
				<button class="content" onclick="view.removeGroupRow('group_{@id}')">
					<xsl:value-of select="/root/strings/remove"/>
				</button>
			</td>
			
		</tr>

	</xsl:template>

	
	<!-- ============================================================================================= -->

</xsl:stylesheet>
