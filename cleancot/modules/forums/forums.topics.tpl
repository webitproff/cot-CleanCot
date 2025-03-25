<!-- BEGIN: MAIN -->

<!-- Панель хлебных крошек -->
<div class="bg-light py-2 border-bottom border-primary">
  <div class="container py-2">
    <nav aria-label="breadcrumb" class="d-flex justify-content-between align-items-center">
      <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto">
        {FORUMS_TOPICS_PAGETITLE}
      </ol>
      <a href="{FORUMS_TOPICS_SECTION_RSS}" class="ms-2" title="RSS" data-bs-toggle="tooltip" data-bs-placement="top">
        <i class="fa-solid fa-rss"></i>
      </a>
    </nav>
  </div>
</div>

<!-- Основной контейнер -->
<div class="bg-body-secondary py-4">
  <div class="container-md">
    <!-- Предупреждения -->
    {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}

    <!-- Подфорумы -->
    <!-- BEGIN: FORUMS_SECTIONS -->
    <div class="card mb-4">
      <div class="card-body">
        <div class="row py-3 bg-primary text-white mb-3">
          <div class="col-md-1 col-12 d-none d-md-block"></div>
          <div class="col-md-5 col-12">{PHP.L.Subforums}</div>
          <div class="col-md-3 col-12 d-none d-md-block">{PHP.L.Lastpost}</div>
          <div class="col-md-1 col-12 d-none d-md-block">{PHP.L.forums_posts}</div>
          <div class="col-md-2 col-12 d-none d-md-block">{PHP.L.forums_topics}</div>
        </div>

        <!-- BEGIN: FORUMS_SECTIONS_ROW_SECTION -->
        <div class="row align-items-center py-3 border-bottom {FORUMS_SECTIONS_ROW_ODDEVEN}">
          <div class="col-md-1 col-12 text-center">
            {PHP.R.icon_subfolder}
          </div>
          <div class="col-md-5 col-12">
            <h4 class="h6 mb-2">
              <a href="{FORUMS_SECTIONS_ROW_URL}">{FORUMS_SECTIONS_ROW_TITLE}</a>
            </h4>
            <p class="small text-muted">{FORUMS_SECTIONS_ROW_DESC}</p>
          </div>
          <div class="col-md-3 col-12 text-center text-md-start">
            {FORUMS_SECTIONS_ROW_LASTPOST}<br>
            <span class="small text-muted">{FORUMS_SECTIONS_ROW_LASTPOSTER} {FORUMS_SECTIONS_ROW_TIMEAGO}</span>
          </div>
          <div class="col-md-1 col-12 text-center">
            <span class="small">{FORUMS_SECTIONS_ROW_POSTCOUNT}</span>
          </div>
          <div class="col-md-2 col-12 text-center">
            <span class="small">{FORUMS_SECTIONS_ROW_TOPICCOUNT}</span>
          </div>
        </div>
        <!-- END: FORUMS_SECTIONS_ROW_SECTION -->
      </div>
    </div>
    <!-- END: FORUMS_SECTIONS -->

    <!-- Навигация для новых тем -->
    <ul class="nav nav-pills mb-3" id="newf">
      <li class="nav-item">
        <a class="btn btn-success" role="button" href="{FORUMS_TOPICS_NEWTOPICURL}" rel="nofollow">{PHP.L.forums_newtopic}</a>
      </li>
      <!-- BEGIN: FORUMS_SECTIONS_POLLS -->
      <li class="nav-item">
        <a class="nav-link" href="{FORUMS_TOPICS_NEWPOLLURL}" rel="nofollow">{PHP.L.forums_newpoll}</a>
      </li>
      <!-- END: FORUMS_SECTIONS_POLLS -->
    </ul>

    <!-- Темы -->
    <div class="card">
      <div class="card-body">
        <div class="row py-3 bg-primary-subtle text-primary-emphasis mb-3">
          <div class="col-md-1 col-12 d-none d-md-block"></div>
          <div class="col-md-4 col-12">{FORUMS_TOPICS_TITLE_TOPICS} / {FORUMS_TOPICS_TITLE_STARTED}</div>
          <div class="col-md-3 col-12 d-none d-md-block">{FORUMS_TOPICS_TITLE_LASTPOST}</div>
          <div class="col-md-2 col-12 d-none d-md-block">{FORUMS_TOPICS_TITLE_POSTS}</div>
          <div class="col-md-2 col-12 d-none d-md-block">{FORUMS_TOPICS_TITLE_VIEWS}</div>
        </div>

        <!-- BEGIN: FORUMS_TOPICS_ROW -->
        <div class="row align-items-center py-3 border-bottom {FORUMS_TOPICS_ROW_ODDEVEN}">
          <div class="col-md-1 col-12 text-center">
            {FORUMS_TOPICS_ROW_ICON}
          </div>
          <div class="col-md-4 col-12">
            <h4 class="h6 mb-2">
              <a href="{FORUMS_TOPICS_ROW_URL}" title="{FORUMS_TOPICS_ROW_PREVIEW}">{FORUMS_TOPICS_ROW_TITLE}</a>
            </h4>
            <!-- IF {FORUMS_TOPICS_ROW_DESC} -->
            <p class="small text-muted">{FORUMS_TOPICS_ROW_DESC|strip_tags($this)|mb_substr($this, 0, 70, 'UTF-8')} ...</p>
            <!-- ENDIF -->
            <p class="small text-muted">
              {FORUMS_TOPICS_ROW_CREATIONDATE}: {FORUMS_TOPICS_ROW_FIRSTPOSTER} {FORUMS_TOPICS_ROW_PAGES}<br>
              {FORUMS_TOPICS_ROW_TAGS}
            </p>
          </div>
          <div class="col-md-3 col-12 text-center text-md-start">
            {FORUMS_TOPICS_ROW_UPDATED} {FORUMS_TOPICS_ROW_LASTPOSTER}<br>
            <span class="small text-muted">{FORUMS_TOPICS_ROW_TIMEAGO}</span>
          </div>
          <div class="col-md-2 col-12 text-center">
            <span class="small">{FORUMS_TOPICS_ROW_POSTCOUNT}</span>
          </div>
          <div class="col-md-2 col-12 text-center">
            <span class="small">{FORUMS_TOPICS_ROW_VIEWCOUNT}</span>
          </div>
        </div>
        <!-- END: FORUMS_TOPICS_ROW -->
      </div>
    </div>

    <!-- Пагинация и зрители -->
    <div class="d-flex flex-wrap gap-3 justify-content-center mt-3">
      <!-- BEGIN: FORUMS_SECTIONS_VIEWERS -->
      <span>{PHP.L.forums_viewers}: {FORUMS_TOPICS_VIEWERS} {FORUMS_TOPICS_VIEWER_NAMES}</span>
      <!-- END: FORUMS_SECTIONS_VIEWERS -->
      <!-- IF {PAGINATION} -->
      <nav aria-label="Pagination" class="mt-2">
        <ul class="pagination justify-content-center">
          {PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}
        </ul>
      </nav>
      <!-- ENDIF -->
    </div>
  </div>

  <!-- Помощь -->
  <div class="container-md mt-4">
    <div class="card">
      <div class="card-body">
        <h2 class="info h5 mb-3">{PHP.L.Help}</h2>
        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-3 small">
          <div class="col">{PHP.R.forums_icon_posts}{PHP.L.forums_nonewposts}</div>
          <div class="col">{PHP.R.forums_icon_posts_new}{PHP.L.forums_newposts}</div>
          <div class="col">{PHP.R.forums_icon_posts_hot}{PHP.L.forums_nonewpostspopular}</div>
          <div class="col">{PHP.R.forums_icon_posts_new_hot}{PHP.L.forums_newpostspopular}</div>
          <div class="col">{PHP.R.forums_icon_posts_sticky}{PHP.L.forums_sticky}</div>
          <div class="col">{PHP.R.forums_icon_posts_new_sticky}{PHP.L.forums_newpostssticky}</div>
          <div class="col">{PHP.R.forums_icon_posts_locked}{PHP.L.forums_locked}</div>
          <div class="col">{PHP.R.forums_icon_posts_new_locked}{PHP.L.forums_newpostslocked}</div>
          <div class="col">{PHP.R.forums_icon_posts_sticky_locked}{PHP.L.forums_announcment}</div>
          <div class="col">{PHP.R.forums_icon_posts_new_sticky_locked}{PHP.L.forums_newannouncment}</div>
          <div class="col">{PHP.R.forums_icon_posts_moved}{PHP.L.forums_movedoutofthissection}</div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- IF {PHP.usr.maingrp} == 5 AND {PHP.mskin} -->
<!-- Подключение mskin.tpl для группы администраторов -->
{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/inc/mskin.tpl"}
<!-- ENDIF -->
<!-- END: MAIN -->