<!-- BEGIN: MAIN -->
<div class="bg-body-secondary">
  <div class="container-xl min-height-50vh d-flex flex-column justify-content-center pb-5">
    <div class="row">
      <div class="col-12">
        <h2 class="stats">{PHP.L.plu_title}</h2>

        <h3>{PHP.L.Main}:</h3>
        <table class="table table-striped mb-3">
          <tbody>
            <tr>
              <td colspan="2">{PHP.L.plu_maxwasreached} {STATISTICS_MAX_DATE}, {STATISTICS_MAX_HITS} {PHP.L.plu_pagesdisplayedthisday}</td>
            </tr>
            <tr>
              <td>{PHP.L.plu_totalpagessince} {STATISTICS_SINCE}</td>
              <td class="text-end">{STATISTICS_TOTALPAGES}</td>
            </tr>
            <tr>
              <td>{PHP.L.plu_registeredusers}</td>
              <td class="text-end">{STATISTICS_TOTALDBUSERS}</td>
            </tr>
            <tr>
              <td>{PHP.L.Pages}</td>
              <td class="text-end">{STATISTICS_TOTALDBPAGES}</td>
            </tr>
            <tr>
              <td>{PHP.L.plu_totalmails}</td>
              <td class="text-end">{STATISTICS_TOTALMAILSENT}</td>
            </tr>
            <tr>
              <td>{PHP.L.comments_comments}</td>
              <td class="text-end">{STATISTICS_TOTALDBCOMMENTS}</td>
            </tr>
          </tbody>
        </table>

        <h3>{PHP.L.Private_Messages}:</h3>
        <table class="table table-striped mb-3">
          <tbody>
            <tr>
              <td>{PHP.L.plu_totalpms}</td>
              <td class="text-end">{STATISTICS_TOTALPMSENT}</td>
            </tr>
            <tr>
              <td>{PHP.L.plu_totalactivepms}</td>
              <td class="text-end">{STATISTICS_TOTALPMACTIVE}</td>
            </tr>
            <tr>
              <td>{PHP.L.plu_totalarchivedpms}</td>
              <td class="text-end">{STATISTICS_TOTALPMARCHIVED}</td>
            </tr>
          </tbody>
        </table>

        <h3>{PHP.L.Forums}:</h3>
        <table class="table table-striped mb-3">
          <tbody>
            <tr>
              <td>{PHP.L.plu_viewsforums}</td>
              <td class="text-end">{STATISTICS_TOTALDBVIEWS}</td>
            </tr>
            <tr>
              <td>{PHP.L.plu_postsforums}</td>
              <td class="text-end">{STATISTICS_TOTALDBPOSTS}</td>
            </tr>
            <tr>
              <td>{PHP.L.plu_topicsforums}</td>
              <td class="text-end">{STATISTICS_TOTALDBTOPICS}</td>
            </tr>
          </tbody>
        </table>

        <h3>{PHP.L.plu_pollsratings}:</h3>
        <table class="table table-striped mb-3">
          <tbody>
            <tr>
              <td>{PHP.L.plu_pagesrated}</td>
              <td class="text-end">{STATISTICS_TOTALDBRATINGS}</td>
            </tr>
            <tr>
              <td>{PHP.L.plu_votesratings}</td>
              <td class="text-end">{STATISTICS_TOTALDBRATINGSVOTES}</td>
            </tr>
            <tr>
              <td>{PHP.L.plu_polls}</td>
              <td class="text-end">{STATISTICS_TOTALDBPOLLS}</td>
            </tr>
            <tr>
              <td>{PHP.L.plu_votespolls}</td>
              <td class="text-end">{STATISTICS_TOTALDBPOLLSVOTES}</td>
            </tr>
          </tbody>
        </table>

        <h3>{PHP.L.PFS}:</h3>
        <table class="table table-striped mb-3">
          <tbody>
            <tr>
              <td>{PHP.L.plu_pfsspace}</td>
              <td class="text-end">{STATISTICS_TOTALDBFILES}</td>
            </tr>
            <tr>
              <td>{PHP.L.plu_pfssize}, {PHP.L.kb}</td>
              <td class="text-end">{STATISTICS_TOTALDBFILESIZE}</td>
            </tr>
          </tbody>
        </table>

        <h3>{PHP.L.plu_contributions}:</h3>
        <table class="table table-striped mb-3">
          <tbody>
            <!-- BEGIN: IS_USER -->
            <tr>
              <td>{PHP.L.forums_posts}</td>
              <td class="text-end">{STATISTICS_USER_POSTSCOUNT}</td>
            </tr>
            <tr>
              <td>{PHP.L.forums_topics}</td>
              <td class="text-end">{STATISTICS_USER_TOPICSCOUNT}</td>
            </tr>
            <tr>
              <td>{PHP.L.comments_comments}</td>
              <td class="text-end">{STATISTICS_USER_COMMENTS}</td>
            </tr>
            <!-- END: IS_USER -->
            <!-- BEGIN: IS_NOT_USER -->
            <tr>
              <td>{PHP.L.plu_notloggedin}</td>
            </tr>
            <!-- END: IS_NOT_USER -->
          </tbody>
        </table>

        <h3>{PHP.L.plu_membersbycountry}:</h3>
        <table class="table table-striped mb-3">
          <thead>
            <tr>
              <th scope="col" class="text-center">{PHP.L.plu_flag}</th>
              <th scope="col"><a href="{STATISTICS_PLU_URL}">{PHP.cot_img_down}</a> {PHP.L.Country}</th>
              <th scope="col" class="text-end"><a href="{STATISTICS_SORT_BY_USERCOUNT}" rel="nofollow">{PHP.cot_img_down}</a> {PHP.L.Users}</th>
            </tr>
          </thead>
          <tbody>
            <!-- BEGIN: ROW_COUNTRY -->
            <tr>
              <td class="text-center">{STATISTICS_COUNTRY_FLAG}</td>
              <td>{STATISTICS_COUNTRY_NAME}</td>
              <td class="text-end">{STATISTICS_COUNTRY_COUNT}</td>
            </tr>
            <!-- END: ROW_COUNTRY -->
            <tr>
              <td class="text-center"><img src="images/flags/f-00.png" alt="" /></td>
              <td>{PHP.L.plu_unknown}</td>
              <td class="text-end">{STATISTICS_UNKNOWN_COUNT}</td>
            </tr>
            <tr>
              <td colspan="2" class="text-end fw-bold">{PHP.L.Total}:</td>
              <td class="text-end">{STATISTICS_TOTALUSERS}</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>
<!-- END: MAIN -->