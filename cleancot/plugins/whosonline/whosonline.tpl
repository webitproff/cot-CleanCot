<!-- BEGIN: MAIN -->
<div class="bg-body-secondary">
  <div class="container-md d-flex flex-column justify-content-center pb-5">
    <div class="row">
      <div class="col-12 col-md-10 mx-auto">
        <div class="card mt-4 mb-4">
          <div class="card-header bg-warning text-dark">
            <h2 class="h5 mb-0">{PHP.L.WhosOnline}</h2>
          </div>
          <div class="card-body">
            <table class="table table-striped mb-3">
              <thead>
                <tr>
                  <th scope="col">{PHP.L.User}</th>
                  <th scope="col">{PHP.L.Group}</th>
                  <th scope="col">{PHP.L.Type}</th>
                  <th scope="col">{PHP.L.Location}</th>
                  <th scope="col">{PHP.L.LastSeen}</th>
                  <!-- IF {PHP.usr.isadmin} -->
                  <th scope="col">{PHP.L.Ip}</th>
                  <!-- ENDIF -->
                </tr>
              </thead>
              <tbody>
                <!-- BEGIN: USERS -->
                <tr>
                  <td>{USER_LINK}</td>
                  <td>{USER_MAIN_GROUP}</td>
                  <td>
                    <!-- IF {PHP.usr.isadmin} AND {USER_URL} != '' --><a href="{USER_URL}"><!-- ENDIF -->
                    {USER_LOCATION}
                    <!-- IF {PHP.usr.isadmin} AND {USER_URL} != '' --></a><!-- ENDIF -->
                  </td>
                  <td>
                    <!-- IF {USER_SUBLOCATION} -->
                    <!-- IF {PHP.usr.isadmin} AND {USER_URL} != '' --><a href="{USER_URL}"><!-- ENDIF -->
                    {USER_SUBLOCATION}
                    <!-- IF {PHP.usr.isadmin} AND {USER_URL} != '' --></a><!-- ENDIF -->
                    <!-- ENDIF -->
                  </td>
                  <td>{USER_LASTSEEN} {PHP.L.Ago}</td>
                  <!-- IF {PHP.usr.isadmin} -->
                  <td>{USER_IP}</td>
                  <!-- ENDIF -->
                </tr>
                <!-- END: USERS -->
                <!-- BEGIN: GUESTS -->
                <tr>
                  <td colspan="2">{PHP.L.Guest} #{GUEST_NUMBER}</td>
                  <td>
                    <!-- IF {PHP.usr.isadmin} AND {GUEST_URL} != '' --><a href="{GUEST_URL}"><!-- ENDIF -->
                    {GUEST_LOCATION}
                    <!-- IF {PHP.usr.isadmin} AND {GUEST_URL} != '' --></a><!-- ENDIF -->
                  </td>
                  <td>
                    <!-- IF {GUEST_SUBLOCATION} -->
                    <!-- IF {PHP.usr.isadmin} AND {GUEST_URL} != '' --><a href="{GUEST_URL}"><!-- ENDIF -->
                    {GUEST_SUBLOCATION}
                    <!-- IF {PHP.usr.isadmin} AND {GUEST_URL} != '' --></a><!-- ENDIF -->
                    <!-- ENDIF -->
                  </td>
                  <td>{GUEST_LASTSEEN} {PHP.L.Ago}</td>
                  <!-- IF {PHP.usr.isadmin} -->
                  <td>{GUEST_IP}</td>
                  <!-- ENDIF -->
                </tr>
                <!-- END: GUESTS -->
              </tbody>
            </table>

            <!-- IF {TOTAL_PAGES} > 1 -->
            <nav aria-label="Pagination" class="mb-3">
              <div class="text-center mb-2">{PHP.L.Page} {CURRENT_PAGE} {PHP.L.Of} {TOTAL_PAGES}</div>
              <ul class="pagination justify-content-center">
                {PREVIOUS_PAGE}
                {PAGINATION}
                {NEXT_PAGE}
              </ul>
            </nav>
            <!-- ENDIF -->

            <p class="mb-2">
              <strong>{PHP.L.NowOnline}:</strong> {STAT_COUNT_USERS} {USERS}
              <!-- IF !{PHP.cfg.plugin.whosonline.disable_guests} -->, {STAT_COUNT_GUESTS} {GUESTS}<!-- ENDIF -->
            </p>
            <!-- IF {STAT_MAXUSERS} -->
            <p class="mb-0">
              <strong>{PHP.L.MostOnline}:</strong> {STAT_MAXUSERS}
            </p>
            <!-- ENDIF -->
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- END: MAIN -->