<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : movie.xsl
    Created on : 2014年4月8日, 下午9:40
    Author     : LinFan
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:movie="http://assignment.lf.org/movieapi" >
    
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8" />
                <title>
                    <xsl:value-of select="movie:movie/movie:title" />
                </title>
                <link rel="stylesheet" href="css/bootstrap.min.css" />
                <script src="js/jquery.min.js"></script>
                <link rel="stylesheet" href="css/movie.css" />
            </head>
            
            <body>
                <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                    <div class="container">
                        <ul class="nav navbar-nav">
                            <li class="nav-title">
                                <a href="#" style="color:white;">Movie Search Website</a>
                            </li>
                        </ul>

                        <form class="navbar-form navbar-right nav-search" action="">
                            <div class="form-group">
                                <input class="form-control" type="text" />
                            </div>  
                            <button class="btn btn-default">Search</button>
                        </form>
                    </div>
                </nav>
                
                <div class="container">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="content movie-info">
                                <img class="movie-cover">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="movie:movie/movie:posterImgUrl" />
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="movie:movie/movie:title" />
                                </xsl:attribute>
                                </img>
                                <div class="movie-info">
                                    <h3>
                                        <xsl:value-of select="movie:movie/movie:title" />(<xsl:value-of select="movie:movie/movie:year"/>)
                                    </h3>
                                    <ul class="movie-info-info">
                                        <li>
                                            <xsl:value-of select="//movie:originalTitle" />
                                        </li>
                                        <li>
                                            TAG:                                             
                                            <xsl:for-each select="//movie:genre">
                                                <xsl:value-of select="." />&#160;
                                            </xsl:for-each>
                                        </li>
                                        <li>
                                            Release Date: <xsl:value-of select="//movie:releaseDate" />
                                        </li>
                                        <li>
                                            Runtime: <xsl:value-of select="//movie:runtime" />
                                        </li>
                                    </ul>
                                </div>

                                <div class="movie-summary">
                                    <h3>SYNOPSIS</h3>  
                                    <p>
                                        <xsl:value-of select="//movie:plot"/>
                                    </p>
                                </div>
                                    
                                <div class="movie-summary">
                                    <h3>
                                        ACTORS
                                    </h3>
                                    <ul>
                                        <xsl:for-each select="//movie:cast">
                                            <li>
                                                <xsl:value-of select="." />
                                            </li>
                                        </xsl:for-each>
                                    </ul>
                                </div>
                                    
                                <div class="movie-summary">
                                    <h3>
                                        DIRECTORS
                                    </h3>
                                    <ul>
                                        <xsl:for-each select="//movie:director">
                                            <li>
                                                <xsl:value-of select="." />
                                            </li>
                                        </xsl:for-each>
                                    </ul>
                                </div>
                                
                                <div class="movie-summary">
                                    <h3>
                                        WRITERS
                                    </h3>
                                    <ul>
                                        <xsl:for-each select="//movie:writer">
                                            <li>
                                                <xsl:value-of select="." />
                                            </li>
                                        </xsl:for-each>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="content movie-link">
                                <h3>其它信息</h3>
                                <ul class="movie-links">
                                    <li>
                                        <a>
                                            <xsl:attribute name="href">
                                                <xsl:value-of select="movie:movie/movie:homepage" />
                                            </xsl:attribute>
                                            HomePage
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <xsl:attribute name="href">
                                                <xsl:value-of select="movie:movie/movie:IMDBUrl" />
                                            </xsl:attribute>
                                            IMDB
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-md-8">
                            <div class="content movie-comments">
                                <h3>评论</h3>
         
                            </div>
                        </div>
                    </div>

                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
