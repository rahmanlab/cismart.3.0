<?php /* Smarty version Smarty-3.0.7, created on 2016-05-19 09:39:08
         compiled from "application/views\master/category/delete.html" */ ?>
<?php /*%%SmartyHeaderCode:28530573d6d9c94dc58-46322453%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'db9f347e769e9486e5db2ada00251d5f1c3f06c0' => 
    array (
      0 => 'application/views\\master/category/delete.html',
      1 => 1463640986,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '28530573d6d9c94dc58-46322453',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<section class="content-header">
    <h1>
        Pengolahan Data Kategori
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-database"></i> Master</a></li>
        <li><a href="#"> Kategori</a></li>
        <li class="active">Hapus Data</li>
    </ol>
</section>

<section class="content">
    <!-- notification template -->
    <?php $_template = new Smarty_Internal_Template("base/templates/notification.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php unset($_template);?>
    <!-- end of notification template-->
    <div class="row">
        <div class="col-md-12">

            <div class="box box-danger">
                <div class="box-header with-border">
                    <h3 class="box-title">Apakah anda yakin ingin menghapus data ini ?</h3>
                    <div class="box-tools">
                        <a class="btn btn-sm btn-default" href="<?php echo $_smarty_tpl->getVariable('config')->value->site_url('master/category');?>
" ><i class="fa fa-long-arrow-left"></i> Kembali</a>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <form class="form-horizontal" action="<?php echo $_smarty_tpl->getVariable('config')->value->site_url('master/category/delete_process');?>
" method="post">
                        <input type="hidden" name="category_id" value="<?php echo (($tmp = @$_smarty_tpl->getVariable('result')->value['category_id'])===null||$tmp==='' ? '' : $tmp);?>
">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="category_nm" class="col-sm-2 control-label">Nama Kategori</label>
                                <div class="col-sm-4">
                                    <input type="text" name="category_nm" disabled value="<?php echo (($tmp = @$_smarty_tpl->getVariable('result')->value['category_nm'])===null||$tmp==='' ? '' : $tmp);?>
" class="form-control" id="category_nm" placeholder="">
                                </div>
                            </div>
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                            <div class="row">
                                <div class="col-md-3 col-md-offset-2">
                                    <button type="submit" class="btn btn-danger"><i class="fa fa-trash-o"></i> Hapus</button>
                                </div>
                            </div>
                        </div>
                        <!-- /.box-footer -->
                    </form>
                </div>
                <!-- /.box-body -->
                <div class="box-footer clearfix">
                    <?php echo (($tmp = @$_smarty_tpl->getVariable('pagination')->value['data'])===null||$tmp==='' ? '' : $tmp);?>

                </div>
            </div>
            <!-- /.box -->
        </div>
        <!-- /.col -->
    </div>
</section>
