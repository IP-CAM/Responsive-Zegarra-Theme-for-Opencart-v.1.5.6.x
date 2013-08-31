</div> <!-- container -->
</div> <!-- Main container -->

<footer>
	<div id="ribbon-shadow"></div>
	<?php if ($informations) { ?>
	<div class="container clearfix">
		<section class="row">
			<div class="columns three">
				<h2><?php echo $text_account; ?></h2>
				<ul>
					<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
					<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
					<li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
					<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
				</ul>
			</div>
			<div class="columns three">
				<h2><?php echo $text_information; ?></h2>
				<ul>
					<?php foreach ($informations as $information) { ?>
					<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
					<?php } ?>
				</ul>
			</div>
			<div class="columns three">
				<h2><?php echo $text_extra; ?></h2>
				<ul>
					<li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
					<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
					<li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
					<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
				</ul>
			</div>
			<div class="columns three">
				<h2><?php echo $text_service; ?></h2>
				<ul>
					<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
					<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
					<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
				</ul>
			</div>
		</section>

		<section class="row">
			<div class="columns twelve text-center">
				<h3><?php echo $powered; ?></h3>
			</div>
		</section>
	</div>
	<?php } ?>
</footer>
</body></html>