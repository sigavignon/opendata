<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" 
	xmlns:gco="http://www.isotc211.org/2005/gco"
	xmlns:gmd="http://www.isotc211.org/2005/gmd"
	xmlns:gfc="http://www.isotc211.org/2005/gfc"
	xmlns:gmx="http://www.isotc211.org/2005/gmx"
	xmlns:gts="http://www.isotc211.org/2005/gts"

	xmlns:gml="http://www.opengis.net/gml"
	xmlns:csw="http://www.opengis.net/cat/csw/2.0.2"

	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"

	xmlns:geonet="http://www.fao.org/geonetwork"	

	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output version="4.01" omit-xml-declaration="yes" method="html" encoding="UTF-8" doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN" doctype-system="http://www.w3.org/TR/html4/loose.dtd" indent="yes"/>
	<xsl:variable name="fileMapping" select="document('./transformation_fr.xsl')"/>   
	<xsl:template match='/'>
		<html><head>
				<style type="text/css" media="all" >
    /** {font: normal 1em verdana, arial, sans-serif; color:#000; vertical-align: top; text-align: center;}*/
    #page {width: 780px; text-align: center; margin: auto; font: normal 0.93em verdana, arial, sans-serif; color:#000; vertical-align: top; }
    #page .type {page-break-before: always; text-align: right; font: bold 0.8em verdana, arial, sans-serif; margin-top: 10px;}
    #page .t {font: bold 2em verdana, arial, sans-serif; text-align:center; line-height:1.8em; border: 1px solid #000000; background-color: #a6bddb;}


	#page table {border-spacing: 0px; width: 100%}
	#page th, td {padding: 5px 30px 5px 10px;border-spacing: 0px;font-size: 90%;margin: 0px;}
	#page th, td {color: #737476;text-align: left;background-color: #e0e9f0;border-top: 1px solid #f1f8fe;border-bottom: 1px solid #cbd2d8;	border-right: 1px solid #cbd2d8;}
	#page tr.head th {color: #fff;background-color: #90b4d6; border-bottom: 2px solid #547ca0;border-right: 1px solid #749abe;border-top: 1px solid #90b4d6;text-align: left;text-shadow: -1px -1px 1px #666; letter-spacing: 0.15em;}
	#page tr.head th:first-child {-webkit-border-top-left-radius: 5px;-moz-border-radius-topleft: 5px;border-top-left-radius: 5px;}
	#page tr.head th:last-child {-webkit-border-top-right-radius: 5px;-moz-border-radius-topright: 5px;border-top-right-radius: 5px;}	
    #page tr.headTitle th {font-size: 150%; color: #fff;background-color: #90b4d6;	border-bottom: 2px solid #547ca0;border-right: 1px solid #749abe;border-top: 1px solid #90b4d6;text-align: center;text-shadow: -1px -1px 1px #666;letter-spacing: 0.15em; }
	#page tr.headTitle th:first-child {-webkit-border-top-left-radius: 10px;-moz-border-radius-topleft: 10px;border-top-left-radius: 10px; -webkit-border-bottom-left-radius: 10px;-moz-border-radius-bottomleft: 10px;border-bottom-left-radius: 10px;}
	#page tr.headTitle th:last-child {-webkit-border-top-right-radius: 10px;-moz-border-radius-topright: 10px;border-top-right-radius: 10px; -webkit-border-bottom-right-radius: 10px;-moz-border-radius-bottomright: 10px;border-bottom-right-radius: 10px;}
	#page td {text-shadow: 1px 1px 1px #fff;}
	#page tr.even td, tr.even th {	background-color: #e8eff5;} 


    #page .partie {font-weight: bold; border: 0px solid #000000; background-color: #a6bddb; }
	#page .partietd {font-weight: bold; border: 0px solid #000000; background-color: #a6bddb; text-align: center;}
    #page .td1 {width: 130px; vertical-align: top;}
    #page .titre {font-weight: bold; text-align: center;}
    #page .td2 { text-align: justify; white-space : pre-wrap; }
	#page .td2c { text-align: justify; white-space : pre-wrap; text-align: center; }
	#page .td2left { text-align: left;}
	#page .ul1 {list-style-type:none; margin-top:0px; margin-bottom:0px; padding: 0px;} 
	#page .ul2 {margin-top:0px; margin-bottom:0px; padding: 10px;} 
	#page .li1 {margin-top:0px; } 
    #page .tb_cnt {background:#fff; border: 1px solid #000000; font:1.2em verdana, arial, sans-serif; border-collapse:collapse; margin: 5px; width: 98%;}
    #page .td1_cnt {width: 400px; border: 1px solid #000000;}
    #page .td2_cnt {width: 200px;; border: 1px solid #000000;}
    #page .note {font-size: 0.7em; font-style: italic; text-align: right; margin-bottom: 30px;}
    #page .retour {padding: 5px 5px 10px 5px; text-align: left; text-decoration: none;}
				</style>
			</head>
			<body>
				<div id="page">
					<xsl:apply-templates/>
				</div>
			</body>
		</html>
	</xsl:template >

	<xsl:template match="gmd:MD_Metadata">  
		<table>
			<tr class="headTitle"><th>Fiche de métadonnées</th></tr>
		</table>  
		<br/>
		<img style="width: 267px; height: 107px;" alt="Mairie Avignon" src="https://upload.wikimedia.org/wikipedia/commons/b/b5/Nouveau_logo_2020.png"/>
		<br/>		
		<br/>
Fiche générée le 
		<xsl:if test="gmd:dateStamp/gco:Date">
			<xsl:call-template name="date">
				<xsl:with-param name="ladate" select="gmd:dateStamp/gco:Date"/>
			</xsl:call-template>
		</xsl:if>
		<xsl:if test="gmd:dateStamp/gco:DateTime">
			<xsl:value-of select="gmd:dateStamp/gco:DateTime"/>
		</xsl:if>	
		<br/><br/>
		<table>
			<tr class="head"><th colspan="2">Identification du lot de données</th></tr>
			<tr>
				<td class="td1">Identifiant unique :</td>
				<td class="titre td2"> <xsl:value-of select="gmd:fileIdentifier/gco:CharacterString"/> </td>
			</tr>
			<tr>
				<td class="td1">Nom du fichier :</td>
				<td class="td2"> <xsl:value-of select="gmd:identificationInfo/gmd:MD_DataIdentification/gmd:citation/gmd:CI_Citation/gmd:identifier/gmd:MD_Identifier/gmd:code/gco:CharacterString"/> </td>
			</tr>
			<tr>
				<td class="td1">Titre :</td>
				<td class="titre td2"> <xsl:value-of select="gmd:identificationInfo/gmd:MD_DataIdentification/gmd:citation/gmd:CI_Citation/gmd:title/gco:CharacterString"/> </td>
			</tr>
			<tr>
				<td class="td1">Type :</td>
				<td class="titre td2"> 
					<xsl:variable name="MyType">
						<xsl:value-of select="gmd:dataQualityInfo/gmd:DQ_DataQuality/gmd:scope/gmd:DQ_Scope/gmd:level/gmd:MD_ScopeCode"/> 
					</xsl:variable>
					<xsl:if test="$MyType='dataset'">Jeu de données</xsl:if>
					<xsl:if test="$MyType='series'">Ensemble de jeux de données</xsl:if>
					<xsl:if test="$MyType='service'">Service</xsl:if>		
				</td>
			</tr>	  
			<tr>
				<td class="td1">Résumé :</td>
				<td class="td2"> 
					<xsl:value-of select="gmd:identificationInfo/gmd:MD_DataIdentification/gmd:abstract/gco:CharacterString"/> 
				</td>
			</tr>
			<tr>
				<td class="td1">URL :</td>
				<td> 
					<ul class="ul1"> 
						<xsl:for-each select="gmd:distributionInfo/gmd:MD_Distribution/gmd:transferOptions/gmd:MD_DigitalTransferOptions/gmd:onLine">
							<li class="li1"> 
								<xsl:value-of select="gmd:CI_OnlineResource/gmd:name/gco:CharacterString"/> : 
								<a>
									<xsl:attribute name="href">
										<xsl:value-of select="gmd:CI_OnlineResource/gmd:linkage/gmd:URL"/> 
									</xsl:attribute>
									<xsl:value-of select="gmd:CI_OnlineResource/gmd:linkage/gmd:URL"/>			
								</a>

							</li>
						</xsl:for-each>
					</ul>
				</td>
			</tr>	
		</table>

		<br/>

		<table>
			<tr class="head"><th colspan="2">Classification et mots clés</th></tr>
			<tr>
				<td class="td1">Mot(s) clé(s) INSPIRE :</td>
				<td> 
					<ul class="ul1"> 
						<xsl:for-each select="gmd:identificationInfo/gmd:MD_DataIdentification/gmd:descriptiveKeywords/gmd:MD_Keywords[gmd:thesaurusName/gmd:CI_Citation/gmd:title/gco:CharacterString='GEMET - INSPIRE Themes']">
							<li class="li1"> <xsl:value-of select="gmd:thesaurusName/gmd:CI_Citation/gmd:title/gco:CharacterString"/> : 
								<xsl:value-of select="gmd:keyword/gco:CharacterString"/> </li>
						</xsl:for-each>
					</ul>
				</td>
			</tr>
			<tr>
				<td class="td1">Mot(s) clé(s) complémentaires :</td>
				<td> 
					<ul class="ul1"> 
						<xsl:for-each select="gmd:identificationInfo/gmd:MD_DataIdentification/gmd:descriptiveKeywords/gmd:MD_Keywords[not (gmd:thesaurusName/gmd:CI_Citation/gmd:title/gco:CharacterString='GEMET - INSPIRE Themes')]">
							<li class="li1"> - <b><xsl:value-of select="gmd:keyword/gco:CharacterString"/></b></li> 
						</xsl:for-each>
					</ul>
				</td>
			</tr>
		</table>

		<br/>

		<table>
			<tr class="head"><th colspan="2">Eléments de langage</th></tr>
			<tr>
				<td class="td1">Langue(s) :</td>
				<td>
					<ul class="ul1">
						<xsl:for-each select="gmd:identificationInfo/gmd:MD_DataIdentification/gmd:language">
							<li class="li1"> - <xsl:value-of select="gmd:LanguageCode/@codeListValue"/></li>
						</xsl:for-each>
					</ul>
				</td>
			</tr>
			<tr>
				<td class="td1">Encodage des JDD :</td>
				<td class="td1"> 
					<xsl:value-of select="gmd:characterSet/gmd:MD_CharacterSetCode/@codeListValue"/>
				</td>
			</tr>
		</table>

		<br/>

		<table>
			<tr class="head"><th colspan="4">Emprise(s) :</th></tr>
			<tr>
				<td class="partietd">X min :</td>
				<td class="partietd">X max :</td>
				<td class="partietd">Y min :</td>
				<td class="partietd">Y max :</td>
			</tr>
			<xsl:for-each select="gmd:identificationInfo/gmd:MD_DataIdentification/gmd:extent/gmd:EX_Extent/gmd:geographicElement/gmd:EX_GeographicBoundingBox">
				<tr>
					<td class="td2c"><xsl:value-of select="gmd:westBoundLongitude/gco:Decimal"/></td>
					<td class="td2c"><xsl:value-of select="gmd:eastBoundLongitude/gco:Decimal"/></td>
					<td class="td2c"><xsl:value-of select="gmd:southBoundLatitude/gco:Decimal"/></td>
					<td class="td2c"><xsl:value-of select="gmd:northBoundLatitude/gco:Decimal"/></td>
				</tr>
			</xsl:for-each>
		</table>

		<br/>

		<table>
			<tr class="head"><th colspan="2">Qualité, validité et conformité</th></tr>
			<tr>
				<td class="td1">Généalogie : </td>
				<td class="td2"> 
					<xsl:if test="gmd:dataQualityInfo/gmd:DQ_DataQuality/gmd:lineage/gmd:LI_Lineage/gmd:statement/gco:CharacterString"> 		
						<xsl:value-of select="gmd:dataQualityInfo/gmd:DQ_DataQuality/gmd:lineage/gmd:LI_Lineage/gmd:statement/gco:CharacterString"/> 
					</xsl:if>
				</td>
			</tr>

			<xsl:if test="gmd:identificationInfo/gmd:MD_DataIdentification/gmd:spatialResolution/gmd:MD_Resolution/gmd:equivalentScale">
				<tr>
					<td class="td1">Résolution(s) spatiale(s) : </td>
					<td class="td1">
						<xsl:for-each select="gmd:identificationInfo/gmd:MD_DataIdentification/gmd:spatialResolution/gmd:MD_Resolution/gmd:equivalentScale">
			1/<xsl:value-of select="gmd:MD_RepresentativeFraction/gmd:denominator/gco:Integer"/> ;
						</xsl:for-each>
					</td>
				</tr>
			</xsl:if>

			<xsl:if test="gmd:identificationInfo/gmd:MD_DataIdentification/gmd:spatialResolution/gmd:MD_Resolution/gmd:distance">
				<tr>
					<td class="td1">Résolution(s) spatiale(s) - échelle(s) équivalente(s) en unité de mesure : </td>
					<td class="td1">
						<xsl:for-each select="gmd:identificationInfo/gmd:MD_DataIdentification/gmd:spatialResolution/gmd:MD_Resolution/gmd:distance">
							<xsl:value-of select="gco:Distance"/> <xsl:value-of select="gco:Distance/@uom"/>;
						</xsl:for-each>
					</td>
				</tr>
			</xsl:if>	  

			<tr valign="top">
				<td class="td1">Système(s) de coordonnées de référence :</td>
				<td>
					<ul class="ul1">
						<xsl:for-each select="gmd:referenceSystemInfo/gmd:MD_ReferenceSystem/gmd:referenceSystemIdentifier">
							<xsl:if test="gmd:RS_Identifier/gmd:code/gco:CharacterString">
								<li class="li1"> - EPSG : <xsl:value-of select="gmd:RS_Identifier/gmd:code/gco:CharacterString"/></li>
							</xsl:if>
							<xsl:if test="gmd:RS_Identifier/gmd:code/gmx:Anchor">
								<li class="li1"> - IGN : <xsl:value-of select="gmd:RS_Identifier/gmd:code/gmx:Anchor"/></li>
							</xsl:if>			
						</xsl:for-each>
					</ul>	
				</td>
			</tr>	  

			<xsl:if test="gmd:spatialRepresentationInfo">
				<tr>
					<td class="td1">Cohérence topologique :</td>
					<td> 
						<ul class="ul1">		
							<li class="li1"><u>TopologyLevelCode</u> : <xsl:value-of select="gmd:spatialRepresentationInfo/gmd:MD_VectorSpatialRepresentation/gmd:topologyLevel/gmd:MD_TopologyLevelCode/@codeListValue"/></li>
							<xsl:if test="gmd:spatialRepresentationInfo/gmd:MD_VectorSpatialRepresentation/gmd:geometricObjects/gmd:MD_GeometricObjects/gmd:geometricObjectType/gmd:MD_GeometricObjectTypeCode">
								<li class="li1"><u>GeometricObjectTypeCode</u> : <xsl:value-of select="gmd:spatialRepresentationInfo/gmd:MD_VectorSpatialRepresentation/gmd:geometricObjects/gmd:MD_GeometricObjects/gmd:geometricObjectType/gmd:MD_GeometricObjectTypeCode/@codeListValue"/></li>
							</xsl:if>			
						</ul>
					</td>
				</tr>
			</xsl:if>

			<tr>
				<td class="td1">Spécification(s) de conformité :</td>
				<td> 
					<ul class="ul1"> 
						<xsl:for-each select="gmd:dataQualityInfo/gmd:DQ_DataQuality/gmd:report/gmd:DQ_DomainConsistency">
							<li class="li1"> 
					- <xsl:value-of select="gmd:result/gmd:DQ_ConformanceResult/gmd:specification/gmd:CI_Citation/gmd:title/gco:CharacterString"/> du 
								<xsl:call-template name="date">
									<xsl:with-param name="ladate" select="gmd:result/gmd:DQ_ConformanceResult/gmd:specification/gmd:CI_Citation/gmd:date/gmd:CI_Date/gmd:date/gco:Date"/>
								</xsl:call-template>
				- <i>date de <xsl:value-of select="gmd:result/gmd:DQ_ConformanceResult/gmd:specification/gmd:CI_Citation/gmd:date/gmd:CI_Date/gmd:dateType/gmd:CI_DateTypeCode"/></i>
				[<b><xsl:choose>
										<xsl:when test="gmd:result/gmd:DQ_ConformanceResult/gmd:pass/gco:Boolean">
											<xsl:if test="gmd:result/gmd:DQ_ConformanceResult/gmd:pass/gco:Boolean='false'">Non Conforme</xsl:if>
											<xsl:if test="gmd:result/gmd:DQ_ConformanceResult/gmd:pass/gco:Boolean='true'">Conforme</xsl:if>	
										</xsl:when>
										<xsl:otherwise>Non évalué</xsl:otherwise>	
									</xsl:choose></b>]	
							</li>
						</xsl:for-each>
					</ul>
				</td>
			</tr>

			<tr>
				<td class="td1">Format(s) de distribution :</td>
				<td> 
					<ul class="ul1"> 
						<xsl:for-each select="gmd:distributionInfo/gmd:MD_Distribution/gmd:distributionFormat/gmd:MD_Format">
							<li class="li1"> - <xsl:value-of select="gmd:name/gco:CharacterString"/> </li>
						</xsl:for-each>
					</ul>
				</td>
			</tr>
		</table>

		<br/>	

		<table>
			<tr class="head"><th colspan="2">Référence(s) temporelle(s)</th></tr>
			<tr valign="top">
				<td class="td1">Etendue(s) temporelle(s) :</td>
				<td class="td2left">
					<xsl:for-each select="gmd:identificationInfo/gmd:MD_DataIdentification/gmd:extent/gmd:EX_Extent/gmd:temporalElement/gmd:EX_TemporalExtent/gmd:extent/gml:TimePeriod">
		du <xsl:call-template name="date">
							<xsl:with-param name="ladate" select="gml:beginPosition"/>
						</xsl:call-template> au <xsl:call-template name="date">
							<xsl:with-param name="ladate" select="gml:endPosition"/>
						</xsl:call-template><br/>
					</xsl:for-each>
				</td>
			</tr>
			<tr>
				<td class="td1">Date création :</td>
				<td class="td2">
					<xsl:if test="gmd:identificationInfo/gmd:MD_DataIdentification/gmd:citation/gmd:CI_Citation/gmd:date/gmd:CI_Date[gmd:dateType/gmd:CI_DateTypeCode='creation']/gmd:date/gco:Date"> 
						<xsl:call-template name="date">
							<xsl:with-param name="ladate" select="gmd:identificationInfo/gmd:MD_DataIdentification/gmd:citation/gmd:CI_Citation/gmd:date/gmd:CI_Date[gmd:dateType/gmd:CI_DateTypeCode='creation']/gmd:date/gco:Date"/>
						</xsl:call-template>
					</xsl:if>	
					<xsl:if test="gmd:identificationInfo/gmd:MD_DataIdentification/gmd:citation/gmd:CI_Citation/gmd:date/gmd:CI_Date[gmd:dateType/gmd:CI_DateTypeCode='création']/gmd:date/gco:Date"> 
						<xsl:call-template name="date">
							<xsl:with-param name="ladate" select="gmd:identificationInfo/gmd:MD_DataIdentification/gmd:citation/gmd:CI_Citation/gmd:date/gmd:CI_Date[gmd:dateType/gmd:CI_DateTypeCode='création']/gmd:date/gco:Date"/>
						</xsl:call-template>
					</xsl:if>	
				</td>
			</tr>	  
			<tr>
				<td class="td1">Date de révision :</td>
				<td class="td2">
					<xsl:if test="gmd:identificationInfo/gmd:MD_DataIdentification/gmd:citation/gmd:CI_Citation/gmd:date/gmd:CI_Date[gmd:dateType/gmd:CI_DateTypeCode='revision']/gmd:date/gco:Date"> 
						<xsl:call-template name="date">
							<xsl:with-param name="ladate" select="gmd:identificationInfo/gmd:MD_DataIdentification/gmd:citation/gmd:CI_Citation/gmd:date/gmd:CI_Date[gmd:dateType/gmd:CI_DateTypeCode='revision']/gmd:date/gco:Date"/>
						</xsl:call-template>
					</xsl:if>
					<xsl:if test="gmd:identificationInfo/gmd:MD_DataIdentification/gmd:citation/gmd:CI_Citation/gmd:date/gmd:CI_Date[gmd:dateType/gmd:CI_DateTypeCode='révision']/gmd:date/gco:Date"> 
						<xsl:call-template name="date">
							<xsl:with-param name="ladate" select="gmd:identificationInfo/gmd:MD_DataIdentification/gmd:citation/gmd:CI_Citation/gmd:date/gmd:CI_Date[gmd:dateType/gmd:CI_DateTypeCode='révision']/gmd:date/gco:Date"/>
						</xsl:call-template>
					</xsl:if>		
				</td>
			</tr>
			<tr valign="top">
				<td class="td1">Date publication :</td>
				<td class="td2left">
					<xsl:for-each select="gmd:identificationInfo/gmd:MD_DataIdentification/gmd:citation/gmd:CI_Citation/gmd:date/gmd:CI_Date[gmd:dateType/gmd:CI_DateTypeCode='publication']/gmd:date">
						<xsl:call-template name="date">
							<xsl:with-param name="ladate" select="gco:Date"/>
						</xsl:call-template><br/>
					</xsl:for-each>
				</td>
			</tr>
		</table>

		<br/>	

		<table>
			<tr class="head"><th colspan="2">Droits et usages</th></tr>
			<tr>
				<td class="td1">Licence :</td>
				<td class="td2"><xsl:value-of select="gmd:identificationInfo/gmd:MD_DataIdentification/gmd:resourceConstraints/gmd:MD_LegalConstraints/gmd:useLimitation/gco:CharacterString"/></td>
			</tr>

			<xsl:if test="gmd:identificationInfo/gmd:MD_DataIdentification/gmd:resourceConstraints/gmd:MD_LegalConstraints/gmd:accessConstraints">
				<tr>
					<td class="td1">Restrictions pour l'accès aux données :</td>
					<td class="td2">
						<xsl:for-each select="gmd:identificationInfo/gmd:MD_DataIdentification/gmd:resourceConstraints/gmd:MD_LegalConstraints/gmd:accessConstraints">
							<xsl:value-of select="gmd:MD_RestrictionCode"/>
						</xsl:for-each>	
					</td>		
				</tr>	 
			</xsl:if>	

			<xsl:if test="gmd:identificationInfo/gmd:MD_DataIdentification/gmd:resourceConstraints/gmd:MD_LegalConstraints/gmd:otherConstraints">
				<tr>
					<td class="td1">Autres contraintes :</td>
					<td class="td2">
						<ul class="ul1">
							<xsl:for-each select="gmd:identificationInfo/gmd:MD_DataIdentification/gmd:resourceConstraints/gmd:MD_LegalConstraints/gmd:otherConstraints">
								<li class="li1"> - <xsl:value-of select="gco:CharacterString"/></li>
							</xsl:for-each>		
						</ul>
					</td>
				</tr>	 
			</xsl:if>		  



		</table>

		<br/>

		<xsl:for-each select="gmd:identificationInfo/gmd:MD_DataIdentification/gmd:pointOfContact/gmd:CI_ResponsibleParty">
			<xsl:variable name="MyType"><xsl:value-of select="gmd:role/gmd:CI_RoleCode"/></xsl:variable>
			<xsl:if test="$MyType='owner'">	
				<table>
					<tr class="head"><th colspan="2">Propriétaire</th></tr>
					<tr>
						<td class="td1">Organisation :</td>
						<td class="titre td2"> <xsl:value-of select="gmd:organisationName/gco:CharacterString"/> </td>
					</tr>
					<tr>
						<td class="td1">Adresse :</td>
						<td class="td2"> <xsl:value-of select="gmd:contactInfo/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:deliveryPoint/gco:CharacterString"/> <br />
							<xsl:value-of select="gmd:contactInfo/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:postalCode/gco:CharacterString"/> <br />
							<xsl:value-of select="gmd:contactInfo/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:city/gco:CharacterString"/> </td>
					</tr>
					<tr>
						<td class="td1">Email :</td>
						<td> 
							<a>
								<xsl:attribute name="href">
									<xsl:text>mailto:</xsl:text>
									<xsl:value-of select="gmd:contactInfo/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:electronicMailAddress/gco:CharacterString"/> 
								</xsl:attribute>
								<xsl:value-of select="gmd:contactInfo/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:electronicMailAddress/gco:CharacterString"/>			
							</a>
						</td>
					</tr>
				</table>
			</xsl:if>	
		</xsl:for-each>


		<br/>

		<table>
			<tr class="head"><th colspan="2">Point de contact</th></tr>
			<tr>
				<td class="td1">Organisation :</td>
				<td class="titre td2"> <xsl:value-of select="gmd:contact/gmd:CI_ResponsibleParty/gmd:organisationName/gco:CharacterString"/> </td>
			</tr>
			<tr>
				<td class="td1">Adresse :</td>
				<td class="td2"> 
					<xsl:value-of select="gmd:contact/gmd:CI_ResponsibleParty/gmd:contactInfo/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:deliveryPoint/gco:CharacterString"/> <br />
					<xsl:value-of select="gmd:contact/gmd:CI_ResponsibleParty/gmd:contactInfo/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:postalCode/gco:CharacterString"/> <br />
					<xsl:value-of select="gmd:contact/gmd:CI_ResponsibleParty/gmd:contactInfo/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:city/gco:CharacterString"/> </td>
			</tr>
			<tr>
				<td class="td1">Email :</td>
				<td> 
					<a>
						<xsl:attribute name="href">
							<xsl:text>mailto:</xsl:text>
							<xsl:value-of select="gmd:contact/gmd:CI_ResponsibleParty/gmd:contactInfo/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:electronicMailAddress/gco:CharacterString"/> 
						</xsl:attribute>
						<xsl:value-of select="gmd:contact/gmd:CI_ResponsibleParty/gmd:contactInfo/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:electronicMailAddress/gco:CharacterString"/>			
					</a>
				</td>
			</tr>
		</table>

		<br/>

		<table>	 
			<tr class="head"><th colspan="2">Autre(s) acteur(s)</th></tr>
			<xsl:for-each select="gmd:identificationInfo/gmd:MD_DataIdentification/gmd:pointOfContact">
				<xsl:variable name="MyType">
					<xsl:value-of select="gmd:CI_ResponsibleParty/gmd:role/gmd:CI_RoleCode"/>
				</xsl:variable>
				<xsl:if test="$MyType!='owner' and $MyType!='pointOfContact'">
					<tr>
						<td class="td1">Organisation :</td>
						<td class="titre td2"><xsl:value-of select="gmd:CI_ResponsibleParty/gmd:organisationName/gco:CharacterString"/></td>
					</tr>
					<tr>
						<td class="td1">Rôle :</td>
						<td class="titre td2">
							<xsl:if test="$MyType='resourceProvider'">Fournisseur de la ressource</xsl:if>
							<xsl:if test="$MyType='custodian'">Gestionnaire</xsl:if>
							<xsl:if test="$MyType='user'">Utilisateur</xsl:if>
							<xsl:if test="$MyType='distributor'">Distributeur</xsl:if>
							<xsl:if test="$MyType='originator'">Commanditaire</xsl:if>
							<xsl:if test="$MyType='principalInvestigator'">Maître d'oeuvre</xsl:if>
							<xsl:if test="$MyType='processor'">Intégrateur</xsl:if>
							<xsl:if test="$MyType='publisher'">Éditeur</xsl:if>
							<xsl:if test="$MyType='author'">Auteur</xsl:if>	
						</td>
					</tr>
					<tr>
						<td class="td1">Adresse :</td>
						<td class="td2"> 
							<xsl:value-of select="gmd:CI_ResponsibleParty/gmd:contactInfo/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:deliveryPoint/gco:CharacterString"/> <br />
							<xsl:value-of select="gmd:CI_ResponsibleParty/gmd:contactInfo/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:postalCode/gco:CharacterString"/> <br />
							<xsl:value-of select="gmd:CI_ResponsibleParty/gmd:contactInfo/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:city/gco:CharacterString"/> </td>
					</tr>  
					<tr>
						<td class="td1">Email :</td>
						<td> 
							<a>
								<xsl:attribute name="href">
									<xsl:text>mailto:</xsl:text>
									<xsl:value-of select="gmd:CI_ResponsibleParty/gmd:contactInfo/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:electronicMailAddress/gco:CharacterString"/> 
								</xsl:attribute>
								<xsl:value-of select="gmd:CI_ResponsibleParty/gmd:contactInfo/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:electronicMailAddress/gco:CharacterString"/>			
							</a>
						</td>
					</tr>
				</xsl:if>
				<tr><td colspan="2" class="td1"></td></tr>
			</xsl:for-each>
		</table>
		<br/>
	</xsl:template>

	<xsl:template name="date">
		<xsl:param name="ladate"/>
		<xsl:value-of select="substring($ladate,9,2)"/>/<xsl:value-of select="substring($ladate,6,2)"/>/<xsl:value-of select="substring($ladate,1,4)"/> 
	</xsl:template>

	<xsl:template match="gfc:FC_FeatureCatalogue"> 
		<table>
			<tr class="headTitle"><th>Dictionnaire des données</th></tr>
		</table>  
		<br/>
		<table>
			<tr class="head"><th colspan="2">Point de contact</th></tr>
			<tr>
				<td class="td1">Organisation :</td>
				<td class="titre td2"> <xsl:value-of select="gfc:producer/gmd:CI_ResponsibleParty/gmd:organisationName/gco:CharacterString"/></td>
			</tr>
			<tr>
				<td class="td1">Adresse :</td>
				<td class="td2"> 
					<xsl:value-of select="gfc:producer/gmd:CI_ResponsibleParty/gmd:contactInfo/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:deliveryPoint/gco:CharacterString"/><br/>
					<xsl:value-of select="gfc:producer/gmd:CI_ResponsibleParty/gmd:contactInfo/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:postalCode/gco:CharacterString"/><br/>
					<xsl:value-of select="gfc:producer/gmd:CI_ResponsibleParty/gmd:contactInfo/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:city/gco:CharacterString"/></td>
			</tr>
			<tr>
				<td class="td1">Email :</td>
				<td> 
					<a>
						<xsl:attribute name="href">
							<xsl:text>mailto:</xsl:text>
							<xsl:value-of select="gfc:producer/gmd:CI_ResponsibleParty/gmd:contactInfo/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:electronicMailAddress/gco:CharacterString"/> 
						</xsl:attribute>
						<xsl:value-of select="gfc:producer/gmd:CI_ResponsibleParty/gmd:contactInfo/gmd:CI_Contact/gmd:address/gmd:CI_Address/gmd:electronicMailAddress/gco:CharacterString"/>			
					</a>
				</td>
			</tr>
		</table>

		<br/>

		<table>
			<tr class="head"><th colspan="2">Informations diverses</th></tr>
			<tr valign="top">
				<td class="td1">Intitulé :</td>
				<td class="td2"><xsl:value-of select="gfc:name/gco:CharacterString"/>
				</td>
			</tr>
			<tr>
				<td class="td1">Nom de la couche :</td>
				<td class="td2">
					<xsl:value-of select="gfc:scope/gco:CharacterString"/>
				</td>
			</tr>		  
			<tr>
				<td class="td1">Numéro de version :</td>
				<td class="td2">
					<xsl:value-of select="gfc:versionNumber/gco:CharacterString"/>
				</td>
			</tr>	  
			<tr>
				<td class="td1">Date de version :</td>
				<td class="td2">
					<xsl:call-template name="date">
						<xsl:with-param name="ladate" select="gfc:versionDate/gco:Date"/>
					</xsl:call-template>		
				</td>
			</tr>
		</table>

		<br/>

		<table>
			<tr class="head"><th colspan="2">Catalogue d'attributs :</th></tr>
			<xsl:for-each select="gfc:featureType/gfc:FC_FeatureType/gfc:carrierOfCharacteristics/gfc:FC_FeatureAttribute">
				<tr valign="top">
					<td class="td1"><xsl:value-of select="gfc:memberName/gco:LocalName"/></td>
					<td class="td2"><xsl:value-of select="gfc:valueType/gco:TypeName/gco:aName/gco:CharacterString"/><br/>[<i><xsl:value-of select="gfc:definition/gco:CharacterString"/></i>]
					</td>
				</tr>
			</xsl:for-each>
		</table>


	</xsl:template>


</xsl:stylesheet>
