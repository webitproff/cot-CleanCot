<!-- BEGIN: POLL_VIEW --> <!-- Начало блока формы голосования для активного опроса -->
<div id="poll_{POLL_ID}"> <!-- Контейнер опроса с уникальным ID, где {POLL_ID} — идентификатор опроса -->
  <form action="{POLL_FORM_URL}" method="post" id="poll_form_{POLL_ID}" class="ajax post-poll_{POLL_ID};index.php;e=polls&mode=ajax"> <!-- Форма отправки голоса; {POLL_FORM_URL} — URL обработки, класс ajax и post-poll_{POLL_ID} для асинхронной отправки -->
    <input type="hidden" name="poll_id" value="{POLL_ID}" /> <!-- Скрытое поле с ID опроса для передачи на сервер -->
    <div class="row g-3"> <!-- Bootstrap-контейнер строки с отступами между элементами (gap-3) -->
      <!-- BEGIN: POLLTABLE --> <!-- Начало цикла вариантов ответа в опросе -->
      <div class="col-12"> <!-- Колонка Bootstrap, занимает всю ширину -->
        <div class="d-flex flex-column flex-md-row align-items-md-center gap-3"> <!-- Flex-контейнер: столбец на мобильных, строка на десктопах, с выравниванием и отступами -->
          <div class="flex-grow-1"> <!-- Блок для выбора варианта, растягивается по доступной ширине -->
            <label class="d-block">{POLL_INPUT}<span class="ms-3">{POLL_OPTIONS}</span></label> <!-- Метка с элементом ввода (чекбокс/радио) и текстом варианта -->
          </div>
          <div class="bar_back flex-grow-1" style="max-width: 40%;"> <!-- Контейнер прогресс-бара, ограничен 40% ширины -->
            <div class="bar_front" style="width:{POLL_PER}%;"></div> <!-- Полоса прогресса, ширина задаётся процентом голосов {POLL_PER} -->
          </div>
          <div class="text-center" style="min-width: 10%;">{POLL_PER}%</div> <!-- Процент голосов, минимум 10% ширины, центрирован -->
          <div class="text-center" style="min-width: 10%;">{POLL_COUNT}</div> <!-- Количество голосов, минимум 10% ширины, центрирован -->
        </div>
      </div>
      <!-- END: POLLTABLE --> <!-- Конец цикла вариантов ответа -->
      <div class="col-12"> <!-- Колонка для кнопки, занимает всю ширину -->
        <button type="submit" class="btn btn-primary" title="{PHP.L.polls_Vote}">{PHP.L.polls_Vote}</button> <!-- Кнопка отправки формы, стилизована Bootstrap, текст и подсказка из локализации -->
      </div>
    </div>
    <script type="text/javascript"> <!-- Скрипт анимации прогресс-баров -->
      function anim() { <!-- Функция анимации -->
        $(".bar_front").each(function () { <!-- Перебор всех элементов с классом bar_front -->
          let percentage = $(this).width(); <!-- Получение текущей ширины полосы -->
          if (percentage !== '' && percentage > 0) { <!-- Проверка, что ширина задана и больше нуля -->
            $(this).width(0).animate({ width: percentage }, 'slow'); <!-- Анимация от 0 до заданной ширины -->
          }
        });
      }
      anim(); <!-- Вызов функции при загрузке -->
    </script>
    <p>{POLL_VOTERS} {PHP.L.Date} {POLL_SINCE}</p> <!-- Информация о количестве голосов и дате начала опроса -->
  </form>
</div>
<!-- END: POLL_VIEW --> <!-- Конец блока формы голосования -->

<!-- BEGIN: POLL_VIEW_VOTED --> <!-- Начало блока результатов для уже проголосовавших -->
<div class="row g-3"> <!-- Bootstrap-контейнер строки с отступами -->
  <!-- BEGIN: POLLTABLE --> <!-- Начало цикла вариантов ответа -->
  <div class="col-12"> <!-- Колонка, занимает всю ширину -->
    <div class="d-flex flex-column flex-md-row align-items-md-center gap-3"> <!-- Flex-контейнер для вариантов -->
      <div class="flex-grow-1">{POLL_OPTIONS}</div> <!-- Текст варианта ответа, растягивается -->
      <div class="bar_back flex-grow-1" style="max-width: 40%;"> <!-- Контейнер прогресс-бара -->
        <div class="bar_front" style="width:{POLL_PER}%;"></div> <!-- Полоса прогресса с шириной в процентах -->
      </div>
      <div class="text-center" style="min-width: 10%;">{POLL_PER}%</div> <!-- Процент голосов -->
      <div class="text-center" style="min-width: 10%;">{POLL_COUNT}</div> <!-- Количество голосов -->
    </div>
  </div>
  <!-- END: POLLTABLE --> <!-- Конец цикла вариантов -->
  <div class="col-12"> <!-- Колонка для статуса -->
    <p class="fw-bold text-success">{PHP.L.polls_alreadyvoted}</p> <!-- Уведомление о том, что пользователь уже проголосовал, выделено зелёным -->
  </div>
</div>
<script type="text/javascript"> <!-- Скрипт анимации прогресс-баров -->
  function anim() {
    $(".bar_front").each(function () {
      let percentage = $(this).width();
      if (percentage !== '' && percentage > 0) {
        $(this).width(0).animate({ width: percentage }, 'slow');
      }
    });
  }
  anim();
</script>
<p>{POLL_VOTERS} {PHP.L.Date} {POLL_SINCE}</p> <!-- Информация о голосах и дате -->
<!-- END: POLL_VIEW_VOTED --> <!-- Конец блока для проголосовавших -->

<!-- BEGIN: POLL_VIEW_LOCKED --> <!-- Начало блока для закрытого опроса -->
<div class="row g-3"> <!-- Bootstrap-контейнер строки -->
  <!-- BEGIN: POLLTABLE --> <!-- Начало цикла вариантов -->
  <div class="col-12"> <!-- Колонка на всю ширину -->
    <div class="d-flex flex-column flex-md-row align-items-md-center gap-3"> <!-- Flex-контейнер -->
      <div class="flex-grow-1">{POLL_OPTIONS}</div> <!-- Текст варианта -->
      <div class="bar_back flex-grow-1" style="max-width: 40%;"> <!-- Прогресс-бар -->
        <div class="bar_front" style="width:{POLL_PER}%;"></div> <!-- Полоса прогресса -->
      </div>
      <div class="text-center" style="min-width: 10%;">{POLL_PER}%</div> <!-- Процент -->
      <div class="text-center" style="min-width: 10%;">{POLL_COUNT}</div> <!-- Количество голосов -->
    </div>
  </div>
  <!-- END: POLLTABLE --> <!-- Конец цикла -->
  <div class="col-12"> <!-- Колонка для статуса -->
    <p class="fw-bold text-warning">{PHP.L.polls_locked}</p> <!-- Уведомление о закрытии опроса, выделено жёлтым -->
  </div>
</div>
<p>{POLL_VOTERS} {PHP.L.Date} {POLL_SINCE}</p> <!-- Информация о голосах и дате -->
<!-- END: POLL_VIEW_LOCKED --> <!-- Конец блока закрытого опроса -->

<!-- BEGIN: POLL_VIEW_DISABLED --> <!-- Начало блока для отключенного опроса -->
<ul class="list-unstyled mb-0"> <!-- Список без маркеров и отступов -->
  <!-- BEGIN: POLLTABLE --> <!-- Начало цикла вариантов -->
  <li class="mb-2">{POLL_OPTIONS}</li> <!-- Элемент списка с текстом варианта -->
  <!-- END: POLLTABLE --> <!-- Конец цикла -->
  <li class="text-muted small">{PHP.L.rat_registeredonly}</li> <!-- Уведомление о доступе только для зарегистрированных -->
</ul>
<!-- END: POLL_VIEW_DISABLED --> <!-- Конец блока отключенного опроса -->

<!-- BEGIN: MAIN --> <!-- Начало основного блока шаблона -->

<!-- BEGIN: POLLS_VIEW --> <!-- Начало блока просмотра конкретного опроса -->
<div class="bg-light py-2 border-bottom border-primary"> <!-- Панель хлебных крошек -->
  <div class="container py-2"> <!-- Контейнер для хлебных крошек -->
    <nav aria-label="breadcrumb"> <!-- Навигация Bootstrap -->
      <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto"> <!-- Список хлебных крошек -->
        <a href="{PHP|cot_url('polls')}">{PHP.L.polls_viewarchives}</a> <!-- Ссылка на главную страницу опросов -->
      </ol>
    </nav>
  </div>
</div>
<div class="container min-height-50vh py-4"> <!-- Основной контейнер с минимальной высотой и отступами -->
  <div class="card mb-4"> <!-- Карточка для опроса с отступом снизу -->
    <div class="card-header bg-info-subtle"> <!-- Заголовок карточки -->
      <h2 class="h5">{POLLS_TITLE}</h2> <!-- Заголовок опроса -->
    </div>
    <div class="card-body"> <!-- Тело карточки -->
      {POLLS_FORM} <!-- Форма или результаты опроса -->
    </div>
  </div>
	<h3 class="h6">{PHP.L.comments_comments}: {POLLS_COMMENTS}</h3> <!-- Заголовок комментариев с количеством -->
	{POLLS_COMMENTS_DISPLAY} <!-- Отображение комментариев -->
</div>
<!-- END: POLLS_VIEW --> <!-- Конец блока просмотра опроса -->

<!-- BEGIN: POLLS_VIEWALL --> <!-- Начало блока архива опросов -->
<div class="container min-height-50vh py-4"> <!-- Контейнер для архива -->
  <div class="card"> <!-- Карточка архива -->
    <div class="card-header bg-info-subtle"> <!-- Заголовок карточки -->
      <h2 class="h5">{PHP.L.polls_viewarchives}</h2> <!-- Заголовок архива -->
    </div>
    <div class="card-body"> <!-- Тело карточки -->
      <div class="row g-3"> <!-- Bootstrap-строка для списка -->
        <!-- BEGIN: POLL_ROW --> <!-- Начало цикла записей архива -->
        <div class="col-12"> <!-- Колонка на всю ширину -->
          <div class="d-flex flex-column flex-md-row align-items-md-center gap-3"> <!-- Flex-контейнер -->
            <div class="text-muted small" style="min-width: 15%;">{POLL_DATE}</div> <!-- Дата опроса -->
            <div class="flex-grow-1"> <!-- Ссылка на опрос -->
              <a href="{POLL_HREF}">{POLL_TEXT}</a> <!-- Название опроса с ссылкой -->
            </div>
            <div class="text-muted small" style="min-width: 10%;">{POLLS_COMMENTS}</div> <!-- Количество комментариев -->
          </div>
        </div>
        <!-- END: POLL_ROW --> <!-- Конец цикла -->
        <!-- BEGIN: POLL_NONE --> <!-- Начало блока, если опросов нет -->
        <div class="col-12 text-center text-muted">{PHP.L.None}</div> <!-- Сообщение об отсутствии опросов -->
        <!-- END: POLL_NONE --> <!-- Конец блока -->
      </div>
    </div>
  </div>
</div>
<!-- END: POLLS_VIEWALL --> <!-- Конец блока архива -->

{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"} <!-- Подключение шаблона предупреждений -->

<!-- END: MAIN --> <!-- Конец основного блока -->