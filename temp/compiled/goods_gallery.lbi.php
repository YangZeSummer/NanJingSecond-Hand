<div class="goods-pic-box" id="detail_img">
  <div class="goods-big-pic"> 
  	<a href="<?php echo $this->_var['pictures']['0']['img_url']; ?>" class="MagicZoomPlus" id="Zoomer" rel="hint-text: ; selectors-effect: false; selectors-class: current; zoom-distance: 60;zoom-width: 400; zoom-height: 400;" > 
    	<img  alt="<?php echo htmlspecialchars($this->_var['goods']['goods_name']); ?>" src="<?php echo $this->_var['pictures']['0']['img_url']; ?>"> 
    </a> 
  </div>
  <div class="goods-small-pic" id="item-thumbs">
  	<a class="prev" href="javascript:void(0);"></a>
  	<a class="next" href="javascript:void(0);"></a>
  	<div class="bd">
    	<ul class="cle">
          <?php if ($this->_var['pictures']): ?> 
          <?php $_from = $this->_var['pictures']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'picture');$this->_foreach['foo'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['foo']['total'] > 0):
    foreach ($_from AS $this->_var['picture']):
        $this->_foreach['foo']['iteration']++;
?>
          <li <?php if (($this->_foreach['foo']['iteration'] <= 1)): ?>class="current"<?php endif; ?>> 
          	<a href="<?php if ($this->_var['picture']['img_url']): ?><?php echo $this->_var['picture']['img_url']; ?><?php else: ?><?php echo $this->_var['picture']['thumb_url']; ?><?php endif; ?>" rel="zoom-id: Zoomer" rev="<?php if ($this->_var['picture']['img_url']): ?><?php echo $this->_var['picture']['img_url']; ?><?php else: ?><?php echo $this->_var['picture']['thumb_url']; ?><?php endif; ?>"> 
            	<img alt="<?php echo $this->_var['goods']['goods_name']; ?>" src="<?php if ($this->_var['picture']['thumb_url']): ?><?php echo $this->_var['picture']['thumb_url']; ?><?php else: ?><?php echo $this->_var['picture']['img_url']; ?><?php endif; ?>"> 
            </a>
          </li>
          <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
          <?php endif; ?>
        </ul>
    </div>
  
  </div>
</div>
