<!-- BEGIN: FOOTER -->
<footer class="bg-secondary bg-gradient py-4 text-white">
    <div class="container-xl">
        <div class="row">
            <!-- Navigation section -->
            <div class="col-md-3 mb-3">
                <h5 class="fw-bold mb-3">{PHP.L.Navigation}</h5>
                <ul class="list-unstyled">
                    <li>
                        <a href="{PHP.cfg.mainurl}" class="nav-link" title="{PHP.L.Home}">
                            <i class="fas fa-home me-2"></i> {PHP.L.Home}
                        </a>
                    </li>
                    <!-- IF {PHP|cot_module_active('forums')} -->
                    <li>
                        <a href="{PHP|cot_url('forums')}" class="nav-link" title="{PHP.L.Forums}">
                            <i class="fas fa-comments me-2"></i> {PHP.L.Forums}
                        </a>
                    </li>
                    <!-- ENDIF -->
                    <!-- IF {PHP|cot_plugin_active('userarticles')} -->
                    <li>
                        <a href="{PHP|cot_url('plug', 'e=userarticles')}" class="nav-link" title="{PHP.L.userarticles_title}">
                            <i class="fas fa-file-lines me-2"></i>  {PHP.L.userarticles_title}
                        </a>
                    </li>
                    <!-- ENDIF -->
					  <!-- IF {PHP.structure.page.news.path} -->
					  <li>
						<a href="{PHP|cot_url('page','c=news')}" class="nav-link" title="{PHP.structure.page.news.title}"><i class="fas fa-newspaper me-2"></i> {PHP.structure.page.news.title}</a>
					  </li>
					  <!-- ENDIF -->
                    <li>
                        <a href="{PHP|cot_url('users')}" class="nav-link" title="{PHP.L.Users}">
                            <i class="fas fa-users me-2"></i> {PHP.L.Users}
                        </a>
                    </li>
                </ul>
            </div>

            <!-- RSS feeds section (shown only if RSS module is active) -->
            <div class="col-md-3 mb-3">
                <!-- IF {PHP|cot_module_active('rss')} -->
                <h5 class="fw-bold mb-3">{PHP.L.RSS_Feeds}</h5>
                <ul class="list-unstyled">
                    <li>
                        <a href="{PHP|cot_url('rss')}" class="nav-link" title="{PHP.L.RSS_Feeds}">
                            <i class="fas fa-rss me-2"></i> {PHP.L.RSS_Feeds}
                        </a>
                    </li>
                    <!-- IF {PHP.cfg.forums} -->
                    <li>
                        <a href="{PHP|cot_url('rss','m=forums')}" class="nav-link" title="{PHP.L.RSS_Feeds} {PHP.cfg.separator} {PHP.L.Forums}">
                            <i class="fas fa-rss me-2"></i> {PHP.L.Forums}
                        </a>
                    </li>
                    <!-- ENDIF -->
                </ul>
                <!-- ENDIF -->
            </div>

            <!-- Search form (shown only if search plugin is active) -->
            <!-- IF {PHP|cot_plugin_active('search')} -->
            <div class="col-md-3 mb-3">
                <h5 class="fw-bold mb-3">{PHP.L.Search}</h5>
                <form id="search" action="{PHP|cot_url('search')}" method="GET" class="d-flex">
                    <!-- Hidden input required for URL editor compatibility -->
                    <!-- IF {PHP.cfg.plugin.urleditor.preset} !== 'handy' -->
                    <input type="hidden" name="e" value="search" />
                    <!-- ENDIF -->
                    <input type="text" name="sq" class="form-control me-2" placeholder="{PHP.L.Search}..." />
                    <button type="submit" class="btn btn-primary" title="{PHP.L.Search}">
                        <i class="fas fa-search"></i>
                    </button>
                </form>
            </div>
            <!-- ENDIF -->

            <!-- Additional links section -->
            <div class="col-md-3 mb-3">
                <h5 class="fw-bold mb-3">{PHP.L.Links}</h5>
                <ul class="list-unstyled">
                    <!-- IF {PHP|cot_plugin_active('contact')} -->
                    <li>
                        <a href="{PHP|cot_url('contact')}" class="nav-link" title="{PHP.L.contact_title}">
                            <i class="fa-solid fa-file-signature me-2"></i> {PHP.L.contact_title}
                        </a>
                    </li>
                    <!-- ENDIF -->
                    <!-- IF {PHP|cot_plugin_active('statistics')} -->
                    <li>
                        <a href="{PHP|cot_url('statistics')}" class="nav-link" title="{PHP.L.Statistics}">
                            <i class="fa-solid fa-file-signature me-2"></i> {PHP.L.Statistics}
                        </a>
                    </li>
                    <!-- ENDIF -->
                    <!-- IF {PHP|cot_plugin_active('whosonline')} -->
                    <li>
                        <a href="{PHP|cot_url('whosonline')}" class="nav-link" title="{PHP.L.CleanCot_WhosOnline}">
                            <i class="fa-solid fa-file-signature me-2"></i> {PHP.L.CleanCot_WhosOnline}
                        </a>
                    </li>
                    <!-- ENDIF -->
                </ul>
            </div>
        </div>
    </div>
</footer>

<!-- Secondary footer section with system info -->
<div class="bg-black bg-gradient">
    <div class="container-xl py-3">
        <div class="text-white">
			<div class="row justify-content-between">
				<!-- Cotonti CMS link with tooltip -->
				<div class="col-md-auto text-center text-md-start">
					<p class="mb-0">
						<a href="https://github.com/Cotonti/Cotonti" class="text-white text-decoration-none" data-bs-toggle="tooltip" data-bs-title="{PHP.L.footer_cotonti_tooltip}">
							<span class="me-2">{PHP.L.footer_engine}</span>
							<img src="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/cleancot/img/cotonti-icon.png" width="27" height="27" alt="Cotonti CMF">
							<span class="ms-2">{PHP.L.footer_cotonti}</span>
						</a>
					</p>
				</div>
				<!-- Copyright notice -->
				<div class="col-md-auto text-center text-md-end">
					<p class="mb-0">{PHP.cfg.maintitle} © {PHP.sys.now|cot_date('l, d F Y H:i', $this)}</p>
				</div>
			</div>
        </div>

        <hr class="border-light">

        <!-- System information row -->
        <div class="row text-light-emphasis text-decoration-none">
            <!-- PHP version and page creation time -->
            <!-- IF {PHP|custom_php_version()} -->
            <div class="col">
                <p class="mb-0">{PHP.L.footer_php_version}: <span class="badge bg-dark">{PHP|custom_php_version()}</span><br>{FOOTER_CREATIONTIME}</p>
            </div>
            <!-- ENDIF -->
            <!-- Legacy mode status -->
            <!-- IF {PHP|getLegacyModeStatus()} -->
            <div class="col">
                <p class="mb-0">{PHP.L.footer_legacy_mode}: {PHP|getLegacyModeStatus()}</p>
            </div>
            <!-- ENDIF -->
            <!-- Core and DB version -->
            <!-- IF {PHP|getRevisionValue()} -->
            <div class="col-md-auto">
                <p class="mb-0">{PHP.L.footer_core_version}: v.{PHP.cfg.version} / {PHP.L.footer_db_version}: v.{PHP|getRevisionValue()}</p>
            </div>
            <!-- ENDIF -->
        </div>
    </div>
</div>

<!-- Search modal (shown only if search plugin is active) -->
<!-- IF {PHP|cot_plugin_active('search')} -->
<div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="searchModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header bg-primary-subtle text-primary-emphasis">
                <h5 class="modal-title" id="searchModalLabel">{PHP.L.Search}</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="search" action="{PHP|cot_url('search')}" method="GET" class="d-flex">
                    <!-- Hidden input required for URL editor compatibility -->
                    <!-- IF {PHP.cfg.plugin.urleditor.preset} !== 'handy' -->
                    <input type="hidden" name="e" value="search" />
                    <!-- ENDIF -->
                    <input type="text" name="sq" class="form-control me-2" placeholder="{PHP.L.Search}..." />
                    <button type="submit" class="btn btn-primary" title="{PHP.L.Search}">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </button>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- ENDIF -->

<!-- Developer mode section (shown only if enabled) -->
<!-- IF {FOOTER_DEVMODE} -->
<div class="py-3 bg-warning bg-gradient text-dark">
    {FOOTER_COPYRIGHT}
    <div class="text-center text-muted mt-3">
        <p>{PHP.L.footer_creation_time}: {FOOTER_CREATIONTIME}</p>
        <p>{PHP.L.footer_hooks_fired}: {FOOTER_HOOKS}</p>
        <!-- IF {FOOTER_SQLSTATISTICS} -->
        <div>{PHP.L.footer_sql_statistics}: {FOOTER_SQLSTATISTICS}</div>
        <!-- ENDIF -->
        <p>{FOOTER_DEVMODE}</p>
    </div>
</div>
<!-- ENDIF -->

<!-- Footer resources (scripts, etc.) -->
{FOOTER_RC}
</body>
</html>
<!-- END: FOOTER -->