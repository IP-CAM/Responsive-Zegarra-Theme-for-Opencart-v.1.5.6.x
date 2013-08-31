<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
	<meta charset="UTF-8" />
	<title><?php echo $title; ?></title>
	<base href="<?php echo $base; ?>" />
	<?php if ($description) { ?>
	<meta name="description" content="<?php echo $description; ?>" />
	<?php } ?>
	<?php if ($keywords) { ?>
	<meta name="keywords" content="<?php echo $keywords; ?>" />
	<?php } ?>
	<?php if ($icon) { ?>
	<link href="<?php echo $icon; ?>" rel="icon" />
	<?php } ?>
	<?php foreach ($links as $link) { ?>
	<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
	<?php } ?>

	<!-- ZEGARRA THEME INCLUDES -->
	<link rel="stylesheet" href="catalog/view/theme/zegarra/css/normalize.css">
	<link rel="stylesheet" href="catalog/view/theme/zegarra/css/style.css">

	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="catalog/view/theme/zegarra/js/script.js"></script>
	<script src="catalog/view/theme/zegarra/js/common.js"></script>

	<!--[if IE 7]> 
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
	<![endif]-->
	<!--[if lt IE 7]>
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
	<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
	<script type="text/javascript">
	DD_belatedPNG.fix('#logo img');
	</script>
	<![endif]-->
	<?php echo $google_analytics; ?>
</head>
<body>

	<div id="main-content">
		<header>
			<div id="header-wrapper">
				<h2 id="top-logo"><a href="<?php echo $home ?>"><?php echo $name ?></a></h2>
				<ul id="top-tools">
					<li>
						<a href="#">Sign in</a>
						<div class="dropdown">
							<div class="content">
								<div class="text-right">
									<?php if (!$logged) { ?>
									<?php echo $text_welcome; ?>
									<?php } else { ?>
									<?php echo $text_logged; ?>
									<?php } ?>
								</div>
							</div>
						</div>
					</li>
					<?php echo $cart; ?>
				</ul>
				<div class="clearfix"></div>
			</div>
		</header>

		<?php if ($logo) { ?>
			<div id="logo" class="text-center">
				<a href="<?php echo $home; ?>">
					<img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>">
				</a>
			</div>
		<?php } ?>

		<form method="GET" id="search">
			<input name="search" type="text" class="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
		</form>

		<nav role="primary">
			<ul>
				<?php foreach ($categories as $category) { ?>
				<li>
					<a href="<?php echo $category['href']; ?>">
						<?php echo $category['name'] ?>
					</a>
				</li>
				<?php } ?>
			</ul>
		</nav>

		<div id="container" class="clearfix">