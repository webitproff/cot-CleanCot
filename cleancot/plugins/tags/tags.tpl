<!-- BEGIN: MAIN -->
<div class="bg-body-secondary">
  <div class="container-md d-flex flex-column justify-content-center pb-5">
    <div class="row">
      <div class="col-12 col-md-8 mx-auto">
        <div class="card mt-4 mb-4">
          <div class="card-header bg-warning text-dark">
            <h2 class="h5 mb-0">{TAGS_TITLE}</h2>
          </div>
          <div class="card-body">
            <form id="tags-search-form" action="{TAGS_FORM_ACTION}" method="GET" class="mb-3">
              {TAGS_FORM_PARAMS}
              <div class="input-group">
                <input type="text" name="t" value="{TAGS_QUERY}" class="form-control" placeholder="{PHP.L.Search}" />
                <button type="submit" class="btn btn-primary">»»</button>
              </div>
              <div class="mt-2">{TAGS_FORM_ORDER}</div>
            </form>

            <!-- IF {PHP|count({PHP.tagAreas})} > 1 -->
            <p class="mb-3">
              <a href="{PHP.urlParams.t|cot_url('tags', 't=$this')}"<!-- IF {PHP.area} === 'all' --> class="active fw-bold"<!-- ENDIF -->>{PHP.L.tags_All}</a>
              <!-- FOR {AREA}, {TITLE} IN {PHP.tagAreas} -->
              | <a href="{PHP.urlParams.t|cot_url('tags','a={AREA}&t=$this')}"<!-- IF {PHP.area} === {AREA} --> class="active fw-bold"<!-- ENDIF -->>{PHP|htmlspecialchars({TITLE})}</a>
              <!-- ENDFOR -->
            </p>
            <!-- ENDIF -->

            <!-- BEGIN: TAGS_CLOUD -->
            <h3 class="border-bottom pb-2 text-primary mb-3">{PHP.L.tags_All}</h3>
            <div class="mb-3">{TAGS_CLOUD_BODY}</div>
            <!-- END: TAGS_CLOUD -->

            <!-- BEGIN: TAGS_RESULT -->
            <h3 class="border-bottom pb-2 text-primary mb-3">{TAGS_RESULT_TITLE}</h3>
            <ol class="list-unstyled">
              <!-- BEGIN: TAGS_RESULT_ROW -->
              <li class="mb-3">
                <span class="fw-bold"><a href="{TAGS_RESULT_ROW_URL}">{TAGS_RESULT_ROW_TITLE}</a></span><br/>
                <span class="small text-muted">{PHP.L.Sections}: {TAGS_RESULT_ROW_PATH}<br/>
                {PHP.L.Tags}: {TAGS_RESULT_ROW_TAGS}</span>
                <!-- IF {TAGS_RESULT_ROW_PREVIEW} -->
                <p class="mt-1">{TAGS_RESULT_ROW_PREVIEW}</p>
                <!-- ENDIF -->
              </li>
              <!-- END: TAGS_RESULT_ROW -->
            </ol>
            <!-- BEGIN: TAGS_RESULT_NONE -->
            <div class="alert alert-warning" role="alert">
              {PHP.L.Noitemsfound}
            </div>
            <!-- END: TAGS_RESULT_NONE -->
            <!-- END: TAGS_RESULT -->

            <!-- IF {PAGINATION} -->
            <nav aria-label="Pagination" class="mt-3">
              <ul class="pagination justify-content-center">
                {PREVIOUS_PAGE}
                {PAGINATION}
                {NEXT_PAGE}
              </ul>
            </nav>
            <!-- ENDIF -->
          </div>
        </div>
      </div>

      <!-- Боковая панель -->
      <div class="col-12 col-md-4 mx-auto">
        <div class="card mt-4 mb-4">
          <div class="card-header bg-warning text-dark">
            <h2 class="h5 mb-0">{PHP.L.Tags}</h2>
          </div>
          <div class="card-body">
            {TAGS_HINT}
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- END: MAIN -->