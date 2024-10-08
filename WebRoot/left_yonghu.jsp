<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>


<li class="submenu">
    <a href="javascript:void(0);">
        <span class="icon"><i class="fa fa-globe"></i></span>
        <span class="text">视频信息管理</span>
        <span class="arrow"></span>
    </a>
    <ul>
        <li><a href="shipinxinxi_add.jsp" target="main">视频信息发布</a></li>
        <li><a href="shipinxinxi_list_faburen.jsp" target="main">视频信息查询</a></li>
    </ul>
</li>
<li class="submenu">
    <a href="javascript:void(0);">
        <span class="icon"><i class="fa fa-globe"></i></span>
        <span class="text">评论管理</span>
        <span class="arrow"></span>
    </a>
    <ul>
        <li><a href="pinglun_list_pinglunren.jsp" target="main">评论查询</a></li>
        <li><a href="pinglunhuifu_list_huifuren.jsp" target="main">回复记录</a></li>
    </ul>
</li>
<li class="submenu">
    <a href="javascript:void(0);">
        <span class="icon"><i class="fa fa-globe"></i></span>
        <span class="text">个人中心</span>
        <span class="arrow"></span>
    </a>
    <ul>
        <li><a href="yonghu_updtself.jsp" target="main">修改个人资料</a></li>
        <li><a href="mod.jsp" target="main">修改密码</a></li>
    </ul>
</li>
