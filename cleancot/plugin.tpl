<!-- BEGIN: MAIN -->
<div class="container-xl min-vh-100 d-flex flex-column">
    <div class="row flex-grow-1">
        <div class="col-12">
            <div class="card mb-4">
                <!-- IF {BREADCRUMBS} -->
                <div class="card-header bg-dark text-white">
                    <h2 class="h5 mb-0">{BREADCRUMBS}</h2>
                </div>
                <!-- ENDIF -->
                <div class="card-body">
                    <!-- IF {TITLE} -->
                    <h1 class="h3 mb-3">{TITLE}</h1>
                    <!-- ENDIF -->
                    <!-- IF {SUBTITLE} -->
                    <p class="text-muted mb-3">{SUBTITLE}</p>
                    <!-- ENDIF -->
                    {BODY}
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END: MAIN -->