<?php
/**
 * Пользовательский файл на русском языке для темы CleanCot
 * Файл локализации для темы CleanCot (русский)
 * @package Cotonti
 * @copyright (c) Cotonti Team
 * @license https://github.com/Cotonti/Cotonti/blob/master/License.txt
 */

defined('COT_CODE') or die('Wrong URL.');

/**
 * Данный файл предназначен для дополнительных пользовательских локализационных строк
 */
/**
 * переопределяем сетап конфигурации того, что у нас в админке
 * Управление сайтом / Конфигурация / Заголовки и мета-теги 
*/
// Заголовок (Название сайта)
$cfg['maintitle'] = 'CleanCot';

// Подзаголовок (Описание сайта)
$cfg['subtitle'] = "Современная тема на Bootstrap v.5.3.3 для CMF Cotonti v.0.9.26 без режима наследия. Только актуальные теги!";

$L['Account'] = 'Аккаунт';

$L['captcha_verification'] = 'Проверка капчи';
$L['captcha_users_verify_required'] = 'Пожалуйста, введите код проверки.';

$L['CleanCot_WhosOnline'] = "Кто сейчас Online";
$L['CleanCot_Comments'] = "Комментариев на странице";
$L['CleanCot_Comment_Edit'] = "Правка комментария";
$L['CleanCot_not_installed_PFS'] = 'Не установлен модуль <span class="fw-bold">"PFS"</span> для хранения файлов - персональное (PFS) и общее (SFS) хранилище. Вы можете его установить в панели управления сайтом или посмотреть <a href="https://www.cotonti.com/extensions/files-media/" class="alert-link" target="_blank">альтернативные расширения</a> на сайте сообщества';
$L['CleanCot_PFS'] = 'Модуль <span class="fw-bold">"PFS"</span> для хранения файлов';

/**
 * Строки для футера
 */

$L['footer_php_version'] = 'Версия PHP';
$L['footer_legacy_mode'] = 'Режим совместимости';
$L['footer_legacy_mode_on'] = '<span class="badge bg-warning">legacyMode Включён</span>';
$L['footer_legacy_mode_off'] = '<span class="badge bg-success fw-light">legacyMode Выключен</span>';
$L['footer_engine'] = 'Движок сайта';
$L['footer_cotonti'] = 'Cotonti CMS/CMF';
$L['footer_cotonti_tooltip'] = 'Сайт работает на Cotonti Siena CMF - мощный каркас веб-разработки и инструмент управления контентом с открытым кодом';
$L['footer_core_version'] = 'Версия ядра';
$L['footer_db_version'] = 'Версия БД';
$L['footer_creation_time'] = 'Время генерации';
$L['footer_hooks_fired'] = 'Запущено хуков';
$L['footer_sql_statistics'] = 'Статистика SQL';

// Уведомление администратора о местоположении шаблона, если он существует в переменной "mskin"
$L['mskin_admin'] = 'Администратор';
$L['mskin_attention'] = 'обратите внимание!';
$L['mskin_template_file_location'] = 'Расположение файла, формирующего шаблон страницы:';
$L['mskin_template_file_info'] = 'Эта информация вам потребуется, если решили изменить страницу под свои нужды или нашли ошибку';

/**
 * модуль "Pages"
 */
$L['CleanCot_page_published'] = 'Страница размещена:';
$L['CleanCot_page_latest_update'] = 'Последнее обновление:';
$L['CleanCot_page_HasAttachment'] = 'Есть файл для загрузки';
$L['CleanCot_page_DownloadFile'] = 'Скачать файл сейчас';

/**
 * Module "Files"
 */
$L['CleanCot_Files'] = 'Модуль <span class="fw-bold">"Files"</span> - менеджер файлов и их хранение';
$L['CleanCot_not_installed_Files'] = 'Для темы «CleanCot» - основного шаблона вашего сайта, рекомендуется установить модуль "Files" для хранения файлов и управления ими. Вы можете его <a href="https://www.cotonti.com/extensions/files-media/files-module/" class="alert-link" target="_blank">скачать бесплатно со страницы модуля</a> на официальном сайте сообщества. <br>  <span class="text-warning-emphasis fw-semibold">При установке модуля модуль "Files" нужно деинсталировать модуль "PFS"</span> в случае, если он (модуль "PFS") установлен в системе.';


/**
 * pm.tpl
 */


$L['pm_Selectall'] = 'Выбрать все';
$L['pm_Unselectall'] = 'Снять выделение';