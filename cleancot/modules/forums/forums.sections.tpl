<!-- BEGIN: MAIN -->
<!-- Панель хлебных крошек -->
<div class="bg-light py-2 border-bottom border-primary">
  <div class="container py-2">
    <nav aria-label="breadcrumb" class="d-flex justify-content-between align-items-center">
      <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto">
        {FORUMS_SECTIONS_PAGETITLE}
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
    <!-- Навигация -->
    <div class="mobile-menu-wrapper my-3 my-md-4">
      <ul class="nav nav-pills pills-menu dataset-pills">
        <li class="nav-item nav-item__index">
          <a class="nav-link" href="{PHP|cot_url('forums')}">{PHP.L.forums_foldall}</a>
        </li>
        <li class="nav-item is-active nav-item__all">
          <span class="nav-link active">{PHP.L.forums_unfoldall}</span>
        </li>
        <li class="nav-item nav-item__latest_threads">
          <a class="nav-link" href="{PHP|cot_url('forums','c=unfold#top')}">{PHP.L.forums_markasread}</a>
        </li>
      </ul>
    </div>

    <!-- Секции форума -->
    <!-- BEGIN: FORUMS_SECTIONS -->
    <div class="border-bottom">
      <!-- BEGIN: CAT -->
      <div class="container-fluid" id="{FORUMS_SECTIONS_ROW_CAT}">
        <div class="row py-3 bg-primary text-white">
          <div class="col-sm-6 col-12">
            <i class="fa-solid fa-folder me-2"></i>
            <a class="text-white" href="{FORUMS_SECTIONS_ROW_SECTIONSURL}" onclick="return toggleblock('blk_{FORUMS_SECTIONS_ROW_CAT}')" title="{FORUMS_SECTIONS_ROW_TITLE}">
              {FORUMS_SECTIONS_ROW_TITLE}
            </a>
          </div>
          <div class="col-sm-3 col-12 d-none d-md-block">{PHP.L.Activity}</div>
          <div class="col-sm-3 col-12 d-none d-md-block">{PHP.L.Lastpost}</div>
        </div>
      </div>

      <div class="container-fluid" id="blk_{FORUMS_SECTIONS_ROW_CAT}"<!-- IF {FORUMS_SECTIONS_ROW_FOLD} --> style="display:none;"<!-- ENDIF -->>
        <!-- BEGIN: SECTION -->
        <div class="row align-items-center py-3 border-bottom">
          <div class="col-sm-6 col-12">
			<div class="col-sm-6 col-12">
			  <h3 class="forum-link h5 d-inline-block">
			  <!-- IF {FORUMS_SECTIONS_ROW_ICON} -->
			  <span class="text-muted small m-0 me-1">{FORUMS_SECTIONS_ROW_ICON}</span>
			  <!-- ELSE -->
			  <span class="text-primary me-1"><i class="fa-solid fa-comments"></i></span>
			  <!-- ENDIF -->
			  <a href="{FORUMS_SECTIONS_ROW_URL}" title="{FORUMS_SECTIONS_ROW_TITLE}">{FORUMS_SECTIONS_ROW_TITLE}</a></h3>
			</div>
            <!-- IF {FORUMS_SECTIONS_ROW_DESC} -->
            <p class="text-muted small m-0">{FORUMS_SECTIONS_ROW_DESC}</p>
            <!-- ENDIF -->
            <div class="subforums pb-3 text-muted border-top"<!-- IF !{FORUMS_SECTIONS_ROW_SUBSECTION} --> style="display:none;"<!-- ENDIF -->>
              <div class="font-weight-bold my-2">
                <i class="fa-solid fa-level-down-alt me-2"></i> Подразделы:
              </div>
              <div class="row row-cols-1 row-cols-sm-2 row-cols-xl-3">
                <!-- BEGIN: SUBSECTION -->
                <div class="col">
                  <i class="fa-solid fa-comment me-2"></i>
                  <a href="{FORUMS_SECTIONS_ROW_URL}" class="text-muted" title="{FORUMS_SECTIONS_ROW_TITLE}">
                    {FORUMS_SECTIONS_ROW_TITLE}
                  </a>
                </div>
                <!-- END: SUBSECTION -->
              </div>
            </div>
          </div>
          <div class="col-sm-3 col-12">
            <div class="small py-2 py-sm-0">
              <strong>Темы:</strong> {FORUMS_SECTIONS_ROW_TOPICCOUNT}<br>
              <strong>Сообщения:</strong> {FORUMS_SECTIONS_ROW_POSTCOUNT}
            </div>
          </div>
          <div class="col-sm-3 col-12">
            <div class="forum-serve small">
              <div class="post-from-user">
                {FORUMS_SECTIONS_ROW_LASTPOST}
                <span class="last-post-from">от</span>
                {FORUMS_SECTIONS_ROW_LASTPOSTER}
                <span class="last-post-date">{FORUMS_SECTIONS_ROW_LASTPOSTDATE}</span>
              </div>
            </div>
          </div>
        </div>
        <!-- END: SECTION -->
      </div>
      <!-- END: CAT -->
    </div>
    <!-- END: FORUMS_SECTIONS -->

    <!-- Навигация внизу -->
    <div class="d-flex flex-wrap gap-3 justify-content-center mt-3">
      <!-- IF {PHP|cot_plugin_active('search')} -->
      <span><a href="{PHP|cot_url('plug','e=search&tab=frm')}">{PHP.L.forums_searchinforums}</a></span>
      <!-- ENDIF -->
      <!-- IF {PHP|cot_plugin_active('forumstats')} -->
      <span><a href="{PHP|cot_url('plug','e=forumstats')}">{PHP.L.Statistics}</a></span>
      <!-- ENDIF -->
      <span><a href="{FORUMS_SECTIONS_MARKALL_URL}" rel="nofollow">{PHP.L.forums_markasread}</a></span>
    </div>
  </div>

  <!-- Теги -->
  <div class="container-md mt-4">
    <div class="card">
      <div class="card-body">
        <h2 class="tags h5 mb-3">{PHP.L.Tags}</h2>
        {FORUMS_SECTIONS_TAG_CLOUD}
      </div>
    </div>
  </div>
</div>

<!-- END: MAIN -->
<div class="block">
    <h2 class="forums">
        {FORUMS_SECTIONS_PAGETITLE}
        <a href="{FORUMS_RSS}" style="float: right"><img src="{PHP.cfg.themes_dir}/nemesis/img/rss.png" alt="RSS"
                                                         style="vertical-align: middle"></a>
    </h2>
    <!-- BEGIN: FORUMS_SECTIONS -->
    <table class="cells">
        <thead>
        <tr>
            <td class="coltop" class="width10">&nbsp;</td>
            <td class="coltop" class="width40">
                <a href="{PHP|cot_url('forums','c=fold#top')}" rel="nofollow"
                   onclick="return toggleAll('hide')">{PHP.L.forums_foldall}</a><span class="spaced">/</span><a
                        href="{PHP|cot_url('forums','c=unfold#top')}" rel="nofollow"
                        onclick="return toggleAll('show')">{PHP.L.forums_unfoldall}</a>
            </td>
            <td class="coltop" class="width20">{PHP.L.Lastpost}</td>
            <td class="coltop" class="width10">{PHP.L.forums_topics}</td>
            <td class="coltop" class="width10">{PHP.L.forums_posts}</td>
            <td class="coltop" class="width10">{PHP.L.Activity}</td>
        </tr>
        </thead>
        <!-- BEGIN: CAT -->
        <tbody id="{FORUMS_SECTIONS_ROW_CAT}">
        <tr>
            <td class="forumssection" colspan="6">
                <a href="{FORUMS_SECTIONS_ROW_SECTIONSURL}"
                   onclick="return toggleblock('blk_{FORUMS_SECTIONS_ROW_CAT}')">{FORUMS_SECTIONS_ROW_TITLE}</a>
            </td>
        </tr>
        </tbody>
        <tbody id="blk_{FORUMS_SECTIONS_ROW_CAT}"<!-- IF {FORUMS_SECTIONS_ROW_FOLD} --> style="display:none;"<!-- ENDIF --> >
			<!-- BEGIN: SECTION -->
			<tr>
				<td class="centerall">{FORUMS_SECTIONS_ROW_ICON}</td>
				<td>
					<h4><a href="{FORUMS_SECTIONS_ROW_URL}">{FORUMS_SECTIONS_ROW_TITLE}</a></h4>
					<!-- IF {FORUMS_SECTIONS_ROW_DESC} -->
					<p class="small">{FORUMS_SECTIONS_ROW_DESC}</p>
					<!-- ENDIF -->
					<ul class="subforums">
						<!-- BEGIN: SUBSECTION -->
						<li>
							{PHP.R.forums_icon_subforum}<a href="{FORUMS_SECTIONS_ROW_URL}">{FORUMS_SECTIONS_ROW_TITLE}</a>
						</li>
						<!-- END: SUBSECTION -->
					</ul>
				</td>
				<td class="centerall">
					{FORUMS_SECTIONS_ROW_LASTPOST}<br/>
					{FORUMS_SECTIONS_ROW_LASTPOSTDATE} {FORUMS_SECTIONS_ROW_LASTPOSTER}
				</td>
				<td class="centerall">{FORUMS_SECTIONS_ROW_TOPICCOUNT}</td>
				<td class="centerall">{FORUMS_SECTIONS_ROW_POSTCOUNT}</td>
				<td class="centerall">{FORUMS_SECTIONS_ROW_ACTIVITY}</td>
			</tr>
			<!-- END: SECTION -->
        </tbody>
        <!-- END: CAT -->
    </table>
    <!-- END: FORUMS_SECTIONS -->
    <p class="paging">
        <!-- IF {PHP|cot_plugin_active('search')} --><span><a
                    href="{PHP|cot_url('plug','e=search&amp;tab=frm')}">{PHP.L.forums_searchinforums}</a></span>
        <!-- ENDIF -->
        <!-- IF {PHP|cot_plugin_active('forumstats')} --><span><a
                    href="{PHP|cot_url('plug','e=forumstats')}">{PHP.L.Statistics}</a></span><!-- ENDIF -->
        <span><a href="{FORUMS_SECTIONS_MARKALL_URL}" rel="nofollow">{PHP.L.forums_markasread}</a></span>
	</p>
</div>
<div class="block">
    <h2 class="tags">{PHP.L.Tags}</h2>
    {FORUMS_SECTIONS_TAG_CLOUD}
</div>
