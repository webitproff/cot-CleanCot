                        <!-- Элемент навигации Bootstrap с выпадающим меню -->
                        <li class="nav-item dropdown">
                            <!-- Ссылка с классом Bootstrap для открытия выпадающего меню -->
                            <a class="nav-link dropdown-toggle" href="#" id="extraDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <!-- Иконка куба из Font Awesome с отступом справа и текст "Публикации" из локализации Cotonti (языковые файлы cleancot.**.lang.php) -->
                                <i class="fa-solid fa-cube me-1"></i> {PHP.L.CleanCot_Publications}
                            </a>
                            <!-- Выпадающее меню Bootstrap с привязкой к ID элемента -->
                            <ul class="dropdown-menu" aria-labelledby="extraDropdown">

                                <!-- Условие Cotonti: проверка существования пути к категории "news" в структуре -->
                                <!-- IF {PHP.structure.page.news.path} -->
                                    <!-- Элемент списка для категории "Новости" -->
                                    <li>
                                        <!-- Ссылка на страницу новостей с классом Bootstrap и подсказкой из локализации Cotonti (языковые файлы cleancot.**.lang.php) -->
                                        <a href="{PHP|cot_url('page','c=news')}" class="dropdown-item" title="{PHP.L.CleanCot_cat_title_news}">
                                            <!-- Иконка газеты из Font Awesome с отступом и текст "Новости" из языкового файла cleancot.**.lang.php -->
                                            <i class="fa-solid fa-newspaper me-2"></i> {PHP.L.CleanCot_cat_title_news}
                                        </a>
                                    </li>
                                <!-- Конец условия проверки пути к категории "news" в Cotonti -->
                                <!-- ENDIF -->

                                <!-- Условие Cotonti: проверка существования пути к категории "articles" в структуре -->
                                <!-- IF {PHP.structure.page.articles.path} -->
                                    <!-- Элемент списка для категории "Статьи" -->
                                    <li>
                                        <!-- Ссылка на страницу статей с классом Bootstrap и подсказкой из локализации Cotonti -->
                                        <a href="{PHP|cot_url('page','c=articles')}" class="dropdown-item" title="{PHP.L.CleanCot_cat_title_articles}">
                                            <!-- Иконка газеты из Font Awesome с отступом и текст "Статьи" из языкового файла cleancot.**.lang.php -->
                                            <i class="fa-solid fa-newspaper me-2"></i> {PHP.L.CleanCot_cat_title_articles}
                                        </a>
                                    </li>
                                <!-- Конец условия проверки пути к категории "articles" в Cotonti -->
                                <!-- ENDIF -->

                                <!-- Условие Cotonti: проверка существования пути к категории "events" в структуре -->
                                <!-- IF {PHP.structure.page.events.path} -->
                                    <!-- Элемент списка для категории "События" -->
                                    <li>
                                        <!-- Ссылка на страницу событий с классом Bootstrap и подсказкой из локализации Cotonti -->
                                        <a href="{PHP|cot_url('page','c=events')}" class="dropdown-item" title="{PHP.L.CleanCot_cat_title_events}">
                                            <!-- Иконка газеты из Font Awesome с отступом и текст "События" из языкового файла cleancot.**.lang.php -->
                                            <i class="fa-solid fa-newspaper me-2"></i> {PHP.L.CleanCot_cat_title_events}
                                        </a>
                                    </li>
                                <!-- Конец условия проверки пути к категории "events" в Cotonti -->
                                <!-- ENDIF -->

                                <!-- Условие Cotonti: проверка существования пути к категории "blogs" в структуре -->
                                <!-- IF {PHP.structure.page.blogs.path} -->
                                    <!-- Элемент списка с подменю для категории "Блоги" -->
                                    <li class="dropdown-submenu">
                                        <!-- Элемент открытия подменю с классом и ID для Bootstrap -->
                                        <span class="dropdown-item submenu-toggle" id="optionsSubmenu">
                                            <!-- Иконка стрелки вправо из Font Awesome и текст "Блоги" из локализации Cotonti -->
                                            <i class="fa-solid fa-caret-right me-2"></i>{PHP.L.CleanCot_cat_title_blogs}
                                        </span>
                                        <!-- Открываем подменю Bootstrap с привязкой к ID элемента -->
                                        <ul class="dropdown-menu submenu" aria-labelledby="optionsSubmenu">
										
                                            <!-- Условие Cotonti: проверка существования пути к подкатегории "blog-travel" -->
                                            <!-- IF {PHP.structure.page.blog-travel.path} -->
                                                <!-- Элемент списка для подкатегории "Путешествия" -->
                                                <li>
                                                    <!-- Ссылка на подкатегорию "Путешествия" с классом Bootstrap -->
                                                    <a class="dropdown-item" href="{PHP|cot_url('page','c=blog-travel')}"><i class="fa-solid fa-route me-1"></i>{PHP.L.CleanCot_cat_title_blog_travel}</a>
                                                </li>
                                            <!-- Конец условия проверки пути к "blog-travel" в Cotonti -->
                                            <!-- ENDIF -->

                                            <!-- Условие Cotonti: проверка существования пути к подкатегории "blog-reviews" -->
                                            <!-- IF {PHP.structure.page.blog-reviews.path} -->
                                                <!-- Элемент списка для подкатегории "Обзоры" -->
                                                <li>
                                                    <!-- Ссылка на подкатегорию "Обзоры" с классом Bootstrap -->
                                                    <a class="dropdown-item" href="{PHP|cot_url('page','c=blog-reviews')}"><i class="fa-solid fa-trophy me-1"></i>{PHP.L.CleanCot_cat_title_blog_reviews}</a>
                                                </li>
                                            <!-- Конец условия проверки пути к "blog-reviews" в Cotonti -->
                                            <!-- ENDIF -->
											
                                            <!-- Условие Cotonti: проверка существования пути к подкатегории "blog-games" -->
                                            <!-- IF {PHP.structure.page.blog-games.path} -->
                                                <!-- Элемент списка для подкатегории "Обзоры" -->
                                                <li>
                                                    <!-- Ссылка на подкатегорию "Обзоры" с классом Bootstrap -->
                                                    <a class="dropdown-item" href="{PHP|cot_url('page','c=blog-games')}"><i class="fa-solid fa-gamepad me-1"></i>{PHP.L.CleanCot_cat_title_blog_games}</a>
                                                </li>
                                            <!-- Конец условия проверки пути к "blog-reviews" в Cotonti -->
                                            <!-- ENDIF -->	
											
										<!-- Закрываем подменю Bootstrap с привязкой к ID элемента -->	
                                        </ul>
										
                                    </li>
                                <!-- Конец условия проверки пути к категории "blogs" в Cotonti -->
                                <!-- ENDIF -->

                            </ul>
                        </li>