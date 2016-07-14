<?php

class SiteController extends Controller {
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
			/*$params = array(
				'model' => ,
				'' => ,
			);*/
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
		
		if (isset($_GET['User'])) {
			$model->attributes = $_GET['User'];
		}
		
		// collect user input data
		if(isset($_POST['User'])) {
			$model->attributes = $_POST['User'];
			
			// validate user input and redirect to the previous page if valid
			
			if ($model->login()) {
				$this->redirect(Yii::app()->user->returnUrl);
			} else {
				Yii::app()->user->setFlash('danger', '<strong>Username or password wrong</strong>');
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
