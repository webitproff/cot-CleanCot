					<!-- Создаём элемент навигации Bootstrap с выпадающим меню -->
					<li class="nav-item dropdown">
						<!-- Задаём ссылку для открытия выпадающего меню с классами Bootstrap и атрибутами для управления -->
						<a class="nav-link dropdown-toggle" href="#" id="extraDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
							<!-- Добавляем иконку куба из Font Awesome с отступом и текст "Публикации" из языкового файла Cotonti -->
							<i class="fa-solid fa-cube me-1"></i> {PHP.L.CleanCot_Publications}
						<!-- Закрываем ссылку для выпадающего меню -->
						</a>
						<!-- Определяем выпадающее меню Bootstrap, привязанное к ID "extraDropdown" -->
						<ul class="dropdown-menu" aria-labelledby="extraDropdown">
							<!-- Проверяем, существует ли категория "news" в структуре Cotonti -->
							<!-- IF {PHP.structure.page.news} -->
								<!-- Убеждаемся, что у категории "news" есть путь (path) в структуре -->
								<!-- IF {PHP.structure.page.news.path} -->
									<!-- Создаём элемент списка для категории "Новости" -->
									<li>
										<!-- Формируем ссылку на категорию "news" с классом Bootstrap и подсказкой из локализации -->
										<a href="{PHP|cot_url('page','c=news')}" class="dropdown-item" title="{PHP.L.CleanCot_cat_title_news}">
											<!-- Вставляем иконку газеты с отступом и название категории "Новости" из языкового файла -->
											<i class="fa-solid fa-newspaper me-2"></i> {PHP.L.CleanCot_cat_title_news}
										<!-- Закрываем ссылку на категорию "news" -->
										</a>
									<!-- Закрываем элемент списка для "news" -->
									</li>
								<!-- Завершаем проверку наличия пути для "news" -->
								<!-- ENDIF -->
							<!-- Завершаем проверку существования категории "news" -->
							<!-- ENDIF -->

							<!-- Проверяем, существует ли категория "articles" в структуре Cotonti -->
							<!-- IF {PHP.structure.page.articles} -->
								<!-- Убеждаемся, что у категории "articles" есть путь (path) в структуре -->
								<!-- IF {PHP.structure.page.articles.path} -->
									<!-- Создаём элемент списка для категории "Статьи" -->
									<li>
										<!-- Формируем ссылку на категорию "articles" с классом Bootstrap и подсказкой из локализации -->
										<a href="{PHP|cot_url('page','c=articles')}" class="dropdown-item" title="{PHP.L.CleanCot_cat_title_articles}">
											<!-- Вставляем иконку газеты с отступом и название категории "Статьи" из языкового файла -->
											<i class="fa-solid fa-newspaper me-2"></i> {PHP.L.CleanCot_cat_title_articles}
										<!-- Закрываем ссылку на категорию "articles" -->
										</a>
									<!-- Закрываем элемент списка для "articles" -->
									</li>
								<!-- Завершаем проверку наличия пути для "articles" -->
								<!-- ENDIF -->
							<!-- Завершаем проверку существования категории "articles" -->
							<!-- ENDIF -->

							<!-- Проверяем, существует ли категория "events" в структуре Cotonti -->
							<!-- IF {PHP.structure.page.events} -->
								<!-- Убеждаемся, что у категории "events" есть путь (path) в структуре -->
								<!-- IF {PHP.structure.page.events.path} -->
									<!-- Создаём элемент списка для категории "События" -->
									<li>
										<!-- Формируем ссылку на категорию "events" с классом Bootstrap и подсказкой из локализации -->
										<a href="{PHP|cot_url('page','c=events')}" class="dropdown-item" title="{PHP.L.CleanCot_cat_title_events}">
											<!-- Вставляем иконку газеты с отступом и название категории "События" из языкового файла -->
											<i class="fa-solid fa-newspaper me-2"></i> {PHP.L.CleanCot_cat_title_events}
										<!-- Закрываем ссылку на категорию "events" -->
										</a>
									<!-- Закрываем элемент списка для "events" -->
									</li>
								<!-- Завершаем проверку наличия пути для "events" -->
								<!-- ENDIF -->
							<!-- Завершаем проверку существования категории "events" -->
							<!-- ENDIF -->

							<!-- Проверяем, существует ли категория "blogs" в структуре Cotonti -->
							<!-- IF {PHP.structure.page.blogs} -->
								<!-- Убеждаемся, что у категории "blogs" есть путь (path) в структуре -->
								<!-- IF {PHP.structure.page.blogs.path} -->
									<!-- Создаём элемент списка с подменю для категории "Блоги" -->
									<li class="dropdown-submenu">
										<!-- Определяем элемент открытия подменю с классом и ID для Bootstrap -->
										<span class="dropdown-item submenu-toggle" id="optionsSubmenu">
											<!-- Вставляем иконку стрелки вправо и название "Блоги" из языкового файла -->
											<i class="fa-solid fa-caret-right me-2"></i>{PHP.L.CleanCot_cat_title_blogs}
										<!-- Закрываем элемент открытия подменю -->
										</span>
										<!-- Создаём подменю Bootstrap, привязанное к ID "optionsSubmenu" -->
										<ul class="dropdown-menu submenu" aria-labelledby="optionsSubmenu">
											<!-- Проверяем, существует ли подкатегория "blog-travel" в структуре Cotonti -->
											<!-- IF {PHP.structure.page.blog-travel} -->
												<!-- Убеждаемся, что у подкатегории "blog-travel" есть путь (path) -->
												<!-- IF {PHP.structure.page.blog-travel.path} -->
													<!-- Создаём элемент списка для подкатегории "Путешествия" -->
													<li>
														<!-- Формируем ссылку на "blog-travel" с классом Bootstrap и текстом из локализации -->
														<a class="dropdown-item" href="{PHP|cot_url('page','c=blog-travel')}"><i class="fa-solid fa-route me-1"></i>{PHP.L.CleanCot_cat_title_blog_travel}</a>
													<!-- Закрываем элемент списка для "blog-travel" -->
													</li>
												<!-- Завершаем проверку наличия пути для "blog-travel" -->
												<!-- ENDIF -->
											<!-- Завершаем проверку существования "blog-travel" -->
											<!-- ENDIF -->

											<!-- Проверяем, существует ли подкатегория "blog-reviews" в структуре Cotonti -->
											<!-- IF {PHP.structure.page.blog-reviews} -->
												<!-- Убеждаемся, что у подкатегории "blog-reviews" есть путь (path) -->
												<!-- IF {PHP.structure.page.blog-reviews.path} -->
													<!-- Создаём элемент списка для подкатегории "Обзоры" -->
													<li>
														<!-- Формируем ссылку на "blog-reviews" с классом Bootstrap и текстом из локализации -->
														<a class="dropdown-item" href="{PHP|cot_url('page','c=blog-reviews')}"><i class="fa-solid fa-trophy me-1"></i>{PHP.L.CleanCot_cat_title_blog_reviews}</a>
													<!-- Закрываем элемент списка для "blog-reviews" -->
													</li>
												<!-- Завершаем проверку наличия пути для "blog-reviews" -->
												<!-- ENDIF -->
											<!-- Завершаем проверку существования "blog-reviews" -->
											<!-- ENDIF -->

											<!-- Проверяем, существует ли подкатегория "blog-games" в структуре Cotonti -->
											<!-- IF {PHP.structure.page.blog-games} -->
												<!-- Убеждаемся, что у подкатегории "blog-games" есть путь (path) -->
												<!-- IF {PHP.structure.page.blog-games.path} -->
													<!-- Создаём элемент списка для подкатегории "Игры" -->
													<li>
														<!-- Формируем ссылку на "blog-games" с классом Bootstrap и текстом из локализации -->
														<a class="dropdown-item" href="{PHP|cot_url('page','c=blog-games')}"><i class="fa-solid fa-gamepad me-1"></i>{PHP.L.CleanCot_cat_title_blog_games}</a>
													<!-- Закрываем элемент списка для "blog-games" -->
													</li>
												<!-- Завершаем проверку наличия пути для "blog-games" -->
												<!-- ENDIF -->
											<!-- Завершаем проверку существования "blog-games" -->
											<!-- ENDIF -->
										<!-- Закрываем подменю для "blogs" -->
										</ul>
									<!-- Закрываем элемент списка с подменю для "blogs" -->
									</li>
								<!-- Завершаем проверку наличия пути для "blogs" -->
								<!-- ENDIF -->
							<!-- Завершаем проверку существования категории "blogs" -->
							<!-- ENDIF -->
						<!-- Закрываем выпадающее меню -->
						</ul>
					<!-- Закрываем элемент навигации -->
					</li>
