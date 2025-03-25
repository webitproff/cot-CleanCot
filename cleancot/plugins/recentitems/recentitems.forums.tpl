<!-- BEGIN: MAIN -->
<div class="container-xl">
    <h3 class="mb-3">
        <a href="{PHP|cot_url('forums')}" class="text-decoration-none">{PHP.L.Forums}</a>
    </h3>
    <div class="table-responsive">
        <table class="table table-striped table-hover">
            <thead class="table-dark">
                <tr>
                    <th scope="col" class="col-1 text-center"></th>
                    <th scope="col" class="col-5">{PHP.L.forums_topic} / {PHP.L.Started}</th>
                    <th scope="col" class="col-3">{PHP.L.Lastpost}</th>
                    <th scope="col" class="col-1">{PHP.L.forums_posts}</th>
                    <th scope="col" class="col-2">{PHP.L.Views}</th>
                </tr>
            </thead>
            <tbody>
                <!-- BEGIN: TOPICS_ROW -->
                <tr>
                    <td class="text-center align-middle">
                        {FORUM_ROW_ICON}
                    </td>
                    <td class="align-middle">
                        <h4 class="h6 mb-1">
                            <a href="{FORUM_ROW_URL}" class="text-primary">{FORUM_ROW_TITLE}</a>
                        </h4>
                        <p class="small text-muted mb-1">{FORUM_ROW_PATH}</p>
                        <p class="small text-muted mb-0">
                            {FORUM_ROW_CREATED}
                            <span class="mx-1">{PHP.cfg.separator}</span>
                            {FORUM_ROW_FIRST_POSTER}
                            <!-- IF {FORUM_ROW_PAGES} -->
                            <span class="mx-1">{PHP.cfg.separator}</span>
                            {FORUM_ROW_PAGES}
                            <!-- ENDIF -->
                        </p>
                    </td>
                    <td class="text-center align-middle">
                        <div>{FORUM_ROW_UPDATED}</div>
                        <!-- IF {FORUM_ROW_LAST_POSTER_ID} > 0 -->
                        <span class="mx-1">{PHP.cfg.separator}</span>
                        {FORUM_ROW_LAST_POSTER}
                        <!-- ENDIF -->
                        <small class="d-block text-muted mt-1">{FORUM_ROW_TIME_AGO}</small>
                    </td>
                    <td class="text-center align-middle">{FORUM_ROW_POSTS_COUNT}</td>
                    <td class="text-center align-middle">{FORUM_ROW_VIEWS_COUNT}</td>
                </tr>
                <!-- END: TOPICS_ROW -->
                <!-- BEGIN: NO_TOPICS_FOUND -->
                <tr>
                    <td colspan="5" class="text-center text-muted py-3">{PHP.L.recentitems_nonewposts}</td>
                </tr>
                <!-- END: NO_TOPICS_FOUND -->
            </tbody>
        </table>
    </div>
</div>
<!-- END: MAIN -->