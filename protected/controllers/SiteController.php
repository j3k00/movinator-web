<?php

class SiteController extends Controller {
	public function filters() {
		return array(
			'accessControl', // perform access control for CRUD operations
		);
	}
	
	public function accessRules() {
		return array(
			array('allow',
				'actions' => array('index', 'login', 'error'),
				'users' => array('*'),
			),
			array('allow',
				'actions' => array('logout'),
				'users' => array('@'),
			),
			array('deny',
				'users' => array('*'),
			),
		);
	}
	
	/**
	 * Declares class-based actions.
	 */
	public function actions() {
		return array(
			'captcha' => array(
				'class'													=> 'CCaptchaAction',
				'backColor'												=> 0xFFFFFF,
			),
			
			'page' => array(
				'class'													=> 'CViewAction',
			),
		);
	}
	
	/**
	 * This is the action to handle external exceptions.
	 */
	public function actionError() {
		if($error=Yii::app()->errorHandler->error) {
			if(Yii::app()->request->isAjaxRequest)
				echo $error['message'];
			else
				$this->render('error', $error);
		}
	}
	
	/**
	 * This is the default 'index' action that is invoked
	 * when an action is not explicitly requested by users.
	 */
	public function actionIndex() {
		$renderUrl = 'index';
		$params = array();
		
		if (
			!Yii::app()->user->isGuest &&
			Yii::app()->user->isAdmin
		) {
			$renderUrl = 'indexAdmin';
			
			
			$params = array(
				'users'													=> User::getAll(),
				'malwares'												=> Malware::getAll(),
				'malwaresByCountry'										=> Malware::getNumberByCountry()
			);
			// Lastest Malaware
		}
		
		if (
			!Yii::app()->user->isGuest &&
			Yii::app()->user->isUser
		) {
			$renderUrl = 'indexUser';
			// Lastest Malaware
		}
		
		$this->render($renderUrl, $params);
	}
	
	/**
	 * Displays the login page
	 */
	public function actionLogin() {
		$model = new User();
		
		// collect user input data
		if(isset($_POST['User'])) {
			$model->attributes = Yii::app()->input->post('User');
			
			if ($model->login()) {
				$this->redirect(Yii::app()->user->returnUrl);
				
			} else {
				$this->setFlash('Username or password wrong');
			}
		}
		// display the login form
		
		$this->render('login', array(
			'model'														=>$model
		));
	}
	
	/**
	 * Logs out the current user and redirect to homepage.
	 */
	public function actionLogout() {
		Yii::app()->user->logout();
		$this->redirect(Yii::app()->homeUrl);
	}
}
