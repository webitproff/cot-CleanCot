# cot-CleanCot
The CleanCot theme for CMF Cotonti. Modern Bootstrap theme on v.5.3.3 for Cotonti Siena v.0.9.26 without outdated (legacy) mode. Only relevant tags!

&nbsp;* <strong><a href="https://cleancot.previewit.work">Demo</a></strong><br />
&nbsp;* <a href="https://abuyfile.com/ru/forums/cotonti/original/skins/cleancot"><strong>Help and support</strong></a><br />
&nbsp;* <a href="https://github.com/Cotonti/Cotonti"><strong>CMF/CMS Cotonti</strong></a><br />
&nbsp;* <a href="https://abuyfile.com/ru/forums/cotonti/original/skins/cleancot/topic128"><strong>QuickStart</strong></a><br />
&nbsp;* 04 April 2025<br />
&nbsp;* Author: webitproff<br />
&nbsp;* License: MIT<br />

### Site Theme File Map and Main "CleanCot" Template for Cotonti Siena
```
cleancot/     # Main template folder, also the site theme
├── css/                  # Folder with template styles
│   └── extras.css
│   └── modalbox.css      # Primarily for system modal notifications and dialogs
│   └── style.css         # Main file for custom styles of the CleanCot theme
├── fontawesome/          # The Font Awesome Free 6.7.2 library includes only the minimally necessary files.
├── img/                  # Folder with icons and images
├── inc/                  # Folder with custom included HTML block templates
│   └── mskin.tpl                                      # Displays the template path to the admin if it exists in Cotonti's logic variable
│   └── two-level-drop-down-menu.tpl                   # HTML block for a custom dropdown menu with site sections
│   └── two-level-drop-down-menu-publications.tpl      # HTML block for a custom dropdown menu with article categories
├── js/                   # Folder with template JavaScript
│   └── js.js         # Main file for custom JavaScript scripts of the CleanCot theme
│   └── lightbox.js   # Lightbox for carousel and image gallery when using the 'files' module
├── modules/          # Folder with templates for Cotonti modules
│   └── files/    # Folder with templates for the 'files' module file manager (https://github.com/Alex300/files)
│      └── files.admin.allpfs.tpl                 # Template (description in progress)
│      └── files.admin.main.tpl                   # Template (description in progress)
│      └── files.admin.tpl                        # Template (description in progress)
│      └── files.avatarbox.tpl                    # Template (description in progress)
│      └── files.bootstrap-carousel_gallery.tpl   # Template (description in progress)
│      └── files.display.tpl                      # Template (description in progress)
│      └── files.downloads.mytemplate.tpl         # Template (description in progress)
│      └── files.downloads.tpl                    # Template (description in progress)
│      └── files.filebox.tpl                      # Template (description in progress)
│      └── files.files.tpl                        # Template (description in progress)
│      └── files.gallery.tpl                      # Template (description in progress)
│      └── files.image.tpl                        # Template (description in progress)
│      └── files.link.bootstrap.tpl               # Template (description in progress)
│      └── files.link.tpl                         # Template (description in progress)
│      └── files.pfs.folder.edit.tpl              # Template (description in progress)
│      └── files.pfs.tpl                          # Template (description in progress)
│      └── files.templates.tpl                    # Template (description in progress)
│      └── files.tpl                              # Template (description in progress)
│      └── files.widget.tpl                       # Template (description in progress)
│   └── forums/   # Folder with templates for the "Forums" module - 'forums'
│      └── forums.editpost.tpl           # Template for editing forum topics and their posts
│      └── forums.newtopic.tpl           # Template with a form for creating a new forum topic
│      └── forums.posts.tpl              # Template for the page of a published forum topic and its posts
│      └── forums.sections.tpl           # Template for the page of main forum sections (categories)
│      └── forums.topics.tpl             # Template for the list of topics in a forum section, including subsections if they exist
│   └── page/     # Folder with templates for the "Pages" module - 'page'
│      └── page.add.tpl                  # Template with a form for creating a new article or news item
│      └── page.edit.tpl                 # Template with a form for editing an article or news item
│      └── page.enum.tpl                 # Template for displaying a list of articles by parameters in various site sections
│      └── page.list.tpl                 # Template for the list of articles in a category, including subcategories if they exist
│      └── page.list.unvalidated.tpl     # Template for the list of articles in the "Pending Approval" category (requires creating a category with the code 'unvalidated')
│      └── page.news.tpl                 # Template for the full article or news page for the category with the code 'news' (extended version)
│      └── page.tpl                      # Template for the full article or news page (simplified version for all categories)
│   └── pfs/     # Folder with templates for the "PFS" module - 'pfs' ("My Files" - Cotonti's built-in file manager)
│      └── pfs.admin.allpfs.tpl          # Template for "All Users’ My Files Sections" view in the admin panel (to be moved to the site admin theme)
│      └── pfs.admin.tpl                 # Template for the list of system (server) settings for the module (to be moved to the site admin theme)
│      └── pfs.edit.tpl                  # Template for viewing and editing information about an uploaded file: description, moving to another folder
│      └── pfs.editfolder.tpl            # Template for editing a folder with files
│      └── pfs.tpl                       # Template for the main interface of the "PFS" module file manager: creating folders, uploading files, inserting into content, etc.
│   └── pm/     # Folder with templates for the "PM" module - 'pm' ("Private Messages" - internal user messaging on the Cotonti site)
│      └── pm.list.tpl                   # Template for the list of all messages with filters: Inbox, Sent, etc.
│      └── pm.message.tpl                # Template for the message page with a reply form and conversation history view
│      └── pm.popUpNotification.tpl      # Template for notification of a new message
│      └── pm.send.tpl                   # Template for the page to send a new message to a user or users of the site
│   └── polls/     # Folder with templates for the "Polls" module - 'polls' (Placement and management of polls on the site and/or forum)
│      └── polls.index.tpl               # Template for user polls on the site’s main page
│      └── polls.tpl                     # Template for the list of all polls on the site
│   └── users/     # Folder with templates for the "Users" module - 'users' (Registration and user management, profiles, and user pages)
│      └── users.details.tpl             # Template for the publicly accessible page of a specific website user, displaying detailed public information and profile data they’ve filled in
│      └── users.edit.tpl                # Template for editing a specific user’s data by an admin with site administrator rights: changing groups, blocking, deletion, etc.
│      └── users.passrecover.tpl         # Template for the page with a form to recover a lost user password
│      └── users.profile.tpl             # Template for the page with a form for users to edit their personal profile data and configure available settings
│      └── users.register.tpl            # Template for the registration page for new site users
│      └── users.tpl                     # Template for the page listing site users with various filters
├── plugins/          # Folder with templates for Cotonti plugins
│   └── comments/     # Folder with templates for the "Comments" plugin - comments for articles, polls, etc.
│      └── comments.tpl           # Template with a form for creating and displaying a list of comments for an object (article, poll, etc.)
│   └── contact/     # Folder with templates for the "Contact" plugin - site contact and feedback form
│      └── contact.tpl            # Template with a feedback form for administrators, also displays a map and contacts if filled in the admin panel
│   └── i18n/     # Folder with templates for the "Content Internationalization" plugin - multilocalization of "Pages" module content
│      └── i18n.locales.tpl       # Template for displaying a list of available locales (languages) for content localization in Cotonti CMF
│      └── i18n.page.tpl          # Template for creating and editing localized page (article) content
│      └── i18n.structure.tpl     # Template for managing, filling, and editing localized structure categories (names in another language)
│   └── indexnews/     # Folder with templates for the plugin listing articles on the main page from a selected category
│      └── indexnews.tpl          # Template on the site’s main page displaying a list of articles from the category specified in the plugin settings
│   └── recentitems/     # Folder with templates for the plugin of recently updated content
│      └── recentitems.forums.index.tpl          # Template on the site’s main page displaying a list of updated forum topics
│      └── recentitems.forums.tpl                # Template displaying a list of updated forum topics on the plugin page
│      └── recentitems.pages.index.tpl           # Template on the site’s main page displaying a list of recently updated articles
│      └── recentitems.pages.tpl                 # Template displaying a list of recent articles on the plugin page
│      └── recentitems.tpl                       # Template for the plugin page with updated site content
│   └── search/     # Folder with templates for the "Search" plugin
│      └── search.tpl           # Template with a form and filters for searching site content by keyword
│   └── statistics/      # Folder with templates for the "Statistics" plugin
│      └── statistics.tpl           # Template for a simple site statistics page
│   └── tags/             # Folder with templates for the "Tags in Content" plugin
│      └── tags.tpl                           # Template with a form for searching content by tags
│   └── userarticles/     # Folder with templates for the "User Articles" plugin (https://github.com/webitproff/cot-userarticles)
│      └── userarticles.details.tpl           # Template for the list of articles published by this user
│      └── userarticles.tpl                   # Template for the page listing users with the number of published articles
│   └── whosonline/     # Folder with templates for the "Who’s Online" plugin - comments for articles, polls, etc.
│      └── whosonline.tpl           # Template listing authorized users and guests on the site, with "who and where" parameters
├── cleancot.en.lang.php    # English localization for the CleanCot theme, defines interface translations and overrides site settings like title and description
├── cleancot.ru.lang.php    # Russian localization for the CleanCot theme, defines interface translations and overrides site settings like title and description
├── cleancot.php            # Main file of the CleanCot theme in Cotonti CMF, registers the theme, includes resources from cleancot.resources.php, and contains user-specific functions within the theme
├── cleancot.rc.php         # Centrally connects CSS and JavaScript resources like Bootstrap 5.3.3, Font Awesome 6.7.2, and custom theme styles/scripts via Cotonti’s Resources system
├── cleancot.resources.php  # Designed to override standard Cotonti HTML templates (string resources) such as pagination elements and input forms to match the Bootstrap 5.3.3 style used in the theme
├── error.tpl               # Handles the display of critical errors and notifications in Cotonti
├── footer.tpl              # Used to render the site’s footer, containing static content, navigation, copyright, and Cotonti tags
├── header.tpl              # Used to form the site’s header, including metadata, CSS/JS inclusion, main navigation menu, and user account section
├── index.tpl               # Used to form the site’s main page, displaying main content (news) and sidebar (admin block, polls, tags, online users) with Cotonti CMF plugin and module integration
├── login.tpl               # Handles the login page with an authorization form and maintenance notification
├── message.tpl             # Displays system messages and modal dialogs for operation/action confirmations
├── plugin.tpl              # Used to render pages generated by plugins (extensions) not tied to specific modules like page or forums; see more at https://github.com/Cotonti/Cotonti/blob/master/system/plugin.php
├── popup.tpl               # Used to form the content of pop-up windows triggered via JavaScript or AJAX in Cotonti
├── warnings.tpl            # Used to display three types of system notifications — errors (ERROR), warnings (WARNING), and successful actions (DONE)
```
<h2>Installation Instructions for the Template on an Active Site</h2>

<h3>Pre-Installation Requirements:</h3>

<p>1. Cotonti Siena version 0.9.26 beta (outdated tags and obsolete methods for checking function conditions and variables are absent in the template)<br />
2. The "CleanCot" template fully supports all built-in extensions, but for more advanced functionality, it integrates support for the 'files' module (https://github.com/Alex300/files). The requirement is that the "PFS" module and "userimages" plugin must be uninstalled from the system if you plan to install the 'files' module. However, if the functionality of these two extensions ("PFS" and "userimages") is sufficient for you, there’s no need to install the 'files' module.</p>

<h3><br />
Installation Steps</h3>

<p><strong>1. Create a Full Backup</strong> of your active site and save it to your computer.</p>

<p><strong>2. Download the Latest Version of the "CleanCot" Template</strong> from the public repository https://github.com/webitproff/cot-CleanCot</p>

<p><strong>3. Copy the Template</strong><br />
<strong>3.1 Unzip the archive and open the cot-CleanCot-master folder.</strong><br />
Copy the "cleancot" folder to the themes/ directory of your Cotonti site. The path should look like this:<br />
/path/to/cotonti/themes/cleancot/<br />
<strong>3.2 Ensure all files and subfolders are intact and no files were lost</strong> during the upload to the hosting/server.<br />
It’s best to use "FileZilla Client" or a similar remote file manager.</p>

<p><strong>4. Configure Settings</strong><br />
Open the datas/config.php file in the root of your Cotonti site (e.g., /path/to/cotonti/datas/config.php).<br />
Find the line with the theme setting:</p>

<pre class="brush:php;">
$cfg['defaulttheme'] = 'nemesis'; // or whatever you have instead of "nemesis"</pre>

<p>Replace it with</p>

<pre class="brush:php;">
$cfg['defaulttheme'] = 'cleancot';</pre>

<p>Save the changes to the config.php file.</p>

<p><strong>5. Activate the Template</strong><br />
Go to the admin panel: Site Management / Configuration / Themes<br />
5.1. In the first line: "Force default theme installation for all users" - Set to "Yes".<br />
5.2. In the second line: "Link to the main page in the navigation chain" - Set to "Yes".<br />
5.3. In the third line: "Separator" - Leave the field completely empty.<br />
Adjust other options as desired.<br />
Save the changes.</p>

<p><strong>6. Extra Fields (Optional, at your discretion)</strong><br />
<strong>6.1. Main Image for Articles in the "news" Category</strong><br />
6.1.1. Go to: Site Management / Other / Extra Fields / Table cot_pages - Pages Module, and at the bottom of the page, use the form to add a new field:<br />
* "cot_" is the default database table prefix in Cotonti; yours may differ.<br />
 - Field Name: "link_main_image" (enter without quotes);<br />
 - Field Description (_TITLE): "Main Image Link";<br />
 - Field Type: "input"<br />
Leave the rest unchanged and click "Add"<br />
<strong>6.2. YouTube Video in Forum Topics</strong><br />
6.2.1 Go to: Site Management / Other / Extra Fields / Table cot_forum_topics - Forums Module<br />
Do not confuse it with "cot_forum_posts" - that’s the database table for posts and messages in a topic.<br />
At the bottom of the page, use the form to add a new custom field (extra field):<br />
 - Field Name: "xtr_fld_youtube" (enter without quotes);<br />
 - Field Description (_TITLE): "YouTube Video";<br />
 - Field Type: "input".<br />
Leave the rest unchanged and click "Add".</p>

<p><strong>7. Site Header Menu</strong><br />
<strong>7.1. "Articles and Blogs"</strong><br />
HTML block for the custom dropdown menu "Article Categories" in the file - themes/cleancot/inc/two-level-drop-down-menu-publications.tpl<br />
Everything is filled with working examples; follow the current logic and edit to suit your needs.<br />
<strong>7.2 "More Sections"</strong><br />
HTML block in the file themes/cleancot/inc/two-level-drop-down-menu.tpl<br />
Everything is filled with working examples and comments; read the comments in the code, follow the current logic, and edit to suit your needs.</p>


*********
# Русский
*********
### Карта файлов темы сайта и основного шаблона "CleanCot" для Cotonti Siena
```
cleancot/     # Папка основного шаблона, она же тема сайта 
	├── css/                  # Папка со стилями шаблона
		│   └── extras.css
		│   └── modalbox.css      # в основном системные модальные уведомления и диалоги
		│   └── style.css	  # основной файл кастомных стилей темы cleancot
	├── fontawesome/          # The Font Awesome Free 6.7.2 library includes only the minimally necessary files.
	├── img/                  # Папка с иконками и изображениями
	├── inc/                  # Папка со своими подключаемыми шаблонами HTML-блоков
		│   └── mskin.tpl                                      # показывает админу путь шаблона, если он есть в переменной логики Cotonti
		│   └── two-level-drop-down-menu.tpl                   # HTML-блок кастомного dropdown меню с разделами сайта   
		│   └── two-level-drop-down-menu-publications.tpl	   # HTML-блок кастомного dropdown меню с категориями статей
	├── js/                   # Папка с js шаблона
		│   └── js.js         # в основной файл кастомных js скриптов темы cleancot
		│   └── lightbox.js   # лайтбокс для карусели, галлереи картинок при использовании модуля 'files'
	├── modules/          # Папка c шаблонами для модулей Cotonti
		│   └── files/    # Папка c шаблонами для модуля менеджера файлов 'files' (https://github.com/Alex300/files)
		│      └── files.admin.allpfs.tpl                 # шаблон (описание готовится)
		│      └── files.admin.main.tpl                   # шаблон (описание готовится)
		│      └── files.admin.tpl                        # шаблон (описание готовится)
		│      └── files.avatarbox.tpl                    # шаблон (описание готовится)
		│      └── files.bootstrap-carousel_gallery.tpl   # шаблон (описание готовится)
		│      └── files.display.tpl                      # шаблон (описание готовится)
		│      └── files.downloads.mytemplate.tpl         # шаблон (описание готовится)
		│      └── files.downloads.tpl                    # шаблон (описание готовится)
		│      └── files.filebox.tpl                      # шаблон (описание готовится)
		│      └── files.files.tpl                        # шаблон (описание готовится)
		│      └── files.gallery.tpl                      # шаблон (описание готовится)
		│      └── files.image.tpl                        # шаблон (описание готовится)
		│      └── files.link.bootstrap.tpl               # шаблон (описание готовится)
		│      └── files.link.tpl                         # шаблон (описание готовится)
		│      └── files.pfs.folder.edit.tpl              # шаблон (описание готовится)
		│      └── files.pfs.tpl                          # шаблон (описание готовится)
		│      └── files.templates.tpl                    # шаблон (описание готовится)
		│      └── files.tpl                              # шаблон (описание готовится)
		│      └── files.widget.tpl                       # шаблон (описание готовится)
		│   └── forums/   # Папка c шаблонами для модуля "Forums", - 'forums' 
		│      └── forums.editpost.tpl           # шаблон редактирования темы форума и сообщений в ней
		│      └── forums.newtopic.tpl           # шаблон с формой создания новой темы форума
		│      └── forums.posts.tpl              # шаблон страницы опубликованной темы форума и размещенных в ней постов
		│      └── forums.sections.tpl           # шаблон страницы основых разделов (категорий) форума
		│      └── forums.topics.tpl             # шаблон списка тем в разделе форума, включая подразделы, если они существуют
		│   └── page/     # Папка c шаблонами для модуля "Pages", - 'page'  
		│      └── page.add.tpl                  # шаблон с формой создания новой статьи или новости
		│      └── page.edit.tpl                 # шаблон с формой редактирования статьи или новости
		│      └── page.enum.tpl                 # шаблон вывода списка статей по параметрам в разных частях сайта
		│      └── page.list.tpl                 # шаблон списка статей в категори, включая подкатегории, если они существуют
		│      └── page.list.unvalidated.tpl     # шаблон списка статей в категори "На утверждении". (Нужно создать категорию с кодом 'unvalidated')
		│      └── page.news.tpl                 # шаблон с страницы полной статьи или новости для категории с кодом 'news' (расширенный вариант)
		│      └── page.tpl                      # шаблон с страницы полной статьи или новости (упрощенный вариант для всех категорий)
		│   └── pfs/     # Папка c шаблонами для модуля "PFS", - 'pfs' ("Мои файлы" - менеджер файлов "из коробки" Cotonti) 
		│      └── pfs.admin.allpfs.tpl          # шаблон "Разделы «Мои файлы» всех пользователей" для просмотра в админке (будет перенос в тему админки сайта)
		│      └── pfs.admin.tpl                 # шаблон списка системных (серверных) настроек для модуля (будет перенос в тему админки сайта)
		│      └── pfs.edit.tpl                  # шаблон просмотра и редактирования информации о загруженном файле: описание, перенос в другую папку.
		│      └── pfs.editfolder.tpl            # шаблон редактирования папки с файлами
		│      └── pfs.tpl                       # шаблон основного интерфейса менеджера файлов модуля "PFS": создание папок, загрузка файлов, вставка в контент и прочее.
		│   └── pm/     # Папка c шаблонами для модуля "PM", - 'pm' ("Личные сообщения" - внутрення переписка пользователей сайта на Cotonti) 
		│      └── pm.list.tpl                   # шаблон списка всех сообщений с фильтрами: Входящие, Отравленные и т.д.
		│      └── pm.message.tpl                # шаблон страницы сообщения с формой ответа и просмотром истории переписки
		│      └── pm.popUpNotification.tpl      # шаблон шаблон уведомления о новом сообщении
		│      └── pm.send.tpl                   # шаблон страницы отправки нового сообщения пользователю или пользователям сайта
		│   └── polls/     # Папка c шаблонами для модуля "Polls", - 'polls' (Размещение и управление опросами на сайте и/или форуме) 
		│      └── polls.index.tpl               # шаблон опроса пользователей на главной странице сайта
		│      └── polls.tpl                     # шаблон списка всех опросов на сайте
		│   └── users/     # Папка c шаблонами для модуля "Users", - 'users' (Регистрация и управление пользователями, профили и страницы пользователей) 
		│      └── users.details.tpl             # шаблон общедоступной страницы конкретного пользователя веб-сайта, отображающий подробную публичную информацию и данные его профиля, которые он заполнил.
		│      └── users.edit.tpl                # шаблон для редактирования пользовательских данных конкретного пользователя от имени и с правами администратора сайта: смена группы, блокировка, удаление и т.д.. 
		│      └── users.passrecover.tpl         # шаблон страницы с формой восстановления утраченного пароля пользователя сайта
		│      └── users.profile.tpl             # шаблон страницы с формой для редактирования пользователем данных своего личного профиля и настройки доступных ему параметров.
		│      └── users.register.tpl            # шаблон страницы регистрации новых пользователей сайта
		│      └── users.tpl                     # шаблон страницы списка пользователй сайта с различными фильтрами
	├── plugins/          # Папка c шаблонами для плагинов Cotonti
		│   └── comments/     # Папка c шаблонами для плагина "Комментарии" - комментариев статей, опросов и т.д.
		│      └── comments.tpl           # шаблон с формой создания и отображения списка комментариев к объекту (статья, опрос и т.д.) 
		│   └── contact/     # Папка c шаблонами для плагина "Обратная связь", - форма обратной связи и контактов сайта
		│      └── contact.tpl            # шаблон с формой обратной связи с администраторами, также выводит карту и контакты, если они заполненны в ПУ. 
		│   └── i18n/     # Папка c шаблонами для плагина "Content Internationalization", - мультилокализация контента модуля "Pages"
		│      └── i18n.locales.tpl       # шаблон для отображения списка доступных локалей (языков) для локализации контента в Cotonti CMF. 
		│      └── i18n.page.tpl          # шаблон для создания и редактирования локализованного содержимого страницы (статьи)
		│      └── i18n.structure.tpl     # шаблон для управления, заполнения и редактирования локализованных категорий структуры (названия на другом языке)
		│   └── indexnews/     # Папка c шаблонами для плагина списка статей на главной из выбранной категории
		│      └── indexnews.tpl          # шаблон на главной странице сайта выводит список статей из категории, которую указали в настройках плагина 
		│   └── recentitems/     # Папка c шаблонами для плагина последнего обновленного контента
		│      └── recentitems.forums.index.tpl          # шаблон на главной странице сайта выводит список обновленных топиков
		│      └── recentitems.forums.tpl                # шаблон выводит список обновленных топиков на странице плагина
		│      └── recentitems.pages.index.tpl           # шаблон на главной странице сайта выводит список последних обновленных статей 
		│      └── recentitems.pages.tpl                 # шаблон выводит список последних статей на странице плагина
		│      └── recentitems.tpl                       # шаблон страницы плагина с обновленным контентом сайта 
		│   └── search/     # Папка c шаблонами для плагина "Поиска" 
		│      └── search.tpl           # шаблон с формой и фильтрами для поиска контента на сайте по ключевому слову
		│   └── statistics/      # Папка c шаблонами для плагина "Статистики" 
		│      └── statistics.tpl           # шаблон страницы простейшей статистики по сайту
		│   └── tags/             # Папка c шаблонами для плагина "Теги в контенте" 
		│      └── tags.tpl                           # шаблон с формой поиска контента по тегам
		│   └── userarticles/     # Папка c шаблонами для плагина "Статьи пользователей"(https://github.com/webitproff/cot-userarticles) 
		│      └── userarticles.details.tpl           # шаблон списка статей, которые опубликовал этот пользователь
		│      └── userarticles.tpl                   # шаблон страницы списка пользователей с количеством опубликованных статей.
		│   └── whosonline/     # Папка c шаблонами для плагина "кто онлайн" 
		│      └── whosonline.tpl           # шаблон списка авторизованных пользователей и гостей на сайте, с параметром "кто и где". 
		├── cleancot.en.lang.php    # английская локализация для темы CleanCot, определяет переводы для интерфейса и переопределяет настройки сайта, такие как название и описание. 	
		├── cleancot.ru.lang.php    # русская локализация для темы CleanCot, определяет переводы для интерфейса и переопределяет настройки сайта, такие как название и описание.
		├── cleancot.php            # основной файл темы CleanCot в Cotonti CMF, который регистрирует тему, подключает ресурсы из cleancot.resources.php и содержит функции пользовательского характера в рамках самой темы         
		├── cleancot.rc.php         # централизованно подключает CSS и JavaScript ресурсы, такие как Bootstrap 5.3.3, Font Awesome 6.7.2 и кастомные стили/скрипты темы, через систему Resources в Cotonti
		├── cleancot.resources.php  # предназначен для переопределения стандартных HTML-шаблонов (строковых ресурсов) движка, таких как элементы пагинации и формы ввода, чтобы они соответствовали стилю Bootstrap 5.3.3, используемому в теме.
		├── error.tpl               # отвечает за отображение критических ошибок и уведомлений в Cotonti 
		├── footer.tpl              # используется для вывода нижней части страницы сайта (подвала), содержащей статический контент, навигацию, копирайт, и тегов Cotonti
		├── header.tpl              # используется для формирования верхней части страницы сайта (шапки), включая метаданные, подключение CSS/JS, основное меню навигации и личный кабинет пользователя
		├── index.tpl               # используется для формирования главной страницы сайта, отображая основной контент (новости) и сайдбар (админ-блок, опросы, теги, онлайн-пользователи) с интеграцией плагинов и модулей Cotonti CMF
		├── login.tpl               # отвечает за страницу с формой авторизации (вход на сайт) и уведомлением о техобслуживании
		├── message.tpl             # отображает системные сообщения, модальные диалоги подтверждения операций/действий
		├── plugin.tpl              используется для отображения страниц, генерируемых плагинами (расширениями), которые не привязаны к конкретным модулям, таким как page или forums и тп. Смотрите больше здесь https://github.com/Cotonti/Cotonti/blob/master/system/plugin.php
		├── popup.tpl               # используется для формирования содержимого всплывающих окон (pop-up), которые вызываются через JavaScript или AJAX в Cotonti
		├── warnings.tpl            # используется для отображения системных уведомлений трёх типов — ошибок (ERROR), предупреждений (WARNING) и успешных действий (DONE)
```


<h2>Инструкция по установке шаблона на активный сайт.</h2>

<h3>Требования перед установкой:</h3>

<p>1. Cotonti Siena версии 0.9.26 beta (устаревшие теги, устаревшие способы проверки условий функций и переменных отсутствуют в шаблоне)<br />
2. Шаблон &quot;CleanCot&quot; полностью поддерживает все коробочные расширения, но в качестве более продвинутого функционала интегрирована поддержка модуля &#39;files&#39; (https://github.com/Alex300/files). Требование состоит в том, что модуль &quot;PFS&quot; и плагин &quot;userimages&quot; должны быть обязательно деинсталиваронны в системе, если планируете устанавливать модуль &#39;files&#39;. Если же вам досточно функционала и возможностей этих двух расширений (&quot;PFS&quot; и &quot;userimages&quot;), - модуль &#39;files&#39; устанавливать не стоит.</p>

<h3><br />
Порядок установки.</h3>

<p><strong>1. Создаем полную резервную копию</strong> своего действующего сайта и сохраням на свой компьютер.</p>

<p><strong>2. Скачиваем актуальную версию шаблона &quot;CleanCot</strong>&quot; с публичного репозитория https://github.com/webitproff/cot-CleanCot</p>

<p><strong>3. Копирование шаблона</strong><br />
<strong>3.1 Распакуйте архив и откройте папку cot-CleanCot-master.</strong><br />
Скопируйте папку &quot;cleancot&quot; в директорию themes/ вашего сайта Cotonti. Путь должен выглядеть так:<br />
/path/to/cotonti/themes/cleancot/<br />
<strong>3.2 Убедитесь, что все файлы и подпапки на месте и не было потерь файлов</strong> при закачивании на хостинг/сервер.<br />
Лучше делать через &quot;FileZilla Client&quot; или подобный менеджер файлов удаленного доступа.</p>

<p><strong>4. Настройка конфигурации</strong><br />
Откройте файл datas/config.php в корне вашего сайта Cotonti (например, /path/to/cotonti/datas/config.php).<br />
Найдите строку с настройкой темы:</p>

<pre class="brush:php;">
$cfg[&#39;defaulttheme&#39;] = &#39;nemesis&#39;; // или любое ваше вместо &quot;nemesis&quot;</pre>

<p>Замените на</p>

<pre class="brush:php;">
$cfg[&#39;defaulttheme&#39;] = &#39;cleancot&#39;;</pre>

<p>Сохраните изменения файла config.php.</p>

<p><strong>5. Активация шаблона</strong><br />
Зайдите в админ-панель: Управление сайтом / Конфигурация / Темы<br />
5.1. В первой строке: &quot;Принудительная установка темы по умолчанию для всех пользователей&quot; - Установить &quot;Да&quot;.<br />
5.2. Во второй строке: &quot;Ссылка на главную страницу в навигационной цепочке&quot; - Установить &quot;Да&quot;.<br />
5.3. В третьей строке: &quot;Разделитель&quot; - должно быть полностью пустое поле.<br />
Остальные опции на свое усмотрение.<br />
Сохраните изменения.</p>

<p><strong>6. Экстраполя (Опционально, - на свое усмотрение)</strong><br />
<strong>6.1. Главное изображение для статьи из категории с кодом &quot;news&quot;</strong><br />
6.1.1. Переходим: Управление сайтом / Прочее / Экстраполя / Таблица cot_pages - Модуль Pages и внизу страницы форма с добавлением нового поля:<br />
* &quot;cot_&quot; - это преффикс таблицы БД по умолчанию в Cotonti, у вас он может быть другой.<br />
&nbsp;- Название поля: &quot;link_main_image&quot; (разумеется вставляем без кавычек);<br />
&nbsp;- Описание поля (_TITLE): &quot;Ссылка на главное изображение&quot;;<br />
&nbsp;- Тип поля: &quot;input&quot;<br />
Остальное не трогаем, жмем &quot;Добавить&quot;<br />
<strong>6.2. Видео с YouTube в топике на форуме</strong><br />
6.2.1 Переходим: Управление сайтом / Прочее / Экстраполя / Таблица cot_forum_topics - Модуль Forums<br />
Только не перепутайте с &quot;cot_forum_posts&quot; - это таблица БД сообщений и постов в топике.<br />
внизу страницы форма с добавлением нового пользовательского поля (экстраполя):<br />
&nbsp;- Название поля: &quot;xtr_fld_youtube&quot; (разумеется вставляем без кавычек);<br />
&nbsp;- Описание поля (_TITLE): &quot;Видео с YouTube&quot;;<br />
&nbsp;- Тип поля: &quot;input&quot;.<br />
Остальное не трогаем, жмем &quot;Добавить&quot;.</p>

<p><strong>7. Меню в шапке сайта.</strong><br />
<strong>7.1. &quot;Статьи и блоги&quot;</strong><br />
HTML-блок кастомного dropdown меню &quot;Категории статей&quot; в файле - themes/cleancot/inc/two-level-drop-down-menu-publications.tpl<br />
Все заполненно с рабочими примерами, придерживайтесь текущей локики и редактируйте под себя.<br />
<strong>7.2&nbsp; &quot;Еще разделы&quot;</strong><br />
HTML-блок в файле themes/cleancot/inc/two-level-drop-down-menu.tpl<br />
Все заполненно с рабочими примерами и комментариями, читайте комментарии в коде, придерживайтесь текущей локики и редактируйте под себя.</p>

<p>&nbsp;</p>

## See also:

1.  **[Userarticles](https://github.com/webitproff/cot-userarticles) for CMF Cotonti**
   The plugin for CMF Cotonti displays a list of users with the number of their articles and a detailed list of articles for each user.

3. **[Export to Excel via PhpSpreadsheet](https://github.com/webitproff/cot-excel_export) for CMF Cotonti**
   Exporting Articles to Excel from the Database in Cotonti via PhpSpreadsheet.Composer is not required for installation.

5. **[Import from Excel via PhpSpreadsheet](https://github.com/webitproff/cot-excelimport-PhpSpreadsheet_No-Composer) for CMF Cotonti**
   A plugin for importing articles for all Cotonti-based websites. Composer is not required for installation.
