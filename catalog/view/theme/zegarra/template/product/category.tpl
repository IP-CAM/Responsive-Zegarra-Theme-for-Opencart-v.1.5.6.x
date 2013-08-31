<?php echo $header; ?>
<?php echo $content_top; ?>

<?php echo ZBreadcrumb($breadcrumbs); ?>

<article id="content" class="category-content">


	<?php if ($thumb || $description) { ?>
	<div class="category-info">
		<?php if ($thumb) { ?>
		<div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
		<?php } ?>
		<?php if ($description) { ?>
		<?php echo $description; ?>
		<?php } ?>
	</div>
	<?php } ?>

	<?php if ($products) { ?>
	<div id="product-toolbar" class="clearfix">
		<ul id="product-view" class="button-group">
			<li class="list"><span class="icon"></span></li>
			<li class="grid active"><span class="icon"></span></li>
		</ul>
		<div id="product-limit">
			<b><?php echo $text_limit; ?></b>
			<select onchange="location = this.value">
				<?php foreach ($limits as $lim) { ?>
				<option value="<?php echo $lim['href']; ?>" <?php echo $lim['value'] == $limit ? 'selected="selected"' : ''; ?>>
					<?php echo $lim['text']; ?>
				</option>
				<?php } ?>
			</select>
		</div>
		<div id="product-sort">
			<b><?php echo $text_sort; ?></b>
			<select onchange="location = this.value">
				<?php foreach ($sorts as $srt) { ?>
				<option value="<?php echo $srt['href']; ?>" <?php echo $srt['value'] == $sort . '-' . $order ? 'selected="selected"' : ''; ?>>
					<?php echo $srt['text']; ?>
				</option>
				<?php } ?>
			</select>
		</div>
	</div>

	<section id="product-listing" class="product-listing clearfix">
		<?php $i = 1; ?>
		<?php foreach($products as $product) { ?>
		<?php echo ZProduct::open($i); ?>
			<?php if($product['thumb']) { ?>
			<div class="image">
				<a href="<?php echo $product['href']; ?>">
					<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" />
				</a>
			</div>
			<?php } ?>
			<div class="meta">
				<h3 class="name">
					<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
				</h3>
				<div class="description"><?php echo $product['description']; ?></div>
				<?php if ($product['price']) { ?>
				<div class="price">
					<?php if ($product['special']) { ?>
					<span class="price-old"><?php echo $product['price']; ?></span>
					<span> - </span>
					<span class="price-new"><?php echo $product['special']; ?></span>
					<?php } else { ?>
					<?php echo $product['price']; ?>
					<?php } ?>
				</div>
				<input type="button" value="<?php echo $button_cart; ?>" class="add" onclick="addToCart(<?php echo $product['product_id']; ?>);" />
				<?php } ?>
			</div>
		<?php echo ZProduct::close(); ?>
		<?php $i += 1; ?>
		<?php } ?>
	</section>

	<div class="pagination"><?php echo $pagination; ?></div>

	<?php } else { ?>
		<?php echo $text_empty; ?>
		<a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a>
	<?php } ?>

</article>

<?php echo $column_left; ?>
<!-- <?php echo $column_right; ?> -->
<?php echo $content_bottom; ?>
<?php echo $footer; ?>