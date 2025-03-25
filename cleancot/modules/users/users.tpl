<!-- BEGIN: MAIN -->
<div class="bg-light py-2 border-bottom border-primary">
  <div class="container py-2">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto">{USERS_BREADCRUMBS}</ol>
    </nav>
  </div>
</div>
<div class="container-xl min-height-50vh d-flex flex-column">
    <div class="row flex-grow-1">
        <div class="col-12">
            <div class="card mt-4 mb-4">
                <div class="card-header bg-dark text-white">
                    <h2 class="h5 mb-0">{PHP.L.Filters}</h2>
                </div>
                <div class="card-body">
                    <!-- Фильтры -->
                    <div class="mb-4">
                        
                        <form id="filter-form" action="{USERS_FILTERS_ACTION}" method="GET" class="row g-3 align-items-end">
                            {USERS_FILTERS_PARAMS}
                            <div class="col-md-4">
                                <h3 class="h6 mb-2">{PHP.L.Filter_search}:</h3>
                                <div class="d-flex flex-column gap-2">
                                    {USERS_FILTERS_COUNTRY}
                                    {USERS_FILTERS_MAIN_GROUP}
                                    {USERS_FILTERS_GROUP}
                                </div>
                            </div>
                            <div class="col-md-4">
                                <h3 class="h6 mb-2">{PHP.L.Username_search}:</h3>
                                {USERS_FILTERS_SEARCH}
                            </div>
                            <div class="col-md-4">
                                <h3 class="h6 mb-2">{PHP.L.OrderBy}:</h3>
                                <div class="d-flex gap-2">
                                    {USERS_FILTERS_SORT}
                                    {USERS_FILTERS_SORT_WAY}
                                </div>
                            </div>
                            <div class="col-12">
                                <button type="submit" class="btn btn-primary">{PHP.L.Submit}</button>
                            </div>
                        </form>
                    </div>

                    <!-- Список пользователей -->
                    <div class="list-group">
                        <div class="list-group-item list-group-item-dark d-flex align-items-center fw-bold">
                            <div class="col-1 text-center"></div>
                            <div class="col-3">{USERS_TOP_NAME}</div>
                            <div class="col-3">{USERS_TOP_MAIN_GROUP}</div>
                            <div class="col-2 text-center">{USERS_TOP_GROUP_LEVEL}</div>
                            <div class="col-1 text-center">{USERS_TOP_COUNTRY}</div>
                            <div class="col-2 text-center">{USERS_TOP_REGISTRATION_DATE}</div>
                        </div>
                        <!-- BEGIN: USERS_ROW -->
                        <div class="list-group-item d-flex align-items-center">
                            <div class="col-1 text-center">{USERS_ROW_PM}</div>
                            <div class="col-3">{USERS_ROW_NAME} {USERS_ROW_TAG}</div>
                            <div class="col-3">{USERS_ROW_MAIN_GROUP}</div>
                            <div class="col-2 text-center">{USERS_ROW_MAIN_GROUP_STARS}</div>
                            <div class="col-1 text-center">{USERS_ROW_COUNTRY_FLAG} {USERS_ROW_COUNTRY}</div>
                            <div class="col-2 text-center">{USERS_ROW_REGDATE}</div>
                        </div>
                        <!-- END: USERS_ROW -->
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Пагинация -->
    <div class="row">
        <div class="col-12">
            <div class="d-flex justify-content-between align-items-center mb-4">
                <div>
                    <span>{PHP.L.users_usersperpage}: {ENTRIES_PER_PAGE}</span>
                    <span class="ms-3">{PHP.L.users_usersinthissection}: {TOTAL_ENTRIES}</span>
                </div>
                <nav aria-label="Users pagination">
                    <ul class="pagination mb-0">
                        {PREVIOUS_PAGE}
                        {PAGINATION}
                        {NEXT_PAGE}
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</div>
<!-- END: MAIN -->