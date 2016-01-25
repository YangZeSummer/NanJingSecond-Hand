<div class="breadcrumbs">
	<div class="container">
    	<?php echo $this->_var['ur_here']; ?>
        <?php if ($this->_var['goods']['goods_brand'] != "" && $this->_var['cfg']['show_brand']): ?>
        <div class="right"> <i class="iconfont"> </i> <a href="<?php echo $this->_var['goods']['goods_brand_url']; ?>" target="_blank">进入<?php echo $this->_var['goods']['goods_brand']; ?>品牌馆</a> </div>
        <?php endif; ?> 
    </div>
</div>
