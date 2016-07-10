<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
?>

<h1>Admin</h1>
<h1>Welcome to <i><?php echo CHtml::encode(Yii::app()->name); ?></i></h1>

<h2></a>Author</h2>

<ul>
<li>Andrea Colato</li>
<li>Tommaso Bonetti</li>
<li>Roberto Giacobazzi</li>
</ul>


<h2>Description</h2>

<p>The Movinator is written in Java and it compiles the following instructions into "mov" instructions.</p>

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

<p>University of Verona,
Department of Computer Science</p>

<h2></a>References</h2>

<ul>
<li>The inspiration for the compiler is the paper <a href="http://www.cl.cam.ac.uk/%7Esd601/papers/mov.pdf">"mov is Turing-complete", 
by Stephen Dolan</a>.</li>
</ul>
