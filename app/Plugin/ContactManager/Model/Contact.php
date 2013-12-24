<?php
class Contact extends ContactManagerAppModel{
	public $hasMany = array(
			'AltName' => array(
					'className' => 'ContactManager.AltName'
			)
	);
}