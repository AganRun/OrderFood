<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<title>员工手册</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		<script type="application/x-javascript">
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		</script>
		<link href="../css/bootstrap.min.css" rel='stylesheet' type='text/css' />
		<link href="../css/style.css" rel='stylesheet' type='text/css' />
		<link href="../css/font-awesome.css" rel="stylesheet">
		<script src="../js/jquery.min.js"></script>
		<script src="../js/bootstrap.min.js"></script>
	</head>

	<body>
		<div id="wrapper">
		       <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
		            <div class="navbar-header">
		                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
		                    <span class="sr-only">Toggle navigation</span>
		                    <span class="icon-bar"></span>
		                    <span class="icon-bar"></span>
		                    <span class="icon-bar"></span>
		                </button>
		                <a class="navbar-brand" href="index.jsp">ELM</a>
		            </div>
		            
		            <!-- /.头部--按钮下拉 -->
		            <ul class="nav navbar-nav navbar-right">
					    <li class="dropdown">
			        		<a href="#" class="dropdown-toggle avatar" data-toggle="dropdown"><i class="fa fa-cog"></i></a>
			        		<ul class="dropdown-menu">
								<li class="m_2"><a href="http://ishuo.cn"  target="view_window"><i class="fa fa-coffee"></i> 轻松一刻</a></li>
								<li class="m_2"><a href="http://www.weather.com.cn"  target="view_window"><i class="fa fa-road"></i> 天 气 </a></li>
								<li class="m_2"><a href="http://map.baidu.com"  target="view_window"><i class="fa fa-umbrella"></i> 出行地图 </a></li>
								<li class="m_2"><a href="../../index/login.jsp"><i class="fa fa-lock"></i> 注销 </a></li>	
			        		</ul>
			      		</li>
					</ul>
					
					
					<form class="navbar-form navbar-right">
		              <input type="text" class="form-control" value="Search..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search...';}">
		            </form>
		            
		            <div class="navbar-default sidebar" role="navigation">
		                <div class="sidebar-nav navbar-collapse">
		                    <ul class="nav" id="side-menu">
		                        <li><a href="../index.jsp"><i class="fa  fa-home nav_icon"></i>主页</a></li>
		                        <li>
		                            <a href="#"><i class="fa fa-laptop nav_icon"></i>顾客管理<span class="fa arrow"></span></a>
		                            <ul class="nav nav-second-level">
		                                <li><a href="../CustomerManage/customer_Info.jsp">顾客信息管理</a></li>
		                                <li><a href="../CustomerManage/menber_Info.jsp">会员信息管理</a></li>
		                                <li><a href="../CustomerManage/blackList.jsp">黑名单管理</a></li>
		                            </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="fa fa-indent nav_icon"></i>商家管理<span class="fa arrow"></span></a>
		                            <ul class="nav nav-second-level">
		                                <li><a href="../Shop/shop_Info.jsp">商家信息管理</a></li>
		                                <li><a href="../Shop/blackList.jsp">黑名单管理</a></li>
		                            </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="fa fa-user nav_icon"></i>个人信息管理<span class="fa arrow"></span></a>
		                            <ul class="nav nav-second-level">
		                                <li>
		                                    <a href="../PersonalInfo/seeInfo.jsp">查看信息</a>
		                                    <a href="../PersonalInfo/changePwd.jsp">修改密码</a>
		                                </li>
		                            </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="fa fa-envelope nav_icon"></i>留言管理<span class="fa arrow"></span></a>
		                            <ul class="nav nav-second-level">
		                                <li>
		                                	<a href="../Message/threeMonth.jsp">近三个月留言查看</a>
		                                    <a href="../Message/badWords.jsp">恶意留言管理</a>
		                                    <a href="../Message/longWords.jsp">长留言管理</a>
		                                </li>
		                            </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="fa fa-flask nav_icon"></i>销售统计<span class="fa arrow"></span></a>
		                            <ul class="nav nav-second-level">
		                                <li><a href="../Money/month.jsp">月销量统计</a></li>
		                                <li><a href="../Money/day.jsp">日销量统计</a></li>
		                            </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="fa fa-check-square-o nav_icon"></i>订单管理<span class="fa arrow"></span></a>
		                            <ul class="nav nav-second-level">
		                                <li><a href="../List/threeMonth.jsp">近三个月订单</a></li>
		                                <li><a href="../List/refuseSeller.jsp">商家拒接单</a></li>
		                                <li><a href="../List/refuseCustomer.jsp">顾客拒收单</a></li>
		                                <li><a href="../List/good.jsp">高分订单</a></li>
		                                <li><a href="../List/bad.jsp">低分订单</a></li>
		                            </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="fa fa-pencil nav_icon"></i>常见问题<span class="fa arrow"></span></a>
		                            <ul class="nav nav-second-level">
		                                <li>
		                                    <a href="../Problem/orderAndPay.jsp">订餐支付</a>
		                                    <a href="../Problem/sellOver.jsp">售后服务</a>
		                                    <a href="../Problem/rules.jsp">网站规则</a>
		                                </li>
		                            </ul>
		                        </li>
		                        <li>
		                            <a href="#"><i class="fa fa-sitemap fa-fw nav_icon"></i>关于我们<span class="fa arrow"></span></a>
		                            <ul class="nav nav-second-level">
		                                <li>
		                                    <a href="../AboutUs/history.jsp">公司历史</a>
		                                    <a href="../AboutUs/future.jsp">前景规划</a>
		                                    <a href="../AboutUs/bandBook.jsp">员工手册</a>
		                                </li>
		                            </ul>
		                        </li>
		                    </ul>
		                </div>
		                <!-- /.sidebar-collapse -->
		            </div>
		            <!-- /.navbar-static-side -->
		        </nav>
		
		<div id="page-wrapper">
			<div class="graphs" style="background-image: url(../images/handBook_bg.jpg);height: 800px;">
				<div class="xs">
					<font>您当前的位置：</font><a><font color="red">关于我们</font></a>----><a><font  color="red">员工手册</font></a><br /><br />
				</div>
				<div><br /><br />
					<div class="container">
						<font>
							（一）基本准则

1、公司倡导“保质保量”的企业理念。

2、全体员工的一切工作行为，都须以“顾客为上帝”为准则。

3、做每一件事、说每一句话之前，都应该先考虑一下是否符合我们企业的目标、宗旨和精神。

4、每位公司员工都应该为公司的整体利益而进取和自律。<br /><br />
（二）职责权限

1、员工除本职日常工作外，未经公司法人代表授权或批准，不得从事下列活动：

（1）以公司名义考察、谈判、签约；

（2）以公司名义提供担保、证明；

（3）以公司名义对新闻媒介发表意见、消息；

（4）代表公司出席公众活动。

2、员工未获公司书面批准，不得在外兼任任何获取薪金的工作。

3、每位员工的工作必须对上级和下级负责，无下级的员工对手中的产品或服务负责。

4、员工可以在不与公司利益发生冲突的前提下，从事合法的投资活动。但禁止下列情形的个人投资：

（1）直接参与经营管理的；

（2）投资于公司的客户或商业竞争对手的；

（3）以职务之便向投资对象提供利益的；

（4）以直系亲属名义从事上述三项投资行为的。<br /><br />

（三）业务交往

1、员工在经营管理活动中，不准索取或者收受业务关联单位的酬金或回扣，否则将构成受贿。

2、员工在与业务关联单位的交往中，应坚持合法、正当的职业道德准则，反对以贿赂及其他不道德的手段取得不正当利益。

3、员工不得挪用公款谋取个人利益或为他人谋取利益。

4、员工的直系亲属从事可能会与公司利益发生冲突的业务时，员工应向公司申报，并提出职务上的回避。

5、员工在对外业务联系活动中，业务关联单位按规定合法给予的回扣和佣金，应一律上缴公司作为营业外收入以冲抵成本。个人侵吞的，以贪污论处。

6、员工在公司以外的交际应酬活动，应本着礼貌大方、简朴务实的原则，不得铺张浪费。严禁涉及任何违法犯罪活动。

7、员工在与业务关联单位的联系过程中，对超出正常业务联系所需要的交际活动，尤其是涉及以下四点的，应谢绝参加：

（1）奢华的宴请及娱乐活动；

（2）具有赌博性质的活动；

（3）邀请方的目的明显是为了从我方取得不适当利益的活动；（4）违反国家法律和社会公德的活动。

8、所有员工都有义务保守公司的各种经营管理信息，务必妥善保管所持有的涉密文件及内部资料。机密文件和资料不得擅自复印，未经特许，不得带出公司。

9、员工未经公司授权或批准，不准对外提供标有密级的公司文件，以及其他未予公开的经营情况、业务数据及相关信息。

10、员工未经批准，不准将公司的资金、车辆、设备、房产、原材料、产品等擅自赠与、转让、出租、出借、抵押给其他公司、单位或者个人。

11、员工对因工作需要配发给个人使用的如交通工具、电子设备等，不准违反使用规定。

12、全体员工都有义务和权力对违反以上准则的行为向公司各级主管以至董事长投诉。

13、接受投诉的部门和员工，应当为投诉人严格保密，并及时做出处理和答复。
						</font>
					</div><br /><br /><br /><br /><br />
 					<div style="text-align:center;">
						<p>Copyright &copy; 2016.Company name All rights reserved.More Templates</p>
					</div>

  
				</div>
				
			</div>
		</div>
		</div><!--Wrapper  -->
		<link href="../css/custom.css" rel="stylesheet">
		<script src="../js/metisMenu.min.js"></script>
		<script src="../js/custom.js"></script>
</body>
</html>
