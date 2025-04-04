<!-- BEGIN: MAIN --> <!-- Начало основного блока шаблона -->
<div class="container button-toolbar"> <!-- Контейнер для панели кнопок, заменил block на container -->

	<a href="{ADMIN_PFS_URL_CONFIG}" class="btn btn-primary">{PHP.L.Configuration}</a> <!-- Кнопка конфигурации, добавил btn btn-primary -->
	<a href="{ADMIN_PFS_URL_SFS}" class="btn btn-primary">{PHP.L.SFS}</a> <!-- Кнопка SFS, добавил btn btn-primary -->
	<a href="{ADMIN_PFS_URL_ALLPFS}" class="btn btn-primary">{PHP.L.adm_allpfs}</a> <!-- Кнопка AllPFS, добавил btn btn-primary -->
	
</div> <!-- Закрытие контейнера панели кнопок -->

{FILE "{PHP.cfg.system_dir}/admin/tpl/warnings.tpl"} <!-- Подключение шаблона предупреждений -->

<div class="container"> <!-- Контейнер для списка GD -->

	<h2>{PHP.L.adm_gd}:</h2> <!-- Заголовок секции GD -->
	
	<div class="wrapper"> <!-- Обёртка для списка, сохранён пользовательский класс -->
	
		<div class="list-group list-group-striped list-group-flush follow"> <!-- Список вместо ul, добавил Bootstrap-классы, сохранён класс follow -->
			<!-- BEGIN: PFS_ROW --> <!-- Начало цикла элементов списка -->
			<div class="list-group-item"> <!-- Элемент списка -->
				{ADMIN_PFS_DATAS_NAME}: <span class="fw-bold">{ADMIN_PFS_DATAS_ENABLE_OR_DISABLE}</span> <!-- Данные GD с выделением, заменил strong на fw-bold -->
			</div> <!-- Закрытие элемента списка -->
			<!-- END: PFS_ROW --> <!-- Конец цикла элементов списка -->
		</div> <!-- Закрытие списка -->
		
	</div> <!-- Закрытие обёртки списка -->
	
</div> <!-- Закрытие контейнера списка GD -->

<div class="container py-5">
	<div class="alert alert-warning" role="alert">
	  <code>pfs.admin.tpl</code> <!-- This is the name of the template for informing the administrator -->
	</div>
</div>

<!-- END: MAIN --> <!-- Конец основного блока шаблона -->