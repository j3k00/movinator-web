<?php if ( ! defined('YII_PATH')) exit('No direct script access allowed');

/**
 * CmsInput
 * 
 * @package OneTwist CMS  
 * @author twisted1919 (cristian.serban@onetwist.com)
 * @copyright OneTwist CMS (www.onetwist.com)
 * @version 1.2
 * @since 1.0
 * @access public
 * 
 * 
 */
class Input extends CApplicationComponent{
	// flag marked TRUE when the $_POST has been globally cleaned.
	protected $cleanPostCompleted   = FALSE;
	
	// flag marked TRUE when $_GET has been globally cleaned.
	protected $cleanGetCompleted    = FALSE;
	
	// holds the default cleaning method for global filtering.
	protected $defaultCleanMethod   = 'stripClean';
	
	// the Codeigniter Xss Filter object.
	protected $CI_Security;
	
	// array() holding the original $_POST.
	protected $originalPost = array();
	
	// array() holding the original $_GET
	protected $originalGet  = array();
	
	// HtmlPurifier object.
	protected $purifier;

	// determines if $_POST should be cleaned globally.
	public $_cleanPost   = TRUE;
	
	// determines if $_GET should be cleaned globally
	public $_cleanGet    = TRUE;
	
	// which methods will be used when doing the cleaning.
	public $_cleanMethod = 'stripClean';
	
	
	/**
	 * CmsInput::init()
	 * 
	 * @return
	 */
	public function init() {
		$this->originalPost = $_POST;
		$this->originalGet = $_GET;
		
		parent::init();
		Yii::app()->attachEventHandler('onBeginRequest', array($this, 'cleanGlobals'));
	}
	
	/**
	 * CmsInput::purify()
	 * 
	 * @param mixed $str
	 * @return
	 */
	public function purify($str) {
		if(is_array($str)) {
			
			foreach($str AS $k => $v)
				$str[$k] = $this->purify($v);
				
			return $str;
		}
		
		return $this->getHtmlPurifier()->purify($str);
	}
	
	/**
	 * CmsInput::xssClean()
	 * 
	 * @param mixed $str
	 * @param bool $isImage
	 * @return
	 */
	 
	public function xssClean($str, $isImage = FALSE) {
		return $this->getCISecurity()->xss_clean($str, $isImage);
	}
	
	/**
	 * CmsInput::stripTags()
	 * 
	 * @param mixed $str
	 * @param bool $encode
	 * @return
	 */
	
	
	public function stripTags($str, $encode=FALSE) {
		if(is_array($str)) {
			foreach($str AS $k => $v) 
				$str[$k] = $this->stripTags($v, $encode);
			return $str;
		}  
		   
		$str = rawurldecode($str);
		$str = CHtml::decode($str);
		$str = trim(strip_tags($str));
		
		if($encode)  {
			$str = $this->encode($str);
		}
		return $str;              
	}
	
	/**
	 * CmsInput::stripCleanEncode()
	 * 
	 * @param mixed $str
	 * @return
	 */
	public function stripCleanEncode($str) {
		if(is_array($str)) {
			foreach($str AS $k => $v) {
				$str[$k] = $this->stripCleanEncode($v);
			}
			return $str;
		}
		
		return $this->encode($this->stripClean($str)); 
	}
	
	/**
	 * CmsInput::cleanEncode()
	 * 
	 * @param mixed $str
	 * @return
	 */
	public function cleanEncode($str) {
		return $this->encode($this->xssClean($str));
	}
	
	/**
	 * CmsInput::stripClean()
	 * 
	 * @param mixed $str
	 * @return
	 */
	public function stripClean($str) {
		return $this->stripTags($this->xssClean($str));
	}
	
	/**
	 * CmsInput::encode()
	 * 
	 * @param mixed $str
	 * @return
	 */
	public function encode($str) {
		if(is_array($str)) {
			foreach($str AS $k => $v) {
				$str[$k] = $this->encode($v);
			}
			return $str;
		}
		
		return CHtml::encode($str);
	}
	
	/**
	 * CmsInput::decode()
	 * 
	 * @param mixed $str
	 * @return
	 */
	public function decode($str) {
		if(is_array($str)) {
			foreach($str AS $k => $v) {
				$str[$k] = $this->decode($v);
			}
			return $str;
		}
		
		return CHtml::decode($str);
	}
	
	/**
	 * CmsInput::stripEncode()
	 * 
	 * @param mixed $str
	 * @return
	 */
	public function stripEncode($str) {
		return $this->stripTags($str, TRUE);
	}
	
	/**
	 * CmsInput::get()
	 * 
	 * @param mixed $key
	 * @param string $defaultValue
	 * @param bool $clean
	 * @return
	 */
	public function get($key=NULL, $defaultValue=NULL, $clean=TRUE) {
		$cleanMethod = $this->getCleanMethod();
		
		if(
			empty($key) && 
			empty($defaultValue)
		) {
			if(
				$clean === TRUE && 
				$this->cleanGetCompleted === FALSE
			) {
				return $this->$cleanMethod($_GET);
			}
			
			return $_GET;
		}
		$value = Yii::app()->request->getQuery($key, $defaultValue);
		
		if (
			$clean === TRUE && 
			$this->cleanGetCompleted === FALSE && 
			!empty($value)
		) {
			return $this->$cleanMethod($value);
		}
		return $value;
	}
 
	/**
	 * CmsInput::getQuery()
	 * 
	 * @param mixed $key
	 * @param string $defaultValue
	 * @param bool $clean
	 * @return
	 */
	 public function getQuery($key=NULL, $defaultValue=NULL, $clean=TRUE) {
		return $this->get($key, $defaultValue, $clean);
	 }
	
	/**
	 * CmsInput::post()
	 * 
	 * @param mixed $key
	 * @param string $defaultValue
	 * @param bool $clean
	 * @return
	 */
	public function post($key=NULL, $defaultValue=NULL, $clean=TRUE) {
		$cleanMethod = $this->getCleanMethod();
		
		if(
			empty($key) && 
			empty($defaultValue)
		) {
			if(
				$clean === TRUE && 
				$this->cleanPostCompleted === FALSE
			) {
				return $this->$cleanMethod($_POST);
			}
			
			return $_POST;
		}
		
		$values = Yii::app()->request->getPost($key, $defaultValue);
		$empty = TRUE;
		
		foreach ($values as $value_key => $value) {
			if ($value) {
				$empty = FALSE;
			}
		}
		
		if ($empty) {
			throw new CHttpException(404, 'The specified post cannot be found: ' . $key);
		}
		
		if(
			$clean === TRUE && 
			$this->cleanPostCompleted === FALSE && 
			!empty($values)
		) {
			return $this->$cleanMethod($values);
		}
		
		return $values;
	}
	
	/**
	 * CmsInput::getPost()
	 * 
	 * @param mixed $key
	 * @param string $defaultValue
	 * @param bool $clean
	 * @return
	 */
	public function getPost($key, $defaultValue=NULL, $clean=TRUE) {
		return $this->post($key, $defaultValue, $clean);
	}
	
	/**
	 * CmsInput::sanitizeFilename()
	 * 
	 * @param mixed $file
	 * @return
	 */
	public function sanitizeFilename($file) {
		return $this->getCISecurity()->sanitize_filename($file);
	} 
	
	/**
	 * CmsInput::cleanGlobals()
	 * 
	 * @return
	 */
	protected function cleanGlobals() {
		$cleanMethod = $this->getCleanMethod();
		
		if(
			$this->getCleanPost() === TRUE && 
			$this->cleanPostCompleted === FALSE && 
			!empty($_POST)
		) {
			$_POST = $this->post();
			$this->cleanPostCompleted = TRUE;
			if(defined('YII_DEBUG')&&YII_DEBUG) {
				Yii::log(Yii::t('security', 'Global {global} array cleaned using {method} method.',array('{global}'=>'$_POST', '{method}'=>__CLASS__.'::'.$cleanMethod)));
			}
		}
		
		if(
			$this->getCleanGet() === TRUE && 
			$this->cleanGetCompleted === FALSE && 
			!empty($_GET)
		) {
			$_GET=$this->get();
			$this->cleanGetCompleted = TRUE;
			
			if (defined('YII_DEBUG')&&YII_DEBUG) {
				Yii::log(Yii::t('security', 'Global {global} array cleaned using {method} method.',array('{global}'=>'$_GET', '{method}'=>__CLASS__.'::'.$cleanMethod)));
			}
		}
	}
	
	/**
	 * CmsInput::setCleanPost()
	 * 
	 * @param mixed $str
	 * @return
	 */
	public function setCleanPost($str) {
		$this->_cleanPost=(bool)$str;
	}
	
	/**
	 * CmsInput::getCleanPost()
	 * 
	 * @return
	 */
	public function getCleanPost() {
		return $this->_cleanPost;
	}
	
	/**
	 * CmsInput::setCleanGet()
	 * 
	 * @param mixed $str
	 * @return
	 */
	public function setCleanGet($str) {
		$this->_cleanGet=(bool)$str;
	}
	
	/**
	 * CmsInput::getCleanGet()
	 * 
	 * @return
	 */
	public function getCleanGet() {
		return $this->_cleanGet;
	}
	
	/**
	 * CmsInput::setCleanMethod()
	 * 
	 * @param mixed $str
	 * @return
	 */
	public function setCleanMethod($str) {
		if(!method_exists($this, $str)) {
			$str=$this->defaultCleanMethod;
		}
		$this->_cleanMethod=$str;
	}
	
	/**
	 * CmsInput::getCleanMethod()
	 * 
	 * @return
	 */
	public function getCleanMethod() {
		return $this->_cleanMethod;
	}
	
	/**
	 * CmsInput::getOriginalPost()
	 * 
	 * @param mixed $key
	 * @param string $defaultValue
	 * @return
	 */
	public function getOriginalPost($key=NULL, $defaultValue=NULL) {
		if(empty($key))
			return $this->originalPost;
		return isset($this->originalPost[$key])?$this->originalPost[$key]:$defaultValue;
	}
	
	/**
	 * CmsInput::getOriginalGet()
	 *
	 * @param mixed $key
	 * @param string $defaultValue
	 * @return
	 */
	public function getOriginalGet($key = NULL, $defaultValue = NULL) {
		if (empty($key)) {
			return $this->originalGet;
		}
		return isset($this->originalGet[$key])?$this->originalGet[$key]:$defaultValue;
	}
	
	/**
	 * CmsInput::getCISecurity()
	 * 
	 * @return
	 */
	private function getCISecurity() {
		if($this->CI_Security!==NULL) {
			return $this->CI_Security;
		}
		
		Yii::import('application.vendors.Codeigniter.CI_Security');
		$this->CI_Security = new CI_Security;
		return $this->CI_Security;
	}
	
	/**
	 * CmsInput::getHtmlPurifier()
	 * 
	 * @return
	 */
	private function getHtmlPurifier() {
		if ($this->purifier!==NULL) {
			return $this->purifier;
		}
		
		$this->purifier = new CHtmlPurifier();
		if(file_exists($file=Yii::getPathOfAlias('application').DIRECTORY_SEPARATOR.'config'.DIRECTORY_SEPARATOR.'htmlpurifier.php')) {
			$this->purifier->options=include($file);
		}
		return $this->purifier;
	}
}
