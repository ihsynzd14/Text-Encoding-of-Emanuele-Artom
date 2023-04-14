<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <html lang="IT">
            <head>
                <title><xsl:value-of select="//tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@xml:lang='it']"/></title>
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1" />
                <link rel="stylesheet" href="assets/css/normalize.css" />
                <link rel="stylesheet" href="assets/css/style.css" />
                <link rel="preconnect" href="https://fonts.googleapis.com" />
                <link rel="preconnect" href="https://fonts.gstatic.com" />
                <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700" rel="stylesheet" />
                <script src="assets/js/main.js"></script>
            </head>
            <body>
            <!-- Navigazione Bar -->
                <header class="header">
                    <!-- Menu -->
                    <div class="header-wrapper wrapper">
                        <ul class="header-menu">
                            <li> <a class="scroll-to" title="Informazioni" href="#informazioni-sul-progetto">Informazioni</a> </li>
                            <li> <a class="scroll-to" title="Descrizione" href="#descrizione-fisica">Descrizione</a> </li>
                            <li> <a class="scroll-to" title="Pagina 3" href="#pagina-3">Pagina 3</a> </li>
                            <li> <a class="scroll-to" title="Pagina 4" href="#pagina-4"> Pagina 4</a></li>
                            <li> <a class="scroll-to" title="Pagina 5" href="#pagina-5"> Pagina 5</a></li>
                            <li> <a class="scroll-to" title="Pagina 6" href="#pagina-6"> Pagina 6</a></li>
                            <li> <a class="scroll-to" title="Pagina 7" href="#pagina-7"> Pagina 7</a></li>
                            <li> <a class="scroll-to" title="Persone" href="#listPersons">Lista Persone</a> </li>
                            <li> <a class="scroll-to" title="Citta" href="#listPlaces">Lista Città</a> </li>
                            <li> <a class="scroll-to" title="Bibliografia" href="#bibliografia">Bibliografia</a> </li>
                        </ul>
                    </div>
                </header>
            
            <!-- Sezioni com apply-template + pulsanti -->
                <main id="main">
                    <!-- Schermata iniziale -->
                    <section id="Home" class="section section-1">
                        <img class="section-bg" alt="Emanuele Artom" src="assets/img/section1_bg.jpg" />
                        <div class="section-wrapper wrapper">
                            <div class="section-info">
                                <h3 class="eyelet"> Progetto Universitario: codifica testuale di cinque pagine estratte da </h3>
                                <br/>
                                <h1 class="main-title"> <em><xsl:value-of select="//tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@xml:lang='it']"/></em></h1>
                                <br/>
                                <h4>di <xsl:value-of select="//tei:teiHeader/tei:fileDesc//tei:msContents//tei:author"/></h4>
                            </div>
                        </div>
                        <div class="section-scroll-icon">
                            <a class="scroll-to" title="Informazioni sul progetto" href="#informazioni-sul-progetto"></a>
                            <span class="left-bar"></span>
                            <span class="right-bar"></span>
                        </div>
                    </section>

                    <!-- Informazioni sul progetto -->
                    <section id="informazioni-sul-progetto" class="section section-2">
                        <div class="wrapper section-wrapper">
                            <h2 class="section-title">Informazioni sul progetto</h2>
                            <p>Il progetto è stato realizzato da Iskandar Huseynzade ed Ashmita Tandukar per l'esame di Codifica di Testi, previsto dal corso di laurea triennale in Informatica Umanistica, nell'anno accademico 2022-2023.</p>
                            <p>Il lavoro ha previsto la codifica di cinque pagine dell' Appunto della Signora Amalia Artom sul diario del figlio Emanuele dal 1 gennaio 1940.</p>
                            <br/>
                        </div>
                    </section>

                    <!-- Informazioni sulla fonte -->
                    <section id="informazioni-sulla-fonte" class="section section-3">
                        <div class="wrapper section-wrapper">
                            <h2 class="section-title">Informazioni sulla fonte</h2>
                            <xsl:apply-templates select="//tei:teiHeader/tei:fileDesc//tei:msContents"/>
                        </div>
                    </section>

                    <!-- Descrizione fisica -->
                    <section id="descrizione-fisica" class="section section-3">
                        <div class="wrapper section-wrapper">
                            <h2 class="section-title">Descrizione fisica</h2>
                            <xsl:apply-templates select="//tei:teiHeader/tei:fileDesc//tei:physDesc"/>
                        </div>
                    </section>

                    <!-- Pagine analizzate + carousel--> 
                    <section id="pagine" class="carousel">
                        <div class="carousel-wrapper wrapper">
                            <h2 class="carousel-title">Pagine analizzate</h2>
                            <div class="carousel-container">
                                <div class="carousel-slides">
                                    <xsl:apply-templates select="//tei:facsimile" />
                                </div>
                                <button class="carousel-arrow carousel-arrow-prev">
                                    <svg width="40" height="60" xmlns="http://www.w3.org/2000/svg" version="1.1">
                                        <polyline points="30 10 10 30 30 50" stroke="rgba(255,255,255,0.5)" stroke-width="4" stroke-linecap="butt" fill="none" stroke-linejoin="round">&gt;</polyline>
                                    </svg>
                                </button>
                                <button class="carousel-arrow carousel-arrow-next">
                                    <svg width="40" height="60" xmlns="http://www.w3.org/2000/svg" version="1.1">
                                        <polyline points="10 10 30 30 10 50" stroke="rgba(255,255,255,0.5)" stroke-width="4" stroke-linecap="butt" fill="none" stroke-linejoin="round">&lt;</polyline>
                                    </svg>
                                </button>
                            </div>
                        </div>
                    </section>

                    <!-- Marker attivazione pulsantiera-->
                    <div class="page-content-filters-trigger"></div>

                    <!-- Pulsantiera-->
                    <div class="page-content-filters">
                        <div class="text-center">
                            <ul>
                                <li>
                                    <!-- data filter tag collegato su js quando si clicca corre funzione e ti mostra deletitions -->
                                    <button data-filter-tag="del" type="button" class="legend-filter tag-del">
                                        <span class="legend-indicator"></span>
                                        <span class="legend-label">Cancellature</span>
                                    </button>
                                </li>
                                <li>
                                    <button data-filter-tag="sic" type="button" class="legend-filter tag-cor">
                                        <span class="legend-indicator"></span>
                                        <span class="legend-label">Correzioni</span>
                                    </button>
                                </li>
                                <li>
                                    <button data-filter-tag="abbr" type="button" class="legend-filter tag-abbr">
                                        <span class="legend-indicator"></span>
                                        <span class="legend-label">Abbreviazioni</span>
                                    </button>
                                </li>
                                <li>
                                    <button data-filter-tag="add" type="button" class="legend-filter tag-notes">
                                        <span class="legend-indicator"></span>
                                        <span class="legend-label">Aggiunte</span>
                                    </button>
                                </li>
                                <li>
                                    <button data-filter-tag="reg" type="button" class="legend-filter tag-reg">
                                        <span class="legend-indicator"></span>
                                        <span class="legend-label">Normalizzazioni</span>
                                    </button>
                                </li>
                                <li>
                                    <button data-filter-tag="person" type="button" class="legend-filter tag-person">
                                        <span class="legend-indicator"></span>
                                        <span class="legend-label">Persone</span>
                                    </button>
                                </li>
                                <li>
                                    <button data-filter-tag="place" type="button" class="legend-filter tag-place">
                                        <span class="legend-indicator"></span>
                                        <span class="legend-label">Place</span>
                                    </button>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <!-- Iniziando Pagina 3 -->
                    <section class="section section-4">
                        <div class="wrapper section-wrapper">
                        <!-- grid per dividere 2 -->
                            <div class="section-grid-2">
                                <div class="section-grid-row">
                        <!-- colonna 1 -->
                                    <div class="col col-1 text-left">
                                        <h3 class="trans">Trascrizione</h3>
                                    </div>
                        <!-- colonna 2 -->
                                    <div class="col col-2 text-left">
                                        <h3 class="trans">Frasi</h3>
                                    </div>
                                </div>
                                <div class="section-grid-row">
                                    <div class="col col-1">
                                        <div class="analyzed-text">
                                            <!-- Trascrizione -->
                                            <div class="text">
                                                <xsl:apply-templates select="//tei:text[@subtype='diary']//tei:group[@type='transcription']" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col col-2">
                                        <div class="frasi-text">
                                            <!-- Frasi -->
                                            <div class="text">
                                                <xsl:apply-templates select="//tei:text[@subtype='diary']//tei:group[@type='frasi']" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                    <!-- Marker disattivazione pulsantiera-->
                    <div class="page-content-filters-trigger-remove"></div>

                    <!-- Person -->
                    <section id="listPersons" class="section section-6">
                        <div class="wrapper section-wrapper">
                            <h2 class="section-title">Lista delle Persone</h2>
                            <div class="listperson">
                                <xsl:apply-templates select="//tei:listPerson" />
                            </div>
                        </div>
                    </section>

                    <!-- Place -->
                    <section id="listPlaces" class="section section-6">
                        <div class="wrapper section-wrapper">
                            <h2 class="section-title">Lista delle Città</h2>
                            <div class="listplace">
                                <xsl:apply-templates select="//tei:listPlace" />
                            </div>
                        </div>
                    </section>
                    
                    <!-- Bibliografia -->
                    <section id="bibliografia" class="section section-7">
                        <div class="wrapper section-wrapper">
                            <h2 class="section-title">Bibliografia</h2>
                            <div class="bibliography">
                                <xsl:apply-templates select="//tei:back//tei:listBibl" />
                            </div>
                        </div>
                    </section>

                </main>

                <!-- Footer -->
                <footer class="footer">
                    <div class="footer-wrapper">
                        <ul>
                            <li><xsl:value-of select="//tei:editionStmt/tei:edition"/></li>
                        </ul>
                        <ul class="detail-list">
                         <!-- con for-each facciamo ciclo per ogni respStmt -->
                            <xsl:for-each select="//tei:editionStmt/tei:respStmt">
                             <!-- con select="." vuol dire ogni respStmt verra come un list element-->
                                <li><xsl:value-of select="."/></li>
                            </xsl:for-each>
                        </ul>
                    </div>
                </footer>

            </body>
        </html>
    </xsl:template>

    <!-- Lista template per visualizzare i contenuti dell'header -->

    <!-- Costriure Template Informazioni sulla fonte -->
    <xsl:template match="//tei:teiHeader/tei:fileDesc//tei:msContents"> 
        <div class="detail-list-container">
            <table class="detail-list">
                <tr class="detail-list-row">
                    <td class="detail-list-name">
                        <span>Autore</span>
                    </td>
                    <td class="detail-list-value">
                        <span><xsl:value-of select="tei:msItem/tei:author"/></span>
                    </td>
                </tr>
                <tr class="detail-list-row">
                    <td class="detail-list-name">
                        <span>Titolo</span>
                    </td>
                    <td class="detail-list-value">
                        <span><xsl:value-of select="tei:msItem/tei:title[@xml:lang='it']"/></span>
                    </td>
                </tr>
                <tr class="detail-list-row">
                    <td class="detail-list-name">
                        <span>Manoscritto</span>
                    </td>
                    <td class="detail-list-value">
                        <span><xsl:value-of select="../tei:msIdentifier/tei:idno[@type='inventory']"/></span>
                    </td>
                </tr>
                <tr class="detail-list-row">
                    <td class="detail-list-name">
                        <span>Storia</span>
                    </td>
                    <td class="detail-list-value">
                        <p><xsl:value-of select="../tei:history/tei:origin/tei:p"/></p>
                    </td>
                </tr>
                <tr class="detail-list-row">
                    <td class="detail-list-name">
                        <span>Lingua</span>
                    </td>
                    <td class="detail-list-value">
                        <span><xsl:value-of select="tei:msItem/tei:textLang"/></span>
                    </td>
                </tr>
                <tr class="detail-list-row">
                    <td class="detail-list-name">
                        <span>Data</span>
                    </td>
                    <td class="detail-list-value">
                        <span><xsl:value-of select="tei:msItem/tei:title[@type='sub']"/></span>
                    </td>
                </tr>
                <tr class="detail-list-row">
                    <td class="detail-list-name">
                        <span>Luogo di conservazione</span>
                    </td>
                    <td class="detail-list-value">
                        <span><xsl:value-of select="../tei:msIdentifier/tei:repository"/></span>
                    </td>
                </tr>
            </table>
        </div>
    </xsl:template>

    <!-- Template descrizione fisica -->
    <xsl:template match="//tei:teiHeader/tei:fileDesc//tei:physDesc">
        <div class="detail-list-container">
            <table class="detail-list">
                <tr class="detail-list-row">
                    <td class="detail-list-name">
                        <span>Supporto</span>
                    </td>
                    <td class="detail-list-value">
                        <span><xsl:value-of select="//tei:material"/></span>
                    </td>
                </tr>
                <tr class="detail-list-row">
                    <td class="detail-list-name">
                        <span>Quantità</span>
                    </td>
                    <td class="detail-list-value">
                        <xsl:value-of select="tei:objectDesc//tei:measureGrp/tei:measure[last()]"/>
                    </td>
                </tr>
                <tr class="detail-list-row">
                    <td class="detail-list-name">
                        <span>Condizioni</span>
                    </td>
                    <td class="detail-list-value">
                        <span><xsl:value-of select="//tei:condition"/></span>
                    </td>
                </tr>
                <tr class="detail-list-row">
                    <td class="detail-list-name">
                        <span>Mani</span>
                    </td>
                    <td class="detail-list-value">
                        <span><xsl:value-of select="//tei:handDesc"/></span>
                    </td>
                </tr>
            </table>
        </div>
    </xsl:template>

    <!-- Template slider immagini e imagemap -->
    <xsl:template match="tei:facsimile">
    <!-- facciamo un ciclo per ogni surface che vuol dire pagina -->
        <xsl:for-each select="//tei:surface">
            <!-- slider che ospita le immagini relative alle pagine -->
            <div class="carousel-slide">
                <xsl:element name="img">
                    <xsl:attribute name="class">carousel-img</xsl:attribute>
                    <!-- in ogni ciclo prende un url di immagine es: img/pagina3.jpg -->
                    <xsl:attribute name="src">img/<xsl:value-of select="tei:graphic/@url"/></xsl:attribute>
                    <!-- in ogni ciclo prende xml:id del surface esempio: #pagina_terza -->                    
                    <xsl:attribute name="usemap">#<xsl:value-of select="@xml:id"/></xsl:attribute>
                    <xsl:attribute name="alt"><xsl:value-of select="@xml:id"/></xsl:attribute>
                </xsl:element>
                <xsl:element name="map">
                    <xsl:attribute name="name"><xsl:value-of select="@xml:id" /></xsl:attribute>
                    <!-- Ottengo il valore "width" di ciascun tag <graphic> e rimuovo px alla fine in modo da poter calcolare il ratio --> 
                    <xsl:variable name="width">
                        <xsl:value-of select="substring-before(tei:graphic/@width, 'px')"/>
                    </xsl:variable>          
                    <!-- Calcolo il rapporto tra la larghezza dell'immagine e quella del contenitore che la ospiterà -->
                    <xsl:variable name="ratio" select="500 div $width"/>
                    <!-- Per ogni <zone> che riguarda una riga stampo un tag <area> e le corrispettive coordinate in modo da rendere l'immagine cliccabile -->
                    <xsl:for-each select="tei:zone[@rendition='line']">
                        <xsl:element name="area">
                            <xsl:attribute name="shape">rect</xsl:attribute>
                            <!-- Unisco i valori degli attributi ulx, uly, lrx, lry affinchè siano "compatibili" con l'attributo coords del tag <area> -->
                            <xsl:attribute name="coords">
                                <xsl:value-of select="concat(@ulx*$ratio, ',', @uly*$ratio, ',', @lrx*$ratio, ',', @lry*$ratio)"/>
                            </xsl:attribute>
                            <xsl:attribute name="id">
                                <xsl:value-of select="@xml:id"/>_area
                            </xsl:attribute>
                            <!-- Creo un href contenente l'xml:id che verrà poi usato per navigare le righe quando si clicca su una di queste -->
                            <xsl:attribute name="href">#<xsl:value-of select="@xml:id"/>_line</xsl:attribute>
                        </xsl:element>
                    </xsl:for-each>
                </xsl:element>
            </div>
        </xsl:for-each>
    </xsl:template>

    <!-- Template per trascrizioni -->
    <xsl:template match="tei:group[@type='transcription']">
        <div class="trscgrn-group">
            <xsl:apply-templates/>
        </div>
    </xsl:template>

    <!-- Template per frasi completati -->
    <xsl:template match="tei:group[@type='frasi']">
        <div class="trscgrn-group">
            <xsl:apply-templates/>
        </div>
    </xsl:template>

    <!-- Template page beginning -->
    <xsl:template match="tei:pb">
        <xsl:if test="[@type]='page_full'">
            <xsl:element name="h3">
            <!-- un attributo che assegna un id della pagina select @n esempio : pagina-3 (pagina-@n) -->
                <xsl:attribute name="id">pagina-<xsl:value-of select="[@n]"/></xsl:attribute>
                <xsl:attribute name="class">section-title</xsl:attribute>
                Pagina <xsl:value-of select="[@n]"/>
            </xsl:element>
        </xsl:if>
    </xsl:template>

    <!-- Lista Template per renderizzare HTML personalizzato a seconda del tag utilizzato nella codifica -->
    
    <!-- Template forme work -->
    <xsl:template match="tei:fw">
    </xsl:template>

    <!-- Giorni -->
    <xsl:template match="tei:ab">
        <xsl:element name="div">
            <xsl:attribute name="class">giorno-container</xsl:attribute>
            <xsl:attribute name="data-same-height">same-height-<xsl:value-of select="@n"/></xsl:attribute>
            <xsl:element name="h4">
                <xsl:attribute name="class">giorno</xsl:attribute>
                <xsl:value-of select="@n" /> novembre 1943
            </xsl:element>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>


    <!-- Righe -->
    <xsl:template match="tei:lb">
        <xsl:element name="br"></xsl:element>
        <xsl:element name="span">
            <xsl:attribute name="id">
        <!-- prende attributo facs di lb come un id -->
                <xsl:value-of select="@facs"/>
            </xsl:attribute>
            <xsl:attribute name="class">row-number</xsl:attribute>
            <xsl:value-of select="@n" />
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <!-- Correzioni -->
    <xsl:template match="tei:choice/tei:sic">
        <xsl:element name="span">
            <xsl:attribute name="class">sic</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <!-- Abbreviazione -->
    <xsl:template match="tei:abbr">
        <xsl:element name="span">
            <xsl:attribute name="class">abbr</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    <!-- Testo originale -->
    <xsl:template match="tei:orig">
        <xsl:element name="span">
            <xsl:attribute name="class">orig</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    <!-- Tag expan --> 
    <xsl:template match="tei:expan">
        <xsl:element name="span">
            <xsl:attribute name="class">expan</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <!-- Tag reg -->
    <xsl:template match="tei:reg">
        <xsl:element name="span">
            <xsl:attribute name="class">reg</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <!-- Aggiunte dell'autore o editoriali -->
    <xsl:template match="tei:add | tei:supplied">
        <xsl:element name="span">
            <xsl:attribute name="class">add</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <!-- Cancellature -->
    <xsl:template match="tei:del">
        <xsl:element name="span">
            <xsl:attribute name="class">del</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <!-- Elementi non leggibili -->
    <xsl:template match="tei:gap">
        <xsl:element name="span">
            <xsl:attribute name="class">gap</xsl:attribute>
            ?
        </xsl:element>
    </xsl:template>

    <!-- Persone -->
    <xsl:template match="tei:persName | tei:name">
        <xsl:element name="span">
            <xsl:attribute name="class">person</xsl:attribute>
            <xsl:element name="a">
                <xsl:attribute name="class">scroll-to</xsl:attribute>
                <xsl:attribute name="href"><xsl:value-of select="@ref"/></xsl:attribute>
                <xsl:apply-templates/>
            </xsl:element>
        </xsl:element>
    </xsl:template>

    <!-- Place -->
    <xsl:template match="tei:placeName">
        <xsl:element name="span">
            <xsl:attribute name="class">place</xsl:attribute>
            <xsl:element name="a">
                <xsl:attribute name="class">scroll-to</xsl:attribute>
                <xsl:attribute name="href"><xsl:value-of select="@ref"/></xsl:attribute>
                <xsl:apply-templates/>
            </xsl:element>
        </xsl:element>
    </xsl:template>

    <!-- Lista delle Persone -->
    <xsl:template match="tei:listPerson">
        <!-- ciclo per ogni persName -->
        <xsl:for-each select="tei:person/tei:persName">

            <xsl:element name="div">
                <!-- assegna un class di listperson-entry -->
                <xsl:attribute name="class">listperson-entry</xsl:attribute>
                <xsl:attribute name="id"><xsl:value-of select="../tei:persName/@xml:id"/></xsl:attribute>
                <p>Nome Cognome:</p>
                <xsl:element name="h4">
                <xsl:attribute name="class">listperson-term</xsl:attribute>
                <!-- prende xsl:for-each select tei:person/tei:persName e lo printa qui -->
                <xsl:value-of select="."/>
                </xsl:element>

                <p class="listperson-description">

                    <!-- qui abbiamo assegnato id del ogni persone -->
                    <xsl:variable name="currentTermID">
                        <xsl:value-of select="concat('#',tei:persName/@xml:id)"/>
                    </xsl:variable>

                    <!-- qui facciamo un condizione che id del persona uguale con target-->
                    <xsl:for-each select="/tei:persName">
                        <xsl:if test="$currentTermID = @target">
                        <!-- se si prende la parte di persName-->
                            <xsl:value-of select="."/>
                        </xsl:if>
                    </xsl:for-each>
                </p>   

                <xsl:element name="h4">
                <p>Sesso:</p>            
                <xsl:value-of select="../tei:sex"/>
                </xsl:element> 
<br></br>
                <xsl:element name="h4">
                <p>Nascita:</p>
                <xsl:if test="not(../tei:birth)">
                <p>La data di nascita non presente</p>
                </xsl:if>            
                <xsl:value-of select="../tei:birth"/>
                </xsl:element> 
<br></br>

<br></br>
                <xsl:element name="h4">
                <p>Morto:</p>
                <xsl:if test="normalize-space(../tei:death)=''">
                <p>Presente</p>
                </xsl:if>            
                <xsl:if test="not(../tei:death)">
                <p>La data di morto non presente</p>
                </xsl:if>            
                <xsl:value-of select="../tei:death"/>
                </xsl:element> 

            </xsl:element>

        </xsl:for-each>

    </xsl:template>

    <!-- Lista delle Citta -->
    <xsl:template match="tei:listPlace">

        <xsl:for-each select="tei:place/tei:placeName">

            <xsl:element name="div">
                <xsl:attribute name="class">listplace-entry</xsl:attribute>
                <xsl:attribute name="id"><xsl:value-of select="../tei:placeName/@xml:id"/></xsl:attribute>
                <p>Città:</p>
                <xsl:element name="h4">
                <xsl:attribute name="class">listplace-term</xsl:attribute>
                <xsl:value-of select="."/>
                </xsl:element>

                <p class="listplace-description">

                    <!-- qui abbiamo assegnato id del ogni persone -->
                    <xsl:variable name="currentTermID">
                        <xsl:value-of select="concat('#',tei:placeName/@xml:id)"/>
                    </xsl:variable>

                    <!-- qui facciamo un condizione che id del placeName uguale con target-->
                    <xsl:for-each select="/tei:placeName">
                        <xsl:if test="$currentTermID = @target">
                        <!-- se si prende la parte di placeName-->
                            <xsl:value-of select="."/>
                        </xsl:if>
                    </xsl:for-each>
                </p>   
                <xsl:element name="h4">
                <p>Paese:</p>           
                <xsl:value-of select="../tei:country"/>
                </xsl:element> 
<br></br>
                </xsl:element> 

        </xsl:for-each>
    </xsl:template>



    <!-- Bibliografia -->
    <xsl:template match="tei:listBibl">
        <xsl:element name="ul">
            <xsl:for-each select="tei:bibl">
                    <xsl:element name="li">
                        <xsl:element name="a">
                            <xsl:attribute name="href"><xsl:value-of select="@source"/></xsl:attribute>
                            
                            <xsl:element name="span">
                                <xsl:attribute name="class">underline</xsl:attribute>
                                <xsl:value-of select="tei:title"/>
                            </xsl:element>
                            ,
                            <xsl:for-each select="tei:author/tei:persName">
                                <i><xsl:value-of select="." /></i>,
                            </xsl:for-each>
                            <xsl:for-each select="tei:pubPlace/tei:placeName">
                                <xsl:value-of select="."/>,
                            </xsl:for-each>
                            <xsl:value-of select="tei:publisher"/>,
                            <xsl:value-of select="tei:date"/>
                        </xsl:element>
                    </xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>
