<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.*"%>


<%
                %>
<% Map map = Query.make("shipinxinxi").where("id", request.getParameter("id")).find(); %><%@ include file="head.jsp" %>

<link href="js/video/video-js.min.css" rel="stylesheet">
<script src="js/video/ie8/videojs-ie8.js"></script>
<script src="js/video/video.min.js"></script>




<div>



<div class="panel panel-default">
    <div class="panel-heading">
        <span class="titles">
            视频信息详情
        </span>
    </div>
    <div class="panel-body">
        
    

<div class="pa10">
    <div class="pa10 bg-white">
        <table class="new-detail">
            <tbody>
            <tr>
                                    <td class="detail-title">
                        编号                    </td>
                    <td class="detail-value">
                        <%= map.get("bianhao") %>                    </td>
                                                        <td class="detail-title">
                        标题                    </td>
                    <td class="detail-value">
                        <%= map.get("biaoti") %>                    </td>
                                                        <td class="detail-title">
                        封面                    </td>
                    <td class="detail-value">
                        <img src="<%= map.get("fengmian") %>" style="width: 350px"/>                    </td>
                    </tr><tr>                                    <td class="detail-title">
                        分类                    </td>
                    <td class="detail-value">
                        <% 
 Map mapshipinleixing7 = new CommDAO().find("SELECT fenleimingcheng,id FROM shipinleixing where id='"+map.get("fenlei")+"'"); 
 %><%= mapshipinleixing7.get("fenleimingcheng") %>                    </td>
                                                        <td class="detail-title">
                        文件                    </td>
                    <td class="detail-value">
                        <% if( map.get("wenjian").equals( "" ) ){ %>无文件<% } else { %><a href="<%= map.get("wenjian") %>" download="" target="_blank">下载</a><% } %>                    </td>
                                                        <td class="detail-title">
                        点击量                    </td>
                    <td class="detail-value">
                        <%= map.get("dianjiliang") %>                    </td>
                    </tr><tr>                                    <td class="detail-title">
                        发布人                    </td>
                    <td class="detail-value">
                        <%= map.get("faburen") %>                    </td>
                                                        <td class="detail-title">
                        发布时间                    </td>
                    <td class="detail-value">
                        <%= map.get("addtime") %>                    </td>
                                                </tr>
            </tbody>
        </table>
    </div>
        <div class="mt10 pa10 bg-white">
        <div class="new-detail-line">
            <div class="detail-title">
                视频            </div>
            <td class="detail-value">
                <video id="example_video_1" class="video-js vjs-default-skin" style="width: 100%;height: 100%;min-height: 320px;" controls="" preload="none" poster="images/play.png" data-setup="{}">
                    <source src="<%= map.get("shipin") %>" type="video/mp4">
                    <track kind="captions" src="../shared/example-captions.vtt" srclang="en" label="English"></track>
                    <!-- Tracks need an ending tag thanks to IE9 -->
                    <track kind="subtitles" src="../shared/example-captions.vtt" srclang="en" label="English"></track>
                    <!-- Tracks need an ending tag thanks to IE9 -->
                    <p class="vjs-no-js">To view this video please enable JavaScript, and consider upgrading to a web browser that <a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a></p>
                </source></video>            </td>
        </div>
    </div>
        <div class="mt10 pa10 bg-white">
        <div class="new-detail-line">
            <div class="detail-title">
                简介            </div>
            <td class="detail-value">
                <%= map.get("jianjie") %>            </td>
        </div>
    </div>
        <div class="mt10 not-print">
        <button type="button" class="btn btn-default" onclick="history.go(-1);">
    返回
        
</button>
        <button type="button" class="btn btn-default" onclick="window.print()">
    打印本页
        
</button>
    </div>
</div>




    </div>
</div>


</div>


<%@ include file="foot.jsp" %>