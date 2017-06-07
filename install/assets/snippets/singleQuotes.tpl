//<?php
/**
 * singleQuotes
 *
 * Replaces double quotes with single quotes in a string.
 *
 * Usage: [[singleQuotes? &string=`"quoted" string`]] will yield 'quoted' string
 *
 * @category 	snippet
 * @version 	0.1
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal	@properties
 * @internal	@modx_category Content
 * @internal    @installset base, sample
 */

$string = isset($string) ? $string : '';

if (empty($string)) return;

return str_replace(array("'",'"'), "\'", $string);
