<?php
/** 
*
* acp_lc [Standard french]
*
* @author Mickaël Salfati (Elglobo) http://www.phpbb-services.com
*
* @package acp
* @version $Id: info_acp_lc.php 2008-04-28 15:03:00 (local) $
* @copyright (c) 2007 phpBB-Services
* @license http://opensource.org/licenses/gpl-license.php GNU Public License 
*
*/

/**
* DO NOT CHANGE
*/
if (!defined('IN_PHPBB'))
{
	exit;
}

if (empty($lang) || !is_array($lang))
{
	$lang = array();
}

$lang = array_merge($lang, array(
	'ACP_CONNECTIONS_LOGS'			=> 'Journal des connexions',
	'ACP_CONNECTIONS_LOGS_EXPLAIN'	=> 'Liste de toutes les connexions effectuées au forum. Vous pouvez trier/filtrer les résultats par nom, date, IP ou par action. Si vous avez les permissions nécessaires vous pouvez aussi effacer individuellement les opérations ou le journal complet.',
	'ACP_LOGS_GOODIES'				=> '<strong>Astuce</strong>: Vous avez la possibilité de calculer les noms d’hôte des adresses IP en cliquant sur le nom de la colonne en question, et vous pouvez également afficher le <em>Whois</em> d’une adresse IP en cliquant dessus.',
	'ACP_LOGS_HOSTNAME'				=> 'Noms d’hôte',
	'ACP_LOGS_SORT'					=> 'Trier',
	'ACP_LOGS_ALL'					=> 'Tous',
	'ACP_LOGS_FAIL'					=> 'Echec',
	
	'LOG_CLEAR_CONNECTIONS'			=> '<strong>Journal des connexions effacé</strong>',
	'LOG_CONFIG_LOG_CONNECTIONS'	=> '<strong>Les paramètres des logs de connexion ont été modifiés</strong>',
	'LOG_AUTH_SUCCESS'				=> '<strong>Connexion réussie</strong>',
	'LOG_AUTH_SUCCESS_AUTO'			=> '<strong>Connexion réussie (Auto-loggué)</strong><br />» %s',
	'LOG_AUTH_FAIL'					=> '<strong>Echec</strong> - mot de passe incorrect',
	'LOG_AUTH_FAIL_NO_PASSWORD'		=> '<strong>Echec</strong> - aucun mot de passe indiqué<br />» %s',
	'LOG_AUTH_FAIL_BAN'				=> '<strong>Echec</strong> - nom d’utilisateur banni',
	'LOG_AUTH_FAIL_CONFIRM'			=> '<strong>Echec</strong> - code de confirmation incorrect',
	'LOG_AUTH_FAIL_CONVERT'			=> '<strong>Echec</strong> - mot de passe non converti',
	'LOG_AUTH_FAIL_INACTIVE'		=> '<strong>Echec</strong> - compte inactif',
	'LOG_AUTH_FAIL_UNKNOWN'			=> '<strong>Echec</strong> - utilisateur inexistant<br />» %s',
	'LOG_ADMIN_AUTH_FAIL'			=> '<strong>Echec de connexion à l’ACP</strong> - mot de passe incorrect',
	'LOG_ADMIN_AUTH_FAIL_NO_ADMIN'	=> '<strong>Echec de connexion à l’ACP</strong> - non autorisé',
	'LOG_ADMIN_AUTH_FAIL_DIFFER'	=> '<strong>Echec de connexion à l’ACP</strong> - ré-authentifié avec un compte différent<br />» %s',
	'LOG_ADMIN_AUTH_SUCCESS'		=> '<strong>Connexion réussie à l’ACP</strong>',
	'LOG_LC_EXCLUDE_IP'				=> '<strong>Exclusion d’adresse(s) IP dans les logs de connexion</strong><br />» %s',
	'LOG_LC_UNEXCLUDE_IP'			=> '<strong>Ré-inclusion d’adresse(s) IP dans les logs de connexion</strong><br />» %s',
	'LOG_LC_INTERVAL'				=> '(%s tentatives)',
	
	// Settings panel
	'ACP_CONNECTIONS'				=> 'Logs de connexion',
	'ACP_CONNECTIONS_SETTINGS'		=> 'Paramètres des logs de connexion',
	'ACP_CONNECTIONS_SETTINGS_EXPLAIN'		=> 'Depuis cet écran, vous pouvez configurer l’ensemble des options relatives au journal des connexions.<br />Vous pouvez également contrôler les adresses IPs que vous souhaitez <em>exclure ou ré-inclure</em> dans les logs de connexion.',
	'LC_SETTINGS'					=> 'Configuration',
	'LC_PRUNING'					=> 'Auto-délestage',
	'LC_DISABLE'					=> 'Désactiver l’enregistrement des logs de connexion',
	'LC_DISABLE_EXPLAIN'			=> 'Cette option désactive <em>complètement</em> l’enregistrement des logs de connexion.',
	'LC_ACP_DISABLE'				=> 'Désactiver les logs de connexion à l’ACP',
	'LC_ACP_DISABLE_EXPLAIN'		=> 'Les connexions <em>en échec</em> à l’ACP seront toujours logués.',
	'LC_FOUNDER_DISABLE'			=> 'Désactiver les logs de connexion des <em>fondateurs</em>',
	'LC_FOUNDER_DISABLE_EXPLAIN'	=> 'Les connexions <em>en échec</em> aux comptes des fondateurs seront toujours logués.',
	'LC_ADMIN_DISABLE'				=> 'Désactiver les logs de connexion des <em>administrateurs</em>',
	'LC_ADMIN_DISABLE_EXPLAIN'		=> 'Les connexions <em>en échec</em> aux comptes des administrateurs seront toujours logués.',
	'LC_INTERVAL'					=> 'Intervalle des logs',
	'LC_INTERVAL_EXPLAIN'			=> 'Temps en secondes entre l’enregistrement de 2 logs qui sont en <em>échec et identiques</em>. Mettre “0” pour désactiver cette option.',
	'LC_PRUNE_DAY'					=> 'Auto-délestage des logs de connexions',
	'LC_PRUNE_DAY_EXPLAIN'			=> 'Fixe en jours l’ancienneté maximale des entrées du journal des connexions. Mettre “0” pour désactiver cette option.',
	
	'LC_MANAGE_IP'					=> 'Gestion des adresses IPs',
	'LC_NO_EXCLUDE_IP'				=> 'Aucune adresse IP exclue',
	'LC_EXCLUSION_IP'				=> 'Exclure des adresses IPs',
	'LC_EXCLUSION_IP_EXPLAIN'		=> 'Pour spécifier plusieurs adresses IPs, entrez chacune d’elles sur une nouvelle ligne. Vous pouvez également utiliser * comme caractère joker.',
	'LC_UNEXCLUSION_IP'				=> 'Ré-inclure des adresses IPs',
	'LC_UNEXCLUSION_IP_EXPLAIN'		=> 'Vous pouvez ré-inclure plusieurs adresses IPs d’un coup en utilisant la combinaison de touches appropriée avec votre clavier et votre souris.',
	
	'LC_EXCLUDE_NO_IP'					=> 'Au moins une adresse IP n’a pas été correctement saisie',
	'LC_EXCLUDE_IP_UPDATE_SUCCESSFUL'	=> 'La liste des exclusions a été mise à jour.',
	
));

?>