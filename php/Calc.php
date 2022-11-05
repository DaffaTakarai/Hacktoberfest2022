<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Answer</title>
</head>
<body>
<p>The answer is: 
<?php
if($_POST['group1'] == add) {
echo "$first + $second";
}
else if($_POST['group1'] == subtract) {
echo "$first - $second";
}
else if($_POST['group1'] == times) {
echo "$first * $second";
}
else($_POST['group1'] == divide) {
echo "$first / $second";
}
?>
</p> 
</body>
</html>
