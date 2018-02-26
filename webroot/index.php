<!doctype html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title></title>
    </head>
    <body>
      <h1>Hi there</h1>
      <h2>from Lidl digital</h2>
      <h3>gethostname(): <?php print(gethostname()); ?></h3>
      <h3>php_uname(): <?php print(php_uname()); ?></h3>
      <h3>SELECT * FROM docker:
<?php
$mysqli = mysqli_connect("mysql", "root", "secret", "lidl");
$res = mysqli_query($mysqli, "SELECT * FROM docker");
$row = mysqli_fetch_assoc($res);
print_r($row);
?>
</h3>
    </body>
</html>
