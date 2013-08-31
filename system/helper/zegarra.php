<?php

class ZProduct {
	public static function open($product_number)
	{
		$class = array('product-item', 'clearfix');
		if( $product_number % 2 == 0 ) array_push( $class, 'pivot-item-2');
		if( $product_number % 3 == 0 ) array_push( $class, 'pivot-item-3');
		if( $product_number % 4 == 0 ) array_push( $class, 'pivot-item-4');
		return '<div class="'.join(' ', $class).'">';
	}

	public static function close()
	{
		return '</div>';
	}
}

function ZBreadcrumb($breadcrumbs)
{
	$html = array();
	foreach($breadcrumbs as $breadcrumb)
	{
		if ( $breadcrumb['separator'] ) $html[] = '<h3>&nbsp;/&nbsp;</h3>';
		$html[] = "<h3><a href=\"{$breadcrumb['href']}\">{$breadcrumb['text']}</a></h3>";
	}
	$list = implode('', $html);
	return "<div class=\"breadcrumb\">{$list}</div>";
}