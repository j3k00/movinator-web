<?php
/* @var $this SiteController */
/* @var $model LoginForm */
/* @var $form CActiveForm  */

$this->pageTitle = Yii::app()->name . ' - Login';
$this->breadcrumbs = array(
	'Login',
);
?>

<?php $this->widget('bootstrap.widgets.TbAlert', array(
	'block'																=> TRUE,
	'htmlOptions' => array(
		'class'															=> 'flash-messages'
	)
)); ?>

<div class="row">
	<div class="col-md-6 col-md-offset-3">
		<div class="panel panel-login">
			<div class="panel-heading">
				<div class="row">
					<div class="col-xs-12">
						<a class="active">Login</a>
					</div>
				</div>
				<hr>
			</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-lg-12">
						<?php $form=$this->beginWidget('TbActiveForm', array(
							'id'										=> 'login-form',
							'enableClientValidation'					=> TRUE,
							'clientOptions' => array(
								'validateOnSubmit'						=> TRUE,
							),
						)); ?>
						<div class="form-group">
							<?php echo $form->textField($model, 'username', array(
								'id'									=> 'username',
								'tabindex'								=> '1',
								'class'									=> 'form-control',
								'placeholder'							=> 'Username'
							)); ?>
						<?php echo $form->error($model,'username'); ?>
						</div>
						<div class="form-group">
							<?php echo $form->passwordField($model, 'password', array(
								'id'									=> 'password',
								'tabindex'								=> '2',
								'class'									=> 'form-control',
								'placeholder'							=> 'Password'
							)); ?>
						<?php echo $form->error($model,'password'); ?>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-sm-6 col-sm-offset-3">
									<?php echo CHtml::submitButton('Login', array(
										'id'							=> 'register-submit',
										'tabindex'						=> '4',
										'class'							=> 'form-control btn btn-register',
									)); ?>
								</div>
							</div>
						</div>
						<?php $this->endWidget(); ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>



