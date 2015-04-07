<?php

    use Dez\Controller\Controller;

    use DB\User as UserModel;
    use DB\UserUpdateHistory;

    use Dez\Web\Layout;

    use Dez\ORM\Common\Event;

    class IndexController extends Controller {

        protected
            $queries    = [];

        public function beforeExecute() {
            Event::instance()->attach( 'query', function( $q ) {
                $this->queries[]    = $q;
            } );
        }

        public function afterExecute() {
            Layout::instance()->set( 'sql_queries', implode( "\n----\n", $this->queries ) );
        }

        public function indexAction( ) {
            return __METHOD__ . '<br />' . __FILE__;
        }

        public function usersAction() {
            return $this->render( 'index/user_list', [
                'users'     => UserModel::all()
            ] );
        }

        public function userItemAction( $id = 0 ) {

            $user   = UserModel::one( $id );

            if( $this->request->isPost() ) {

                $updatedData     = $this->request->post( 'c', [] );
                $user->getData()->bind( $updatedData )->save();

                // добавление в историю
                UserUpdateHistory::addHistory( $updatedData, $user->id() );

                $this->redirect( url( 'users/'. $id . '#saved' ) );
            }

            return $this->render( 'index/user_item', [
                'user'  => $user
            ] );
        }

        public function userUpdateHistoryAction( $id = 0 ) {
            return $this->render( 'index/user_history', [
                'history'   => UserModel::one( $id )->getHistory( 'phone' )
            ] );
        }

    }