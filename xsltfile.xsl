<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" version="2.0">
<xsl:template match="/">

<html>
<head>
<title>Книжен каталог</title>
<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}


th {
    background-color: #4CAF50;
    color: white;
	
}
td:nth-child(1){
width:110px;
}
td:nth-child(2){
width:110px;
}
td:nth-child(3){
width:110px;
}

tr:hover{background-color:#f5f5f5}
	</style>
</head>
<body>
<table border="4">
	<tr>
		<th>Име</th>
		<th>Автор</th>
		<th>Жанр</th>
		<th>Издателство</th>
		<th>Корица</th>
		<th>Цена</th>
		<th>Година</th>
	</tr>
	
	<xsl:for-each select="catalog/book/">
	
	<tr>
		<td>
			<xsl:value-of select="title"/>		
		</td>
		<!-- <td>
			<img>
        <xsl:attribute name="src"> <xsl:value-of select="image_cover//@src"/> 
      </xsl:attribute>
			</img>
			<xsl:value-of select="name"/>   
		</td> -->
		
		<td>
			<xsl:value-of select="title"/>
		</td>
		
		<td>
			<xsl:value-of select="author"/>
		</td>
		
		<td>
			<xsl:value-of select="genre"/>
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
	
	<!-- <xsl:for-each select="catalog/book">
	
	<tr>
		<td>
			Древноримска крепост
		</td>
		<td>
			<img>
				<xsl:attribute name="src"> <xsl:value-of select="no//@src"/> </xsl:attribute>
				<xsl:attribute name="width"><xsl:value-of select="no//@width"/></xsl:attribute>
				<xsl:attribute name="height"><xsl:value-of select="no//@height"/></xsl:attribute>
			</img>
			<xsl:value-of select="name"/>
		</td>
		
		<td>
			<xsl:value-of select="era"/>
		</td>
		
		<td>
			<xsl:value-of select="description"/>
		</td>
		
		<td>
			<xsl:value-of select="condition"/>
		</td>
	
	</tr>
	
	</xsl:for-each>
	
	<xsl:for-each select="fortresses_in_Bulgaria/types/Bulgarian_castles/fortress">
	
	<tr>
		<td>
			Българска крепост
		</td>
		<td>
			<img>
				<xsl:attribute name="src"> <xsl:value-of select="no//@src"/> </xsl:attribute>
				<xsl:attribute name="width"><xsl:value-of select="no//@width"/></xsl:attribute>
				<xsl:attribute name="height"><xsl:value-of select="no//@height"/></xsl:attribute>
			</img>
			<xsl:value-of select="name"/>
		</td>
		
		<td>
			<xsl:value-of select="era"/>
		</td>
		
		<td>
			<xsl:value-of select="description"/>
		</td>
		
		<td>
			<xsl:value-of select="condition"/>
		</td>
	
	</tr>
	
	</xsl:for-each>
	
</table>

<table border="4">
	<tr>
		<th>РЕГИОН</th>
		<th>Име</th>
		<th>Ера</th>
		<th>Описание</th>
		<th>Състояние</th>
	</tr>
	
	<xsl:for-each select="fortresses_in_Bulgaria/regions/fortresses_in_Vidin/fortress">
	
	<tr>
		<td>
			ВИДИН
		</td>
		<td>
			<img>
				<xsl:attribute name="src"> <xsl:value-of select="no//@src"/> </xsl:attribute>
				<xsl:attribute name="width"><xsl:value-of select="no//@width"/></xsl:attribute>
				<xsl:attribute name="height"><xsl:value-of select="no//@height"/></xsl:attribute>
			</img>
			<xsl:value-of select="name"/>
		</td>
		
		<td>
			<xsl:value-of select="era"/>
		</td>
		
		<td>
			<xsl:value-of select="description"/>
		</td>
		
		<td>
			<xsl:value-of select="condition"/>
		</td>
	
	</tr>
	
	</xsl:for-each>
	
	<xsl:for-each select="fortresses_in_Bulgaria/regions/fortresses_in_Ruse/fortress">
	
	<tr>
		<td>
			РУСЕ
		</td>
		<td>
			<img>
				<xsl:attribute name="src"> <xsl:value-of select="no//@src"/> </xsl:attribute>
				<xsl:attribute name="width"><xsl:value-of select="no//@width"/></xsl:attribute>
				<xsl:attribute name="height"><xsl:value-of select="no//@height"/></xsl:attribute>
			</img>
			<xsl:value-of select="name"/>
		</td>
		
		<td>
			<xsl:value-of select="era"/>
		</td>
		
		<td>
			<xsl:value-of select="description"/>
		</td>
		
		<td>
			<xsl:value-of select="condition"/>
		</td>
	
	</tr>
	
	</xsl:for-each> -->
	
</table>

</body>
</html>
</xsl:template>
</xsl:stylesheet>
<!-- <?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" />

  <xsl:template match="/">
    <html>
      <body>
        <h2>Книжен каталог</h2>
        <xsl:apply-templates />

        <table border="1">
          <tr bgcolor="#9acd32">
            <th>Име на книга</th>
            <th>Корица</th>
            <th>Автор</th>
            <th>Жанр</th>
            <th>Издателство</th>
            <th>Тип корица</th>
            <th>Цена</th>
            <th>Година</th>
          </tr>
          <xsl:for-each select="catalog/book">
            <tr>
              <td>
                <xsl:value-of select="title" />
              </td>

              <td>
                <xsl:value-of select="author" />
              </td>
              <td>
                <xsl:value-of select="genre" />
              </td>
              <td>
                <xsl:value-of select="publisher" />
              </td>
              <td>
                <xsl:value-of select="cover" />
              </td>
              <td>
                <xsl:value-of select="price" />
              </td>
              <td>
                <xsl:value-of select="year" />
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="image_cover">
    <img src="{@url}"/>
  </xsl:template>
</xsl:stylesheet> -->
