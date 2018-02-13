<?php /* Smarty version Smarty-3.0.7, created on 2018-02-13 04:28:03
         compiled from "application/views\base/operator/document.html" */ ?>
<?php /*%%SmartyHeaderCode:75285a825b439cd1f0-83616978%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5c595cb31bddbc5c751a10c85e0614e381b7a434' => 
    array (
      0 => 'application/views\\base/operator/document.html',
      1 => 1518428832,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '75285a825b439cd1f0-83616978',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<!DOCTYPE html>
<html lang="en">
<!-- head -->
<head>
    <meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
    <meta name='description' content="<?php echo (($tmp = @$_smarty_tpl->getVariable('site')->value['meta_desc'])===null||$tmp==='' ? '' : $tmp);?>
" />
    <meta name='keywords' content="<?php echo (($tmp = @$_smarty_tpl->getVariable('site')->value['meta_key'])===null||$tmp==='' ? '' : $tmp);?>
" />
    <meta name='robots' content='index,follow' />
    <title><?php echo (($tmp = @$_smarty_tpl->getVariable('page')->value['nav_title'])===null||$tmp==='' ? 'Home' : $tmp);?>
 - <?php echo (($tmp = @$_smarty_tpl->getVariable('site')->value['site_title'])===null||$tmp==='' ? '' : $tmp);?>
</title>
    <link href="<?php echo $_smarty_tpl->getVariable('BASEURL')->value;?>
/resource/doc/images/icon/favicon-operator.png" rel="SHORTCUT ICON" />
    <!-- themes style -->
    <?php echo $_smarty_tpl->getVariable('LOAD_STYLE')->value;?>

    <link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->getVariable('THEMESPATH')->value;?>
" media="screen" />
    <!-- other style -->
</head>
<!-- body -->
<body class="hold-transition skin-green-light layout-top-nav">
    <!-- load javascript -->
    <?php echo $_smarty_tpl->getVariable('LOAD_JAVASCRIPT')->value;?>

    <!-- end of javascript	-->
    <!-- layout -->
    <div class="wrapper">
        <header class="main-header">
			<nav class="navbar navbar-static-top">
			  <div class="container">
				<div class="navbar-header">
				  <a href="index2.html" class="logo">
					<!-- mini logo for sidebar mini 50x50 pixels -->
					<span class="logo-mini"><b>CS</b>3.1</span>
					<!-- logo for regular state and mobile devices -->
					<span class="logo-lg"><b>CI</b>smart 3.1</span>
				</a>
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
					<i class="fa fa-bars"></i>
				  </button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="navbar-collapse">
					<?php $_template = new Smarty_Internal_Template(($_smarty_tpl->getVariable('template_sidebar')->value), $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" id="navbar-search-input" placeholder="Search">
						</div>
					</form>
					<ul class="nav navbar-nav pull-right">
						<!-- User Account Menu -->
						<li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="<?php echo $_smarty_tpl->getVariable('BASEURL')->value;?>
/resource/doc/images/icon/user-image.png" class="user-image" alt="User Image">
                                <span class="hidden-xs">Selamat Datang <b><?php echo ((mb_detect_encoding($_smarty_tpl->getVariable('com_user')->value['user_name'], 'UTF-8, ISO-8859-1') === 'UTF-8') ? mb_strtoupper($_smarty_tpl->getVariable('com_user')->value['user_name'],SMARTY_RESOURCE_CHAR_SET) : strtoupper($_smarty_tpl->getVariable('com_user')->value['user_name']));?>
</b></span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- User image -->
                                <li class="user-header">
                                    <img src="<?php echo $_smarty_tpl->getVariable('BASEURL')->value;?>
/resource/doc/images/avatar5.png" class="img-circle" alt="User Image">
                                    <p>
                                        <?php echo ((mb_detect_encoding($_smarty_tpl->getVariable('com_user')->value['user_name'], 'UTF-8, ISO-8859-1') === 'UTF-8') ? mb_strtoupper($_smarty_tpl->getVariable('com_user')->value['user_name'],SMARTY_RESOURCE_CHAR_SET) : strtoupper($_smarty_tpl->getVariable('com_user')->value['user_name']));?>

                                        <small>Member since Nov. 2012</small>
                                    </p>
                                </li>
                                <!-- Menu Footer-->
                                <li class="user-footer">
                                    <div class="pull-left">
                                        <a href="#" class="btn btn-default btn-flat">Profile</a>
                                    </div>
                                    <div class="pull-right">
                                        <a href="<?php echo $_smarty_tpl->getVariable('config')->value->site_url('login/operatorlogin/logout_process');?>
" class="btn btn-default btn-flat">Sign out</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
					</ul>
				</div>
				<!-- /.navbar-custom-menu -->
			  </div>
			  <!-- /.container-fluid -->
			</nav>
		</header>
        <div class="content-wrapper">
            <?php $_template = new Smarty_Internal_Template(($_smarty_tpl->getVariable('template_content')->value), $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>
        </div>
        <!-- /#page-wrapper -->
    </div>
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 3.1
        </div>
        <strong>Copyright © 2018 <a target="_blank" href="http://pragmainf.co.id">PT. Pragma Informatika</a>.</strong>
    </footer>
</div>
<!-- /#wrapper -->
<!-- end of layout	-->
<script>
	$(document).ready(function(){
		
	});
  $(function (){
   
    /*
     * LINE CHART
     * ----------
     */
    //LINE randomly generated data

    var sin = [], cos = [];
    for (var i = 0; i < 14; i += 0.5) {
      sin.push([i, Math.sin(i)]);
      cos.push([i, Math.cos(i)]);
    }
    var line_data1 = {
      data: sin,
      color: "#3c8dbc"
    };
    var line_data2 = {
      data: cos,
      color: "#00c0ef"
    };
    $.plot("#line-chart", [line_data1, line_data2], {
      grid: {
        hoverable: true,
        borderColor: "#f3f3f3",
        borderWidth: 1,
        tickColor: "#f3f3f3"
      },
      series: {
        shadowSize: 0,
        lines: {
          show: true
        },
        points: {
          show: true
        }
      },
      lines: {
        fill: false,
        color: ["#3c8dbc", "#f56954"]
      },
      yaxis: {
        show: true,
      },
      xaxis: {
        show: true
      }
    });
    //Initialize tooltip on hover
    $('<div class="tooltip-inner" id="line-chart-tooltip"></div>').css({
      position: "absolute",
      display: "none",
      opacity: 0.8
    }).appendTo("body");
    $("#line-chart").bind("plothover", function (event, pos, item) {

      if (item) {
        var x = item.datapoint[0].toFixed(2),
            y = item.datapoint[1].toFixed(2);

        $("#line-chart-tooltip").html(item.series.label + " of " + x + " = " + y)
            .css({
				top: item.pageY + 5, 
				left: item.pageX + 5
			})
            .fadeIn(200);
      } else {
        $("#line-chart-tooltip").hide();
      }

    });
    /* END LINE CHART */

  });
</script>
</body>
<!-- end body -->
</html>
