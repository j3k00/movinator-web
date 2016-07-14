<?php
$isAdmin = FALSE;
$isUser = FALSE;
$isGuest = Yii::app()->user->isGuest;
if (!$isGuest) {
	$isAdmin = Yii::app()->user->isAdmin;
	$isUser = Yii::app()->user->isUser;
}?>
<nav class="navbar navbar-default navbar-static-top">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="/"><?php echo Chtml::encode(Yii::app()->name); ?></a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<?php $this->widget('bootstrap.widgets.TbMenu', array(
				'type'													=> 'pills',
				'htmlOptions'											=> array('class' => 'pull-right'),
				'stacked'												=> FALSE, 
				'items'=> array(
					array(
						'label'											=> 'Home', 
						'url'											=> array('/site/index'),
						'htmlOptions'									=> array('class' => 'menu'),
					),
					array(
						'label'											=> 'Movinize', 
						'url'											=> array('/malware/create'),
						'visible'										=> $isUser,
						'htmlOptions'									=> array('class' => 'menu'),
					),
					array(
						'label'											=> 'Malwares', 
						'url'											=> array('/malware/admin'), 
						'visible'										=> !$isGuest,
						'htmlOptions'									=> array('class' => 'menu'),
					),
					array(
						'label'											=> 'Users', 
						'url'											=> array('/user/admin'), 
						'visible'										=> $isAdmin,
						'htmlOptions'									=> array('class' => 'menu'),
					),
					array(
						'label'											=> 'Login', 
						'url'											=> array('/site/login'), 
						'visible'										=> $isGuest,
						'htmlOptions'									=> array('class' => 'menu'),
					),
					array(
						'label'											=> 'Register', 
						'url'											=> array('/user/create'), 
						'visible'										=> $isGuest,
						'htmlOptions'									=> array('class' => 'menu'),
					),
					array(
						'label'											=> 'Logout ('.Yii::app()->user->name.')', 
						'url'											=> array('/site/logout'), 
						'visible'										=> !$isGuest,
						'htmlOptions'									=> array('class' => 'menu'),
					),
				),
			)); ?>
		</div>
	</div>
</nav>
