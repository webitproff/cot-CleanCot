<!-- BEGIN: MAIN -->
<!-- Контейнер с адаптивной сеткой -->
<div class="row">
    <!-- Форма загрузки файлов с атрибутами для виджета -->
    <div
        class="col-12 file-upload"
        id="file-upload_{UPLOAD_SOURCE}_{UPLOAD_ITEM}_{UPLOAD_FIELD}"
        data-url="{UPLOAD_ACTION}"
        data-files-form-param="{UPLOAD_PARAM}"
        data-files-form-x="{UPLOAD_X}"
        data-files-source="{UPLOAD_SOURCE}"
        data-files-source-id="{UPLOAD_ITEM}"
        data-files-field="{UPLOAD_FIELD}"
    >
        <!-- Панель кнопок для управления загрузкой -->
        <div class="row fileupload-buttonbar">
            <!-- Блок кнопок -->
            <div class="col-12">
                <!-- Кнопка для выбора файлов -->
                <span class="btn btn-success fileinput-button">
                    <i class="fa-solid fa-plus"></i>
                    {PHP.L.files_add}...
                    <input type="file" name="files[]" <!-- IF {UPLOAD_LIMIT} > 0 -->multiple<!-- ENDIF -->>
                </span>
                <!-- Кнопка запуска загрузки -->
                <button type="submit" class="btn btn-primary start">
                    <i class="fa-solid fa-upload"></i>
                    {PHP.L.files_start_upload}
                </button>
                <!-- Кнопка отмены загрузки -->
                <button type="reset" class="btn btn-warning cancel">
                    <i class="fa-solid fa-ban"></i>
                    {PHP.L.files_cancel}
                </button>
                <!-- Кнопка удаления выбранных файлов -->
                <button type="button" class="btn btn-danger delete">
                    <i class="fa-solid fa-trash"></i>
                    {PHP.L.Delete}
                </button>
                <!-- Чекбокс для выбора файлов для удаления -->
                <input type="checkbox" class="toggle">
                <!-- Контейнер для состояния обработки файлов -->
                <span class="fileupload-process"></span>
            </div>

            <!-- Блок с зоной перетаскивания и прогрессом -->
            <div class="col-12">
                <!-- Зона для перетаскивания файлов -->
                <div id="dropzone" class="dropzone fade bg-light border rounded p-3">
                    <!-- Текст для перетаскивания (убран hidden-xs, виден всегда) -->
                    <div><i class="fa-solid fa-arrow-down"></i> {PHP.L.files_draghere}</div>
                    <!-- Контейнер для глобального прогресса -->
                    <div class="fileupload-progress fade">
                        <!-- Глобальный прогресс-бар -->
                        <div class="progress" role="progressbar" aria-valuemin="0" aria-valuemax="100">
                            <div class="progress-bar bg-success" style="width:0%;"></div>
                        </div>
                        <!-- Расширенное состояние прогресса (убран hidden-xs, виден всегда) -->
                        <div class="progress-extended"> </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Таблица со списком файлов для загрузки/скачивания -->
        <table id="filesTable_" role="presentation" class="table table-striped filesTable">
            <tbody class="files"></tbody>
        </table>
    </div>
</div>
<!-- END: MAIN -->