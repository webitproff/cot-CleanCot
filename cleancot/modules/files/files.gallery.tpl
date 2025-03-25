<!-- BEGIN: MAIN -->
<svg class="d-none" xmlns="http://www.w3.org/2000/svg">
  <symbol id="enlarge" viewBox="0 0 16 16">
    <path d="M1.5 1a.5.5 0 0 0-.5.5v4a.5.5 0 0 1-1 0v-4A1.5 1.5 0 0 1 1.5 0h4a.5.5 0 0 1 0 1h-4zM10 .5a.5.5 0 0 1 .5-.5h4A1.5 1.5 0 0 1 16 1.5v4a.5.5 0 0 1-1 0v-4a.5.5 0 0 0-.5-.5h-4a.5.5 0 0 1-.5-.5zM.5 10a.5.5 0 0 1 .5.5v4a.5.5 0 0 0 .5.5h4a.5.5 0 0 1 0 1h-4A1.5 1.5 0 0 1 0 14.5v-4a.5.5 0 0 1 .5-.5zm15 0a.5.5 0 0 1 .5.5v4a1.5 1.5 0 0 1-1.5 1.5h-4a.5.5 0 0 1 0-1h4a.5.5 0 0 0 .5-.5v-4a.5.5 0 0 1 .5-.5z"/>
  </symbol>
  <symbol id="exit" viewBox="0 0 16 16">
    <path d="M5.5 0a.5.5 0 0 1 .5.5v4A1.5 1.5 0 0 1 4.5 6h-4a.5.5 0 0 1 0-1h4a.5.5 0 0 0 .5-.5v-4a.5.5 0 0 1 .5-.5zm5 0a.5.5 0 0 1 .5.5v4a.5.5 0 0 0 .5.5h4a.5.5 0 0 1 0 1h-4A1.5 1.5 0 0 1 10 4.5v-4a.5.5 0 0 1 .5-.5zM0 10.5a.5.5 0 0 1 .5-.5h4A1.5 1.5 0 0 1 6 11.5v4a.5.5 0 0 1-1 0v-4a.5.5 0 0 0-.5-.5h-4a.5.5 0 0 1-.5-.5zm10 1a1.5 1.5 0 0 1 1.5-1.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 0-.5.5v4a.5.5 0 0 1-1 0v-4z"/>
  </symbol>
</svg>
<section class="photo-gallery mb-4">
  <div class="container">
    <div class="row gallery-grid">
    <!-- BEGIN: FILES_ROW -->
    <!-- Цикл по каждому файлу -->
    <div class="col">
        <!-- Ссылка на полноразмерное изображение для лайтбокса -->
        <a href="{FILES_ROW|cot_filesThumbnailUrl($this,1600,800,'inset', 1, 0)}" 
           title="{FILES_ROW_TITLE}" 
           class="thumbnail gallery-item" 
           data-bs-toggle="lightbox" 
           data-bs-gallery="gallery">
            <!-- Миниатюра изображения -->
            <img src="{FILES_ROW|cot_filesThumbnailUrl($this,185,185,'outbound')}" 
                 alt="{FILES_ROW_NAME}" 
                 class="img-fluid" />
        </a>
    </div>
    <!-- END: FILES_ROW -->
    </div>
  </div>
</section>
<!-- Контейнер с адаптивной сеткой -->

<div class="modal fade lightbox-modal" id="lightbox-modal" tabindex="-1">
  <div class="modal-dialog modal-dialog-centered modal-fullscreen">
    <div class="modal-content">
      <button type="button" class="btn-fullscreen-enlarge" aria-label="Enlarge fullscreen">
        <svg class="bi"><use href="#enlarge"></use></svg>
      </button>
      <button type="button" class="btn-fullscreen-exit d-none" aria-label="Exit fullscreen">
        <svg class="bi"><use href="#exit"></use></svg>
      </button>
      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      <div class="modal-body">
        <div class="lightbox-content">
          <!-- JS content here -->
        </div>
      </div>
    </div>
  </div>
</div>


<!-- END: MAIN -->
