<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.*" %>


<%
    new CommDAO().commOper("update shipinxinxi set dianjiliang=dianjiliang+1 where id='" + request.getParameter("id") + "'");

%>
<% Map map = Query.make("shipinxinxi").where("id", request.getParameter("id")).find(); %>
<%@ include file="head.jsp" %>
<%@ include file="header.jsp" %>

<link href="js/video/video-js.min.css" rel="stylesheet">
<script src="js/video/ie8/videojs-ie8.js"></script>
<script src="js/video/video.min.js"></script>


<div>


    <div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->


        <div class="title-modelbox-widget">
            <h3 class="section-title">
                详情 </h3>
            <div class="sidebar-widget-body">


                <div class="bilibili" style="background:#FFFFFF;">
                    <div class="plp-l">
                        <div class="player-module">
                            <div class="stardust-player">
                                <div class="player">
                                    <div class="bilibili-player relative">
                                        <div class="bilibili-player-area">
                                            <div class="bilibili-player-video-wrap">
                                                <video id="example_video_1" class="video-js vjs-default-skin"
                                                       style="width: 100%;height: 100%;min-height: 320px;" controls=""
                                                       preload="none" poster="images/play.png" data-setup="{}">
                                                    <source src="<%= map.get("shipin") %>" type="video/mp4">
                                                    <track kind="captions" src="../shared/example-captions.vtt"
                                                           srclang="en" label="English"></track>
                                                    <!-- Tracks need an ending tag thanks to IE9 -->
                                                    <track kind="subtitles" src="../shared/example-captions.vtt"
                                                           srclang="en" label="English"></track>
                                                    <!-- Tracks need an ending tag thanks to IE9 -->
                                                    <p class="vjs-no-js">To view this video please enable JavaScript,
                                                        and consider upgrading to a web browser that <a
                                                                href="http://videojs.com/html5-video-support/"
                                                                target="_blank">supports HTML5 video</a></p>
                                                    </source></video>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="plp-r">
                        <div class="media-wrapper" style="color:#535353;">
                            <h1><%= map.get("biaoti") %>
                            </h1>
                            <div class="tool-bar clearfix">
                                <div class="like-info">
                        <span>
                            分类                            :<%
                            Map mapshipinleixing8 = new CommDAO().find("SELECT fenleimingcheng,id FROM shipinleixing where id='" + map.get("fenlei") + "'");
                        %><%= mapshipinleixing8.get("fenleimingcheng") %>                        </span>
                                </div>
                                <div class="like-info">
                        <span>
                            文件                            :<% if (map.get("wenjian").equals("")) { %>无文件<% } else { %><a
                                href="<%= map.get("wenjian") %>" download="" target="_blank">下载</a><% } %>                        </span>
                                </div>
                                <div class="like-info">
                        <span>
                            点击量                            :<%= map.get("dianjiliang") %>                        </span>
                                </div>
                                <div class="like-info">
                        <span>
                            发布人                            :<%= map.get("faburen") %>                        </span>
                                </div>
                                <div class="like-info">
                        <span>
                            发布时间                            :<%= map.get("addtime") %>                        </span>
                                </div>
                            </div>
                            <div class="media-info clearfix">
                                <div class="media-right">


                                    <div class="media-desc">
                                        <%= Info.subStr(map.get("jianjie"), 120) %>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
            <!-- /.sidebar-widget-body -->
        </div>


        <!-- container定宽，并剧中结束 --></div>


</div>


<div>


    <div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->


        <div class="title-modelbox-widget">
            <h3 class="section-title">
                评论 </h3>
            <div class="sidebar-widget-body">


                <div class="gr-control-module-table">
                    <div class="">
                        <form action="pinglun.jsp?a=insert" method="post"><!-- form 标签开始 -->


                            <div class="form-group">


                                <textarea style="width: 80%;height: 120px" class="form-control" name="pinglunneirong"
                                          placeholder="请输入评论内容"></textarea>

                            </div>
                            <input type="hidden" name="biao" value="shipinxinxi"/>
                            <input name="biaoid" type="hidden" id="biaoid"
                                   value="<%= request.getParameter("id") !=null ? request.getParameter("id") : "" %>"/>
                            <input name="biaoti" type="hidden" id="biaoti" value="<%= map.get("biaoti") %>"/>
                            <input name="pinglunren" type="hidden"
                                   value="<%= session.getAttribute("username") !=null ? session.getAttribute("username") : "" %>"/>
                            <input type="hidden" class="referer_href" id="referer" name="referer" value=""/>
                            <script>
                                $(function () {
                                    $('.referer_href').val(location.href)
                                });
                            </script>

                            <div style="text-align: left">
                                <button type="submit" class="btn btn-primary">
                                    发布评论
                                </button>
                            </div>

                            <!--form标签结束--></form>
                    </div>

                    <% List<Map> pinglunList = Query.make("pinglun").where("biao", "shipinxinxi").where("biaoid", request.getParameter("id")).order("id desc").select(); %>

                    <div class="mt10">
                        <% for (Map pl : pinglunList) { %>
                        <% Map user = Query.make("yonghu").where("yonghuming", pl.get("pinglunren")).find(); %>

                        <div class="comment clearfix">
                            <div class="common-avatar J_User">
                                <% if (user.get("touxiang") == null || "".equals(user.get("touxiang"))) { %>
                                <img src="images/default.gif" width="100%" height="100%"/>
                                <% } else { %>
                                <img src="<%= user.get("touxiang") %>" width="100%" height="100%"/>
                                <% } %>
                            </div>
                            <div class="comment-block">
                                <p class="comment-user">
                                    <span class="comment-username J_User"> <%= user.get("xingming") %> </span>
                                    <span class="comment-time"><%= pl.get("addtime") %></span>

                                    <a href="pinglunhuifuadd.jsp?id=<%= pl.get("id") %>">回复</a>
                                </p>
                                <div class="comment-content J_CommentContent"><%= pl.get("pinglunneirong") %>
                                </div>

                                <%
                                    List<Map> huifuList = Query.make("pinglunhuifu").where("pinglunid", pl.get("id")).order("id desc").select(); %>

                                <div class="reply J_ReplyBlock">
                                    <% for (Map hf : huifuList) { %>
                                    <div class="reply-block">
                                        <div class="reply-content">
                                            <span class="reply-user">
                                                <b class="reply-user-nick J_User"
                                                   data-userid="120161158"><%= hf.get("huifuren") %></b>  : </span>
                                            <%= hf.get("huifuneirong") %>
                                        </div>
                                        <div class="reply-operate reply-operate--hot">
                                            <i class="reply-dot">·</i>
                                            <span><%= hf.get("addtime") %></span>
                                        </div>
                                    </div>
                                    <% } %>

                                </div>

                            </div>
                        </div>
                        <% } %>
                    </div>

                </div>


            </div>
            <!-- /.sidebar-widget-body -->
        </div>


        <!-- container定宽，并剧中结束 --></div>


</div>


<%@ include file="footer.jsp" %>
<%@ include file="foot.jsp" %>