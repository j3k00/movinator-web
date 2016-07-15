<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
?>

<h1>Welcome back Admin</h1>

<div class="panel panel-default">
	<div class="panel-heading">Total</div>
	<div class="panel-body">
		<div class="row col-sm-2 col-md-2">
			<b>Total Users</b> 
		</div>
		<div class="col-sm-10 col-md-10">
			<?php echo count($users); ?>
		</div>
		<div class="row col-sm-2 col-md-2">
			<b>Total Malwares</b>
		</div>
		<div class="col-sm-10 col-md-10">
			<?php echo count($malwares); ?>
		</div>
	</div>
</div>

<div class="panel panel-default">
	<div class="panel-heading">Top City upload malware</div>
	<div class="panel-body">
		<?php foreach ($malwaresByCountry as $malware) { ?> 
			<div class="row col-sm-2 col-md-2">
				<b><?php echo CHtml::encode($malware['city']); ?></b> 
			</div>
			<div class="col-sm-10 col-md-10">
				<?php echo CHtml::encode($malware['total']); ?>
			</div>
		<?php } ?>
	</div>
</div>



