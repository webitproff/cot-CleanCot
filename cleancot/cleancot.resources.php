<?php





// Пагинация (обновлены классы для Bootstrap 5)
$R['code_title_page_num'] = ' (' . $L['Page'] . ' {$num})';
$R['link_pagenav_current'] = '<li class="page-item active"><a class="page-link" href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_first'] = '<li class="page-item"><a class="page-link" href="{$url}"{$event}{$rel}>' . $L['pagenav_first'] . '</a></li>';
$R['link_pagenav_gap'] = '<li class="page-item disabled"><span class="page-link">...</span></li>'; 
$R['link_pagenav_last'] = '<li class="page-item"><a class="page-link" href="{$url}"{$event}{$rel}>' . $L['pagenav_last'] . '</a></li>';
$R['link_pagenav_main'] = '<li class="page-item"><a class="page-link" href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_next'] = '<li class="page-item"><a class="page-link" href="{$url}"{$event}{$rel}>' . $L['pagenav_next'] . '</a></li>';
$R['link_pagenav_prev'] = '<li class="page-item"><a class="page-link" href="{$url}"{$event}{$rel}>' . $L['pagenav_prev'] . '</a></li>';


$R['input_checkbox'] = '<input type="hidden" name="{$name}" value="{$value_off}" /><div class="form-check"><input class="form-check-input" type="checkbox" name="{$name}" value="{$value}"{$checked}{$attrs} id="{$name}" /><label class="form-check-label" for="{$name}">{$title}</label></div>';
$R['input_check'] = '<div class="form-check"><input class="form-check-input" type="checkbox" name="{$name}" value="{$value}"{$checked}{$attrs} id="{$name}" /><label class="form-check-label" for="{$name}">{$title}</label></div>';
$R['input_default'] = '<input class="form-control" type="{$type}" name="{$name}" value="{$value}"{$attrs} />{$error}';
$R['input_radio'] = '<div class="form-check mx-3"><input class="form-check-input" type="radio" name="{$name}" value="{$value}"{$checked}{$attrs} id="{$name}_{$value}" /><label class="form-check-label" for="{$name}_{$value}">{$title}</label></div>{$error}';
$R['input_radio_separator'] = ' ';
$R['input_select'] = '<select class="form-select" name="{$name}"{$attrs}>{$options}</select>{$error}'; 
$R['input_select_option'] = '<option value="{$value}"{$selected}>{$title}</option>';
$R['input_submit'] = '<button class="btn btn-primary" type="submit" name="{$name}" {$attrs}>{$value}</button>'; 
$R['input_file'] = '<div class="input-group"><input type="file" class="form-control" name="{$name}" value="{$value}" {$attrs} id="{$name}" /><label class="input-group-text" for="{$name}"></label></div>{$error}'; 
$R['input_text'] = '<input class="form-control" type="text" name="{$name}" value="{$value}" {$attrs} />{$error}';
$R['input_textarea'] = '<textarea class="form-control" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';
$R['input_textarea_editor'] = '<textarea class="form-control editor" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';
$R['input_textarea_medieditor'] = '<textarea class="form-control medieditor" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';
$R['input_textarea_minieditor'] = '<textarea class="form-control minieditor" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';


$R['input_date'] = '<div class="row g-2">
    <div class="col-2">{$day}</div>
    <div class="col-3">{$month}</div>
    <div class="col-2">{$year}</div>
    <div class="col-2">{$hour}</div>
    <div class="col-1 text-center">:</div>
    <div class="col-2">{$minute}</div>
</div>';
$R['input_date_short'] = '<div class="row g-2">
    <div class="col-4">{$day}</div>
    <div class="col-4">{$month}</div>
    <div class="col-4">{$year}</div>
</div>';


$R['input_password_roldpass'] = '<input class="form-control" type="password" name="{$name}" placeholder="Текущий пароль" value="{$value}" {$attrs} />{$error}';
$R['input_password_rnewpass1'] = '<input class="form-control" type="password" name="{$name}" placeholder="Новый пароль" value="{$value}" {$attrs} />{$error}';
$R['input_password_rnewpass2'] = '<input class="form-control" type="password" name="{$name}" placeholder="Новый пароль еще раз" value="{$value}" {$attrs} />{$error}';

$R['form_guest_remember'] = '<input class="form-check-input" type="checkbox" name="rremember" />';
$R['form_guest_remember_forced'] = '<input class="form-check-input" type="checkbox" name="rremember" checked="checked" disabled="disabled" />';
$R['form_guest_password'] = '<input class="form-control" type="password" name="rpassword" size="12" maxlength="32" />';
$R['form_guest_username'] = '<input class="form-control" type="text" name="rusername" size="12" maxlength="100" />';

$R['tags_input_editpage'] = '<input type="text" name="rtags" class="form-control autotags" value="{$tags}" />';
$R['tags_input_editpost'] = '<input type="text" name="rtags" class="form-control autotags" value="{$tags}" />';
$R['users_defaultAvatarSrc'] = Cot::$cfg['themes_dir'] . "/" . Cot::$cfg['defaulttheme'] . "/img/user-noavatar.webp";
$R['userimg_default_avatar'] = $R['users_defaultAvatarSrc'];
