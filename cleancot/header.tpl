<!-- BEGIN: HEADER -->
<!DOCTYPE html>
<html lang="{PHP.cfg.defaultlang}">
<head>
    <title>{HEADER_TITLE}</title>
    <!-- IF {HEADER_META_DESCRIPTION} --><meta name="description" content="{HEADER_META_DESCRIPTION}" /><!-- ENDIF -->
    <!-- IF {HEADER_META_KEYWORDS} --><meta name="keywords" content="{HEADER_META_KEYWORDS}" /><!-- ENDIF -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="generator" content="Cotonti https://www.cotonti.com" />
    <!-- IF {HEADER_CANONICAL_URL} --><link rel="canonical" href="{HEADER_CANONICAL_URL}" /><!-- ENDIF -->
    {HEADER_BASEHREF}
    {HEADER_HEAD}
    <link rel="shortcut icon" href="favicon.ico" />
    <link rel="icon" href="{PHP.cfg.themes_dir}/{PHP.theme}/img/favicon.svg" type="image/svg+xml">
    <link rel="apple-touch-icon" href="apple-touch-icon.png" />
</head>
<body>
    <!-- Шапка -->
    <header class="bg-dark text-white">
        <!-- Первый ярус -->
        <div class="container-xl py-2">
            <div class="row align-items-center">
                <!-- Заголовок (70% на ноутбуках) -->
                <div class="col-12 col-lg-8 d-flex align-items-center">
                    <button class="navbar-toggler me-2 d-md-none p-1" type="button" data-bs-toggle="collapse" data-bs-target="#navbarMenu" aria-controls="navbarMenu" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fa-solid fa-bars fa-xl me-2"></i>
                    </button>
                    <a href="{PHP.cfg.mainurl}" class="text-white text-decoration-none d-block">
                        <h1 class="h4 mb-0">{PHP.cfg.maintitle}</h1>
                        <small class="fs-6 text-secondary d-block mt-1 d-none d-md-inline">{PHP.cfg.subtitle}</small>
                    </a>
                </div>
                <!-- Локализация, поиск, аккаунт (30% на ноутбуках) -->
                <div class="col-12 col-lg-4 d-flex justify-content-between justify-content-lg-end align-items-center mt-3 mt-lg-0">
                    <!-- Локализация -->
                    <div class="me-3">
                        <!-- BEGIN: I18N_LANG -->
                            <!-- BEGIN: I18N_LANG_ROW -->
                            <a href="{I18N_LANG_ROW_URL}" class="{I18N_LANG_ROW_CLASS} me-1"><img src="images/flags/{I18N_LANG_ROW_FLAG}.png" alt="{I18N_LANG_ROW_FLAG}" /></a>
                            <!-- END: I18N_LANG_ROW -->
                        <!-- END: I18N_LANG -->
                    </div>
                    <!-- Поиск -->
                    <div class="me-3">
                        <button class="btn text-white" data-bs-toggle="modal" data-bs-target="#searchModal" title="{PHP.L.Search}">
                            <i class="fa-solid fa-magnifying-glass fa-lg"></i>
                        </button>
                    </div>
                    <!-- Аккаунт -->
                    <div>
                        <ul class="navbar-nav">
                            <!-- BEGIN: GUEST -->
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="guestDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="fa-solid fa-user fa-lg me-1"></i> <span class="d-none d-md-inline">{PHP.L.Account}</span>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="guestDropdown">
                                    <li><a class="dropdown-item" href="{PHP|cot_url('login')}">{PHP.L.Login}</a></li>
                                    <li><a class="dropdown-item" href="{PHP|cot_url('users','m=register')}">{PHP.L.Register}</a></li>
                                    <li><a class="dropdown-item" href="{PHP|cot_url('users','m=passrecover')}">{PHP.L.users_lostpass}</a></li>
                                </ul>
                            </li>
                            <!-- END: GUEST -->
                            <!-- BEGIN: USER -->
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle d-flex align-items-center" href="#" id="userDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <!-- IF {PHP|cot_module_active('files')} -->
                                        <!-- IF {PHP.usr.profile.user_avatar} -->
                                        <img class="rounded-circle me-2" src="{PHP.usr.profile.user_avatar|cot_filesUserAvatarUrl($this)}" alt="{PHP.usr.name}" width="30" height="30" style="object-fit: cover;" />
                                        <!-- ELSE -->
                                        <img class="rounded-circle me-2" src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/user-noavatar.webp" alt="{PHP.usr.name}" width="30" height="30" style="object-fit: cover;" />
                                        <!-- ENDIF -->
                                    <!-- ENDIF -->
                                    <span class="d-none d-md-inline">{PHP.usr.name}</span>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="userDropdown">
                                    <!-- IF {PHP.usr.maingrp} == 5 -->
                                    <li><a class="dropdown-item" href="{PHP|cot_url('admin')}">{PHP.L.Adminpanel}</a></li>
                                    <li><hr class="dropdown-divider"></li>
                                    <!-- ENDIF -->
                                    <li><a class="dropdown-item" href="{PHP|cot_url('users','m=profile')}">{PHP.L.Profile}</a></li>
                                    <!-- IF {PHP|cot_module_active('pm')} -->
                                    <li><a class="dropdown-item" href="{PHP|cot_url('pm')}">{PHP.L.Private_Messages}</a></li>
                                    <!-- ENDIF -->
                                    <!-- IF {PHP|cot_module_active('pfs')} -->
                                    <li><a class="dropdown-item" href="{PHP|cot_url('pfs')}">{PHP.L.PFS}</a></li>
                                    <!-- ENDIF -->
                                    <!-- IF {PHP.out.notices} -->
                                    <li><span class="dropdown-item-text">{PHP.out.notices}</span></li>
                                    <!-- ENDIF -->
                                    <li><a class="dropdown-item" href="{HEADER_USER_LOGINOUT_URL}">{PHP.L.Logout}</a></li>
                                </ul>
                            </li>
                            <!-- END: USER -->
                        </ul>
                    </div>
                </div>
            </div>
        </div>
		
		<div class="border border-secondary d-none d-md-block"></div>
        <!-- Второй ярус: горизонтальное меню -->
        <nav class="navbar py-0 navbar-expand-lg bg-body-tertiary">
            <div class="container-xl">
                <div class="collapse navbar-collapse  py-2" id="navbarMenu">
                    <ul class="navbar-nav mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href="{PHP.cfg.mainurl}" title="{PHP.L.Home}">
                                <i class="fa-solid fa-house me-1"></i> {PHP.L.Home}
                            </a>
                        </li>
                        <!-- IF {PHP|cot_module_active('forums')} -->
                        <li class="nav-item">
                            <a class="nav-link" href="{PHP|cot_url('forums')}" title="{PHP.L.Forums}">
                                <i class="fa-solid fa-comments me-1"></i> {PHP.L.Forums}
                            </a>
                        </li>
                        <!-- ENDIF -->
					  <!-- IF {PHP.structure.page.news.path} -->
                        <li class="nav-item">
                            <a class="nav-link" href="{PHP|cot_url('page','c=news')}" title="{PHP.structure.page.news.title}">
                                <i class="fa-solid fa-newspaper me-1"></i> 
								<!-- IF {PHP.cfg.defaultlang} === {PHP.lang} -->
								{PHP.structure.page.news.title}
								<!-- ELSE -->
									<!-- IF {PHP.i18n_structure.news.en.title} -->
									{PHP.i18n_structure.news.en.title}
									<!-- ELSE -->
									{PHP.L.News}
									<!-- ENDIF -->
								<!-- ENDIF --> 
                            </a>
                        </li>
					  <!-- ENDIF -->
                        <!-- IF {PHP|cot_plugin_active('userarticles')} -->
                        <li class="nav-item">
                            <a class="nav-link" href="{PHP|cot_url('plug', 'e=userarticles')}" title="{PHP.L.userarticles_title}">
                                <i class="fa-solid fa-file-lines me-1"></i> {PHP.L.userarticles_title}
                            </a>
                        </li>
                        <!-- ENDIF -->
                        <!-- IF {PHP|cot_plugin_active('recentitems')} -->
                        <li class="nav-item">
                            <a class="nav-link" href="{PHP|cot_url('plug', 'e=recentitems')}" title="{PHP.L.recentitems_title}">
                                <i class="fa-regular fa-calendar-check"></i> {PHP.L.recentitems_title}
                            </a>
                        </li>
                        <!-- ENDIF -->
                    </ul>
                </div>
            </div>
        </nav>
    </header>
	<div class="border border-secondary d-none d-md-block"></div>
<!-- END: HEADER -->