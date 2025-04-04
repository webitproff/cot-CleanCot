<!-- 
/********************************************************************************
 * File: contact.tpl
 * Extention: plugin 'contact'
 * Description: HTML template for displaying a contact form with optional description and map, allowing users to send messages with validation and CAPTCHA support.
 * Compatibility: CMF/CMS Cotonti Siena v0.9.26 (https://github.com/Cotonti/Cotonti)
 * Dependencies: Bootstrap 5.3.3 (https://getbootstrap.com/); Font Awesome Free 6.7.2 (https://fontawesome.com/)
 * Theme: CleanCot  
 * Version: 1.0.2 
 * Created: 07 March 2025 
 * Updated: 03 April 2025 
 * Author: webitproff 
 * Source: https://github.com/webitproff/cot-CleanCot 
 * Demo:  https://cleancot.previewit.work 
 * Help and support: https://abuyfile.com/ru/forums/cotonti/original/skins/cleancot
 * License: MIT  
 ********************************************************************************/
-->

<!-- BEGIN: MAIN --> <!-- Начало основного блока шаблона -->
    <div class="bg-light py-2 border-bottom border-secondary"> <!-- Панель хлебных крошек с фоном и границей -->
        <!-- Хлебные крошки в контейнере -->
        <div class="container-xl py-2"> <!-- Контейнер для хлебных крошек с отступами -->
            <nav aria-label="breadcrumb"> <!-- Навигация для доступности -->
                <!-- Список хлебных крошек с горизонтальной прокруткой -->
                <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto">{CONTACT_TITLE}</ol> <!-- Список с плейсхолдером заголовка -->
            </nav> <!-- Закрывающий тег навигации -->
        </div> <!-- Закрывающий тег контейнера хлебных крошек -->
    </div> <!-- Закрывающий тег панели хлебных крошек -->

    <div class="container-xl py-5 min-height-50vh d-flex flex-column justify-content-center"> <!-- Основной контейнер с центрированием и минимальной высотой -->
        <div class="row"> <!-- Сетка Bootstrap для двухколоночной структуры -->
            <div class="col-12 col-xl-6 mx-auto"> <!-- Левая колонка, 6/12 ширины на больших экранах -->
                <div class="card mb-4"> <!-- Карточка с нижним отступом -->
                    <div class="card-body"> <!-- Тело карточки -->
                        <!-- Описание и карта -->
					  <!-- IF {PHP.cfg.plugin.contact.about} --> <!-- Проверка наличия описания -->
					  <p>{PHP.cfg.plugin.contact.about}</p> <!-- Отображение описания -->
					  <!-- ENDIF -->
					  <!-- IF {PHP.cfg.plugin.contact.map} --> <!-- Проверка наличия карты -->
					  <div class="ratio ratio-4x3"> <!-- Контейнер для карты с соотношением сторон 4:3 -->
						{PHP.cfg.plugin.contact.map} <!-- Вставка карты -->
					  </div>
					  <!-- ENDIF -->
                    </div> <!-- Закрывающий тег тела карточки -->
                </div> <!-- Закрывающий тег карточки -->
            </div> <!-- Закрывающий тег левой колонки -->

            <div class="col-12 col-xl-6 mx-auto"> <!-- Правая колонка, 6/12 ширины на больших экранах -->
                {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"} <!-- Подключение шаблона предупреждений -->
                <div class="card mb-4"> <!-- Карточка формы с нижним отступом -->
                    <div class="card-body"> <!-- Тело карточки -->
                        <!-- BEGIN: FORM --> <!-- Начало блока формы -->
                            <form id="contact-form" name="contact_form" action="{CONTACT_FORM_SEND}" method="post" enctype="multipart/form-data" class="needs-validation" novalidate> <!-- Форма с валидацией -->
                                <div class="row g-3"> <!-- Сетка с отступами между элементами -->
                                    <div class="col-12"> <!-- Поле имени пользователя -->
                                        <label for="contactAuthor" class="form-label">{PHP.L.Username}</label> <!-- Метка поля имени -->
                                        <div class="input-group has-validation"> <!-- Группа ввода с валидацией -->
                                            {CONTACT_FORM_AUTHOR} <!-- Плейсхолдер поля имени -->
                                        </div> <!-- Закрывающий тег группы ввода -->
                                    </div> <!-- Закрывающий тег поля имени -->
                                    <div class="col-12"> <!-- Поле email -->
                                        <label for="contactEmail" class="form-label">{PHP.L.Email}</label> <!-- Метка поля email -->
                                        <div class="input-group has-validation"> <!-- Группа ввода с валидацией -->
                                            {CONTACT_FORM_EMAIL} <!-- Плейсхолдер поля email -->
                                        </div> <!-- Закрывающий тег группы ввода -->
                                    </div> <!-- Закрывающий тег поля email -->
                                    <div class="col-12"> <!-- Поле темы -->
                                        <label for="contactSubject" class="form-label">{PHP.L.Subject}</label> <!-- Метка поля темы -->
                                        <div class="input-group has-validation"> <!-- Группа ввода с валидацией -->
                                            {CONTACT_FORM_SUBJECT} <!-- Плейсхолдер поля темы -->
                                        </div> <!-- Закрывающий тег группы ввода -->
                                    </div> <!-- Закрывающий тег поля темы -->
                                    <div class="col-12"> <!-- Поле сообщения -->
                                        <label for="contactText" class="form-label">{PHP.L.Message}</label> <!-- Метка поля сообщения -->
                                        <div class="input-group has-validation"> <!-- Группа ввода с валидацией -->
                                            {CONTACT_FORM_TEXT} <!-- Плейсхолдер поля сообщения -->
                                        </div> <!-- Закрывающий тег группы ввода -->
                                    </div> <!-- Закрывающий тег поля сообщения -->
                                    <!-- BEGIN: EXTRAFLD --> <!-- Начало блока дополнительных полей -->
                                        <div class="col-12"> <!-- Дополнительное поле -->
                                            <label for="contactExtrafld" class="form-label">{CONTACT_FORM_EXTRAFLD_TITLE}</label> <!-- Метка дополнительного поля -->
                                            <div class="input-group has-validation"> <!-- Группа ввода с валидацией -->
                                                {CONTACT_FORM_EXTRAFLD} <!-- Плейсхолдер дополнительного поля -->
                                            </div> <!-- Закрывающий тег группы ввода -->
                                        </div> <!-- Закрывающий тег дополнительного поля -->
                                    <!-- END: EXTRAFLD --> <!-- Конец блока дополнительных полей -->
                                    <!-- BEGIN: CAPTCHA --> <!-- Начало блока CAPTCHA -->
                                        <div class="col-12"> <!-- Поле CAPTCHA -->
                                            <label for="regVerify" class="form-label">{PHP.L.captcha_verification} <span class="text-danger">*</span></label> <!-- Метка CAPTCHA с индикатором обязательности -->
                                            <div class="input-group has-validation"> <!-- Группа ввода с валидацией -->
                                                <div class="row g-3"> <!-- Сетка для изображения и ввода -->
                                                    <div class="col-6"> <!-- Колонка изображения CAPTCHA -->
                                                        {CONTACT_FORM_VERIFY_IMG} <!-- Плейсхолдер изображения CAPTCHA -->
                                                    </div> <!-- Закрывающий тег колонки изображения -->
                                                    <div class="col-6"> <!-- Колонка ввода CAPTCHA -->
                                                        {CONTACT_FORM_VERIFY_INPUT} <!-- Плейсхолдер поля ввода CAPTCHA -->
                                                    </div> <!-- Закрывающий тег колонки ввода -->
                                                </div> <!-- Закрывающий тег сетки CAPTCHA -->
                                                <div class="invalid-feedback">{PHP.L.captcha_users_verify_required}</div> <!-- Сообщение об ошибке валидации -->
                                            </div> <!-- Закрывающий тег группы ввода -->
                                        </div> <!-- Закрывающий тег поля CAPTCHA -->
                                    <!-- END: CAPTCHA --> <!-- Конец блока CAPTCHA -->
                                    <div class="col-12"> <!-- Кнопка отправки -->
                                        <div class="d-grid"> <!-- Контейнер для кнопки с полной шириной -->
                                            <button type="submit" class="btn btn-primary">{PHP.L.Submit}</button> <!-- Кнопка отправки формы -->
                                        </div> <!-- Закрывающий тег контейнера кнопки -->
                                    </div> <!-- Закрывающий тег кнопки -->
                                </div> <!-- Закрывающий тег сетки формы -->
                            </form> <!-- Закрывающий тег формы -->
                        <!-- END: FORM --> <!-- Конец блока формы -->
                    </div> <!-- Закрывающий тег тела карточки -->
                </div> <!-- Закрывающий тег карточки формы -->
            </div> <!-- Закрывающий тег правой колонки -->
        </div> <!-- Закрывающий тег сетки -->
    </div> <!-- Закрывающий тег основного контейнера -->

    <!-- This is the name of the template for informing the administrator --> <!-- Комментарий о назначении блока -->
    <!-- IF {PHP.usr.maingrp} == 5 AND {PHP.mskin} --> <!-- Условие: отображение для администраторов с активным mskin -->
        <!-- Подключение mskin.tpl для группы администраторов -->
        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/inc/mskin.tpl"} <!-- Подключение дополнительного шаблона -->
    <!-- ENDIF --> <!-- Конец условия для администраторов -->
<!-- END: MAIN --> <!-- Конец основного блока шаблона -->