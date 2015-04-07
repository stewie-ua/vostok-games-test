<form action="<?= url( 'users/'. $user->id() ) ?>" method="post">

    <b><?= $user->getEmail(); ?></b>

    <br/>

    <? $userData = $user->getData(); ?>

    <? foreach( $userData->getColumns() as $columnName ): ?>
        <?= $columnName ?> : <input type="text" name="c[<?= $columnName ?>]" value="<?= $userData->get( $columnName ) ?>" />
        <br/>
    <? endforeach; ?>

    <input type="submit" value="Сохранить"/>

</form>