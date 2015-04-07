<?php
return array (
  'routes' => 
  array (
    0 => 
    array (
      'match' => 'users',
      'controller' => 'index',
      'action' => 'users',
      'children' => 
      array (
        0 => 
        array (
          'match' => '{id|num}',
          'controller' => 'index',
          'action' => 'userItem',
          'keys' => 
          array (
            0 => 'id',
          ),
          'regexp' => '/^(\\d+)$/ui',
          'children' => 
          array (
            0 => 
            array (
              'match' => 'updateHistory',
              'controller' => 'index',
              'action' => 'userUpdateHistory',
            ),
          ),
        ),
      ),
    ),
  ),
  'system' => 
  array (
    0 => 
    array (
      'match' => 'index',
      'controller' => 'index',
      'action' => 'index',
    ),
    1 => 
    array (
      'match' => 'error404',
      'controller' => 'index',
      'action' => 'page404',
    ),
  ),
);