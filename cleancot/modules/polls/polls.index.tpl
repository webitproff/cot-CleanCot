<!-- BEGIN: POLL_VIEW --> <!-- Начало блока формы голосования для активного опроса -->
<div id="poll_{POLL_ID}"> <!-- Контейнер опроса с уникальным ID, где {POLL_ID} — идентификатор опроса -->
  <form action="{POLL_FORM_URL}" method="post" id="poll_form_{POLL_ID}" class="ajax post-poll_{POLL_ID};index.php;e=polls&mode=ajax&poll_theme=index"> <!-- Форма отправки голоса; {POLL_FORM_URL} — URL обработки, классы для AJAX-запроса -->
    <input type="hidden" name="poll_id" value="{POLL_ID}" /> <!-- Скрытое поле с ID опроса для передачи на сервер -->
    <ul class="list-unstyled mb-0"> <!-- Список без стандартных маркеров и отступов снизу -->
      <!-- BEGIN: POLLTABLE --> <!-- Начало цикла вариантов ответа в опросе -->
      <li class="mb-2"> <!-- Элемент списка с отступом снизу для разделения -->
        <label class="d-block">{POLL_INPUT}<span class="ms-3">{POLL_OPTIONS}</span></label> <!-- Метка с элементом ввода (чекбокс/радио) и текстом варианта, занимает всю ширину -->
      </li>
      <!-- END: POLLTABLE --> <!-- Конец цикла вариантов ответа -->
      <li> <!-- Элемент списка для кнопки без дополнительных отступов -->
        <button type="submit" class="btn btn-primary" title="{PHP.L.polls_Vote}">{PHP.L.polls_Vote}</button> <!-- Кнопка отправки формы, стили Bootstrap, текст и подсказка из локализации -->
      </li>
    </ul>
  </form>
</div>
<!-- END: POLL_VIEW --> <!-- Конец блока формы голосования -->

<!-- BEGIN: POLL_VIEW_VOTED --> <!-- Начало блока результатов для уже проголосовавших -->
<div class="row g-3"> <!-- Bootstrap-контейнер строки с отступами между элементами (gap-3) -->
  <!-- BEGIN: POLLTABLE --> <!-- Начало цикла вариантов ответа -->
  <div class="col-12"> <!-- Колонка Bootstrap, занимает всю ширину -->
    <div class="d-flex flex-column flex-md-row align-items-md-center gap-3"> <!-- Flex-контейнер: столбец на мобильных, строка на десктопах, с отступами -->
      <div class="flex-grow-1 small">{POLL_OPTIONS}</div> <!-- Текст варианта ответа, растягивается, уменьшенный шрифт -->
      <div class="text-end small" style="min-width: 20%;">{POLL_PER}% ({POLL_COUNT})</div> <!-- Процент и количество голосов, выравнивание вправо, минимум 20% ширины -->
    </div>
    <div class="bar_back mt-2"> <!-- Контейнер прогресс-бара с отступом сверху -->
      <div class="bar_front" style="width:{POLL_PER}%;"></div> <!-- Полоса прогресса, ширина задаётся процентом голосов {POLL_PER} -->
    </div>
  </div>
  <!-- END: POLLTABLE --> <!-- Конец цикла вариантов -->
</div>
<script type="text/javascript"> <!-- Скрипт анимации прогресс-баров -->
  function anim() { <!-- Функция анимации -->
    $('.bar_front').each(function() { <!-- Перебор всех элементов с классом bar_front -->
      let percentage = $(this).width(); <!-- Получение текущей ширины полосы -->
      if (percentage !== '' && percentage > 0) { <!-- Проверка, что ширина задана и больше нуля -->
        $(this).width(0).animate({ width: percentage }, 'slow'); <!-- Анимация от 0 до заданной ширины -->
      }
    });
  }
  anim(); <!-- Вызов функции при загрузке -->
</script>
<p class="small text-center">{PHP.L.Votes}: {POLL_VOTERS}</p> <!-- Информация о количестве голосов, уменьшенный шрифт, центрирован -->
<!-- END: POLL_VIEW_VOTED --> <!-- Конец блока для проголосовавших -->

<!-- BEGIN: POLL_VIEW_DISABLED --> <!-- Начало блока для отключенного опроса -->
<ul class="list-unstyled mb-0"> <!-- Список без маркеров и отступов снизу -->
  <!-- BEGIN: POLLTABLE --> <!-- Начало цикла вариантов -->
  <li class="mb-2">{POLL_OPTIONS}</li> <!-- Элемент списка с текстом варианта, отступ снизу -->
  <!-- END: POLLTABLE --> <!-- Конец цикла -->
  <li class="text-muted">{PHP.L.rat_registeredonly}</li> <!-- Уведомление о доступе только для зарегистрированных, серый цвет -->
</ul>
<!-- END: POLL_VIEW_DISABLED --> <!-- Конец блока отключенного опроса -->

<!-- BEGIN: POLL_VIEW_LOCKED --> <!-- Начало блока для закрытого опроса -->
<div class="row g-3"> <!-- Bootstrap-контейнер строки с отступами -->
  <!-- BEGIN: POLLTABLE --> <!-- Начало цикла вариантов -->
  <div class="col-12"> <!-- Колонка на всю ширину -->
    <div class="d-flex flex-column flex-md-row align-items-md-center gap-3"> <!-- Flex-контейнер для размещения -->
      <div class="flex-grow-1">{POLL_OPTIONS}</div> <!-- Текст варианта, растягивается -->
      <div class="text-end" style="min-width: 20%;">{POLL_PER}% ({POLL_COUNT})</div> <!-- Процент и голоса, выравнивание вправо, минимум 20% ширины -->
    </div>
    <div class="bar_back mt-2"> <!-- Контейнер прогресс-бара с отступом -->
      <div class="bar_front" style="width:{POLL_PER}%;"></div> <!-- Полоса прогресса с шириной в процентах -->
    </div>
  </div>
  <!-- END: POLLTABLE --> <!-- Конец цикла -->
</div>
<p>{PHP.L.Date} {POLL_SINCE_SHORT} {PHP.L.Votes} {POLL_VOTERS}</p> <!-- Информация о дате и голосах -->
<!-- END: POLL_VIEW_LOCKED --> <!-- Конец блока закрытого опроса -->

<!-- BEGIN: INDEXPOLLS --> <!-- Начало блока списка опросов на главной -->
<div class="container"> <!-- Bootstrap-контейнер для всего блока, заменил бы block, если был -->
  <!-- BEGIN: POLL --> <!-- Начало цикла отдельных опросов -->
  <div class="mb-3"> <!-- Обёртка для каждого опроса с отступом снизу -->
    <a href="{IPOLLS_URL}"><span class="fw-bold">{IPOLLS_TITLE}</span></a> <!-- Ссылка на опрос, жирный текст -->
	<div class="my-3">
    {IPOLLS_FORM} <!-- Форма или результаты опроса -->
	</div>
  </div>
  <!-- END: POLL --> <!-- Конец цикла опросов -->
  <!-- BEGIN: ERROR --> <!-- Начало блока ошибки -->
  <p class="small fw-bold text-center mb-3">{IPOLLS_ERROR}</p> <!-- Сообщение об ошибке, уменьшенный шрифт, жирный, центрирован -->
  <!-- END: ERROR --> <!-- Конец блока ошибки -->
  <p class="small text-center"> <!-- Контейнер для ссылки на архив -->
    <a href="{IPOLLS_ALL}">{PHP.L.polls_viewarchives}</a> <!-- Ссылка на архив опросов -->
  </p>
</div>
<!-- END: INDEXPOLLS --> <!-- Конец блока списка опросов -->