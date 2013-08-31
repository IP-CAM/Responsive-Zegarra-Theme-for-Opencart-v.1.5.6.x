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