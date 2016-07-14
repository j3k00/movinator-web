<?php /* @var $this Controller */ ?>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="language" content="en">
	
	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
	
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/themes/bootstrap/css/bootstrap.min.css">
	
	<!-- Custom CSS -->
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/themes/bootstrap/css/custom.css">
	
	<!-- JavaScript -->
	<script src="<?php echo Yii::app()->request->baseUrl; ?>/themes/bootstrap/js/bootstrap.min.js"></script>
	<script src="<?php echo Yii::app()->request->baseUrl; ?>/themes/bootstrap/js/dropzone.js"></script>
	
	<!-- jQuery -->
	<script src="<?php echo Yii::app()->request->baseUrl; ?>//themes/bootstrap/js/jquery.min.js"></script>
	
	<!-- Custom JavaScript -->
	<script src="<?php echo Yii::app()->request->baseUrl; ?>/themes/bootstrap/js/custom.js"></script>
	<script src="<?php echo Yii::app()->request->baseUrl; ?>/themes/bootstrap/js/jquery.ba-bbq.js"></script>
</head>

<?php 
$controller = Yii::app()->controller->id;
$action = Yii::app()->controller->action->id;
?>

<body class="<?php echo $controller; ?> <?php echo $controller.'-'.$action ;?>">
<div class = "wrap">
<?php if (
	!($controller == 'site' && 
	$action == 'index' && 
	Yii::app()->user->isGuest)
) { ?>
<?php require(dirname(__FILE__).'/_mainMenu.php'); ?>

<div class ="container">	
	<?php echo $content; ?>
</div><!-- page -->	
<footer class ="footer">
	<div class="container">
		<p class="text-muted text-center">Copyright &copy; <?php echo date('Y'); ?> by Università degli Studi di Verona. All Rights Reserved.<br/>
	Powered by Tommaso Bonetti & Andrea Colato</p>
	</div>
</footer>

</div>
<?php  } else { 
	echo $content;
} ?>
</body>
</html>
