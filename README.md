## Progetto di codifica di testi - Iskandar Huseynzade Ashmita Tandukar (2022-2023)

Il progetto è stato realizzato da Iskadnar Huseynzade ed Ashmita Tandukar per l'esame di codifica di testi, previsto dal corso di laurea triennale in Informatica Umanistica, nell'anno accademico 2023.
Il lavoro ha previsto la codifica di cinque pagine estratte dalla raccolta Diari di Emanuele Artom.

L'xml alla base del progetto è stato validato utilizzando Xerces, mentre per la generazione dell'output xsl->html è stato usato Saxon.
Di seguito sono presenti i comandi per validare e compilare il progetto:

## Validazione XML tramite Xerces

```shell
$ java -cp "_tools/xerces/xml-apis.jar;_tools/xerces/xercesImpl.jar;_tools/xerces/xercesSamples.jar" dom.Counter -v src/diario.xml
```

## Generazione output HTML a partire da .xsl tramite Saxon

```shell
$ java -jar _tools/saxon/saxon-he-11.4.jar -s:src/diario.xml -xsl:src/index.xsl -o:src/index.html
```