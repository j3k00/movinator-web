<?php

class UserIdentity extends CUserIdentity {
	
	public function authenticate() {
		
		$user = User::model()->findByAttributes(array(
			'username'													=> $this->username
		));
		
		// User doesn't exist
		if(!isset($user)) {
			$this->errorCode = self::ERROR_USERNAME_INVALID;
			return FALSE;
			
		}
		
		// Invalid password
		if (!$user->validatePassword($this->password)) {
			$this->errorCode = self::ERROR_PASSWORD_INVALID;
			return FALSE;
			
		}
		// Authentication succesfull
		if ($user->validatePassword($this->password)) {
			Yii::app()->user->setState('id', $user->id);
			
			if ($user->username == 'admin') { 
				Yii::app()->user->setState('isAdmin', TRUE);
				Yii::app()->user->setState('isUser', FALSE);
				Yii::app()->user->setState('role', ROLE_ADMIN);
				
			} else {
				Yii::app()->user->setState('isAdmin', FALSE);
				Yii::app()->user->setState('isUser', TRUE);
				Yii::app()->user->setState('role', ROLE_USER);
			}
		}
		
		return TRUE;
	}
}
