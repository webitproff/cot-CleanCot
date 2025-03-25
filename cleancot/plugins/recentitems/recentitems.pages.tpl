<!-- BEGIN: MAIN -->
<div class="container-xl">
    <h3 class="mb-3">
        <a href="{PHP|cot_url('index')}" class="text-decoration-none">{PHP.L.Pages}</a>
    </h3>
    <div class="table-responsive">
        <table class="table table-striped table-hover">
            <thead class="table-dark">
                <tr>
                    <th scope="col" class="col-1 text-center"></th>
                    <th scope="col" class="col-5">{PHP.L.Page}</th>
                    <th scope="col" class="col-4">{PHP.L.Owner}</th>
                    <th scope="col" class="col-2">{PHP.L.Views}</th>
                </tr>
            </thead>
            <tbody>
                <!-- BEGIN: PAGE_ROW -->
                <tr>
                    <td class="text-center align-middle">
                        <i class="fas fa-file-alt text-muted"></i>
                    </td>
                    <td class="align-middle">
                        <h4 class="h6 mb-1">
                            <a href="{PAGE_ROW_URL}" class="text-primary">{PAGE_ROW_TITLE}</a>
                        </h4>
                        <!-- IF {PAGE_ROW_DESCRIPTION} -->
                        <p class="small text-muted mb-1">{PAGE_ROW_DESCRIPTION}</p>
                        <!-- ENDIF -->
                        <p class="small text-muted mb-0">{PAGE_ROW_CAT_PATH}</p>
                    </td>
                    <td class="text-center align-middle">
                        {PAGE_ROW_CREATED_STAMP|cot_date('date_full', $this)}: {PAGE_ROW_OWNER}
                    </td>
                    <td class="text-center align-middle">{PAGE_ROW_HITS}</td>
                </tr>
                <!-- END: PAGE_ROW -->
                <!-- BEGIN: NO_PAGES_FOUND -->
                <tr>
                    <td colspan="4" class="text-center text-muted py-3">{PHP.L.recentitems_nonewpages}</td>
                </tr>
                <!-- END: NO_PAGES_FOUND -->
            </tbody>
        </table>
    </div>
</div>
<!-- END: MAIN -->