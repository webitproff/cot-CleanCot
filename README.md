# cot-CleanCot
The CleanCot theme for CMF Cotonti. Modern Bootstrap theme on v.5.3.3 for Cotonti Siena v.0.9.26 without outdated (legacy) mode. Only relevant tags!

&nbsp;* <strong><a href="https://cleancot.previewit.work">Demo</a></strong><br />
&nbsp;* <a href="https://abuyfile.com/ru/forums/cotonti/original/skins/cleancot"><strong>Help and support</strong></a><br />
&nbsp;* <a href="https://github.com/Cotonti/Cotonti"><strong>CMF/CMS Cotonti</strong></a><br />
&nbsp;* <a href="https://abuyfile.com/ru/forums/cotonti/original/skins/cleancot/topic128"><strong>QuickStart</strong></a><br />
&nbsp;* 04 April 2025<br />
&nbsp;* Author: webitproff<br />
&nbsp;* License: MIT<br />



### Карта файлов темы сайта и основного шаблона "CleanCot" для Cotonti Siena
```
cleancot/     # Папка основного шаблона, она же тема сайта 
	├── css/                  # Папка со стилями шаблона
		│   └── extras.css
		│   └── modalbox.css  # в основном системные модальные уведомления и диалоги
		│   └── style.css	  # основной файл кастомных стилей темы cleancot
	├── fontawesome/          # The Font Awesome Free 6.7.2 library includes only the minimally necessary files.
	├── img/                  # Папка со стилями с иконками и изображениями
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
		│   └── recentitems/     # Папка c шаблонами для плагина списка статей на главной из выбранной категории
		│      └── recentitems.forums.index.tpl          # шаблон на главной странице сайта выводит список 
		│      └── recentitems.forums.tpl                # шаблон на главной странице сайта выводит список 
		│      └── recentitems.pages.index.tpl           # шаблон на главной странице сайта выводит список 
		│      └── recentitems.pages.tpl                 # шаблон на главной странице сайта выводит список 
		│      └── recentitems.tpl                       # шаблон на главной странице сайта выводит список 
		│   └── search/     # Папка c шаблонами для плагина "Комментарии" - комментариев статей, опросов и т.д.
		│      └── search.tpl           # шаблон с формой создания и отображения списка комментариев к объекту (статья, опрос и т.д.) 
		│   └── statistics/     # Папка c шаблонами для плагина "Комментарии" - комментариев статей, опросов и т.д.
		│      └── statistics.tpl           # шаблон с формой создания и отображения списка комментариев к объекту (статья, опрос и т.д.) 
		│   └── tags/     # Папка c шаблонами для плагина "Комментарии" - комментариев статей, опросов и т.д.
		│      └── tags.tpl          # шаблон с формой создания и отображения списка комментариев к объекту (статья, опрос и т.д.) 	
		│   └── userarticles/     # Папка c шаблонами для плагина "Комментарии" - комментариев статей, опросов и т.д.
		│      └── userarticles.details.tpl           # шаблон с формой создания и отображения списка комментариев к объекту (статья, опрос и т.д.) 
		│      └── userarticles.tpl           # шаблон с формой создания и отображения списка комментариев к объекту (статья, опрос и т.д.) 
		│   └── whosonline/     # Папка c шаблонами для плагина "Комментарии" - комментариев статей, опросов и т.д.
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



