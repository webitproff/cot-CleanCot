<!-- BEGIN: MAIN -->
<!-- IF {PHP.msg} == '930' -->
<div class="container min-height-50vh col-12 col-md-6 d-flex flex-column justify-content-center">
	<div class="card mb-4">
		<div class="card-header bg-danger text-white border border-dark">
			<h2 class="h5 mb-0">{MESSAGE_TITLE}</h2>
		</div>
		<div class="card-body">
			<div class="alert alert-warning mb-0" role="alert">
				{MESSAGE_BODY}
				<!-- BEGIN: MESSAGE_CONFIRM -->
				<div class="d-flex justify-content-center gap-3 mt-3">
					<a id="confirmYes" href="{MESSAGE_CONFIRM_YES}" class="btn btn-success">{PHP.L.Yes}</a>
					<a id="confirmNo" href="{MESSAGE_CONFIRM_NO}" class="btn btn-danger">{PHP.L.No}</a>
				</div>
				<!-- END: MESSAGE_CONFIRM -->
			</div>
		</div>
	</div>
</div>
<!-- ELSE-->
	<div class="card mb-4">
		<div class="card-header bg-warning text-dark border border-dark">
			<h2 class="h5 mb-0">{MESSAGE_TITLE}</h2>
		</div>
		<div class="card-body">
			<div class="alert alert-warning mb-0" role="alert">
				{MESSAGE_BODY}
				<!-- BEGIN: MESSAGE_CONFIRM -->
				<div class="d-flex justify-content-center gap-3 mt-3">
					<a id="confirmYes" href="{MESSAGE_CONFIRM_YES}" class="btn btn-success">{PHP.L.Yes}</a>
					<a id="confirmNo" href="{MESSAGE_CONFIRM_NO}" class="btn btn-danger">{PHP.L.No}</a>
				</div>
				<!-- END: MESSAGE_CONFIRM -->
			</div>
		</div>
	</div>
<!-- ENDIF -->
<!-- END: MAIN -->