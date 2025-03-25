<!-- BEGIN: MAIN -->
<!-- Шаблон для отображения файлов, доступных для загрузки -->
<script id="template-upload" type="text/x-tmpl">
    {% for (var i=0, file; file=o.files[i]; i++) { %}
    <!-- Строка таблицы для каждого загружаемого файла -->
    <tr class="template-upload">
        <!-- Ячейка для предпросмотра -->
        <td>
            <span class="preview"></span>
        </td>
        <!-- Ячейка с именем файла и прогресс-баром -->
        <td>
            <!-- Имя файла -->
            <p class="name">{%=file.name%}</p>
            <!-- Прогресс-бар загрузки -->
            <div class="progress" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0">
                <div class="progress-bar bg-success" style="width:0%;"></div>
            </div>
            <!-- Сообщение об ошибке, если есть -->
            <strong class="error text-danger"></strong>
        </td>
        <!-- Ячейка с размером файла (убран hidden-xs, видна всегда) -->
        <td>
            <p class="size">{PHP.L.files_processing}...</p>
        </td>
        <!-- Ячейка с кнопками управления -->
        <td>
            {% if (!i && !o.options.autoUpload) { %}
                <!-- Кнопка запуска загрузки, если авто-загрузка отключена -->
                <button class="btn btn-primary start" disabled>
                    <i class="fa-solid fa-upload"></i>
                    {PHP.L.files_start}
                </button>
            {% } %}
            {% if (!i) { %}
                <!-- Кнопка отмены загрузки -->
                <button class="btn btn-warning cancel">
                    <i class="fa-solid fa-ban"></i>
                    {PHP.L.Cancel}
                </button>
            {% } %}
        </td>
    </tr>
    {% } %}
</script>

<!-- Шаблон для отображения загруженных файлов -->
<script id="template-download" type="text/x-tmpl">
    {% for (var i=0, file; file=o.files[i]; i++) { %}
    <!-- Строка таблицы для каждого загруженного файла -->
    <tr class="template-download" id="file_{%=file.id%}" data-id="{%=file.id%}" data-url="{%=file.url%}" 
        data-thumbnail="{%=file.thumbnail%}" data-name="{%=file.name%}">
        <!-- Ячейка с предпросмотром -->
        <td>
            <span class="preview">
                {% if (file.thumbnailUrl) { %}
                    <!-- Ссылка на файл с миниатюрой -->
                    <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" data-gallery>
                        <img src="{%=file.thumbnailUrl%}">
                    </a>
                {% } %}
            </span>
        </td>
        <!-- Ячейка с информацией о файле -->
        <td>
            <!-- Контейнер для имени и доп. элементов -->
            <div style="position: relative">
                <!-- ID файла -->
                <div class="file-id">ID: {%=file.id%}</div>
                <!-- Имя файла как ссылка или текст -->
                <p class="name">
                    {% if (file.url) { %}
                        <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" {%=file.thumbnailUrl?'data-gallery':''%}>{%=file.name%}</a>
                    {% } else { %}
                        <span>{%=file.name%}</span>
                    {% } %}
                </p>
                {% if (file.error) { %}
                    <!-- Ошибка загрузки -->
                    <div><span class="badge bg-danger">Error</span> {%=file.error%}</div>
                {% } else { %}
                    {% if (file.editForm) { %}
                        <!-- Поля редактирования файла -->
                        {% for (var j=0, element; element=file.editForm[j]; j++) { %}
                            <label>{%=element.title%}</label> {%#element.element%}
                        {% } %}
                    {% } %}
                    {% if (window.FormData) { %}
                        <!-- Поле для замены файла -->
                        <input type="file" name="replacement" class="files-replace-file" data-id="{%=file.id%}" id="files-file{%=file.id%}">
                    {% } %}
                {% } %}
            </div>
        </td>
        <!-- Ячейка с размером файла (убран hidden-xs, видна всегда) -->
        <td>
            <span class="size">{%=o.formatFileSize(file.size)%}</span>
        </td>
        <!-- Ячейка с кнопками управления -->
        <td>
            {% if (file.deleteUrl) { %}
                <!-- IF {IS_STANDALONE} == 1 -->
                <!-- Группа кнопок для standalone-режима -->
                <div class="btn-group">
                    {PHP|cot_rc('files_pfs_link_addfile')}
                    {% if (file.isImage==1) { %}
                        {PHP|cot_rc('files_pfs_link_addthumb')} {PHP|cot_rc('files_pfs_link_addpix')}
                    {% } %}
                </div>
                <!-- ENDIF -->
                <!-- Кнопка удаления файла -->
                <button class="btn btn-danger delete btn-sm" data-type="{%=file.deleteType%}" data-url="{%=file.deleteUrl%}"{% if (file.deleteWithCredentials) { %} data-xhr-fields='{"withCredentials":true}'{% } %} title="{PHP.L.Delete}" data-bs-toggle="tooltip">
                    <i class="fa-solid fa-trash"></i>
                    {PHP.L.Delete}
                </button>
                <!-- Чекбокс для подтверждения удаления -->
                <input type="checkbox" name="delete" value="1" class="toggle">
            {% } else { %}
                <!-- Кнопка отмены, если удаление недоступно -->
                <button class="btn btn-warning cancel">
                    <i class="fa-solid fa-ban"></i>
                    {PHP.L.Cancel}
                </button>
            {% } %}
            <!-- Кнопка замены файла -->
            <div style="margin-top: 10px">
                <button type="button" data-id="{%=file.id%}" class="btn btn-primary files-replace-button" 
                    title="{PHP.L.files_replace}" data-bs-toggle="tooltip" style="display:none">
                    <i class="fa-solid fa-retweet"></i> 
                    {PHP.L.files_replace}
                </button>
            </div>
        </td>
    </tr>
    {% } %}
</script>
<!-- END: MAIN -->