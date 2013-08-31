<li id="cart">
	<a href="#">
		<span class="cart-items"><span><?php echo $total ?></span></span>
		<span class="cart-icon"></span>
		<span class="cart-total"></span>
	</a>
	<div class="dropdown">
		<?php if($products) { ?>
			<table id="product-list">
				<tbody>
					<?php foreach ($products as $product) { ?>
					<tr>
						<td>
							<?php if ($product['thumb']) { ?>
							<a href="<?php echo $product['href']; ?>">
								<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" />
							</a>
							<?php } ?>
						</td>
						<td>
							<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
							<div>
								<?php foreach ($product['option'] as $option) { ?>
								- <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small><br />
								<?php } ?>
								<?php if ($product['recurring']): ?>
								- <small><?php echo $text_payment_profile ?> <?php echo $product['profile']; ?></small><br />
								<?php endif; ?>
							</div>
						</td>
						<td>x<?php echo $product['quantity']; ?></td>
						<td><?php echo $product['total']; ?></td>
						<td>
							<img src="catalog/view/theme/default/image/remove-small.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" onclick="removeFromCart('<?php echo $product['key']; ?>');" />
						</td>
					</tr>
					<?php } ?>
				</tbody>
				<tfoot>
					<?php foreach ($totals as $total) { ?>
					<tr>
						<td></td>
						<td colspan="2"><b><?php echo $total['title'], 'plol'; ?>:</b></td>
						<td><?php echo $total['text']; ?></td>
					</tr>
					<?php } ?>
				</tfoot>
			</table>
			<div id="product-form" class="text-right">
				<a href="<?php echo $cart; ?>" class="button button-secondary"><?php echo $text_cart; ?></a>
				<a href="<?php echo $checkout; ?>" class="button"><?php echo $text_checkout ;?></a>
			</div>
		<?php } else { ?>
			<div class="content">
				<?php echo $text_empty; ?>
			</div>
		<?php } ?>
	</div>
</li>