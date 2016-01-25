
<div class="goods-detail-comment-groom" style="border-width:0 0 1px 0">
  <div class="container">
      <ul class="main-block clearfix">
          <li class="percent">
              <div class="per-num"><i><?php echo $this->_var['comment_percent']['haoping_percent']; ?></i>%</div>
              <div class="per-title">购买后满意</div>
              <div class="per-amount"><i><?php echo $this->_var['pager']['record_count']; ?></i>名用户投票</div>
          </li>
          <li>
          	  <ul class="z-point-list" id="min_points">
                <li>
                  <label>好评：</label>
                  <p> <span style="width: <?php echo $this->_var['comment_percent']['haoping_percent']; ?>%;"></span> </p>
                  <em><?php echo $this->_var['comment_percent']['haoping_percent']; ?>%</em> </li>
                <li>
                  <label>中评：</label>
                  <p> <span style="width: <?php echo $this->_var['comment_percent']['zhongping_percent']; ?>%;"></span> </p>
                  <em><?php echo $this->_var['comment_percent']['zhongping_percent']; ?>%</em> </li>
                <li>
                  <label>差评：</label>
                  <p> <span style="width: <?php echo $this->_var['comment_percent']['chaping_percent']; ?>%;"></span> </p>
                  <em><?php echo $this->_var['comment_percent']['zhongping_percent']; ?>%</em> </li>
              </ul>
          </li>
          <li class="i-want-comment">
          	  <div>对自己购买过的商品进行评价，它将成为大家购买参考依据。</div>
              <div class="good_com_box"> 
                <?php if ($this->_var['factor'] == 0): ?>
                  所有用户都可以对该商品 <a href="javascript:void(0);" onClick="commentsFrom()" id="go_com" class="btn btn-primary">我要评价</a> 
                <?php elseif ($this->_var['factor'] == 1): ?>
                  登陆的用户才可以对该商品 <a href="javascript:void(0);" onClick="commentsFrom()" id="go_com" target="_blank" class="btn btn-primary" rel="nofollow">我要评价</a> 
                <?php elseif ($this->_var['factor'] == 2): ?>
                  在本站购买过一次商品的用户才可以对该商品 <a href="javascript:void(0);" onClick="commentsFrom()" id="go_com" target="_blank" class="btn btn-primary" rel="nofollow">我要评价</a> 
                <?php elseif ($this->_var['factor'] == 3): ?>
                  购买过此商品<?php echo $this->_var['goods_name']; ?>的用户才可以对该商品 <a href="javascript:void(0);" onClick="commentsFrom()" id="go_com" target="_blank" class="btn btn-primary" rel="nofollow">我要评价</a>
                <?php endif; ?> 
              </div>
          </li>
      </ul>
  </div>
</div>

<div class="goods-detail-comment-content">
	<div class="container">
    	<div class="row">
        	<div class="span20 goods-detail-comment-list">
            	<div class="comment-order-title">
                	<div class="left-title"><h3 class="comment-name">最有帮助的评价（<?php echo $this->_var['pager']['record_count']; ?>） </h3></div>
                	<div class="right-title J_showImg"><i class="iconfont">√</i> 只显示带图评价</div>
                </div>
                <ul class="comment-box-list">
                	<?php if ($this->_var['comments']): ?> 
                    <?php $_from = $this->_var['comments']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'comment');$this->_foreach['comment'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['comment']['total'] > 0):
    foreach ($_from AS $this->_var['comment']):
        $this->_foreach['comment']['iteration']++;
?>
                    <li class="item-rainbow-<?php echo $this->_foreach['comment']['iteration']; ?>">
                      <div class="user-image"> <img class="face_img" src="themes/xiaomi/images/default_45.png"> </div>
                      <div class="user-emoj">
                      	<?php if ($this->_var['comment']['rank_w'] == 100): ?>超爱<i class="iconfont"></i>
                        <?php elseif ($this->_var['comment']['rank_w'] > 79): ?>满意<i class="iconfont"></i>
                        <?php elseif ($this->_var['comment']['rank_w'] > 59): ?>一般<i class="iconfont"></i>
                        <?php elseif ($this->_var['comment']['rank_w'] > 39): ?>不满意<i class="iconfont"></i>
                        <?php elseif ($this->_var['comment']['rank_w'] == 20): ?>很失望<i class="iconfont"></i>
                        <?php endif; ?>
                      </div>
                      <div class="user-name-info">
                        <span class="user-name"><?php if ($this->_var['comment']['username']): ?><?php echo htmlspecialchars($this->_var['comment']['username']); ?><?php else: ?><?php echo $this->_var['lang']['anonymous']; ?><?php endif; ?></span> 
                      	<span class="user-time"><?php echo $this->_var['comment']['add_time']; ?></span>
                        <span class="pro-info"></span>
                      </div>
                      <dl class="user-comment">
                      	<dt class="user-comment-content"><p class="content-detail"><?php echo $this->_var['comment']['content']; ?></p></dt>
                        <dd class="user-comment-self-input hide">
                        	<div class="input-block"><input type="text" placeholder="回复楼主" class="J_commentAnswerInput"><a href="javascript:void(0);" class="btn  answer-btn J_commentAnswerBtn">回复</a></div>
                        </dd>
                        <?php if ($this->_var['comment']['re_content']): ?>
                        <dd class="user-comment-answer">
                            <img class="self-image" src="themes/xiaomi/images/default_45.png">
                            <div class="answer-user-name"><?php echo $this->_var['lang']['admin_username']; ?></div>
                            <p><?php echo $this->_var['comment']['re_content']; ?></p>
                        </dd>
                        <?php endif; ?>
                      </dl>
                    </li>
                    
                    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
                    <?php else: ?> 
                    <?php echo $this->_var['lang']['no_comments']; ?> 
                    <?php endif; ?>
                    <li class="pagenav">
                          <form name="selectPageForm" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="get">
                            <?php if ($this->_var['pager']['page_prev'] != "javascript:;"): ?>
                              <a href="<?php echo $this->_var['pager']['page_prev']; ?>" class="step"><?php echo $this->_var['lang']['page_prev']; ?></a>
                            <?php else: ?>
                              <a href="<?php echo $this->_var['pager']['page_prev']; ?>" class="step" style="border:1px solid #eee; color:#ccc;"><?php echo $this->_var['lang']['page_prev']; ?></a>
                            <?php endif; ?> 
                            <?php $_from = $this->_var['pager']['page_number']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item_0_82270300_1453707901');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item_0_82270300_1453707901']):
?> 
                              <?php if ($this->_var['pager']['page'] == $this->_var['key']): ?> 
                                <span class="currentStep"><?php echo $this->_var['key']; ?></span> 
                              <?php else: ?> 
                                <a href="<?php echo $this->_var['item_0_82270300_1453707901']; ?>" class="step"><?php echo $this->_var['key']; ?></a> 
                              <?php endif; ?> 
                            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
                            
                            <?php if ($this->_var['pager']['page_next'] != "javascript:;"): ?><a href="<?php echo $this->_var['pager']['page_next']; ?>" class="step"><?php echo $this->_var['lang']['page_next']; ?></a><?php else: ?><a href="<?php echo $this->_var['pager']['page_next']; ?>" class="step" style="border:1px solid #eee; color:#ccc;"><?php echo $this->_var['lang']['page_next']; ?></a><?php endif; ?> 
                            
                            <?php $_from = $this->_var['pager']['search']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item_0_82319200_1453707901');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item_0_82319200_1453707901']):
?>
                            <input type="hidden" name="<?php echo $this->_var['key']; ?>" value="<?php echo $this->_var['item_0_82319200_1453707901']; ?>" />
                            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                          </form>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
  
<div class="z-com-box-head">

<div class="z-com-list" id="ECS_COMMENT"> 
  
  
  <div id="compage">
   
  </div>
</div>
<script type="Text/Javascript" language="JavaScript">
        <!--
        
        function selectPage(sel)
        {
          sel.form.submit();
        }
        
        //-->
        </script> 


<div id="commentsFrom">
  <form action="javascript:;" onsubmit="submitComment(this)" method="post" name="commentForm" id="commentForm">
    <ul class="form addr-form" id="addr-form">
    <span style="position:absolute; right:10px; top:5px; font-size:24px; cursor:pointer;" onClick="easyDialog.close();">×</span>
      <li>
        <label><?php echo $this->_var['lang']['username']; ?></label>
        <?php if ($_SESSION['user_name']): ?><?php echo $_SESSION['user_name']; ?><?php else: ?><?php echo $this->_var['lang']['anonymous']; ?><?php endif; ?>
      </li>
         <li>
        <label>E-mail</label>
       <input type="text" name="email" id="email"  maxlength="100" value="<?php echo htmlspecialchars($_SESSION['email']); ?>" class="txt"/>
      </li>
         <li>
        <label><?php echo $this->_var['lang']['comment_rank']; ?></label>
       	  <input name="comment_rank" type="radio" value="1" id="comment_rank1" />
          <img src="themes/xiaomi/images/stars1.gif" />
          <input name="comment_rank" type="radio" value="2" id="comment_rank2" />
          <img src="themes/xiaomi/images/stars2.gif" />
          <input name="comment_rank" type="radio" value="3" id="comment_rank3" />
          <img src="themes/xiaomi/images/stars3.gif" />
          <input name="comment_rank" type="radio" value="4" id="comment_rank4" />
          <img src="themes/xiaomi/images/stars4.gif" />
          <input name="comment_rank" type="radio" value="5" checked="checked" id="comment_rank5" />
          <img src="themes/xiaomi/images/stars5.gif" />
      </li>
            <li>
        <label><?php echo $this->_var['lang']['comment_content']; ?></label>
       <textarea name="content" class="txt" style="height:80px; width:300px;"></textarea>
      </li>
     <?php if ($this->_var['enabled_captcha']): ?>
    <li> 
     <label><?php echo $this->_var['lang']['comment_captcha']; ?></label>

              <input type="text" class="txt" name="captcha" maxlength="6">
              <img src="captcha.php?<?php echo $this->_var['rand']; ?>" alt="captcha" id="captcha" onClick="this.src='captcha.php?'+Math.random()" width="100" height="34" style="height:34px;" > </li>
          <?php endif; ?>    
              
 
      <li>
      	<input type="hidden" name="cmt_type" value="<?php echo $this->_var['comment_type']; ?>" />
        <input type="hidden" name="id" value="<?php echo $this->_var['id']; ?>" />
        <label>&nbsp;&nbsp;&nbsp;&nbsp;</label>
       <input name="" type="submit"  value="提交评论" class="btn" style="border:none; height:40px; cursor:pointer; width:150px; font-size:16px;">
      </li>
    </ul>
  </form>
</div>

 

<script type="text/javascript">
//<![CDATA[
<?php $_from = $this->_var['lang']['cmt_lang']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item_0_82383500_1453707901');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item_0_82383500_1453707901']):
?>
var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item_0_82383500_1453707901']; ?>";
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>

/**
 * 提交评论信息
*/
function submitComment(frm)
{
  var cmt = new Object;

  //cmt.username        = frm.elements['username'].value;
  cmt.email           = frm.elements['email'].value;
  cmt.content         = frm.elements['content'].value;
  cmt.type            = frm.elements['cmt_type'].value;
  cmt.id              = frm.elements['id'].value;
  cmt.enabled_captcha = frm.elements['enabled_captcha'] ? frm.elements['enabled_captcha'].value : '0';
  cmt.captcha         = frm.elements['captcha'] ? frm.elements['captcha'].value : '';
  cmt.rank            = 0;

  for (i = 0; i < frm.elements['comment_rank'].length; i++)
  {
    if (frm.elements['comment_rank'][i].checked)
    {
       cmt.rank = frm.elements['comment_rank'][i].value;
     }
  }

//  if (cmt.username.length == 0)
//  {
//     alert(cmt_empty_username);
//     return false;
//  }

  if (cmt.email.length > 0)
  {
     if (!(Utils.isEmail(cmt.email)))
     {
        alert(cmt_error_email);
        return false;
      }
   }
   else
   {
        alert(cmt_empty_email);
        return false;
   }

   if (cmt.content.length == 0)
   {
      alert(cmt_empty_content);
      return false;
   }

   if (cmt.enabled_captcha > 0 && cmt.captcha.length == 0 )
   {
      alert(captcha_not_null);
      return false;
   }

   Ajax.call('comment.php', 'cmt=' + $.toJSON(cmt), commentResponse, 'POST', 'JSON');
   return false;
}

/**
 * 处理提交评论的反馈信息
*/
  function commentResponse(result)
  {
    if (result.message)
    {
      alert(result.message);
	  document.getElementById("captcha").src='captcha.php?'+Math.random();
    }

    if (result.error == 0)
    {
      var layer = document.getElementById('ECS_COMMENT');

      if (layer)
      {
        layer.innerHTML = result.content;
      }
	  easyDialog.close();
	  window.location.reload();
    }
  }
  
	function commentsFrom(){
		easyDialog.open({
			  container : 'commentsFrom'
		});	
	}

//]]>

</script>