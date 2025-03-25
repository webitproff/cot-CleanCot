<!-- BEGIN: MAIN -->
<main class="py-4">
    <div class="container-xl">
        <div class="row">
            <!-- Основной контент (2/3 ширины) -->
            <div class="col-lg-8 mb-4">
                {FILE "{PHP.cfg.themes_dir}/{PHP.theme}/warnings.tpl"}
                <!-- Новости -->
                <!-- IF {INDEX_NEWS} -->

                        {INDEX_NEWS}

                <!-- ENDIF -->
            </div>

            <!-- Сайдбар (1/3 ширины) -->
            <div class="col-lg-4 mb-4">
                <!-- Админ-блок -->
                <!-- IF {PHP.usr.isadmin} -->
                <div class="card mb-4">
                    <div class="card-header bg-dark text-white">
                        <h2 class="h5 mb-0">{PHP.L.Admin}</h2>
                    </div>
                    <div class="card-body">
                        <ul class="list-unstyled">
                            <li><a href="{PHP|cot_url('admin')}" class="text-primary">{PHP.L.Adminpanel}</a></li>
                            <li><a href="{PHP|cot_url('users')}" class="text-primary">{PHP.L.Users}</a></li>
                            <li><a href="{PHP|cot_url('users','m=profile')}" class="text-primary">{PHP.L.Profile}</a></li>
                            <li><a href="{PHP|cot_url('pfs')}" class="text-primary">{PHP.L.PFS}</a></li>
                            <li><a href="{PHP|cot_url('plug','e=whosonline')}" class="text-primary">{PHP.themelang.index.Online}</a></li>
                        </ul>
                    </div>
                </div>
                <!-- ENDIF -->

                <!-- Опросы -->
                <!-- IF {INDEX_POLLS} -->
                <div class="card mb-4">
                    <div class="card-header bg-dark text-white">
                        <h2 class="h5 mb-0">{PHP.L.Polls}</h2>
                    </div>
                    <div class="card-body">
                        {INDEX_POLLS}
                    </div>
                </div>
                <!-- ENDIF -->

                <!-- Облако тегов -->
                <!-- IF {INDEX_TAG_CLOUD} -->
                <div class="card mb-4">
                    <div class="card-header bg-dark text-white">
                        <h2 class="h5 mb-0">{PHP.L.Tags}</h2>
                    </div>
                    <div class="card-body">
                        {INDEX_TAG_CLOUD}
						<hr />
						<a href="{PHP|cot_url('plug','e=tags')}" class="btn btn-outline-primary">{PHP.L.tags_All}</a>
						<br />
						 {PHP.R.tags_code_cloud_more} | {INDEX_TAG_CLOUD_ALL_LINK}  
                    </div>
                </div>
                <!-- ENDIF -->

                <!-- Кто онлайн -->
                <!-- IF {PHP.out.whosonline} -->
                <div class="card mb-4">
                    <div class="card-header bg-dark text-white">
                        <h2 class="h5 mb-0">{PHP.L.Online}</h2>
                    </div>
                    <div class="card-body">
                        <a href="{PHP|cot_url('plug','e=whosonline')}" class="text-primary">{PHP.out.whosonline}</a>
                        <!-- IF {PHP.out.whosonline_reg_list} -->
                        <p class="mt-2 mb-0">{PHP.out.whosonline_reg_list}</p>
                        <!-- ENDIF -->
                    </div>
                </div>
                <!-- ENDIF -->
            </div>
        </div>

        <!-- Недавние элементы -->
        <!-- IF {PHP|cot_plugin_active('recentitems')} -->
        <div class="row">
            <div class="col-12">
                <div class="card mb-4">
                    <div class="card-header bg-warning text-dark">
                        <h2 class="h5 mb-0"><a href="{PHP|cot_url('plug','e=recentitems')}" class="text-dark text-decoration-none">{PHP.L.recentitems_pages}</a></h2>
                    </div>
                    <div class="card-body p-0">
                        <!-- Недавние страницы -->
                        <!-- IF {RECENT_PAGES} -->
                        <h3 class="h6"></h3>
                        {RECENT_PAGES}
                        <!-- ELSE -->
                        <div class="alert alert-warning mb-0">{PHP.L.recentitems_nonewpages}</div>
                        <!-- ENDIF -->

                    </div>
                </div>
				
                <div class="card mb-4">
                    <div class="card-header bg-warning text-dark">
                        <h2 class="h5 mb-0"><a href="{PHP|cot_url('plug','e=recentitems')}" class="text-dark text-decoration-none">{PHP.L.recentitems_forums}</a></h2>
                    </div>
                    <div class="card-body p-0">
                        <!-- Недавние сообщения на форумах -->
                        <!-- IF {RECENT_FORUMS} -->
                        {RECENT_FORUMS}
                        <!-- ELSE -->
                        <div class="alert alert-warning mb-0 mt-3">{PHP.L.recentitems_nonewposts}</div>
                        <!-- ENDIF -->
                    </div>
                </div>
            </div>
        </div>
        <!-- ENDIF -->
    </div>
</main>
<!-- END: MAIN -->