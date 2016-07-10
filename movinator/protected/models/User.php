<?php

class User extends CActiveRecord {
	
	public $rememberMe;
	private $_identity;
	
	/**
	 * Returns the static model of the specified AR class.
	 * @return static the static model class
	 */
	public static function model($className=__CLASS__) {
		return parent::model($className);
	}
	
	/**
	 * @return string the associated database table name
	 */
	public function tableName() {
		return 'user';
	}
	
	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules() {
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('username, password, email, state, sex, job', 'required'),
			array('username, password, email', 'length', 'max' => 128),
			array('state', 'length', 'max' => 128),
			array('sex', 'in', 'range' => array('m', 'f')),
			array('job', 'in', 'range' => array('black hat', 'white hat', 'others')),
			// rememberMe needs to be a boolean
			array('rememberMe', 'boolean'),
			// password needs to be authenticated
			//array('password', 'authenticate'),
			
		);
	}
	
	/**
	 * @return array relational rules.
	 */
	public function relations() {
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'malware' => array(self::HAS_MANY, 'Malware', 'user_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels() {
		return array(
			'id'														=> 'Id',
			'username'													=> 'Username',
			'password'													=> 'Password',
			'email'														=> 'Email',
			'state'														=> 'State',
			'sex'														=> 'Sex',
			'job'														=> 'Job',
		);
	}

	/**
	 * Checks if the given password is correct.
	 * @param string the password to be validated
	 * @return boolean whether the password is valid
	 */
	public function validatePassword($password) {
		return CPasswordHelper::verifyPassword($password, $this->password);
	}

	/**
	 * Generates the password hash.
	 * @param string password
	 * @return string hash
	 */
	public function hashPassword($password) {
		return CPasswordHelper::hashPassword($password);
	}
	
		
	
	
	/**
	 * Authenticates the password.
	 * This is the 'authenticate' validator as declared in rules().
	 */
	public function authenticate($attribute,$params) {
		if(!$this->hasErrors()) {
			$this->_identity = new UserIdentity($this->username, $this->password);
			
			if(!$this->_identity->authenticate()) {
				$this->addError('password','Incorrect username or password.');
			}
		}
	}
	
	/**
	 * Logs in the user using the given username and password in the model.
	 * @return boolean whether login is successful
	 */
	public function login() {
		if ($this->_identity === NULL) {
			$this->_identity = new UserIdentity($this->username, $this->password);
			
		}
		
		if($this->_identity->authenticate()) {
			$duration = $this->rememberMe ? 3600*24*30 : 0; // 30 days
			Yii::app()->user->login($this->_identity, $duration);
			return TRUE;
			
		} else {
			return FALSE;
			
		}
	}
	
	public function search() {
		$criteria = new CDbCriteria();
		
		$criteria->compare('username', $this->username);
		$criteria->compare('password', $this->password);
		$criteria->compare('email', $this->email);
		$criteria->compare('state', $this->state);
		$criteria->compare('sex', $this->sex);
		$criteria->compare('job', $this->job);
		
		return new CActiveDataProvider('User', array(
			'criteria' => $criteria,
			'sort' => array(
				'defaultOrder' => 'username ASC',
			),
		));
	}
}
