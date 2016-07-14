<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
?>

<h2>Welcome back <b><?php echo CHtml::encode(Yii::app()->user->username); ?></b></h2>

<p>You are on Movinator platform, where you can rewrite your malware only into mov instructions. <br />Check
the following list to  stay up to date about our update</p>

<h2></a>Functionallity</h2>

<p>Instructions that has been implemented:</p>

<ul>
<li>Add 32 bit (addl)</li>
<li>Sub 32 bit (subl)</li>
<li>Inc 32 bit (incl)</li>
<li>Dec 32 bit (decl)</li>
<li>Push 32 bit (push)</li>
<li>Pop 32 bit (pop)</li>
</ul>

<h2></a>Academic References</h2>

<ul>
<li>The inspiration for the compiler is the paper <a href="http://www.cl.cam.ac.uk/%7Esd601/papers/mov.pdf">"mov is Turing-complete", 
by Stephen Dolan</a>.</li>
</ul>
