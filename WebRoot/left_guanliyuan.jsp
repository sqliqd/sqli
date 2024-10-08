<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
 <%@ page language="java" import="java.util.*" %>
 <%@page import="util.*" %>


<li class="submenu">
    <a href="javascript:void(0);">
        <span class="icon"><i class="fa fa-globe"></i></span>
        <span class="text">账号管理</span>
        <span class="arrow"></span>
    </a>
    <ul>
        <li><a href="admins_list.jsp" target="main">管理员管理</a></li>
        <li><a href="admins_add.jsp" target="main">管理员添加</a></li>
        <li><a href="mod.jsp" target="main">密码修改</a></li>
    </ul>
</li>
<li class="submenu">
    <a href="javascript:void(0);">
        <span class="icon"><i class="fa fa-globe"></i></span>
        <span class="text">用户管理</span>
        <span class="arrow"></span>
    </a>
    <ul>
        <li><a href="yonghu_add.jsp" target="main">用户添加</a></li>
        <li><a href="yonghu_list.jsp" target="main">用户查询</a></li>
    </ul>
</li>
<li class="submenu">
    <a href="javascript:void(0);">
        <span class="icon"><i class="fa fa-globe"></i></span>
        <span class="text">视频信息管理</span>
        <span class="arrow"></span>
    </a>
    <ul>
        <li><a href="shipinleixing_add.jsp" target="main">视频类型添加</a></li>
        <li><a href="shipinleixing_list.jsp" target="main">视频类型查询</a></li>
        <li><a href="shipinxinxi_add.jsp" target="main">视频信息添加</a></li>
        <li><a href="shipinxinxi_list.jsp" target="main">视频信息查询</a></li>
    </ul>
</li>
<li class="submenu">
    <a href="javascript:void(0);">
        <span class="icon"><i class="fa fa-globe"></i></span>
        <span class="text">评论管理</span>
        <span class="arrow"></span>
    </a>
    <ul>
        <li><a href="pinglun_list.jsp" target="main">评论查询</a></li>
        <li><a href="pinglunhuifu_list.jsp" target="main">评论回复查询</a></li>
    </ul>
</li>
<li class="submenu">
    <a href="javascript:void(0);">
        <span class="icon"><i class="fa fa-globe"></i></span>
        <span class="text">轮播图管理</span>
        <span class="arrow"></span>
    </a>
    <ul>
        <li><a href="lunbotu_add.jsp" target="main">轮播图添加</a></li>
        <li><a href="lunbotu_list.jsp" target="main">轮播图查询</a></li>
    </ul>
</li>
