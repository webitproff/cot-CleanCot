<!-- BEGIN: MAIN -->
<div class="bg-light py-2 border-bottom border-primary">
    <div class="container py-2">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb mb-0 flex-nowrap overflow-x-auto">
                {PAGE_BREADCRUMBS}
            </ol>
        </nav>
    </div>
</div>

<div class="bg-body-secondary">
    <div class="container-md d-flex flex-column justify-content-center">
        {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
        <div class="row">
            <!-- Main content: full width on mobile (col-12), 8/12 on medium+ (col-md-8) -->
            <div class="col-12 col-md-8 mx-auto pb-5">
                <div class="card mt-4 mb-4">
                    <div class="card-header bg-warning text-dark">
                        <h2 class="h5 mb-0">{PAGE_TITLE}</h2>
                    </div>
                    <div class="card-body">
						<!-- IF {PAGE_COMMENTS_COUNT} > 0-->
                        <div class="mb-3">{PHP.L.CleanCot_Comments}: {PAGE_COMMENTS_COUNT} </div>
						<!-- ENDIF -->
                        <!-- Description -->
                        <!-- IF {PAGE_DESCRIPTION} -->
                        <p class="small mb-3">{PAGE_DESCRIPTION}</p>
                        <!-- ENDIF -->

                        <!-- Tags and category -->
                        <div class="row g-3 mb-3">
                            <div class="col-12 col-md-6">
                                <strong>{PHP.L.Tags}:</strong>
                                <!-- BEGIN: PAGE_TAGS_ROW -->
                                <!-- IF {PHP.tag_i} > 0 -->, <!-- ENDIF -->
                                <a href="{PAGE_TAGS_ROW_URL}" title="{PAGE_TAGS_ROW_TAG}" rel="nofollow">{PAGE_TAGS_ROW_TAG}</a>
                                <!-- END: PAGE_TAGS_ROW -->
                                <!-- BEGIN: PAGE_NO_TAGS -->
                                {PAGE_NO_TAGS}
                                <!-- END: PAGE_NO_TAGS -->
                            </div>
                            <div class="col-12 col-md-6 text-md-end">
                                <strong>{PHP.L.Filedunder}:</strong> {PAGE_CAT_PATH}
                            </div>
                        </div>

                        <!-- News text -->
                        <div class="mb-3">{PAGE_TEXT}</div>

                        <!-- News file -->
                        <!-- BEGIN: PAGE_FILE -->
                        <div class="mb-3">
                            <!-- BEGIN: MEMBERSONLY -->
                            <p>{PAGE_TITLE}</p>
                            <!-- END: MEMBERSONLY -->
                            <!-- BEGIN: DOWNLOAD -->
                            <p>{PHP.L.Download}: <a class="fw-bold" href="{PAGE_FILE_URL}">{PAGE_TITLE}</a></p>
                            <!-- END: DOWNLOAD -->
                            <p>{PHP.L.Filesize}, kB: {PAGE_FILE_SIZE}{PHP.L.kb}</p>
                            <p>{PHP.L.Downloaded}: {FILE_DOWNLOADS_TIMES}</p>
                        </div>
                        <!-- END: PAGE_FILE -->
                    </div>
                </div>

                <!-- Comments -->
                <!-- IF {PHP|cot_plugin_active('comments')} -->
                {PAGE_COMMENTS_DISPLAY}
                <!-- ENDIF -->
            </div>

            <!-- Sidebar: full width on mobile (col-12), 4/12 on medium+ (col-md-4) -->
            <div class="col-12 col-md-4 mx-auto">
                <!-- Admin panel -->
                <!-- BEGIN: PAGE_ADMIN -->
                <div class="card mt-4 mb-4">
                    <div class="card-header bg-warning text-dark">
                        <h2 class="h5 mb-0">{PHP.L.Adminpanel}</h2>
                    </div>
                    <div class="card-body p-0">
                        <ul class="list-group list-group-flush">
                            <!-- IF {PHP.usr.isadmin} -->
                            <li class="list-group-item">
                                <a href="{PHP|cot_url('admin')}">{PHP.L.Adminpanel}</a>
                            </li>
                            <!-- ENDIF -->
                            <li class="list-group-item">
                                <a href="{PAGE_CAT|cot_url('page','m=add&c=$this')}">{PHP.L.page_addtitle}</a>
                            </li>
                            <li class="list-group-item">{PAGE_ADMIN_UNVALIDATE}</li>
                            <li class="list-group-item">{PAGE_ADMIN_EDIT}</li>
                            <li class="list-group-item">{PAGE_ADMIN_CLONE}</li>
                            <li class="list-group-item">{PAGE_ADMIN_DELETE}</li>
                            <!-- IF {PAGE_I18N_TRANSLATE} -->
                            <li class="list-group-item">{PAGE_I18N_TRANSLATE}</li>
                            <!-- ENDIF -->
                            <!-- IF {PAGE_I18N_DELETE} -->
                            <li class="list-group-item">{PAGE_I18N_DELETE}</li>
                            <!-- ENDIF -->
                        </ul>
                    </div>
                </div>
                <!-- END: PAGE_ADMIN -->

                <!-- Summary -->
                <!-- BEGIN: PAGE_MULTI -->
                <div class="card mt-4 mb-4">
                    <div class="card-header bg-warning text-dark">
                        <h2 class="h5 mb-0">{PHP.L.Summary}</h2>
                    </div>
                    <div class="card-body">
                        {PAGE_MULTI_TABTITLES}
                        <p class="mb-0">{PAGE_MULTI_TABNAV}</p>
                    </div>
                </div>
                <!-- END: PAGE_MULTI -->
            </div>
        </div>
    </div>
</div>
<!-- IF {PHP.usr.maingrp} == 5 AND {PHP.mskin} -->
{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/inc/mskin.tpl"}
<!-- ENDIF -->
<!-- END: MAIN -->