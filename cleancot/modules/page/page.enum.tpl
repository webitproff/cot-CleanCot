<!-- BEGIN: MAIN -->
<div class="container my-4">
    <!-- BEGIN: PAGE_ROW -->
    <div class="card mb-4">
        <div class="card-body">
            <h3 class="card-title mb-3">
                <!-- Admin edit link (visible only to admins) -->
                <!-- IF {PHP.usr.isadmin} -->
                <span class="me-2">[ {PAGE_ROW_ADMIN_EDIT} ]</span>
                <!-- ENDIF -->
                <a href="{PAGE_ROW_URL}" title="{PAGE_ROW_TITLE}">{PAGE_ROW_TITLE}</a>
            </h3>

            <!-- Page description (if exists) -->
            <!-- IF {PAGE_ROW_DESCRIPTION} -->
            <p class="card-text small text-muted">{PAGE_ROW_DESCRIPTION}</p>
            <!-- ENDIF -->

            <!-- Tags and category row -->
            <div class="row g-3 mb-3">
                <!-- Tags -->
                <!-- BEGIN: PAGE_TAGS -->
                <div class="col-12 col-md-6">
                    <p class="mb-0">
                        <strong>{PHP.L.Tags}:</strong>
                        <!-- BEGIN: PAGE_TAGS_ROW -->
                        <!-- IF {PAGE_TAGS_ROW_TAG_COUNT} > 0 -->, <!-- ENDIF -->
                        <a href="{PAGE_TAGS_ROW_URL}" title="{PAGE_TAGS_ROW_TAG}" rel="nofollow">{PAGE_TAGS_ROW_TAG}</a>
                        <!-- END: PAGE_TAGS_ROW -->
                    </p>
                </div>
                <!-- END: PAGE_TAGS -->
                <!-- No tags message -->
                <!-- BEGIN: PAGE_NO_TAGS -->
                <div class="col-12 col-md-6">
                    <p class="mb-0">{PHP.L.tags_Tag_cloud_none}</p>
                </div>
                <!-- END: PAGE_NO_TAGS -->

                <!-- Category -->
                <div class="col-12 col-md-6 text-md-end">
                    <p class="mb-0">
                        <strong>{PHP.L.Filedunder}:</strong> {PAGE_ROW_CAT_PATH}
                    </p>
                </div>
            </div>

            <!-- Page text preview -->
            <div class="card-text">
                {PAGE_ROW_TEXT_CUT}
                <!-- More link if text is truncated -->
                <!-- IF {PAGE_ROW_TEXT_IS_CUT} -->
                <a href="{PAGE_ROW_URL}" class="btn btn-outline-primary btn-sm mt-2">{PHP.L.ReadMore}</a>
                <!-- ENDIF -->
            </div>
        </div>
    </div>
    <!-- END: PAGE_ROW -->

    <!-- Pagination (if exists) -->
    <!-- IF {PAGINATION} -->
    <nav aria-label="Page navigation" class="mt-4">
        <ul class="pagination justify-content-center">
            {PREVIOUS_PAGE}
            {PAGINATION}
            {NEXT_PAGE}
        </ul>
    </nav>
    <!-- ENDIF -->
</div>
<!-- END: MAIN -->