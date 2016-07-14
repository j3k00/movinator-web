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
						<a class="active" id="register-form-link">Insert your data</a>
					</div>
				</div>
				<hr>
			</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-lg-12">
						<?php $form = $this->beginWidget('CActiveForm', array(
							'id'																=> 'user-form',
							'enableAjaxValidation'												=> false,
						)); ?>
			
						<div class="form-group">
							<?php echo $form->textField($model,'username',array('class' => 'form-control', 'placeholder'=>'Username')); ?>
							<?php echo $form->error($model,'username'); ?>
						</div>

						<div class="form-group">
							<?php echo $form->passwordField($model,'password',array('class' => 'form-control', 'placeholder'=>'Password')); ?>
							<?php echo $form->error($model,'password'); ?>
						</div>

						<div class="form-group">
							<?php echo $form->textField($model,'email',array('class' => 'form-control', 'placeholder'=>'Email')); ?>
							<?php echo $form->error($model,'email'); ?>
						</div>
						
						<div class="form-group">
							<?php echo $form->dropDownList(
								$model,
								'country',
								array_merge(
									array(
										''								=> 'Country'
									),
									Yii::app()->params->countries
								),  
								array('class' => 'form-control')
							); ?>
							<?php echo $form->error($model, 'country'); ?>
						</div>
						
						<div class="form-group">
							<?php echo $form->dropDownList(
								$model,
								'sex', 
								array_merge(
									array(
										''								=> 'Sex'
									),
									Yii::app()->params->sexs
								),
								array('class' => 'form-control')
							); ?>
							<?php echo $form->error($model, 'sex'); ?>
						</div>
						
						<div class="form-group">
							<?php echo $form->dropDownList(
								$model,
								'job',
								array_merge(
									array(
										''								=> 'Job'
									),
									Yii::app()->params->jobs
								),  
								array('class' => 'form-control')
							); ?>
							<?php echo $form->error($model, 'job'); ?>
						</div>
						
						<div class="form-group">
							<div class="row">
								<div class="col-sm-6 col-sm-offset-3">
									
									<?php echo CHtml::submitButton('Register', array(
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

