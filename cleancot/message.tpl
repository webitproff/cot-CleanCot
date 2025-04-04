<!-- BEGIN: MAIN -->
<!-- IF {PHP.msg} == '930' -->
<div class="container min-height-50vh col-12 col-md-6 d-flex flex-column justify-content-center">
	<div class="card mb-4">
		<div class="card-header bg-danger text-white border border-dark">
			<h2 class="h5 mb-0">{MESSAGE_TITLE}</h2>
		</div>
		<div class="card-body">
			<div class="alert alert-warning mb-0" role="alert">
				{MESSAGE_BODY}
				<!-- BEGIN: MESSAGE_CONFIRM -->
				<div class="d-flex justify-content-center gap-3 mt-3">
					<a id="confirmYes" href="{MESSAGE_CONFIRM_YES}" class="btn btn-success">{PHP.L.Yes}</a>
					<a id="confirmNo" href="{MESSAGE_CONFIRM_NO}" class="btn btn-danger">{PHP.L.No}</a>
				</div>
				<!-- END: MESSAGE_CONFIRM -->
			</div>
		</div>
	</div>
</div>
<!-- ELSE-->
<!-- Контейнер с минимальной высотой и центрированием -->
<div class="min-height-50vh d-flex flex-column justify-content-center">
    <!-- Карточка с автоцентрированием -->
    <div class="card mb-4 mx-auto">
        <!-- Заголовок карточки -->
        <div class="card-header bg-warning text-dark border border-dark">
            <!-- Заголовок без нижнего отступа -->
            <h2 class="h5 mb-0">{MESSAGE_TITLE}</h2>
        </div>
        <!-- Тело карточки -->
        <div class="card-body">
            <!-- Уведомление внутри карточки -->
            <div class="alert alert-warning mb-0" role="alert">
                <!-- Текст сообщения -->
                {MESSAGE_BODY}
                <!-- Блок подтверждения в Cotonti -->
                <!-- BEGIN: MESSAGE_CONFIRM -->
                    <!-- Кнопки подтверждения с центрированием -->
                    <div class="d-flex justify-content-center gap-3 mt-3">
                        <!-- Кнопка "Да" -->
                        <a id="confirmYes" href="{MESSAGE_CONFIRM_YES}" class="btn btn-success">{PHP.L.Yes}</a>
                        <!-- Кнопка "Нет" -->
                        <a id="confirmNo" href="{MESSAGE_CONFIRM_NO}" class="btn btn-danger">{PHP.L.No}</a>
                    </div>
                <!-- Конец блока подтверждения -->
                <!-- END: MESSAGE_CONFIRM -->
            </div>
        </div>
    </div>
</div>
<!-- ENDIF -->
<!-- END: MAIN -->