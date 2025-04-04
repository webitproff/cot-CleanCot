						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="extraDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
								<i class="fa-solid fa-plus me-1"></i> {PHP.L.CleanCot_Additional_links}
							</a>
							<ul class="dropdown-menu" aria-labelledby="extraDropdown">
								<!-- Условие Cotonti: проверка активности модуля опросов "users" -->
								<!-- IF {PHP|cot_module_active('users')} --> 
								<li> 
								  <a href="{PHP|cot_url('users')}" class="dropdown-item" title="{PHP.L.Users}"> 
									<i class="fa-solid fa-users me-2"></i> {PHP.L.Users}
								  </a>
								</li>
								<!-- ENDIF --> 
								<!-- Конец условия для модуля "users" -->
								<!-- IF {PHP|cot_plugin_active('contact')} --> <!-- Условие Cotonti: проверка активности плагина "contact" -->
								<li><!-- Элемент списка -->
								  <a href="{PHP|cot_url('contact')}" class="dropdown-item" title="{PHP.L.contact_title}"> <!-- Ссылка на страницу контактов с классом навигации и всплывающей подсказкой из языкового файла -->
									<i class="fa-solid fa-envelope me-2"></i> {PHP.L.contact_title} <!-- Иконка конверта (ассоциация с контактами) с отступом справа и текст из языкового файла cleancot.**.lang.php -->
								  </a> <!-- Закрытие ссылки -->
								</li> <!-- Закрытие элемента списка -->
								<!-- ENDIF --> <!-- Конец условия для плагина "contact" -->
								
								<!-- IF {PHP|cot_plugin_active('whosonline')} --> <!-- Условие Cotonti: проверка активности плагина "whosonline" -->
								<li> <!-- Элемент списка -->
								  <a href="{PHP|cot_url('whosonline')}" class="dropdown-item" title="{PHP.L.CleanCot_WhosOnline}"> <!-- Ссылка на страницу "Кто онлайн" с классом навигации и всплывающей подсказкой из языкового файла cleancot.**.lang.php -->
									<i class="fa-solid fa-users-rectangle me-2"></i> {PHP.L.CleanCot_WhosOnline} <!-- Иконка группы пользователей (ассоциация с "Кто онлайн") с отступом справа и текст из языкового файла -->
								  </a> <!-- Закрытие ссылки -->
								</li> <!-- Закрытие элемента списка -->
								<!-- ENDIF --> <!-- Конец условия для плагина "whosonline" -->
								
								<!-- Условие Cotonti: проверка активности модуля опросов "polls" -->
								<!-- IF {PHP|cot_module_active('polls')} --> 
								<li> 
								  <a href="{PHP|cot_url('polls')}" class="dropdown-item" title="{PHP.L.Polls}"> 
									<i class="fa-solid fa-list-check me-2"></i> {PHP.L.Polls}
								  </a>
								</li>
								<!-- ENDIF --> 
								<!-- Конец условия для модуля "polls" -->
								
								<!-- IF {PHP|cot_plugin_active('tags')} --> <!-- Условие Cotonti: проверка активности плагина "tags" -->
								<li> <!-- Элемент списка -->
								  <a href="{PHP|cot_url('tags')}" class="dropdown-item" title="{PHP.L.CleanCot_tags_All}"> 
									<i class="fa-solid fa-tags me-2"></i> {PHP.L.CleanCot_tags_All} <!-- текст из языкового файла cleancot.**.lang.php -->
								  </a> <!-- Закрытие ссылки -->
								</li> <!-- Закрытие элемента списка -->
								<!-- ENDIF --> <!-- Конец условия для плагина "tags" -->
								
								<!-- Заготовки для вашего меню -->
								<li><a class="dropdown-item" href="#">Действие 1</a></li>
								<li><a class="dropdown-item" href="#">Действие 2</a></li>
								<li class="dropdown-submenu">
									<span class="dropdown-item submenu-toggle" id="optionsSubmenu"><i class="fa-solid fa-caret-right me-2"></i> Опции </span> 
									<ul class="dropdown-menu submenu" aria-labelledby="optionsSubmenu">
										<li><a class="dropdown-item" href="#">Опция 1</a></li>
										<li><a class="dropdown-item" href="#">Опция 2</a></li>
										<li><a class="dropdown-item" href="#">Опция 3</a></li>
									</ul>
								</li>
								<li class="dropdown-submenu">
									<span class="dropdown-item submenu-toggle" id="settingsSubmenu"><i class="fa-solid fa-caret-right me-2"></i> Настройки </span> 
									<ul class="dropdown-menu submenu" aria-labelledby="settingsSubmenu">
										<li><a class="dropdown-item" href="#">Настройка 1</a></li>
										<li><a class="dropdown-item" href="#">Настройка 2</a></li>
									</ul>
								</li>
							</ul>
						</li>