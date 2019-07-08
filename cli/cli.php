<?php

require_once('../lib/xpathHelper.php');
echo(eval("return" . $argv[1] . ";\n"));
