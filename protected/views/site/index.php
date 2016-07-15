<?php $this->pageTitle = Yii::app()->name; ?>

<div id="bg">
	<div class="col-sm-12 col-md-8">
		<div class="user-buttons col-sm-6 col-sm-offset-3 col-md-6 col-md-offset-3">
			<h1 class="home-style">Movinator</h1>
			<p class="home-style">New generation for Malware Analysis</p>
			
			<?php $this->widget('bootstrap.widgets.TbButton', array(
				'url'													=> Yii::app()->createUrl('site/login'),
				'label'													=> 'Login',
				'htmlOptions' => array(
					'class'												=> 'mb-20 form-control btn btn-register',
					'id'												=> 'register-submit',
				)
			)); ?>
			
			<?php $this->widget('bootstrap.widgets.TbButton', array(
				'url'													=> Yii::app()->createUrl('user/create'),
				'label'													=> 'Register',
				'htmlOptions' => array(
					'class'												=> 'form-control btn btn-register',
					'id'												=> 'register-submit',
				)
			)); ?>
		</div>
	</div>
</div>

