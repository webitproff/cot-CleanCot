<!-- BEGIN: MAIN -->
<div class="row">
    <!-- BEGIN: FILES_ROW -->
<div class="col-12">
  <div class="row g-3 align-items-center" data-source="file-row-tooltip-{FILES_ROW_ID}" data-toggle="tooltip" title="" data-html="true">
    <div class="col-12 col-md-auto">
      <a href="{FILES_ROW_URL}" title="{FILES_ROW_TITLE}" class="strong lhn text-decoration-none">
        <img src="{FILES_ROW_ICON}" alt="{FILES_ROW_EXT}" class="align-middle me-2" />
        <h6 class="d-inline mb-0">{FILES_ROW_NAME}</h6>
      </a>
    </div>
    <div class="col-12 col-md">
      <!-- IF {FILES_ROW_TITLE} -->
      <span class="d-block">{FILES_ROW_TITLE}</span>
      <!-- ENDIF -->
      <span class="desc">{FILES_ROW_SIZE} ({PHP.L.files_downloads}: {FILES_ROW_COUNT})</span>
    </div>
  </div>
</div>
    <!-- END: FILES_ROW -->
</div>
<!-- END: MAIN -->
    <div id="file-row-tooltip-{FILES_ROW_ID}" class="hidden">
        {FILES_ROW_NAME}<br />
        {FILES_ROW_SIZE} ({PHP.L.files_downloads}: {FILES_ROW_COUNT})
    </div>
