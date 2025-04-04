<!-- 
/********************************************************************************
 * File: i18n.page.tpl
 * Extention: plugin 'i18n'
 * Description: HTML template for editing localized page content in Cotonti CMF.
 * Compatibility: CMF/CMS Cotonti Siena v0.9.26 (https://github.com/Cotonti/Cotonti)
 * Dependencies: Bootstrap 5.3.3 (https://getbootstrap.com/); Font Awesome Free 6.7.2 (https://fontawesome.com/)
 * Theme: CleanCot  
 * Version: 1.0.2 
 * Created: 07 March 2025 
 * Updated: 04 April 2025 
 * Author: webitproff 
 * Source: https://github.com/webitproff/cot-CleanCot 
 * Demo:  https://cleancot.previewit.work 
 * Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/cleancot
 * License: MIT  
 ********************************************************************************/
-->
<!-- Начало основного блока шаблона Cotonti -->
<!-- BEGIN: MAIN -->
    <!-- Контейнер Bootstrap с большими отступами -->
    <div class="container-xl py-4 min-height-50vh">
        <!-- Заголовок страницы из Cotonti -->
        <h2 class="mb-4">{I18N_TITLE}</h2>

        <!-- Подключение шаблона предупреждений из темы Cotonti -->
        {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
        <!-- Форма для отправки данных локализации в Cotonti -->
        <form action="{I18N_ACTION}" method="post">
            <!-- Контейнер для содержимого -->
            <div class="row">
				<!-- Заголовок с двумя языками -->
				<div class="col-12 mb-5">
					<!-- Сетка для заголовков языков -->
					<div class="row">
						<!-- Оригинальный язык из Cotonti -->
						<div class="col-6">
							<div class="p-3 mb-2 bg-success text-white">{PHP.L.i18n_original} ({I18N_ORIGINAL_LANG})</div>
						</div>
						<!-- Локализованный язык из Cotonti, разделённый на две колонки -->
						<div class="col-6">
							<div class="p-3 mb-2 bg-warning text-dark">
								<!-- Сетка внутри для разделения -->
								<div class="row">
									<!-- Текст "Локализованный" -->
									<div class="col-6">{PHP.L.i18n_localized}</div>
									<!-- Язык в скобках -->
									<div class="col-6">{I18N_LOCALIZED_LANG}</div>
								</div>
							</div>
						</div>
					</div>
				</div>
                <!-- Карточка без границ и закруглений -->
                <div class="col-12">
                    <div class="card border-0 mb-5" style="border-radius: 0;">
                        <!-- Тело карточки без внутренних отступов -->
                        <div class="card-body p-0">
                            <!-- Сетка для содержимого -->
                            <div class="row">
                                <!-- Колонка для оригинального языка -->
                                <div class="col-12 col-md-6 bg-success-subtle ">
                                    <!-- Заголовок страницы из Cotonti -->
									<p class="fw-semibold mt-2">{PHP.L.Title}</p>
									<div class="mb-3 border rounded border-secondary p-2"><span class="fw-semibold">{I18N_PAGE_TITLE}</span></div>
                                    <!-- Описание страницы из Cotonti -->
									<p class="fw-semibold">{PHP.L.Description}</p>
									<div class="mb-3 border rounded border-secondary p-2">{I18N_PAGE_DESC}</div>
                                    <!-- Теги страницы из Cotonti -->
									<p class="fw-semibold">{PHP.L.Tags}</p>
									<div class="mb-3 border rounded border-secondary p-2">{I18N_PAGE_TAGS}</div>
                                    <!-- Текст страницы из Cotonti -->
									<p class="fw-semibold">{PHP.L.Text}</p>
                                    <div class="mb-3 border rounded border-secondary p-2">{I18N_PAGE_TEXT}</div>
                                </div>
                                <!-- Колонка для локализованного языка -->
                                <div class="col-12 col-md-6 bg-warning-subtle text-dark">
                                    <!-- Поле ввода заголовка -->
                                    <div class="py-2">
                                        <label class="form-label"><span class="fw-semibold">{PHP.L.Title}</span></label>
                                        <input type="text" class="form-control" name="title" value="{I18N_IPAGE_TITLE}" maxlength="128" />
                                    </div>
                                    <!-- Поле ввода описания -->
                                    <div class="py-2">
                                        <label class="form-label"><span class="fw-semibold">{PHP.L.Description}</span></label>
                                        <textarea class="form-control" name="desc" maxlength="255" rows="4">{I18N_IPAGE_DESC}</textarea>
                                    </div>
                                    <!-- Блок тегов, если активен -->
                                    <!-- BEGIN: TAGS -->
                                        <div class="py-2">
                                            <label class="form-label"><span class="fw-semibold">{PHP.L.Tags}</span></label>
                                            {I18N_IPAGE_TAGS}
                                            <small class="text-muted">({PHP.L.tags_comma_separated})</small>
                                        </div>
                                    <!-- END: TAGS -->
                                    <!-- Поле ввода текста -->
                                    <div class="py-2">
                                        <label class="form-label"><span class="fw-semibold">{PHP.L.Text}</span></label>
                                        {I18N_IPAGE_TEXT}
                                    </div>
									<!-- Кнопка отправки формы -->
									<div class="col-12 text-center py-4">
										<!-- Кнопка "Отправить" в стиле Bootstrap из локализации Cotonti -->
										<button type="submit" class="btn btn-primary col-6">{PHP.L.Submit}</button>
									</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </form>
    </div>
    <!-- This is the name of the template for informing the administrator -->
    <!-- Условие Cotonti: показ уведомления только админам (группа 5) -->
    <!-- IF {PHP.usr.maingrp} == 5 -->
        <!-- Контейнер Bootstrap для уведомления -->
        <div class="container-xl py-4">
            <!-- Блок предупреждения в стиле Bootstrap для админов -->
            <div class="alert alert-warning" role="alert">
                <!-- Текст уведомления с именем админа и названием шаблона из Cotonti -->
                <strong>{PHP.usr.name}</strong>, This is the HTML template <code>i18n.page.tpl</code>
            </div>
        </div>
    <!-- Конец условия для админов в Cotonti -->
    <!-- ENDIF -->
<!-- Конец основного блока шаблона Cotonti -->
<!-- END: MAIN -->


		<div class="block">
			<h2>{I18N_TITLE}</h2>
			{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
			<form action="{I18N_ACTION}" method="post">
				<table class="cells">
					<tr>
						<td class="coltop" style="width:10%">{PHP.L.Name}</td>
						<td class="coltop" style="width:45%">{PHP.L.i18n_original} ({I18N_ORIGINAL_LANG})</td>
						<td class="coltop" style="width:45%">{PHP.L.i18n_localized} ({I18N_LOCALIZED_LANG})</td>
					</tr>
					<tr>
						<td>
							{PHP.L.Title}
						</td>
						<td>
							<h3>{I18N_PAGE_TITLE}</h3>
						</td>
						<td>
							<input type="text" name="title" value="{I18N_IPAGE_TITLE}" maxlength="128" size="64" />
						</td>
					</tr>
					<tr>
						<td>
							{PHP.L.Description}
						</td>
						<td>
							<em>{I18N_PAGE_DESC}</em>
						</td>
						<td>
							<textarea name="desc" maxlength="255" rows="4" cols="64">{I18N_IPAGE_DESC}</textarea>
						</td>
					</tr>
					<tr>
						<td>
							{PHP.L.Text}
						</td>
						<td>
							<em>{I18N_PAGE_TEXT}</em>
						</td>
						<td>
							{I18N_IPAGE_TEXT}
						</td>
					</tr>
<!-- BEGIN: TAGS -->
					<tr>
						<td>
							{PHP.L.Tags}
						</td>
						<td>
							<em>{I18N_PAGE_TAGS}</em>
						</td>
						<td>
							{I18N_IPAGE_TAGS}
							({PHP.L.tags_comma_separated})
						</td>
					</tr>
	<!-- END: TAGS -->
					<tr>
						<td colspan="3">
							<input type="submit" value="{PHP.L.Submit}" />
						</td>
					</tr>
				</table>
			</form>
		</div>

