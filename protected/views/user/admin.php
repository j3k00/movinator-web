<h1>Users</h1>
<?php ?>
<?php $this->widget('bootstrap.widgets.TbGridView', array(
	'type'																=> 'striped',
	'id'																=> 'user-grid',
	'dataProvider'														=> $model->search(),
	'filter'															=> $model,
	//'template'															=> '{items}',
	'columns' => array(
		'username',
		'email',
		array(
			'name'														=> 'country',
			'filter' => array_merge(
				array(
					'' => 'All'
				),
				Yii::app()->params->countries
			),
			'value'														=> 'Yii::app()->params->countries[$data["country"]]'
		),
		array(
			'name'														=> 'sex',
			'filter' => array_merge(
				array(
					'' => 'All'
				),
				Yii::app()->params->sexs
			),
			'value'														=> 'Yii::app()->params->sexs[$data["sex"]]'
		),
		array(
			'name'														=> 'job',
			'filter' => array_merge(
				array(
					'' => 'All'
				),
				Yii::app()->params->jobs
			),
			'value'														=> 'Yii::app()->params->jobs[$data["job"]]'
		),
	),
)); ?>
