<!-- BEGIN: MAIN --> <!-- Начало основного блока шаблона -->
<div class="container button-toolbar"> <!-- Контейнер для панели кнопок, заменил block на container -->
	<a href="{PHP|cot_url('admin', 'm=config&n=edit&o=module&p=pfs')}" class="btn btn-primary">{PHP.L.Configuration}</a> <!-- Кнопка конфигурации,  btn btn-primary -->
	<a href="{PHP|cot_url('pfs', 'userid=0')}" class="btn btn-primary">{PHP.L.SFS}</a> <!-- Кнопка SFS,  btn btn-primary -->
</div> <!-- Закрытие контейнера панели кнопок -->

<div class="container"> <!-- Контейнер для списка, заменил block на container -->

	<div class="list-group list-group-striped list-group-flush"> <!-- Список вместо таблицы,  Bootstrap-классы -->
	
		<div class="list-group-item d-flex justify-content-between align-items-center fw-bold"> <!-- Заголовок списка, выравнивание по горизонтали и вертикали -->
			<div class="w-50">{PHP.L.User}</div> <!-- Колонка "Пользователь" -->
			<div class="w-25 text-center">{PHP.L.Files}</div> <!-- Колонка "Файлы" -->
			<div class="w-25 text-center">{PHP.L.Edit}</div> <!-- Колонка "Редактировать" -->
		</div> <!-- Закрытие заголовка списка -->
		
		<!-- BEGIN: ALLPFS_ROW --> <!-- Начало цикла строк списка -->
		<div class="list-group-item d-flex justify-content-between align-items-center"> <!-- Элемент списка, выравнивание по горизонтали и вертикали -->
			<div class="w-50">{ADMIN_ALLPFS_ROW_USER}</div> <!-- Поле пользователя -->
			<div class="w-25 text-center">{ADMIN_ALLPFS_ROW_COUNT}</div> <!-- Поле количества файлов -->
			<div class="w-25 text-center"><a href="{ADMIN_ALLPFS_ROW_URL}" title="{PHP.L.Edit}">{PHP.R.icon_prefs}</a></div> <!-- Поле редактирования -->
		</div> <!-- Закрытие элемента списка -->
		<!-- END: ALLPFS_ROW --> <!-- Конец цикла строк списка -->
		
		<!-- IF !{TOTAL_ENTRIES} --> <!-- Условие отсутствия записей -->
		<div class="list-group-item text-center"> <!-- Элемент списка для сообщения "None" -->
			{PHP.L.None} <!-- Текст "Нет записей" -->
		</div> <!-- Закрытие элемента списка для "None" -->
		<!-- ENDIF --> <!-- Конец условия отсутствия записей -->
		
	</div> <!-- Закрытие списка -->
	
	<!-- IF {TOTAL_ENTRIES} --> <!-- Условие наличия пагинации -->
	<p class="paging text-center"> <!-- Пагинация, центрирование текста -->
		{PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE} <!-- Навигация пагинации -->
		<span>{PHP.L.Total}: {TOTAL_ENTRIES}, {PHP.L.Onpage}: {ENTRIES_ON_CURRENT_PAGE}</span> <!-- Информация о записях -->
	</p> <!-- Закрытие блока пагинации -->
	<!-- ENDIF --> <!-- Конец условия пагинации -->
	
</div> <!-- Закрытие контейнера списка -->

<div class="container py-5">
	<div class="alert alert-warning" role="alert">
	  <code>pfs.admin.allpfs.tpl</code> <!-- This is the name of the template for informing the administrator -->
	</div>
</div>


<!-- END: MAIN --> <!-- Конец основного блока шаблона -->