<?php 
	echo $this->Session->flash('auth');  
	echo $this->Form->create('User',array('action'=>'login','class'=>'login-form')); 
	echo $this->Form->inputs(array(
			'legend'=>__('Login'),
			'username',
			'password'
	));
	echo $this->Form->end(__('Login')); 
?>
