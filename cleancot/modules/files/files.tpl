<!-- BEGIN: MAIN -->
<div class="breadcrumb">{BREADCRUMBS}</div>

<h1>{PAGE_TITLE}</h1>

{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}

<!-- IF {FOLDER_DESC} --><div>{FOLDER_DESC}</div><!-- ENDIF -->

<!-- BEGIN:FOLDERS -->
<div class="desc">
    <strong>{FOLDERS_COUNT}</strong>
    <!-- IF {FOLDERS_COUNT_RAW} > 0 -->
    / {FOLDERS_FILES_COUNT} <em>({PHP.L.files_onpage}: {FOLDERS_ONPAGE_COUNT} / {FOLDERS_ONPAGE_FILES_COUNT})</em>
    <!-- ENDIF -->
</div>

<!-- IF {FOLDER_ADDFORM_URL} -->
<div class="text-right">
    <button class="btn btn-primary" data-toggle="modal" data-target="#dlgNewFolder">
        <span class="glyphicon glyphicon-folder-open"></span>
        &nbsp;<!-- IF {FILES_TYPE} == 'image' -->{PHP.L.files_newalbum}<!-- ELSE -->{PHP.L.files_newfolder}<!-- ENDIF -->
    </button>
</div>
<!-- ENDIF -->

    <!-- BEGIN: ROW -->
    <section class="row list-row">
        <div class="col-xs-12">
            <h2><a href="{FOLDER_ROW_URL}">{FOLDER_ROW_TITLE}</a></h2>
            <!-- IF {FOLDER_ROW_DESC} --><div class="marginbottom10">{FOLDER_ROW_DESC}</div><!-- ENDIF -->
            <div class="row">
                <!-- BEGIN: FILES_ROW -->
                <div class="col-xs-6 col-sm-6 col-md-4 marginbottom10">
                    <div class="pull-left" style="width: 50px">
                        <!-- IF {FILES_ROW_ICON} -->
                        <a href="{FILES_ROW_URL}" title="{FILES_ROW_TITLE}"><img src="{FILES_ROW_ICON}" alt="{FILES_ROW_EXT}" /></a>
                        <!-- ENDIF -->
                    </div>
                    <div class="pull-left" data-source="folder-file-row-tooltip-{FILES_ROW_ID}" data-toggle="tooltip"
                         title="" data-html="true">
                        <a href="{FILES_ROW_URL}">{FILES_ROW_NAME}</a><br />
                        <!-- IF {FILES_ROW_TITLE} -->{FILES_ROW_TITLE}<br /><!-- ENDIF -->
                        <span class="desc">{FILES_ROW_UPDATED_RAW|cot_date('datetime_medium', $this)}<br /></span>
                    </div>
                </div>
                <div id="folder-file-row-tooltip-{FILES_ROW_ID}" class="hidden">
                    {FILES_ROW_NAME}<br />{FILES_ROW_UPDATED_RAW|cot_date('datetime_medium', $this)}<br />
                    {FILES_ROW_SIZE} ({PHP.L.files_downloads}: {FILES_ROW_COUNT})
                </div>
                <!-- END: FILES_ROW -->
            </div>
            <div class="row">
                <div class="col-xs-6 desc">
                    <em>{PHP.L.files_created}:</em> {FOLDER_ROW_CREATED_RAW|cot_date('datetime_fulltext', $this)}<br />
                    <em>{PHP.L.files_updated}:</em> {FOLDER_ROW_UPDATED_RAW|cot_date('datetime_fulltext', $this)}
                </div>
                <div class="col-xs-6 text-right">
                    <a class="italic" href="{FOLDER_ROW_URL}">{PHP.L.files_morefiles}...</a>
                </div>
            </div>
        </div>
    </section>
    <!-- END: ROW -->

    <!-- BEGIN: EMPTY -->
        <!-- IF {IS_SITE_FILE_SPACE} == 0 -->
            <!-- IF {USER_ID} == {PHP.usr.id} -->
            <div class="strong grey text-center">{PHP.L.files_youhavenotfolders}</div>
            <!-- ELSE -->
            <div class="strong grey text-center">
                <!-- IF {USER_FIRSTNAME} OR {USER_LASTNAME} OR {USER_MIDDLENAME} -->
                {USER_FIRSTNAME} {USER_MIDDLENAME} {USER_LASTNAME}
                <!-- ELSE -->
                {USER_NICKNAME}
                <!-- ENDIF -->
                {PHP.L.files_havenotfolders}
            </div>
            <!-- ENDIF -->
        <!-- ENDIF -->
    <!-- END: EMPTY -->

<!-- IF {FOLDERS_PAGINATION} -->
<div class="pagination text-right">
    {FOLDERS_PAGEPREV}{FOLDERS_PAGINATION}{FOLDERS_PAGENEXT}
</div>
<!-- ENDIF -->
<!-- END:FOLDERS -->

<!-- IF {FOLDER_EDIT_URL} -->
<div class="text-right">
    <a href="{FOLDER_EDIT_URL}" class="btn btn-primary"><span class="glyphicon glyphicon-edit"></span> {PHP.L.Edit}</a>
</div>
<!-- ENDIF -->

<div class="margintop20 desc">
    <strong>{FILES_COUNT}</strong>
    <!-- IF {FILES_IS_ROOT} -->{PHP.L.files_intheroot}<!-- ELSE -->{PHP.L.files_inthisfolder}<!-- ENDIF -->
</div>

<!-- IF {FILES_CAN_EDIT} -->
<div class="text-right">
    <a href="{FILES_UPLOADURL}" class="btn btn-default filesLink"  title="{PHP.L.files_add}" data-toggle="tooltip">
        <span class="glyphicon glyphicon-upload"></span>
        <span class="glyphicon glyphicon-cog"></span>
    </a>
</div>
<!-- ENDIF -->

<!-- BEGIN: FILES -->
<div class="row margintop20">
    <!-- BEGIN: ROW -->
    <div class="col-xs-6 col-sm-2 text-center" style="height: 110px; overflow: hidden" data-source="file-row-tooltip-{FILES_ROW_ID}"
         data-toggle="tooltip" title="" data-html="true">
        <a href="{FILES_ROW_URL}" title="{FILES_ROW_TITLE}"><img src="{FILES_ROW_ICON}" alt="{FILES_ROW_EXT}" /></a><br />
        <a href="{FILES_ROW_URL}" title="{FILES_ROW_TITLE}" class="strong lhn">{FILES_ROW_NAME}</a><br />
        <!-- IF {FILES_ROW_TITLE} -->{FILES_ROW_TITLE}<br /><!-- ENDIF -->
        <span class="desc">{FILES_ROW_SIZE} ({PHP.L.files_downloads}: {FILES_ROW_COUNT})</span>
    </div>
    <div id="file-row-tooltip-{FILES_ROW_ID}" class="hidden">
        {FILES_ROW_NAME}<br />
        {FILES_ROW_SIZE} ({PHP.L.files_downloads}: {FILES_ROW_COUNT})
    </div>
    <!-- END: ROW -->
</div>
<!-- END: FILES -->

<!-- BEGIN: FOLDER_NEWFORM -->
<div class="modal fade" id="dlgNewFolder" tabindex="-1" role="dialog" aria-labelledby="newFolderModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="newFolderModalLabel">{PHP.L.files_newfolder}</h4>
            </div>

            <form name="login" id="dlgNewFolderForm" action="{FOLDER_ADDFORM_URL}" method="post"  role="form">
                {FOLDER_ADDFORM_HIDDEN}
                <div class="modal-body">

                    <div class="form-group">
                        <label>{PHP.L.Title}:</label>
                        {FOLDER_ADDFORM_TITLE}
                    </div>
                    <div class="form-group">
                        <label>{PHP.L.Description}:</label>
                        {FOLDER_ADDFORM_DESC}
                    </div>

                    <!-- IF {FOLDER_ADDFORM_ALBUM} --><div class="checkbox">{FOLDER_ADDFORM_ALBUM}</div><!-- ENDIF -->
                    <div class="checkbox">{FOLDER_ADDFORM_PUBLIC}</div>

                </div>

                <div class="modal-footer text-center">
                    <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-ok"></span> {PHP.L.Submit}</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        <span class="glyphicon glyphicon-remove"></span> {PHP.L.Cancel}</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- END: FOLDER_NEWFORM -->

<!-- IF {FILES_CAN_EDIT} == 1 AND {PHP.files_widget_present} == '' -->
<link rel="stylesheet" href="{PHP.cfg.modules_dir}/files/tpl/link.css">
<div class="modal fade" id="dlgFiles" tabindex="-1" role="dialog" aria-labelledby="dlgFilesLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="dlgFilesLabel">{PHP.L.Files}</h4>
            </div>

            <div class="modal-body"><iframe id="filesModalContent" src=""></iframe></div>

            <div class="modal-footer text-center">
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    <span class="glyphicon glyphicon-remove"></span> {PHP.L.Close}</button>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).on("click", ".filesLink", function(event){
        event.preventDefault();
        var url = $(this).attr('href');
        var title= $(this).attr('title');

        $('#filesModalContent').html('').attr('src', url);
        $('#dlgFilesLabel').html(title);
        $('#dlgFiles').modal();
        return false;
    });

    $('#dlgFiles').on('hidden.bs.modal', function (e) {
        window.location.reload();
    })

</script>
<!-- ENDIF -->
<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
<div class="uk-margin">
  <div class="uk-alert-warning" uk-alert>
    <p>
      <span class="uk-text-bold uk-text-secondary">{PHP.usr.profile.user_name}</span>, you are using the template <code>files.tpl</code>
      <a href="https://abuyfile.com/forums/cotonti/original/mod-files" class="uk-text-bold">Help and support</a> for the <span class="uk-text-bold">"Files"</span> module.
    </p>
  </div>
</div>
<!-- ENDIF -->
<!-- END: MAIN -->