<?php
/* ====================
[BEGIN_COT_THEME]
Name=CleanCot
Version=1.0.2
Schemes=default:Default
[END_COT_THEME]
==================== */

/**
 * Cotonti Model Theme
 *
 * @package Cotonti
 * @copyright (c) Cotonti Team
 * @license https://github.com/Cotonti/Cotonti/blob/master/License.txt
 */

defined('COT_CODE') or die('Wrong URL');

// Подключаем свои ресурсные строки PFS, только если модуль установлен
// в файле cleancot.resources.php строки не переопределились
// upd. оставил на потом, не зашло. будет скучно - to do!
//if (cot_module_active('pfs')) {
//	require_once cot_langfile('pfs', 'module'); // 
//	require_once 'modules/pfs/inc/pfs.resources.php'; 
// or 
//  require_once cot_incfile('pfs', 'module', 'resources');
// or 
//  require_once (Cot::$cfg['themes_dir'] . '/' . Cot::$cfg['defaulttheme'] . '/modules/pfs/pfs.resources.php');
//$R['pfs_icon_pastefile'] = '<span class="icon m-2"><i class="fa-solid fa-link fa-2xl" title="' . Cot::$L['pfs_pastefile'] . '"></i></span>';
//$R['pfs_icon_pasteimage'] = '<span class="icon m-2"><i class="fa-solid fa-image fa-2xl" title="' . Cot::$L['pfs_pasteimage'] . '"></i></span>';
//$R['pfs_icon_pastethumb'] = '<span class="icon m-2"><i class="fa-regular fa-object-group fa-2xl" title="' . Cot::$L['pfs_pastethumb'] . '"></i></span>';
//}

require_once (Cot::$cfg['themes_dir'] . '/' . Cot::$cfg['defaulttheme'] . '/cleancot.resources.php');



// If you want to use cot_page_enum() function you can uncomment code below to be sure that it is available
//if (!function_exists('cot_page_enum') && cot_auth('page', 'any', 'R')) {
//    require_once cot_incfile('page', 'module');
//}

// Определяем функцию для проверки существования страницы по категории и ID
// пример: <!-- IF {PHP|cot_page_exists_by_cat_and_id('system', 2)} --> тут ссылка  href="{PHP|cot_url('page', 'c=system&al=about')}" или href="{PHP|cot_url('page', 'c=system&id=2')}" <!-- ENDIF --> 
function cot_page_exists_by_cat_and_id($cat, $id) {
    // Подключаем глобальные переменные Cotonti: $db (объект базы данных), $db_x (префикс таблиц), $db_pages (имя таблицы страниц)
    global $db, $db_x, $db_pages;
    // Устанавливаем имя таблицы: если $db_pages определена, берём её, иначе составляем из префикса $db_x и 'pages' (например, 'cot_pages')
    $table = isset($db_pages) ? $db_pages : $db_x . 'pages';
    // Выполняем SQL-запрос: считаем количество строк в таблице $table, где page_cat = $cat и page_id = $id, используя параметры для безопасности
    $res = $db->query("SELECT COUNT(*) FROM $table WHERE page_cat = ? AND page_id = ?", [$cat, $id])->fetchColumn();
    // Возвращаем true, если страница найдена (count > 0), иначе false
    return $res > 0;
}


function ul_transform(?string $code): string
{
    // Проверяем, что входной параметр не null, иначе присваиваем пустую строку
    $code = $code ?? '';

    // Заменяем теги <a> и <span> на их аналоги внутри списка <li>
    $code = str_replace("<a", "<li><a ", $code);
    $code = str_replace("</a>", "</a></li>", $code);
    $code = str_replace("<span", "<li><span", $code);
    $code = str_replace("</span>", "</span></li>", $code);
    $code = str_replace("</li> /", "</li>", $code);

    return $code;
}

/**
 * Функция для получения значения 'upd_value' из таблицы '$db_updates',
 * где 'upd_param' равно 'revision'.
 *
 * @global object $db Объект базы данных для выполнения запроса.
 * @global string $db_updates Имя таблицы, в которой производится поиск.
 * @return string|null Возвращает обработанное значение 'upd_value' или null, если ничего не найдено.
 */
function getRevisionValue()
{
    global $db, $db_updates; // Используем глобальные переменные $db и $db_updates

    try {
        // Выполняем запрос для получения значения 'upd_value', где 'upd_param' равно 'revision'
        $query = $db->query("SELECT upd_value FROM $db_updates WHERE upd_param = 'revision'");
        // Извлекаем значение первого столбца из результата запроса
        $value = $query->fetchColumn();

        // Применяем функцию htmlspecialchars для экранирования спецсимволов в HTML
        return htmlspecialchars($value); // Возвращаем обработанное значение
    } catch (PDOException $e) {
        // Если произошла ошибка базы данных, записываем её в лог и возвращаем null
        error_log("Ошибка выполнения запроса: " . $e->getMessage());
        return null;
    }
}

function custom_php_version()
{
    return phpversion();
} 

// В шаблоне футера или в файле, где выводится футер
// $legacyModeStatus = getLegacyModeStatus();
// Cot::$out['legacyMode'] = $legacyModeStatus;
// {PHP|getLegacyModeStatus()}

function getLegacyModeStatus()
{
    global $cfg, $L; // Получаем глобальный массив конфигурации. Доступ к глобальным переменным Cotonti
    if (isset($cfg['legacyMode']) && $cfg['legacyMode'] === true) {
        return $L['footer_legacy_mode_on'];
    } else {
        return $L['footer_legacy_mode_off'];
    }
}


