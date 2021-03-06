<?php
App::uses ( 'AppController', 'Controller' );
/**
 * Posts Controller
 *
 * @property Post $Post
 * @property PaginatorComponent $Paginator
 */
class PostsController extends AppController {
	
	/**
	 * Components
	 *
	 * @var array
	 */
	public $components = array (
			'Paginator' 
	);
	public function beforeFilter() {
		parent::beforeFilter ();
		$this->Auth->allow ( 'index', 'view' );
	}
	/**
	 * index method
	 *
	 * @return void
	 */
	public function index() {
		$this->Post->recursive = 0;
		$this->set ( 'posts', $this->Paginator->paginate () );
	}
	
	/**
	 * view method
	 *
	 * @throws NotFoundException
	 * @param string $id        	
	 * @return void
	 */
	public function view($id = null) {
		if (! $this->Post->exists ( $id )) {
			throw new NotFoundException ( __ ( 'Invalid post' ) );
		}
		$options = array (
				'conditions' => array (
						'Post.' . $this->Post->primaryKey => $id 
				) 
		);
		$this->set ( 'post', $this->Post->find ( 'first', $options ) );
	}
	
	/**
	 * add method
	 *
	 * @return void
	 */
	public function add(){
		if ($this->request->is ( 'post' )) {
			$this->Post->create ();
			if ($this->Post->save ( $this->request->data )) {
				//set User ID from session
				$this->request->data ['Post'] ['user_id'] = $this->Auth->user('id');
				$this->Session->setFlash ( __ ( 'The post has been saved.' ) );
				return $this->redirect ( array (
						'action' => 'index' 
				) );
			} else {
				$this->Session->setFlash ( __ ( 'The post could not be saved. Please, try again.' ) );
			}
		}
/* 		$users = $this->Post->User->find ( 'list', array (
				'fields' => array (
						'User.id',
						'User.username' 
				) 
		) );
		$this->set ( compact ( 'users' ) ); */
	}
	/**
	 * getnerate
	 */
	public function generate() {
		for($i = 100000; $i < 200000; $i ++) {
			$this->Post->create ();
			$post = array (
					"Post" => array (
							"title" => 'this is generate post: ' . $i,
							"body" => "body of: " . $i,
							"user_id" => "3" 
					) 
			);
			$this->Post->save ( $post );
		}
		echo "finish!!!!";
	}
	
	/**
	 * edit method
	 *
	 * @throws NotFoundException
	 * @param string $id        	
	 * @return void
	 */
	public function edit($id = null) {
		if (! $this->Post->exists ( $id )) {
			throw new NotFoundException ( __ ( 'Invalid post' ) );
		}
		if ($this->request->is ( array (
				'post',
				'put' 
		) )) {
			$this->request->data ['Post'] ['user_id'] = $this->Auth->user ( 'id' );
			if ($this->Post->save ( $this->request->data )) {
				$this->Session->setFlash ( __ ( 'The post has been saved.' ) );
				return $this->redirect ( array (
						'action' => 'index' 
				) );
			} else {
				$this->Session->setFlash ( __ ( 'The post could not be saved. Please, try again.' ) );
			}
		} else {
			$options = array (
					'conditions' => array (
							'Post.' . $this->Post->primaryKey => $id 
					) 
			);
			$this->request->data = $this->Post->find ( 'first', $options );
		}
	}
	
	/**
	 * delete method
	 *
	 * @throws NotFoundException
	 * @param string $id        	
	 * @return void
	 */
	public function delete($id = null) {
		$this->Post->id = $id;
		if (! $this->Post->exists ()) {
			throw new NotFoundException ( __ ( 'Invalid post' ) );
		}
		$this->request->onlyAllow ( 'post', 'delete' );
		if ($this->Post->delete ()) {
			$this->Session->setFlash ( __ ( 'The post has been deleted.' ) );
		} else {
			$this->Session->setFlash ( __ ( 'The post could not be deleted. Please, try again.' ) );
		}
		return $this->redirect ( array (
				'action' => 'index' 
		) );
	}
}
