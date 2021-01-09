<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:output method="xml" version="1.0" indent="yes"/>
<xsl:template match="/">
	<fo:root>
		<fo:layout-master-set>
			<fo:simple-page-master page-height="297mm" page-width="210mm" margin="5mm 25mm 5mm 25mm" master-name="template">
				<fo:region-body margin="20mm 0mm 20mm 0mm"/>
			</fo:simple-page-master>
		</fo:layout-master-set>
				
		<fo:page-sequence master-reference="template">
			<fo:flow flow-name="xsl-region-body">
				<fo:block position ="absolute" text-align ="center" font-weight="bold" margin-bottom="50mm"
					font-family="Verdana" font-size="48pt" padding-before="50mm" color="black">
					Книжен каталог
				</fo:block>
			</fo:flow>
		</fo:page-sequence>

        <xsl:for-each select="//book">
        	<fo:page-sequence master-reference="template">
			<fo:flow flow-name="xsl-region-body">
				<fo:block-container position="absolute" top="-2.5cm" left="-2.5cm">
					<fo:block position="absolute" text-align="center" padding-before="2cm" margin-left="2.5cm"
								font-family="Verdana" font-size="20pt" color="black">
						<xsl:value-of select="name"/>
					</fo:block>
					
					<fo:block position="absolute" text-align="center" padding-before="7mm" margin-left="2.5cm">
					   <fo:external-graphic src="{unparsed-entity-uri(image_cover/@url)}"></fo:external-graphic>
					</fo:block>
					
					<fo:block position="relative" font-family="Verdana" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Залавие:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="title"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Verdana" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Автор:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="author"/> 
						</fo:inline>
					</fo:block>

					<fo:block position="relative" font-family="Verdana" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Жанр:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="genre"/>
						</fo:inline>
					</fo:block>
					
					<fo:block position="relative" font-family="Verdana" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Издателство:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="publisher"/>
						</fo:inline>
					</fo:block>
				
					<fo:block position="relative" font-family="Verdana" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Тип корица:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="cover"/> 
						</fo:inline>
					</fo:block> 
					
					<fo:block position="relative" font-family="Verdana" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Цена:
						<fo:inline position="relative" padding-left="5mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="price"/>
						</fo:inline>
					</fo:block>
				
					<fo:block position="relative" font-family="Verdana" font-weight="bold" font-size="15pt" color="black" 
					padding-before="5mm" margin-left="2cm">
						Година:
						<fo:inline position="relative" padding-left="10mm" font-weight="normal" font-size="14pt">
							<xsl:value-of select="year"/>
						</fo:inline>
					</fo:block>
				</fo:block-container>
			</fo:flow>
		</fo:page-sequence>
		</xsl:for-each>
	</fo:root>

</xsl:template>

</xsl:stylesheet>
