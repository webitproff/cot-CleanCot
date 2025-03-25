<!-- BEGIN: MAIN -->

<!-- Список новостей -->
    <!-- BEGIN: PAGE_ROW -->
    <div class="card mb-4">
      <div class="card-header bg-secondary-subtle text-dark">
        <h2 class="h5 card-title mb-0">
          <!-- IF {PHP.usr.isadmin} -->
          <small class="text-muted me-2">[ {PAGE_ROW_ADMIN_EDIT} ]</small>
          <!-- ENDIF -->
          <a href="{PAGE_ROW_URL}" title="{PAGE_ROW_TITLE}">{PAGE_ROW_TITLE}</a>
        </h2>
      </div>
      <div class="card-body">
        <!-- Описание -->
        <!-- IF {PAGE_ROW_DESCRIPTION} -->
        <p class="card-text text-muted small">{PAGE_ROW_DESCRIPTION}</p>
        <!-- ENDIF -->

        <!-- Теги и категория -->
        <div class="row g-3 mb-3">
          <div class="col-12 col-md-6">
            <strong>{PHP.L.Tags}:</strong>
            <!-- BEGIN: PAGE_TAGS -->
            <!-- BEGIN: PAGE_TAGS_ROW -->
            <!-- IF {PAGE_TAGS_ROW_TAG_COUNT} > 0 -->, <!-- ENDIF -->
            <a href="{PAGE_TAGS_ROW_URL}" title="{PAGE_TAGS_ROW_TAG}" rel="nofollow" class="text-primary">{PAGE_TAGS_ROW_TAG}</a>
            <!-- END: PAGE_TAGS_ROW -->
            <!-- END: PAGE_TAGS -->
            <!-- BEGIN: PAGE_NO_TAGS -->
            <span class="text-muted">{PHP.L.tags_Tag_cloud_none}</span>
            <!-- END: PAGE_NO_TAGS -->
          </div>
          <div class="col-12 col-md-6 text-md-end">
            <strong>{PHP.L.Filedunder}:</strong> {PAGE_ROW_CAT_PATH}
          </div>
        </div>

        <!-- Текст новости -->
        <div class="card-text">
          {PAGE_ROW_TEXT_CUT|strip_tags($this)}
          <!-- IF {PAGE_ROW_TEXT_IS_CUT} -->
          <a href="{PAGE_ROW_URL}" class="btn btn-outline-primary btn-sm mt-2">{PHP.L.ReadMore}</a>
          <!-- ENDIF -->
        </div>

        <!-- Количество комментариев -->
		<!-- IF {PAGE_ROW_COMMENTS_COUNT} > 0 -->
        <div class="position-absolute top-0 end-0 mt-2 me-2" data-bs-toggle="tooltip" data-bs-title="{PHP.L.CleanCot_Comments}">
          <span class="badge text-bg-info">{PAGE_ROW_COMMENTS_COUNT}</span><span class="ms-2 text-info-emphasis"><i class="fa-solid fa-comment-dots fa-lg"></i></span>
        </div>
		<!-- ENDIF -->
      </div>
    </div>
    <!-- END: PAGE_ROW -->


<!-- Пагинация -->

    <div class="col-12">
        <nav aria-label="News pagination" class="mt-3">
            <ul class="pagination justify-content-center">
                {PAGE_PAGEPREV}
                {PAGE_PAGENAV}
                {PAGE_PAGENEXT}
            </ul>
        </nav>
    </div>

<!-- END: MAIN -->