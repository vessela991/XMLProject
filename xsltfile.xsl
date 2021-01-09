<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" version="2.0">

<xsl:template match="/">

<html>
<head>
<title>Книжен каталог</title>

</head>
<body>
<table border="4">
	<tr>
		<th>Име</th>
		<th>Корица</th>
		<th>Автор</th>
		<th>Жанр</th>
		<th>Издателство</th>
		<th>Тип корица</th>
		<th>Цена</th>
		<th>Година</th>
	</tr>
	
	<xsl:for-each select="/catalog/book">
	<tr>
		<td>
			<xsl:value-of select="title"/>		
		</td>
		<td>
		 <img src="{unparsed-entity-uri(image_cover/@url)}"/>
		</td>
		
		<td>
			<xsl:value-of select="author"/>
		</td>
		
		<td>
			<xsl:value-of select="genre"/>
		</td>
				
		<td>
			<xsl:value-of select="publisher"/>
		</td>
   		 <td>
			<xsl:value-of select="cover"/>
    	</td>
   		 <td>
			<xsl:value-of select="price"/>
    	</td>
    	<td>
			<xsl:value-of select="year"/>
		</td>
	</tr>
	</xsl:for-each>
</table>

</body>
</html>
</xsl:template>
</xsl:stylesheet>