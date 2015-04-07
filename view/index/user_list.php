<ul>
    <? foreach( $users as $user ): ?>
    <li><?= $user->getEmail(); ?> <a href="users/<?= $user->id() ?>">Редактировать</a> | <a href="users/<?= $user->id() ?>/updateHistory">История</a></li>
    <? endforeach; ?>
</ul>