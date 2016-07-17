<?php

class UserController extends Controller {
	public $layout='//layouts/column1';
	
	/**
	 * @var CActiveRecord the currently loaded data model instance.
	 */
	private $_model;
	
	
	public function filters() {
		return array(
			'accessControl', // perform access control for CRUD operations
		);
	}
	
	public function accessRules() {
		return array(
			array('allow',
				'actions' => array('create'),
				'users' => array('*'),
			),
			array('allow',
				'actions' => array('admin'),
				'users' => array('admin'),
			),
			array('deny',
				'users'=>array('*'),
			),
		);
	}
	
	/**
	 * Displays a particular model.
	 */
	public function actionView($id) {
		$model = $this->loadModel($id);
		
		$this->render('view', array(
			'model'														=> $model,
		));
	}
	
	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate() {
		$model = new User();
		
		if (isset($_POST['User'])) {
			$error = FALSE;
			$model->attributes = Yii::app()->input->post('User');
			
			if ($model->validate()) {
			
				$user = User::model()->findByAttributes(array(
					'username'													=> $model->username
				));
				
				if (isset($user)) {
					$error = 'Username already present';
				}
				if (
					$_POST['User']['country'] != '' &&
					!array_key_exists($_POST['User']['country'],Yii::app()->params->countries)
				) {
					$error = 'State are invalid';
				}
				
				if (
					$_POST['User']['job'] != '' &&
					!array_key_exists($_POST['User']['job'],Yii::app()->params->jobs)
				) {
					$error = 'Job are invalid';
				}
				
				if (
					$_POST['User']['sex'] != '' &&
					!array_key_exists($_POST['User']['sex'],Yii::app()->params->sexs)
				) {
					$error = 'Sex are invalid';
				}
				if (!$error) {
					$model->password = CPasswordHelper::hashPassword($model->password);
					$model->save();
					$this->redirect(array('site/login'));
				} else {
					$this->setFlash($error);
				}
			}
		}
		$this->render('create',array(
			'model'														=> $model,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin() {
		
		$model = new User('search');
		$model->unsetAttributes();  // clear any default values
		
		if (Yii::app()->user->isUser) {
			$this->performAjaxValidation($model);
			$model->id = Yii::app()->user->id;
		}
		
		if (isset($_GET['User'])){
			$model->attributes = Yii::app()->input->get('User');
		}
		
		$this->render('admin', array(
			'model'														=> $model,
		));
	}
	
	/*
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 */
	public function loadModel($id ) {
		if ($this->_model === NULL) {
			if($id) {
				$this->_model = User::model()->findbyPk($id);
			}
			
			if($this->_model === NULL) {
				throw new CHttpException(404, 'The requested page does not exist.');
			}
		}
		return $this->_model;
	}
	
	/**
	 * Performs the AJAX validation.
	 * @param CModel the model to be validated
	 */
	protected function performAjaxValidation($model) {
		if (
			isset($_POST['ajax']) && 
			$_POST['ajax']==='user-form'
		) {
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
	
	
}
