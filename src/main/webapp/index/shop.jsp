<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html class="no-js" lang="zh">
 <head> 
  <meta charset="utf-8" /> 
  <title>店铺详情-shop_detail.html</title> 
  <meta name="description" content="地道老四川麻辣烫！" /> 
  <meta name="mobile-agent" content="format=html5;url=http://m.ele.me/kxljmlt-pt" /> 
  <meta name="viewport" content="width=device-width, initial-scale=1" /> 
  <link class="usemin" rel="stylesheet" href="<%=path %>/style/css/global.2730d877.css" /> 
  <link class="usemin" rel="stylesheet" href="<%=path %>/style/css/restaurant.92731b91.css" /> 
 </head> 
 <body id="restaurant"> 
  <div class="restaurant-header"> 
   <div class="container rst_header_con"> 
    <article class="rst-header-main rst-header-toggle rst_info_header" > 
     <header class="rst-header-info group"> 
      <a class="rst-logo" href="/kxljmlt-pt" > 
      	<img class="rst-logo-img" src="<%=path%>/style/images/list_logo.png"/> 
      </a> 
      <div class="rst-basic-info"> 
       <div class="rst-name-wrapper"> 
        <a class="rst-name text-overflow" href="/kxljmlt-pt" data-toggle="bs-tooltip" title="开心罗记麻辣烫" >
        	<img class="rst-logo-img" />
        	开心罗记麻辣烫</a> 
       </div> 
       <div class="rst-misc"> 
        <span class="rst-flavor text-overflow" title="中式">中式</span> 
       </div> 
      </div> 
     </header> 
    </article> 
    <nav class="rst-header-nav"> 
     <a class="rst-header-nav-item ui_active" href="<%=path%>/index/shop_detail.jsp">菜单</a> 
     <div class="inline-block relative"> 
      <span class="rst-header-nav-tip">看图点菜</span> 
      <a class="rst-header-nav-item" href="<%=path%>/index/shop_photos.jsp">美食墙</a> 
     </div> 
     <a class="rst-header-nav-item" href="javascript:;">评价</a> 
     <a class="rst-header-nav-item" href="javascript:;">留言</a> 
    </nav> 
    <ul class="rst-header-aside group rst_info_panel"> 
     <li class="rst-data-block"> 
      <div class="rst-data no-border"> 
       <b class="rst-data-info value">37</b> 
       <span class="rst-data-info unit">速度/分钟</span> 
      </div> </li> 
     <li class="rst-data-block rst-header-toggle rst_head_distance"> 
      <div class="rst-data caret"> 
       <b class="rst-data-info value rst_distance"></b> 
       <span class="rst-data-info unit">餐厅距离/米</span> 
      </div> 
      <div class="rst-header-dropdown"> 
       <div class="rst-header-map rst-data-detail"> 
        <img class="rst_map rst-map-img" alt="餐厅距离示意图" /> 
       </div> 
      </div> </li> 
     <li class="rst-data-block"> 
      <div class="rst-data"> 
       <b class="rst-data-info value rst_deliver_amount"></b> 
       <span class="rst-data-info unit">起送价/元</span> 
      </div> </li> 
    </ul> 
   </div> 
  </div> 
  <div class="container"> 
   <article id="rst_menus" class="restaurant-main"> 
    <div id="cate_view" class="rst-block">
     <section id="cate_view_887172"> 
      <h2 class="menu_title rst-menu-title" title="A套餐（12元）">美食单</h2>
      <ul class="rst-menu-list">
       <li id="food_view_10760144" class="rst-dish-item eleme_view"> 
        <div class="rst-d-info"> 
         <p class="rst-d-main"><a class="rst-d-name food_name" title="A1：包心贡丸、蟹肉棒、金针菇、日本豆腐、生菜、豆腐衣、山芋粉丝">A1：包心贡丸、蟹肉棒、金针菇、日本豆…</a></p>
        </div> 
        <div class="rst-d-note">
         <span class="rst-d-ordered dish_state hide"></span>
        </div> 
        <div class="rst-d-action r_d_a">
         <div class="rst-d-act act_btns">
          <a class="rst-d-act-add add_btn" title="点击饿一份" ><span class="rst-d-act-glyph"></span><span class="price symbol-rmb">12</span></a>
         </div>
        </div> 
        <div class="rst-d-status cmt_block"> 
         <span class="rst-d-rating food_rating"> <i class="icon-d-star s10 i_s"></i>(1)</span>
         <br />
         <span class="rst-d-sales">月售8份</span>
        </div> 
       </li> 
       <li id="food_view_10760144" class="rst-dish-item eleme_view"> 
        <div class="rst-d-info"> 
         <p class="rst-d-main"><a class="rst-d-name food_name" title="A1：包心贡丸、蟹肉棒、金针菇、日本豆腐、生菜、豆腐衣、山芋粉丝">A1：包心贡丸、蟹肉棒、金针菇、日本豆…</a></p>
        </div> 
        <div class="rst-d-note">
         <span class="rst-d-ordered dish_state hide"></span>
        </div> 
        <div class="rst-d-action r_d_a">
         <div class="rst-d-act act_btns">
          <a class="rst-d-act-add add_btn" title="点击饿一份" ><span class="rst-d-act-glyph"></span><span class="price symbol-rmb">12</span></a>
         </div>
        </div> 
        <div class="rst-d-status cmt_block"> 
         <span class="rst-d-rating food_rating"> <i class="icon-d-star s10 i_s"></i>(1)</span>
         <br />
         <span class="rst-d-sales">月售8份</span>
        </div> 
       </li> 
      </ul>
     </section>
    </div> 
   </article> 
   <aside id="rst_aside" class="restaurant-aside"> 
    <section class="rst-block restaurant-board"> 
     <h3 class="rst-aside-title">餐厅公告</h3> 
     <p class="rst-deliver-detail"> <i class="icon-rst-deliver"></i>起送价<span class="rst_deliver_amount"></span>元。 </p> 
     <ul class="rst-badge-list"> 
      <li class="rst-badge-item"> <i class="icon-rst-badge v v-person"></i> 该商家已通过个人身份认证 </li> 
      <li class="rst-badge-item"><i class="icon-rst-badge online-payment"></i>该餐厅支持在线支付</li> 
      <li class="rst-badge-item"><i class="icon-rst-badge new-user-discount"></i>饿了么新用户首次订餐，可立减15元。(不与其他活动同享)</li> 
      <li class="rst-badge-item"><i class="icon-rst-badge extra-discount"></i>在线支付满20减10</li> 
     </ul> 
    </section> 
    <section id="favor_food" class="rst-block"></section> 
    <section id="rec_food" class="rst-block hide"> 
     <h3 class="rst-aside-title">本周热卖</h3> 
     <ul id="weekly_ranking" class="rst-aside-menu-list"></ul> 
    </section> 
    <section class="rst-block rst-aside-map rst_aside_distance"> 
     <div class="rst-map-distance">
      距离
      <span id="r_d_v" class="distance-value"></span>米
     </div> 
     <img class="rst_map rst-map-img" src="" alt="餐厅距离示意图" /> 
    </section> 
    <section class="rst-block restaurant-board fixed rst_fix_panel"> 
     <h3 class="rst-aside-title">餐厅公告</h3> 
     <p class="rst-deliver-detail"> <i class="icon-rst-deliver"></i>起送价<span class="rst_deliver_amount"></span>元。 </p> 
    </section> 
   </aside> 
   <div id="rst_cart" class="restaurant-cart"></div> 
  </div> 
  <div class="rst-mask s_r_m"></div> 
  <div class="rst-drawer-wrapper r_d_w"> 
   <article class="rst-drawer slide_content_wrap"></article> 
   <div class="drawer-photo-modal slide_gallery ui_hide"> 
    <a class="bs-close gallery_close_btn" >&times;</a> 
    <img class="dpm-image gallery_img" src="" alt="" title="" /> 
   </div> 
  </div> 
  <div id="modal_iLogin" class="bs-modal fade ilogin-modal" tabindex="-1" > 
   <div class="bs-modal-dialog"> 
    <div class="bs-modal-content"> 
     <div class="bs-modal-body"> 
      <a class="bs-close" data-dismiss="bs-modal" >&times;</a> 
      <iframe class="ilogin-iframe login_frame" src="" ></iframe> 
     </div> 
    </div> 
   </div> 
  </div> 
  <footer class="site-footer group" > 
   <div class="container"> 
    <p class="sfooter-line"> <a class="sfooter-link" href="http://kaidian.ele.me">我要开店</a> | <a class="sfooter-link" href="contact.html">联系我们</a> | <a class="sfooter-link" href="http://ele.me/about/agreement">服务条款和协议</a> | <a class="sfooter-link" href="sitemaps.html">站点地图</a> | <a class="sfooter-link" href="http://ele.me/jobs">加入我们</a> </p> 
    <p class="sfooter-line"> 增值电信业务许可证：<a class="sfooter-link sfooter-link-zero" target="_blank" rel="nofollow" href="http://www.shca.gov.cn">沪B2-20150033</a> <a class="sfooter-link" target="_blank" rel="nofollow" href="http://www.miibeian.gov.cn">沪ICP备 09007032</a> <a class="sfooter-link" target="_blank" rel="nofollow" href="http://www.sgs.gov.cn/lz/licenseLink.do?method=licenceView&amp;entyId=20120305173227823">上海工商行政管理</a> Copyright &copy;2008-2015 ele.me, All Rights Reserved. </p> 
   </div> 
  </footer> 
  
 </body>
</html>