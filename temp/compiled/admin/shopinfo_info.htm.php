<!-- $Id: shopinfo_info.htm 14216 2008-03-10 02:27:21Z testyang $ -->
<?php echo $this->fetch('pageheader.htm'); ?>
<form method="post" action="shopinfo.php" name="theForm"  onsubmit="return validate()">
<div class="form-div">
<?php echo $this->_var['lang']['title']; ?>&nbsp;:&nbsp;
<input type="text" name="title" size ="50" maxlength="60" value="<?php echo htmlspecialchars($this->_var['article']['title']); ?>" /><?php echo $this->_var['lang']['require_field']; ?>
</div>
<div class="main-div">
<table >
  <tr>
    <td  colspan ="2" align ="center" >
     <?php echo $this->_var['FCKeditor']; ?></script>
    </td>
  </tr>
  <tr>
    <td colspan="2" align="center"><br />
      <input type="submit" class="button" value="<?php echo $this->_var['lang']['button_submit']; ?>" />
      <input type="reset" class="button" value="<?php echo $this->_var['lang']['button_reset']; ?>" />
      <input type="hidden" name="act" value="<?php echo $this->_var['form_action']; ?>" />
      <input type="hidden" name="old_title" value="<?php echo $this->_var['article']['title']; ?>" />
      <input type="hidden" name="id" value="<?php echo $this->_var['article']['article_id']; ?>" />
    </td>
  </tr>
</table>
</div>
</form>
<?php echo $this->smarty_insert_scripts(array('files'=>'../js/utils.js,validator.js')); ?>

<script language="JavaScript">
<!--
document.forms['theForm'].elements['title'].focus();

onload = function()
{
    // 开始检查订单
    startCheckOrder();
}

/**
 * 检查表单输入的数据
 */
function validate()
{
    validator = new Validator("theForm");
    validator.required("title", no_title);
    return validator.passed();
}
//-->
</script>

<?php echo $this->fetch('pagefooter.htm'); ?>