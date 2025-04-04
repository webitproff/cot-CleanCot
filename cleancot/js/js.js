$().ready(function() {


	
});
// дропдаун в левом боковом меню слайдом (Offcanvas)
document.addEventListener('DOMContentLoaded', function () {
    // Находим все триггеры подменю
    const submenuToggles = document.querySelectorAll('.submenu-toggle');

    submenuToggles.forEach(function (toggle) {
        toggle.addEventListener('click', function (e) {
            e.preventDefault(); // Предотвращаем дефолтное поведение
            e.stopPropagation(); // Останавливаем всплытие для Offcanvas

            const parent = this.closest('.dropdown-submenu'); // Находим родителя
            const submenu = parent.querySelector('.submenu'); // Находим подменю

            // Переключаем состояние
            if (parent.classList.contains('active')) {
                parent.classList.remove('active');
            } else {
                // Закрываем все другие подменю
                document.querySelectorAll('.dropdown-submenu.active').forEach(function (item) {
                    item.classList.remove('active');
                });
                parent.classList.add('active');
            }
        });
    });

    // Закрываем подменю при закрытии Offcanvas
    const offcanvasElement = document.querySelector('#navbarOffcanvas');
    if (offcanvasElement) {
        offcanvasElement.addEventListener('hidden.bs.offcanvas', function () {
            document.querySelectorAll('.dropdown-submenu.active').forEach(function (item) {
                item.classList.remove('active');
            });
        });
    }

    // Отладка
    console.log('Submenu toggles found:', submenuToggles.length);
});

// запускаем "tooltip"
document.addEventListener('DOMContentLoaded', function () {
    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
    var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
      return new bootstrap.Tooltip(tooltipTriggerEl);
    });
  });
  