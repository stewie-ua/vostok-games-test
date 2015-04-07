<?php

    namespace DB;

    use Dez\ORM\Model\Table;

    class UserUpdateHistory extends Table {

        static protected $table = 'user_update_history';

        static public function addHistory( array $data, $id ) {
            foreach( $data as $column => $value ) {
                static::insert( [
                    'user_id'       => $id,
                    'column_name'   => $column,
                    'column_data'   => $value,
                    'datetime'      => ( new \DateTime() )->format( 'Y-m-d H:i:s' )
                ] );
            }
        }

        static public function getHistory( $userId = 0, $columnName = '' ) {
            return static::query()
                ->whereUserId( $userId )
                ->whereColumnName( $columnName )
                ->find( [ "column_data $columnName", 'datetime update_dateTime' ] )
                ->toArray();
        }

    }