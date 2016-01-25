<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="Generator" content="NanJingSecond-Hand v1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="<?php echo $this->_var['keywords']; ?>" />
<meta name="Description" content="<?php echo $this->_var['description']; ?>" />

<title><?php echo $this->_var['page_title']; ?></title>



<link rel="shortcut icon" href="favicon.ico" />
<link rel="icon" href="animated_favicon.gif" type="image/gif" />
<link href="<?php echo $this->_var['ecs_css_path']; ?>" rel="stylesheet" type="text/css" />
<link href="themes/xiaomi/goods.css" rel="stylesheet" type="text/css" />

<?php echo $this->smarty_insert_scripts(array('files'=>'common.js')); ?>
<script type="text/javascript">
function $id(element) {
  return document.getElementById(element);
}
//切屏--是按钮，_v是内容平台，_h是内容库
function reg(str){
  var bt=$id(str+"_b").getElementsByTagName("h2");
  for(var i=0;i<bt.length;i++){
    bt[i].subj=str;
    bt[i].pai=i;
    bt[i].style.cursor="pointer";
    bt[i].onclick=function(){
      $id(this.subj+"_v").innerHTML=$id(this.subj+"_h").getElementsByTagName("blockquote")[this.pai].innerHTML;
      for(var j=0;j<$id(this.subj+"_b").getElementsByTagName("h2").length;j++){
        var _bt=$id(this.subj+"_b").getElementsByTagName("h2")[j];
        var ison=j==this.pai;
        _bt.className=(ison?"":"h2bg");
      }
    }
  }
  $id(str+"_h").className="none";
  $id(str+"_v").innerHTML=$id(str+"_h").getElementsByTagName("blockquote")[0].innerHTML;
}

</script>
</head>
<body>
<?php echo $this->fetch('library/page_header.lbi'); ?><?php echo $this->smarty_insert_scripts(array('files'=>'magiczoomplus.js,easydialog.min.js,xiaomi_goods.js')); ?>
<?php echo $this->fetch('library/ur_here_goods.lbi'); ?> 
<div class="goods-detail">
  <div class="goods-detail-info  clearfix J_goodsDetail"> 
  	<div class="container">
    	<div class="row">
          <div class="span13  J_mi_goodsPic_block goods-detail-left-info">
           
          <?php echo $this->fetch('library/goods_gallery.lbi'); ?>
          </div>
          <div class="span7 goods-info-rightbox">
          <form action="javascript:addToCart(<?php echo $this->_var['goods']['goods_id']; ?>)" method="post" name="ECS_FORMBUY" id="ECS_FORMBUY" >
            
            
            <div class="goods-info-box" id="item-info">
              <dl class="loaded">
              	<dt class="goods-info-head">
                	<dl>
                    	<dt class="goods-name"><?php echo $this->_var['goods']['goods_style_name']; ?></dt>
                        <dd class="goods-phone-type"><p><?php echo $this->_var['goods']['goods_brief']; ?></p></dd>
                        <?php if ($this->_var['cfg']['show_marketprice']): ?>
                        <del><?php echo $this->_var['lang']['market_price']; ?>： <em class="cancel"><?php echo $this->_var['goods']['market_price']; ?></em></del>
                        <?php endif; ?>
                        <dd class="goods-info-head-price clearfix">

                              <?php if ($this->_var['goods']['is_promote'] && $this->_var['goods']['gmt_end_time']): ?> 
                              <?php echo $this->smarty_insert_scripts(array('files'=>'lefttime.js')); ?> 
                              <span class="icon_promo">抢购</span> 
                              <span><?php echo $this->_var['lang']['promote_price']; ?></span> 
                              <span class="unit"> <strong class="nala_price red" id="ECS_SHOPPRICE"><?php echo $this->_var['goods']['promote_price']; ?></strong> </span>  
                              <span class="timedown" id="timedown">
                              	<i class="iconfont">☀</i>
                                剩余时间：<strong id="leftTime" class="font_w"><?php echo $this->_var['lang']['please_waiting']; ?></strong>
                              </span> 
                              
                              <?php else: ?> 
                              <span><?php echo $this->_var['lang']['shop_price']; ?>：</span> <span class="unit"> <b class="nala_price red" id="ECS_SHOPPRICE"><?php echo $this->_var['goods']['shop_price_formated']; ?> </b> </span>  
                              
                                <?php if ($this->_var['rank_prices']): ?> 
                                <a href="javascript:;" id="membership" data-type="normal" class="membership">高级会员购买享有折扣</a>
                                <div class="membership_con">
                                  <div class="how-bd">
                                    <h3>会员价格</h3>
                                    <table width="100%">
                                      <tbody>
                                        <tr>
                                          <td width="50%">会员等级</td>
                                          <td width="50%">会员价格</td>
                                        </tr>
                                        <?php $_from = $this->_var['rank_prices']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'rank_price');$this->_foreach['rank_price'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['rank_price']['total'] > 0):
    foreach ($_from AS $this->_var['key'] => $this->_var['rank_price']):
        $this->_foreach['rank_price']['iteration']++;
?>
                                        <tr id="ECS_RANKPRICE_<?php echo $this->_var['key']; ?>">
                                          <td><?php echo $this->_var['rank_price']['rank_name']; ?></td>
                                          <td><?php echo $this->_var['rank_price']['price']; ?></td>
                                        </tr>
                                        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                                      </tbody>
                                    </table>
                                  </div>
                                </div>
                                <?php endif; ?> 
                              
                              <?php endif; ?> 
                                
                       	</dd>
                        <dd>
                        	
                            <ul>
                              <?php if ($this->_var['goods']['is_shipping']): ?>
                              <li> <span class="lbl"><?php echo $this->_var['lang']['goods_free_shipping']; ?></span> </li>
                              
                              <?php endif; ?> 
                              <?php if ($this->_var['cfg']['show_goodssn']): ?>
                              <li> <span class="lbl"><?php echo $this->_var['lang']['goods_sn']; ?></span> <em><?php echo $this->_var['goods']['goods_sn']; ?></em> </li>
                              
                              <?php endif; ?> 
                              
                              <?php if ($this->_var['goods']['goods_number'] != "" && $this->_var['cfg']['show_goodsnumber']): ?> 
                              <?php if ($this->_var['goods']['goods_number'] == 0): ?>
                              <li> <span class="lbl"><?php echo $this->_var['lang']['goods_number']; ?></span> <em><?php echo $this->_var['lang']['stock_up']; ?></em> </li>
                              
                              <?php else: ?>
                              <li> <span class="lbl"><?php echo $this->_var['lang']['goods_number']; ?></span> <em><?php echo $this->_var['goods']['goods_number']; ?> <?php echo $this->_var['goods']['measure_unit']; ?></em> </li>
                              <?php endif; ?> 
                              <?php endif; ?> 
                              <?php if ($this->_var['cfg']['show_addtime']): ?>
                              <li> <span class="lbl"><?php echo $this->_var['lang']['add_time']; ?></span> <em><?php echo $this->_var['goods']['add_time']; ?></em> </li>
                              
                              <?php endif; ?> 
                              <?php if ($this->_var['cfg']['show_goodsweight']): ?>
                              <li> <span class="lbl"><?php echo $this->_var['lang']['goods_weight']; ?></span> <em><?php echo $this->_var['goods']['goods_weight']; ?></em> </li>
                              
                              <?php endif; ?> 
                              
                              <?php if ($this->_var['goods']['give_integral'] > 0): ?>
                              
                              <li><span><?php echo $this->_var['lang']['goods_give_integral']; ?>可获<em class="red"><?php echo $this->_var['goods']['give_integral']; ?></em><?php echo $this->_var['points_name']; ?></span></li>
                              <?php endif; ?> 
                              
                              <?php if ($this->_var['cfg']['use_integral']): ?>
                              <li><span><?php echo $this->_var['lang']['goods_integral']; ?><em class="red"><?php echo $this->_var['goods']['integral']; ?></em><?php echo $this->_var['points_name']; ?></span></li>
                              <?php endif; ?>
                              
                    
                              <?php if ($this->_var['promotion']): ?>
                              <li style="color:#666;"> 
                                <?php $_from = $this->_var['promotion']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?> 
                                <?php echo $this->_var['lang']['activity']; ?> 
                                <?php if ($this->_var['item']['type'] == "snatch"): ?> 
                                <a href="snatch.php" title="<?php echo $this->_var['lang']['snatch']; ?>" style="font-weight:100; color:#f70; text-decoration:none;">[<?php echo $this->_var['lang']['snatch']; ?>]</a> 
                                <?php elseif ($this->_var['item']['type'] == "group_buy"): ?> 
                                <a href="group_buy.php" title="<?php echo $this->_var['lang']['group_buy']; ?>" style="font-weight:100; color:#f70; text-decoration:none;">[<?php echo $this->_var['lang']['group_buy']; ?>]</a> 
                                <?php elseif ($this->_var['item']['type'] == "auction"): ?> 
                                <a href="auction.php" title="<?php echo $this->_var['lang']['auction']; ?>" style="font-weight:100; color:#f70; text-decoration:none;">[<?php echo $this->_var['lang']['auction']; ?>]</a> 
                                <?php elseif ($this->_var['item']['type'] == "favourable"): ?> 
                                <a href="activity.php" title="<?php echo $this->_var['lang']['favourable']; ?>" style="font-weight:100; color:#f70; text-decoration:none;">[<?php echo $this->_var['lang']['favourable']; ?>]</a> 
                                <?php endif; ?> 
                                <a href="<?php echo $this->_var['item']['url']; ?>" title="<?php echo $this->_var['lang'][$this->_var['item']['type']]; ?> <?php echo $this->_var['item']['act_name']; ?><?php echo $this->_var['item']['time']; ?>" style="font-weight:100; color:#f70;"><?php echo $this->_var['item']['act_name']; ?></a><br />
                                <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
                              </li>
                              <?php endif; ?>
                            </ul>
                            
                        </dd>
                        <dd class="goods-info-choose">
                        	
                                                      
                            <div id="choose" class="spec_list_box">
                              <ul>
                               
                              <?php $_from = $this->_var['specification']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('spec_key', 'spec');if (count($_from)):
    foreach ($_from AS $this->_var['spec_key'] => $this->_var['spec']):
?> 
                              <?php if ($this->_var['spec']['attr_type'] == 1): ?> 
                                  <?php if ($this->_var['spec']['is_show_img'] == 1): ?>
                                  <li class="GeneralAttrImg">
                                      <div class="dt"><?php echo $this->_var['spec']['name']; ?>：</div>
                                      <div class="dd"> 
                                          <?php $_from = $this->_var['spec']['values']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'value');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['value']):
?>
                                          <div class="item<?php if ($this->_var['key'] == 0): ?> selected<?php endif; ?>">
                                              <b></b>
                                              <a href="<?php echo $this->_var['value']['img_original']; ?>" title="<?php echo $this->_var['value']['label']; ?>" rel="zoom-id: Zoomer" rev="<?php echo $this->_var['value']['img_original']; ?>"><img src="<?php echo $this->_var['value']['thumb_url']; ?>" width="30" height="30" /><span><?php echo $this->_var['value']['label']; ?></span></a>
                                              <input id="spec_value_<?php echo $this->_var['value']['id']; ?>" style="display:none;" type="radio" name="spec_<?php echo $this->_var['spec_key']; ?>" value="<?php echo $this->_var['value']['id']; ?>" <?php if ($this->_var['key'] == 0): ?>checked<?php endif; ?> />
                                          </div>
                                          <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                                      </div>
                                  </li>
                                  <?php else: ?>
                                  <li>
                                      <div class="dt"><?php echo $this->_var['spec']['name']; ?>：</div>
                                      <div class="dd"> 
                                          <?php $_from = $this->_var['spec']['values']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'value');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['value']):
?>
                                          <div class="item<?php if ($this->_var['key'] == 0): ?> selected<?php endif; ?>">
                                              <b></b>
                                              <a href="#none" title="<?php echo $this->_var['value']['label']; ?>"><?php echo $this->_var['value']['label']; ?></a>
                                              <input id="spec_value_<?php echo $this->_var['value']['id']; ?>" style="display:none;" type="radio" name="spec_<?php echo $this->_var['spec_key']; ?>" value="<?php echo $this->_var['value']['id']; ?>" <?php if ($this->_var['key'] == 0): ?>checked<?php endif; ?> />
                                          </div>
                                          <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
                                      </div>
                                  </li>
                                  <?php endif; ?>
                              <?php else: ?>
                                  <li>
                                      <div class="dt"><?php echo $this->_var['spec']['name']; ?>：</div>
                                      <div class="dd">
                                          <?php $_from = $this->_var['spec']['values']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'value');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['value']):
?>
                                          <div class="check_item">
                                              <label for="spec_value_<?php echo $this->_var['value']['id']; ?>">
                                                  <input type="checkbox" name="spec_<?php echo $this->_var['spec_key']; ?>" value="<?php echo $this->_var['value']['id']; ?>" id="spec_value_<?php echo $this->_var['value']['id']; ?>" onclick="changePrice()" />
                                                  <?php echo $this->_var['value']['label']; ?> [<?php if ($this->_var['value']['price'] > 0): ?><?php echo $this->_var['lang']['plus']; ?><?php elseif ($this->_var['value']['price'] < 0): ?><?php echo $this->_var['lang']['minus']; ?><?php endif; ?> <?php echo $this->_var['value']['format_price']; ?>]
                                              </label>
                                          </div>
                                          <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                                          <input type="hidden" name="spec_list" value="<?php echo $this->_var['key']; ?>" />
                                      </div>
                                  </li>
                              <?php endif; ?>
                              <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
                              
                              </ul>
                          </div>
                          <style>
                          #choose{margin:0;}
                          #choose li{overflow:hidden; padding-bottom:20px;}
                          #choose .dt{width:72px; text-align:left; float:left; padding:6px 0 0;}
                          #choose .dd{overflow:hidden;}
                          #choose .dd .item{float:left; margin:2px 8px 2px 0; position:relative;}
                          #choose .dd .item a{border:1px solid #ccc; padding:4px 6px; float:left;}
                          #choose .dd .item a span{padding:0 3px; line-height:30px;}
            						  #choose .dd .item a img{width:30px; height:30px;}
                          #choose .dd .item b{width:12px; height:12px; background:url(themes/xiaomi/images/gou.png) no-repeat; position:absolute; bottom:1px; right:1px; overflow:hidden; display:none;}
                          #choose .dd .item.selected a{border-width:2px; border-color:#e4393c; padding:3px 5px;}
                          #choose .dd .item.selected b{display:block;}
                          #choose li.GeneralAttrImg .dt{padding-top:10px;}
                          #choose li.GeneralAttrImg .dd .item a{padding:1px;}
                          #choose li.GeneralAttrImg .dd .item a img{margin:1px;}
                          #choose li.GeneralAttrImg .dd .item.selected a{padding:0;}
                          </style>
                          
                          <script>
                          $(".spec_list_box .item a").click(function(){
                              $(this).parents(".dd").find(".item").removeClass("selected");
                              $(this).parent().addClass("selected");
                              $(this).parents(".dd").find("input:radio").prop("checked",false);
                              $(this).parent().find("input:radio").prop("checked",true);
                              changePrice();
                          })
                          </script>
                          
                          <ul class="sku">
                            <li class="skunum_li clearfix"> 
                              <div class="ghd">数量：</div>
                              <div class="skunum gbd" id="skunum"> 
                                <span class="minus" title="减少1个数量"></span>
                                <input id="number" name="number" type="text" min="1" value="1" onchange="countNum(0)">
                                <span class="add" title="增加1个数量"></span>&nbsp;件  
                              </div>
                            </li>
                          </ul>
                        </dd>
                        
                        <dd class="goods-info-head-cart">
                          <a href="javascript:addToCart(<?php echo $this->_var['goods']['goods_id']; ?>)" class="btn  btn-primary goods-add-cart-btn" id="buy_btn"><i class="iconfont"></i>加入购物车</a>
                          <a href="javascript:collect(<?php echo $this->_var['goods']['goods_id']; ?>)" class=" btn btn-gray  goods-collect-btn " id="fav-btn"><i class="iconfont"></i>喜欢</a> 
                        </dd>
                        <dd class="goods-info-head-userfaq clearfix">
                            <ul>
                                <li class=""><i class="iconfont"></i> 销量 <b><?php echo $this->_var['goods']['sales_volume']; ?></b></li>
                                <li class="J_scrollcomment mid"><i class="iconfont"></i> 评价 <b><?php echo $this->_var['goods']['comments_number']; ?></b></li>
                                <li class="J_scrollcomment"><i class="iconfont"></i> 满意度 <b><?php echo $this->_var['comment_percent']['haoping_percent']; ?>%</b></li>
                            </ul>
                        </dd>
                    </dl>
                </dt>
                
                
                
                
              </dl>
            </div>
          </form>
          <?php echo $this->fetch('library/history.lbi'); ?> 
          </div>
        </div>
  	</div>
  </div>
  <div class="container" style=" margin-bottom:50px;">
  <?php echo $this->fetch('library/goods_fittings.lbi'); ?> 
  </div>
  <div class="full-screen-border"></div>

  <div class="goods-detail-main">
  	<div class="goods-detail-nav" id="goodsDetail">
    	<div class="container">
          <ul class="detail-list">
            <li> <a class="J_scrollHref" rel="nofollow" href="javascript:void(0);">详情描述</a> </li>
            <li> <a class="J_scrollHref" rel="nofollow" href="javascript:void(0);">规格参数</a> </li>
            <li><a class="J_scrollHref" href="javascript:void(0);" rel="nofollow">评价晒单(<em><?php echo $this->_var['goods']['comments_number']; ?></em>)</a></li>
          </ul>
        </div>
    </div>

    <div class="product_tabs">
      
      <div class="goods-detail-desc goods_con_item">
        <div class="container">
            <div class="shape-container">
                <?php if ($this->_var['goods']['goods_desc']): ?>
                <?php echo $this->_var['goods']['goods_desc']; ?>
                <?php else: ?>
                <p class="empty">暂无详情描述</p>
                <?php endif; ?>
            </div>
        </div>
      </div>
      
      <div class="goods-detail-nav-name-block goods_con_item">
      	<div class="container main-block">
        	<div class="border-line"></div>
            <h2 class="nav-name">规格参数</h2>
        </div>
      </div>
      <div class="goods-detail-param">
          <div class="container">
          	<ul class="param-list">
            	<li class="goods-img"><img src="<?php if ($this->_var['picture']['thumb_url']): ?><?php echo $this->_var['picture']['thumb_url']; ?><?php else: ?><?php echo $this->_var['picture']['img_url']; ?><?php endif; ?>" alt="<?php echo $this->_var['goods']['goods_name']; ?>" /></li>
                <li class="goods-tech-spec">
                	<ul>
                        <li>产品名称：<?php echo $this->_var['goods']['goods_name']; ?></li>
                        <?php if ($this->_var['goods']['goods_brand'] != "" && $this->_var['cfg']['show_brand']): ?>
                        <li>产品品牌：<?php echo $this->_var['goods']['goods_name']; ?></li>
                        <?php endif; ?> 
                        <?php $_from = $this->_var['properties']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'property_group');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['property_group']):
?>
                        <?php $_from = $this->_var['property_group']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'property');if (count($_from)):
    foreach ($_from AS $this->_var['property']):
?>
                        <li><?php echo htmlspecialchars($this->_var['property']['name']); ?>：<?php echo $this->_var['property']['value']; ?></li>
                        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                    </ul>
                </li>
            </ul>
          </div>
      </div>
      
      <div class="goods-detail-nav-name-block goods_con_item">
      	<div class="container main-block">
        	<div class="border-line"></div>
            <h2 class="nav-name">评价晒单</h2>
        </div>
      </div>
      <div class="goods-detail-comment hasContent z-com-box-head">
      	<div id="ECS_COMMENT">
        <?php echo $this->fetch('library/comments.lbi'); ?>
        </div>
	  </div>
    </div>
      
  </div>
  
</div>


<div class="goods-sub-bar" id="goodsSubBar">
	<div class="container">
    	<ul class="detail-list">
          <li> <a class="J_scrollHref" rel="nofollow" href="javascript:void(0);">详情描述</a> </li>
          <li> <a class="J_scrollHref" rel="nofollow" href="javascript:void(0);">规格参数</a> </li>
          <li><a class="J_scrollHref" href="javascript:void(0);" name="pjxqitem" rel="nofollow">评价晒单(<em><?php echo $this->_var['goods']['comments_number']; ?></em>)</a></li>
        </ul>
        <dl class="goods-sub-bar-info clearfix">
        	<dt><img src="<?php if ($this->_var['picture']['thumb_url']): ?><?php echo $this->_var['picture']['thumb_url']; ?><?php else: ?><?php echo $this->_var['picture']['img_url']; ?><?php endif; ?>" alt="<?php echo $this->_var['goods']['goods_name']; ?>" /></dt>
            <dd>
            	<strong><?php echo $this->_var['goods']['goods_style_name']; ?></strong>
                <p><em><?php echo $this->_var['goods']['goods_brief']; ?></em></p>
            </dd>
        </dl>
        <a href="javascript:addToCart(<?php echo $this->_var['goods']['goods_id']; ?>)" class="btn btn-primary goods-add-cart-btn"><i class="iconfont"></i> 加入购物车</a>
    </div>
</div>


<div class="add_ok" id="cart_show">
    <div class="tip">
        <i class="iconfont"> </i>商品已成功加入购物车
    </div>
    <div class="go">
        <a href="javascript:easyDialog.close();" class="back">&lt;&lt;继续购物</a>
        <a href="flow.php" class="btn">去结算</a>
    </div>
</div>


<?php echo $this->fetch('library/page_footer.lbi'); ?>
</body>
<script type="text/javascript">
var goods_id = <?php echo $this->_var['goods_id']; ?>;
var goodsattr_style = <?php echo empty($this->_var['cfg']['goodsattr_style']) ? '1' : $this->_var['cfg']['goodsattr_style']; ?>;
var gmt_end_time = <?php echo empty($this->_var['promote_end_time']) ? '0' : $this->_var['promote_end_time']; ?>;
<?php $_from = $this->_var['lang']['goods_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
var goodsId = <?php echo $this->_var['goods_id']; ?>;
var now_time = <?php echo $this->_var['now_time']; ?>;


onload = function(){
  changePrice();
  fixpng();
  try {onload_leftTime();}
  catch (e) {}
}

/**
 * 点选可选属性或改变数量时修改商品价格的函数
 */
function changePrice()
{
  var attr = getSelectedAttributes(document.forms['ECS_FORMBUY']);

  var qty = document.forms['ECS_FORMBUY'].elements['number'].value;

  Ajax.call('goods.php', 'act=price&id=' + goodsId + '&attr=' + attr + '&number=' + qty, changePriceResponse, 'GET', 'JSON');
}

/**
 * 接收返回的信息
 */
function changePriceResponse(res)
{
  if (res.err_msg.length > 0)
  {
    alert(res.err_msg);
  }
  else
  {
    
    if (document.getElementById('ECS_SHOPPRICE'))
      document.getElementById('ECS_SHOPPRICE').innerHTML = res.result;
	 if (document.getElementById('ECS_SHOPPRICE_TOP'))
      document.getElementById('ECS_SHOPPRICE_TOP').innerHTML = res.result;
    if (document.getElementById('ECS_GOODS_AMOUNT'))
      document.getElementById('ECS_GOODS_AMOUNT').innerHTML = res.result;
	
  }
}

</script>
</html>
