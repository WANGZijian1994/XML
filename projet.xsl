<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="4.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
    <html>
	     <head>
		      <title>projet</title>
			  <link href="style.css" rel="stylesheet" type="text/css"/>
			  <style type="text/css">
			       body,div,p,ul,li,dl,dt,dd,h1,a{
				   margin:0;
				   padding:0;
				  }
			       html, body {
			           background:#27E21D
			       }
				   #logo img{
				       display:block;
				   }
			  </style>
		</head>
		<body>
		<h1>Football</h1>
		<h2>Teams</h2>
		    <table border="1">
				<tr>
					<th>Name</th>
					<th>Country</th>
					<th>Date of birth</th>
					<th>international honor 1</th>
					<th>international honor 2</th>
					<th>times of national champion</th>
					<th>famous players in history</th>
					<th>official site</th>					
				</tr>
				<xsl:for-each select="//team">
					<xsl:sort select="date_of_birth"/>				
				    <tr>
					    <td><xsl:value-of select="name"/></td>
						  <xsl:choose>
						     <xsl:when test="country='France'">
								<td style="background-color:blue">
									<xsl:value-of select="country"/> 
								</td>
							 </xsl:when>
						     <xsl:when test="country='Holland'">
								<td style="background-color:orange">
									<xsl:value-of select="country"/> 
								</td>
							 </xsl:when>
						     <xsl:when test="country='Turkey'">
								<td style="background-color:pink">
									<xsl:value-of select="country"/> 
								</td>
							 </xsl:when>
						     <xsl:when test="country='Japan'">
								<td style="background-color:red">
									<xsl:value-of select="country"/> 
								</td>
							 </xsl:when>
						     <xsl:when test="country='Korea'">
								<td style="background-color:red">
									<xsl:value-of select="country"/> 
								</td>
							 </xsl:when>
						     <xsl:when test="country='Argentina'">
								<td style="background-color:yellow">
									<xsl:value-of select="country"/> 
								</td>
							 </xsl:when>
						     <xsl:when test="country='Australia'">
								<td style="background-color:green">
									<xsl:value-of select="country"/>
								</td>
							 </xsl:when>
						  </xsl:choose> 
					    <td><xsl:value-of select="date_of_birth"/></td>
						<xsl:choose>
						   <xsl:when test="country='France'">
						     <td>UEFA Champions league: <xsl:value-of select="honor/international/UEFA_Champions_league"/></td>
					         <td>Europa League: <xsl:value-of select="honor/international/League_Europa"/></td>
						   </xsl:when>
						   <xsl:when test="country='Holland'">
						     <td>UEFA Champions league: <xsl:value-of select="honor/international/UEFA_Champions_league"/></td>
					         <td>Europa League: <xsl:value-of select="honor/international/League_Europa"/></td>
						   </xsl:when>
						   <xsl:when test="country='Turkey'">
						     <td>UEFA Champions league: <xsl:value-of select="honor/international/UEFA_Champions_league"/></td>
					         <td>Europa League: <xsl:value-of select="honor/international/League_Europa"/></td>
						   </xsl:when>	
						   <xsl:when test="country='Japan'">
						     <td>AFC Champions League: <xsl:value-of select="honor/international/AFC_Champions_League"/></td>
					         <td>/</td>
						   </xsl:when>
						   <xsl:when test="country='Korea'">
						     <td>AFC Champions League: <xsl:value-of select="honor/international/AFC_Champions_League"/></td>
					         <td>/</td>
						   </xsl:when>	
						   <xsl:when test="country='Argentina'">
						     <td><xsl:value-of select="honor/international"/></td>
					         <td>/</td>
						   </xsl:when>
						   <xsl:when test="country='Australia'">
						     <td>AFC Champions League <xsl:value-of select="honor/international"/></td>
					         <td>/</td>
						   </xsl:when>						   
						</xsl:choose>						    
						<td>
						    <xsl:value-of select="honor/times_of_national_championship"/>
							<xsl:if test="honor/times_of_national_championship > 20">
							    <xsl:call-template name="Legend"/>
							</xsl:if>
						</td>
						<td><xsl:value-of select="famousplayer"/></td>
						<td>
						    <a>
						    <xsl:attribute name="href"><xsl:value-of select="officialsite"/></xsl:attribute>
							<xsl:attribute name="target">_blank</xsl:attribute>
						    <xsl:value-of select="officialsite"/>
							</a>
						</td>
					</tr>
				</xsl:for-each>
			</table>
		     <div>
			    <img src="AjaxBenfica.jpg" height="300" width="500"/>			    
			</div>
			<div>Ajax Amsterdam 1-0 Benfica</div>
			<div>Boca Juniors 2-2 Atletico River Plate</div>
			<div>OM 0-2 OL</div>
			<div>Kashima Antlers 1-3 Real Madrid</div>
		</body>
	</html>
</xsl:template>
<xsl:template name="Legend">
     <b>: Legend for this centry</b>
</xsl:template>
</xsl:stylesheet>
		