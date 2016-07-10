<h1>Users</h1>

<?php $this->widget('bootstrap.widgets.TbGridView', array(
	'id'																=> 'user-grid',
	'dataProvider'														=> $model->search(),
	//'template'															=> '{items}',
	'filter' => $model,
	'columns' => array(
		'username',
		'email',
		array(
			'name'														=> 'state',
			'filter'													=> Yii::app()->params->states
		),
		array(
			'name'														=> 'sex',
			'filter'													=> Yii::app()->params->sexs,
			'value'														=> 'Yii::app()->params->sexs[$data["sex"]]'
		),
		array(
			'name'														=> 'job',
			'filter'													=> Yii::app()->params->jobs,
			'value'														=> 'Yii::app()->params->jobs[$data["job"]]'
		),
		array(
			'class'														=> 'TbButtonColumn',
		),
	),
)); ?>
