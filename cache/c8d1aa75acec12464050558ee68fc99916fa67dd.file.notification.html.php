<?php /* Smarty version Smarty-3.0.7, created on 2018-02-11 02:02:05
         compiled from "application/views\base/templates/notification.html" */ ?>
<?php /*%%SmartyHeaderCode:9025573d6677f34539-35617940%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c8d1aa75acec12464050558ee68fc99916fa67dd' => 
    array (
      0 => 'application/views\\base/templates/notification.html',
      1 => 1463640988,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '9025573d6677f34539-35617940',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<!-- notification template -->
<?php if ((($tmp = @$_smarty_tpl->getVariable('notification_header')->value)===null||$tmp==='' ? '' : $tmp)=="error"){?>
<div class="alert alert-danger alert-dismissible">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
    <h4><i class="icon fa fa-ban"></i> <?php echo ((mb_detect_encoding($_smarty_tpl->getVariable('notification_header')->value, 'UTF-8, ISO-8859-1') === 'UTF-8') ? mb_strtoupper($_smarty_tpl->getVariable('notification_header')->value,SMARTY_RESOURCE_CHAR_SET) : strtoupper($_smarty_tpl->getVariable('notification_header')->value));?>
 : <?php echo $_smarty_tpl->getVariable('notification_message')->value;?>
</h4>
    <?php echo $_smarty_tpl->getVariable('notification_message')->value;?>

</div>
<?php }elseif((($tmp = @$_smarty_tpl->getVariable('notification_header')->value)===null||$tmp==='' ? '' : $tmp)=="success"){?>
<div class="alert alert-success alert-dismissible">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
    <h4><i class="icon fa fa-ban"></i> <?php echo ((mb_detect_encoding($_smarty_tpl->getVariable('notification_header')->value, 'UTF-8, ISO-8859-1') === 'UTF-8') ? mb_strtoupper($_smarty_tpl->getVariable('notification_header')->value,SMARTY_RESOURCE_CHAR_SET) : strtoupper($_smarty_tpl->getVariable('notification_header')->value));?>
 : <?php echo $_smarty_tpl->getVariable('notification_message')->value;?>
</h4>
    <?php echo $_smarty_tpl->getVariable('notification_message')->value;?>

</div>
<?php }else{ ?>
<?php }?>
<!-- End of notification template -->