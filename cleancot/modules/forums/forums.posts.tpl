<!-- BEGIN: MAIN -->

<!-- Панель хлебных крошек -->
<div class="bg-light py-2 border-bottom border-primary">
  <div class="container py-2">
    <nav aria-label="breadcrumb" class="d-flex justify-content-between align-items-center">
      <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto">
        {FORUMS_POSTS_BREADCRUMBS}
      </ol>
      <a href="{FORUMS_POSTS_RSS}" class="ms-2" title="RSS" data-bs-toggle="tooltip" data-bs-placement="top">
        <i class="fa-solid fa-rss"></i>
      </a>
    </nav>
  </div>
</div>

<!-- Основной контейнер -->
<div class="bg-body-secondary py-4">
  <div class="container-md">
    <h1 class="h4">{FORUMS_POSTS_TITLE}</h1>
    <!-- IF {FORUMS_POSTS_TOPICDESC} -->
    <h2 class="h6 mb-4">{FORUMS_POSTS_TOPICDESC}</h2>
    <!-- ENDIF -->

    <!-- Приватная тема -->
    <!-- BEGIN: FORUMS_POSTS_TOPICPRIVATE -->
    <div class="alert alert-danger mb-3">{PHP.L.forums_privatetopic}</div>
    <!-- END: FORUMS_POSTS_TOPICPRIVATE -->

    <!-- Опрос -->
    <!-- BEGIN: POLLS_VIEW -->
    <div class="card mb-4">
      <div class="card-body">
        <h2 class="polls h5 mb-3">{POLLS_TITLE}</h2>
        {POLLS_FORM}
      </div>
    </div>
    <!-- END: POLLS_VIEW -->

    <!-- Админ-опции -->
    <!-- BEGIN: FORUMS_POSTS_ADMIN -->
    <div class="card mb-4">
      <div class="card-body">
        <div class="row g-3 align-items-center">
          <div class="col-md-3 col-12">
            <label class="form-label fw-semibold">{PHP.L.forums_topicoptions}:</label>
          </div>
          <div class="col-md-9 col-12">
            <div class="d-flex flex-wrap gap-2 small">
              <a href="{FORUMS_POSTS_BUMP_URL}" title="{PHP.L.forums_explainbump}">{PHP.L.forums_bump}</a>
              <span>{PHP.cfg.separator}</span>
              <a href="{FORUMS_POSTS_LOCK_URL}" title="{PHP.L.forums_explainlock}">{PHP.L.Lock}</a>
              <span>{PHP.cfg.separator}</span>
              <a href="{FORUMS_POSTS_STICKY_URL}" title="{PHP.L.forums_explainsticky}">{PHP.L.forums_makesticky}</a>
              <span>{PHP.cfg.separator}</span>
              <a href="{FORUMS_POSTS_ANNOUNCE_URL}" title="{PHP.L.forums_explainannounce}">{PHP.L.forums_announcement}</a>
              <span>{PHP.cfg.separator}</span>
              <a href="{FORUMS_POSTS_PRIVATE_URL}" title="{PHP.L.forums_explainprivate}">{PHP.L.forums_private} (#)</a>
              <span>{PHP.cfg.separator}</span>
              <a href="{FORUMS_POSTS_CLEAR_URL}" title="{PHP.L.forums_explaindefault}">{PHP.L.Default}</a>
              <span>{PHP.cfg.separator}</span>
              <a href="{FORUMS_POSTS_DELETE_URL}" title="{PHP.L.forums_explaindelete}" class="confirmLink">{PHP.L.Delete}</a>
            </div>
          </div>
          <div class="col-md-3 col-12">
            <label class="form-label fw-semibold">{PHP.L.Move}:</label>
          </div>
          <div class="col-md-9 col-12">
            <form id="movetopic" action="{FORUMS_POSTS_MOVE_URL}" method="post" class="d-flex flex-wrap gap-2 align-items-center">
              {FORUMS_POSTS_MOVEBOX_SELECT}
              <span class="small text-muted">{FORUMS_POSTS_MOVEBOX_KEEP} {PHP.L.forums_keepmovedlink}</span>
              <button type="submit" class="btn btn-primary btn-sm">{PHP.L.Move}</button>
            </form>
          </div>
        </div>
      </div>
    </div>
    <!-- END: FORUMS_POSTS_ADMIN -->

    <!-- Предупреждения -->
    {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}

    <!-- Список постов -->
    <div class="card">
      <div class="card-body">
        <!-- Теги -->
        <div class="row mb-3">
		<!-- IF {FORUMS_POSTS_TOPIC_XTR_FLD_YOUTUBE} -->
          <div class="col-md-6 col-12 mb-2 mb-md-0">
            <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#videoModal">
              {FORUMS_POSTS_TOPIC_XTR_FLD_YOUTUBE_TITLE}
            </button>
          </div>
		  <!-- ENDIF -->
          <div class="col-md-6 col-12">
            {FORUMS_POSTS_TAGS}
          </div>
        </div>

        <!-- Заголовки -->
        <div class="row py-3 bg-primary-subtle text-primary-emphasis mb-3">
          <div class="col-md-3 col-12">
            {PHP.L.Author}
          </div>
          <div class="col-md-9 col-12 d-none d-md-block">{PHP.L.Message}</div>
        </div>

        <!-- Посты -->
        <!-- BEGIN: FORUMS_POSTS_ROW -->
        <div class="row align-items-start py-3 {FORUMS_POSTS_ROW_ODDEVEN} border-bottom">
          <!-- Автор -->
          <div class="col-md-3 col-12 mb-3 mb-md-0">
            {FORUMS_POSTS_ROW_ANCHORLINK}
            <h4 class="h6 mb-2 d-inline-flex align-items-center">
              <!-- IF {PHP|cot_plugin_active('whosonline')} -->
              <img src="themes/{PHP.theme}/img/online{FORUMS_POSTS_ROW_USER_ONLINE}.png" title="{PHP.L.Status}: {FORUMS_POSTS_ROW_USER_ONLINE_TITLE}" alt="" class="userstatus me-2" />
              <!-- ENDIF -->
              {FORUMS_POSTS_ROW_USER_NAME}
            </h4>
            <div class="mt-2">
              <!-- IF {FORUMS_POSTS_ROW_USER_AVATAR} -->
              {FORUMS_POSTS_ROW_USER_AVATAR}
              <!-- ELSE -->
              {PHP.R.forums_noavatar}
              <!-- ENDIF -->
            </div>
            <p class="small text-muted mt-2">{FORUMS_POSTS_ROW_USER_MAIN_GROUP_TITLE}</p>
            <p class="small">{PHP.L.forums_posts}: {FORUMS_POSTS_ROW_USER_POSTCOUNT}</p>
          </div>

          <!-- Сообщение -->
          <div class="col-md-9 col-12">
            <div class="d-flex flex-wrap justify-content-end gap-2 mb-2 small text-muted">
              <a name="{FORUMS_POSTS_ROW_ID}" id="{FORUMS_POSTS_ROW_POSTID}" href="{FORUMS_POSTS_ROW_IDURL}" rel="nofollow">#{FORUMS_POSTS_ROW_ORDER}</a>
              <span>{PHP.cfg.separator}</span>
              {FORUMS_POSTS_ROW_CREATION}
              <!-- IF {FORUMS_POSTS_ROW_POSTERIP} -->
              <span>{PHP.cfg.separator}</span>
              {FORUMS_POSTS_ROW_POSTERIP}
              <!-- ENDIF -->
              <!-- IF {FORUMS_POSTS_ROW_QUOTE} -->
              <span>{PHP.cfg.separator}</span>
              {FORUMS_POSTS_ROW_QUOTE}
              <!-- ENDIF -->
              <!-- IF {FORUMS_POSTS_ROW_EDIT} -->
              <span>{PHP.cfg.separator}</span>
              {FORUMS_POSTS_ROW_EDIT}
              <!-- ENDIF -->
              <!-- IF {FORUMS_POSTS_ROW_DELETE} -->
              <span>{PHP.cfg.separator}</span>
              {FORUMS_POSTS_ROW_DELETE}
              <!-- ENDIF -->
              {FORUMS_POSTS_ROW_BOTTOM}
            </div>
            <div>{FORUMS_POSTS_ROW_TEXT}</div>

            <!-- Обновлено -->
            <!-- IF {FORUMS_POSTS_ROW_UPDATEDBY} -->
            <div class="text-muted fst-italic mt-2 small">{FORUMS_POSTS_ROW_UPDATEDBY}</div>
            <!-- ENDIF -->
            <!-- Подпись -->
            <div class="small text-muted mt-2">{FORUMS_POSTS_ROW_USER_TEXT}</div>
            <!-- Файлы -->
            <!-- IF {PHP|cot_module_active('files')} -->
            <!-- IF {FORUMS_POSTS_ROW_ID|cot_filesCount('forums',$this,'','files')} > 0 -->
            <div class="mt-3">
              <h3 class="h6">{PHP.L.files_downloads}</h3>
              {FORUMS_POSTS_ROW_ID|cot_filesDisplay('forums', $this)}
            </div>
            <!-- ENDIF -->
            <!-- IF {FORUMS_POSTS_ROW_ID|cot_filesCount('forums', $this, '', 'images')} > 0 -->
            <div class="mt-3">
              <h3 class="h6">{PHP.L.Image}</h3>
              {FORUMS_POSTS_ROW_ID|cot_filesGallery('forums', $this)}
            </div>
            <!-- ENDIF -->
            <!-- ENDIF -->
          </div>
        </div>
        <!-- END: FORUMS_POSTS_ROW -->

        <!-- Пагинация -->
        <!-- IF {PAGINATION} -->
        <nav aria-label="Pagination" class="mt-4">
          <ul class="pagination justify-content-center">
            {PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}
          </ul>
        </nav>
        <!-- ENDIF -->
      </div>
    </div>

    <!-- Тема закрыта -->
    <!-- BEGIN: FORUMS_POSTS_TOPICLOCKED -->
    <div class="alert alert-warning mt-3">{FORUMS_POSTS_TOPICLOCKED_BODY}</div>
    <!-- END: FORUMS_POSTS_TOPICLOCKED -->

    <!-- Антибамп -->
    <!-- BEGIN: FORUMS_POSTS_ANTIBUMP -->
    <div class="alert alert-info mt-3">{FORUMS_POSTS_ANTIBUMP_BODY}</div>
    <!-- END: FORUMS_POSTS_ANTIBUMP -->

    <!-- Новый пост -->
    <!-- BEGIN: FORUMS_POSTS_NEWPOST -->
    <div class="card mt-4">
      <div class="card-body">
        <form action="{FORUMS_POSTS_NEWPOST_SEND}" method="post" name="newpost">
          <div class="row g-3">
            <div class="col-12">
              {FORUMS_POSTS_NEWPOST_TEXT}
              <!-- IF {FORUMS_POSTS_NEWPOST_MYPFS} -->
              <div class="mt-3">{FORUMS_POSTS_NEWPOST_MYPFS}</div>
              <!-- ENDIF -->
              <!-- IF {PHP.cfg.forums.edittimeout} != 0 -->
              <p class="small text-muted mt-3">{PHP.L.forums_edittimeoutnote} {FORUMS_POSTS_NEWPOST_EDITTIMEOUT}</p>
              <!-- ENDIF -->
            </div>
            <div class="col-12">
              <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                <button type="submit" class="btn btn-primary">{PHP.L.Reply}</button>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
    <!-- END: FORUMS_POSTS_NEWPOST -->
  </div>
</div>


<div class="modal fade" id="videoModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-fullscreen-sm-down">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">{FORUMS_POSTS_TOPIC_XTR_FLD_YOUTUBE_TITLE}</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body p-0">
        <div class="ratio ratio-16x9">
          <iframe src="//www.youtube.com/embed/{FORUMS_POSTS_TOPIC_XTR_FLD_YOUTUBE}?enablejsapi=1&autoplay=1" type="text/html" id="staticPlayer"></iframe>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- END: MAIN -->