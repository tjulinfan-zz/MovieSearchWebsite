<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : search.xsl
    Created on : 2014年4月9日, 下午11:32
    Author     : LinFan
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:s="http://assignment.lf.org/searchapi" >
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Search Page</title>
                <meta charset="UTF-8" />
                <link rel="stylesheet" href="css/bootstrap.min.css" />
                <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
                <link rel="stylesheet" href="css/movie.css" />
                <link rel="stylesheet" href="css/docs.min.css" />
            </head>
            <body>
                <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                    <div class="container">
                        <ul class="nav navbar-nav">
                            <li class="nav-title">
                                <a href="/MovieSearchWebsite/index.html" style="color:white;">Movie Search Website</a>
                            </li>
                        </ul>

                        <form class="navbar-form navbar-right nav-search" action="/MovieSearchWebsite/search">
                            <div class="form-group">
                                <input class="form-control" type="text" name="q" required="required"/>
                            </div>  
                            <button class="btn btn-default">Search</button>
                        </form>
                    </div>
                </nav>
                
                <div class="container">
                    <div class="row col-md-6 col-md-offset-3">
                        
                        <xsl:for-each select="//s:movieItem">
                            <div class="thumbnail">
                                <div class="row">
                                    <div class="col-md-5">
                                        <img class="img-responsive">
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="s:posterImgUrl"/>
                                            </xsl:attribute>
                                            <xsl:attribute name="alt">
                                                <xsl:value-of select="s:title"/>
                                            </xsl:attribute>
                                        </img>
                                    </div>
                                    <div class="col-md-7">
                                        <br />
                                        <h3>
                                            <a>
                                                <xsl:attribute name="href">/MovieSearchWebsite/movie?tmdid=<xsl:value-of select="s:TMDId"/></xsl:attribute>
                                                <span class="label label-default">
                                                    <xsl:value-of select="s:title"/>
                                                </span>
                                            </a>
                                        </h3>
                                        <br />
                                        <h4>
                                            <xsl:value-of select="s:originalTitle"/>
                                        </h4>
                                        <h4>
                                            <xsl:value-of select="s:releaseDate"/>
                                        </h4>
                                    </div>
                                </div>
                            </div>
                        </xsl:for-each>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
