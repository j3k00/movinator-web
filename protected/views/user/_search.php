<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>
	<div class="row">
		<!--<?php echo $form->label($model,'username'); ?>-->
		<?php echo $form->textField($model,'username',array(
			'size'=>60,
			'maxlength'=>128,
			'placeholder' => 'Username'
		)); ?>
	</div>
	</br>
	<div class="row">
		<!--<?php echo $form->label($model,'email'); ?>-->
		<?php echo $form->textField($model,'email',array(
			'size'=>60,
			'maxlength'=>128,
			'placeholder' => 'Email'
		)); ?>
	</div>
	</br>
	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->
