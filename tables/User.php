<?php

    namespace DB;

    use Dez\ORM\Model\Table;

    class User extends Table {

        static protected $table = 'system_auth';

        public function getHistory( $columnName = '' ) {
            return UserUpdateHistory::getHistory( $this->id(), $columnName );
        }

        public function getData() {
            return $this->hasOne( '\DB\UserData', 'user_id' );
        }

    }