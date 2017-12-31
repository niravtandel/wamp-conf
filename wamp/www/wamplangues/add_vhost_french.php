<?php
//3.0.6
//3.0.7 - VirtualHostPort - VirtualPortNotExist - VirtualPortExist
//3.1.1 - NotwwwDir

$langues = array(
	'langue' => 'Français',
	'locale' => 'french',
	'addVirtual' => 'Ajouter un VirtualHost',
	'backHome' => 'Retour à l\'accueil',
	'VirtualSubMenuOn' => 'L\'item <code>Sous-menu VirtualHost</code> doit être validé dans le menu Clic-Droit <code>Paramètres Wamp</code><br>Validez cet item puis rechargez cette page',
	'UncommentInclude' => 'Décommenter <small>(Supprimer #)</small> la ligne <code>#Include conf/extra/httpd-vhosts.conf</code><br>dans le fichier %s',
	'FileNotExists' => 'Le fichier <code>%s</code> n\'existe pas',
	'FileNotWritable' => 'Le fichier <code>%s</code> est protégé en écriture.',
	'DirNotExists' => '<code>%s</code> n\'existe pas ou n\'est pas un dossier',
	'NotwwwDir' => 'Le dossier <code>%s</code> est réservé à "localhost". Veuillez utiliser un autre dossier',
	'NotCleaned' => 'Le fichier <code>%s</code> n\'a pas été nettoyé.<br>Il reste des exemples de VirtualHost comme : dummy-host.example.com',
	'NoVirtualHost' => 'Aucun VirtualHost n\'est défini dans <code>%s</code><br>Il doit y avoir au moins un VirtualHost pour localhost.',
	'NoFirst' => 'Le premier VirtualHost doit être <code>localhost</code> dans le fichier <code>%s</code>',
	'ServerNameInvalid' => 'Le nom du ServerName <code>%s</code> n\'est pas valide.',
	'LocalIpInvalid' => 'L\'IP locale <code>%s</code> n\'est pas valide.',
	'VirtualHostName' => 'Nom du <code>Virtual Host</code> Pas de caractères diacritiques (éçëñ) - Pas d\'espace - Pas de tiret bas (_) ',
	'VirtualHostFolder' => '<code>Chemin</code> complet absolu du <code>dossier</code> VirtualHost - <i>Exemples : C:/wamp/www/projet/ ou E:/www/site1/</i> ',
	'VirtualHostIP' => '<code class="option">Si</code> vous voulez utiliser les VirtualHost par IP : <code class="option">IP locale</code> 127.x.y.z ',
	'VirtualHostPort' => '<code class="option">Si</code> vous voulez utiliser un "Listen port" autre que celui par défaut <code class="option">Ports acceptés</code> %s',
	'VirtualAlreadyExist' => 'Le ServerName <code>%s</code> existe déjà',
	'VirtualIpAlreadyUsed' => 'L\'IP locale <code>%s</code> existe déjà',
	'VirtualPortNotExist' => 'Le port <code>%s</code> ne fait pas partie des "Listen port" Apache',
	'VirtualPortExist' => 'Le port <code>%s</code> fait partie des "Listen port" Apache par défaut et ne doit pas être mentionné',
	'VirtualHostExists' => 'VirtualHost déjà définis :',
	'Start' => 'Démarrer la création du VirtualHost (Peut prendre un certain temps)',
	'GreenErrors' => 'Les erreurs encadrées en vert peuvent être corrigées automatiquement"',
	'Correct' => 'Démarrer la correction automatique des erreurs notées dans le cadre à bordures vertes',
	'NoModify' => 'Impossible de modifier les fichiers <code>httpd-vhosts.conf</code> ou <code>hosts</code>',
	'VirtualCreated' => 'Les fichiers ont été modifiés, le virtual host <code>%s</code> a été créé',
	'CommandMessage' => 'Messages de la console pour actualisation des DNS :',
	'However' => 'Vous pouvez ajouter un autre VirtualHost en validant "Ajouter un VirtualHost"<br>Cependant, pour que ces nouveaux VirtualHost soient pris en compte par Apache, vous devez lancer l\'item<br><code>Redémarrage DNS</code><br>du menu Outils par Clic-Droit sur l\'icône Wampmanager. <i>(Ceci ne peut, hélas, pas être fait automatiquement)</i>',
	'suppForm' => 'Formulaire de suppression de VirtualHost',
	'suppVhost' => 'Supprimer VirtualHost',
	'Required' => 'Requis',
	'Optional' => 'Optionnel',
);
?>