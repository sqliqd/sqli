<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>
 <%@ include file="head.jsp" %>
 <%@ include file="header.jsp" %>


<link rel="stylesheet" href="js/swiper/swiper.css" />
<script src="js/swiper/swiper.js"></script>
<link href="js/owl/owl.carousel.min.css" rel="stylesheet" />
<script src="js/owl/owl.carousel.min.js"></script>

<div>
    <% List<Map> bhtList = Query.make("lunbotu").order("id desc").limit(5).select(); %>


    <div class="swiper-container" id="base/banner116">
        <div class="swiper-wrapper">
            <% for (Map bht : bhtList) { %>

            <div class="swiper-slide">
                <div class="decoimg_b2">
                    <a class="btn btn-" href="<%= bht.get("url") %>" style="background-image: url('<%= bht.get("image") %>'); height: 600px"></a>
                </div>
            </div>
            <%} %>

        </div>
        <!-- 如果需要分页器 -->
        <div class="swiper-pagination"></div>
        <!-- 如果需要导航按钮 -->
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
    </div>

    <script>
        var mySwiper = new Swiper("#base/banner116", {
            loop: true, // 循环模式选项
            autoplay: {
                delay: 3000,
                disableOnInteraction: false,
            },
            // 如果需要分页器
            pagination: {
                el: ".swiper-pagination",
            },
            // 如果需要前进后退按钮
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
            // 如果需要滚动条
            /*scrollbar: {
            el: '.swiper-scrollbar',
        },*/
        });
    </script>
</div>

<div>
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="title-modelbox-widget" style="margin: 5px 0 0 0">
            <h3 class="section-title">
                <div class="more">
                    <a href="shipinxinxilist.jsp">更多&gt;&gt;</a>
                </div>
                热门视频
            </h3>
            <div class="sidebar-widget-body">
                <div class="blog_carousel clearfix">
                    <% List<Map> shipinxinxilist121 = Query.make("shipinxinxi").limit(8).order("dianjiliang desc").select(); %>


                    <div class="row clearfix">
                        <% for (Map r : shipinxinxilist121) { %>

                        <div class="article-col col-md-3 col-xs-12">
                            <article class="single_blog">
                                <figure>
                                    <div class="blog_thumb">
                                        <a href="shipinxinxidetail.jsp?id=<%= r.get("id") %>" class="img-box pb80 img-scale">
                                            <div class="img" style="background-image: url('<%= r.get("fengmian") %>')"></div>
                                        </a>
                                    </div>
                                    <figcaption class="blog_content">
                                        <h4 class="post_title">
                                            <a href="shipinxinxidetail.jsp?id=<%= r.get("id") %>"> <%= Info.subStr(r.get("biaoti"), 12) %> </a>
                                        </h4>
                                        <div class="articles_date">
                                            <span><i class="fa fa-calendar" aria-hidden="true"></i> <%= r.get("addtime") %></span>
                                            <span v-if="vo.senduser"><i class="fa fa-user" aria-hidden="true"></i> <%= r.get("faburen") %></span>
                                        </div>
                                        <p class="post_desc"><%= Info.subStr(r.get("jianjie"), 45) %></p>
                                        <a href="shipinxinxidetail.jsp?id=<%= r.get("id") %>" class="btn-see"> + 查看详情</a>
                                        <span class="article-price">点击量 <%= r.get("dianjiliang") %></span>
                                    </figcaption>
                                </figure>
                            </article>
                        </div>
                        <%} %>

                    </div>
                </div>
            </div>
            <!-- /.sidebar-widget-body -->
        </div>

        <!-- container定宽，并剧中结束 -->
    </div>
</div>

<div>
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="title-modelbox-widget"  style="margin: 5px 0 0 0">
            <h3 class="section-title">
                <div class="more">
                    <a href="shipinxinxilist.jsp">更多&gt;&gt;</a>
                </div>
                最新发布
            </h3>
            <div class="sidebar-widget-body">
                <div class="blog_carousel clearfix">
                    <% List<Map> shipinxinxilist126 = Query.make("shipinxinxi").limit(8).order("id desc").select(); %>


                    <div class="row clearfix">
                        <% for (Map r : shipinxinxilist126) { %>

                        <div class="article-col col-md-3 col-xs-12">
                            <article class="single_blog">
                                <figure>
                                    <div class="blog_thumb">
                                        <a href="shipinxinxidetail.jsp?id=<%= r.get("id") %>" class="img-box pb80 img-scale">
                                            <div class="img" style="background-image: url('<%= r.get("fengmian") %>')"></div>
                                        </a>
                                    </div>
                                    <figcaption class="blog_content">
                                        <h4 class="post_title">
                                            <a href="shipinxinxidetail.jsp?id=<%= r.get("id") %>"> <%= Info.subStr(r.get("biaoti"), 12) %> </a>
                                        </h4>
                                        <div class="articles_date">
                                            <span><i class="fa fa-calendar" aria-hidden="true"></i> <%= r.get("addtime") %></span>
                                            <span v-if="vo.senduser"><i class="fa fa-user" aria-hidden="true"></i> <%= r.get("faburen") %> </span>
                                        </div>
                                        <p class="post_desc"><%= Info.subStr(r.get("jianjie"), 45) %></p>
                                        <a href="shipinxinxidetail.jsp?id=<%= r.get("id") %>" class="btn-see"> + 查看详情</a>
                                        <span class="article-price">点击量 <%= r.get("dianjiliang") %></span>
                                    </figcaption>
                                </figure>
                            </article>
                        </div>
                        <%} %>

                    </div>
                </div>
            </div>
            <!-- /.sidebar-widget-body -->
        </div>

        <!-- container定宽，并剧中结束 -->
    </div>
</div>

<%@ include file="footer.jsp" %>
 <%@ include file="foot.jsp" %>

