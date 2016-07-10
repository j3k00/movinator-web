<?php /* @var $this Controller */ ?>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="language" content="en">	
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/themes/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/themes/bootstrap/css/custom.css">
	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
	
	<!-- jQuery -->
	<script src="<?php echo Yii::app()->request->baseUrl; ?>//themes/bootstrap/js/jquery.min.js"></script>
	
	<script src="<?php echo Yii::app()->request->baseUrl; ?>/themes/bootstrap/js/dropzone.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="<?php echo Yii::app()->request->baseUrl; ?>//themes/bootstrap/js/bootstrap.min.js"></script>
	
	<script src="<?php echo Yii::app()->request->baseUrl; ?>//themes/bootstrap/js/custom.js"></script>
</head>

<?php 
$controller = Yii::app()->controller->id;
$action = Yii::app()->controller->action->id;
?>

<body class="<?php echo $controller; ?> <?php echo $controller.'-'.$action ;?>">
	<?php require(dirname(__FILE__).'/_mainMenu.php'); ?>


<div class="container">
	<?php if(isset($this->breadcrumbs)):?>
	<?php endif?>
	
	<?php echo $content; ?>
	

</div><!-- page -->


<footer class="footer">
	<div class="container">
		<p class="text-muted text-center">Copyright &copy; <?php echo date('Y'); ?> by Università degli Studi di Verona. All Rights Reserved.<br/>
	Powered by Tommaso Bonetti, Andrea Colato, Roberto Giacobazzi</p>
	</div>
</footer>

</body>
</html>
