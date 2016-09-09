<?php

if (!isset($argv[2])) {
  die('usage: php convert_svg_abs.php "M1,2 ..." <width> <height>');
}

$width = $argv[2];
$height = $argv[3];

echo preg_replace_callback('(\d+(\.\d+)?)', function ($matches) use ($width, $height) {
    static $count = -1;
    $count++;
    return $count % 2 ? $matches[0] / $height : $matches[0] / $width;
}, $argv[1]);
