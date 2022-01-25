<style media="screen">
/* .card{
    transition: 0.5s;
  } */

/* .form-control, .card{
    border: 2px solid black;
  }

  *{
    font-weight: bold;
  } */
.btn {
  text-transform: capitalize;
  font-family: "Roboto", sans-serif;
  font-weight: bold;
}
</style>
<section id="get-started" class="padd-section wow fadeInUp">
  <div class="containers">
    <div class="section-title text-center">
      <h2>Persyaratan Nikah</h2>
      <!-- <p class="separator" style="">Isi data dibawah dengan sebenar-benarnya.</p> -->
    </div>
    <div class="row">
      <div class="col-md-8 offset-md-2">
        <div class="card">
          <div class="card-header text-center bg-danger text-light">
            Syarat dan Ketentuan Dokumen
          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">1. Pengantar RT / RW</li>
            <li class="list-group-item">2. Fotocopy E-KTP</li>
            <li class="list-group-item">3. Fotocopy Kartu Keluarga (KK)</li>
            <li class="list-group-item">4. Fotocopy Ijazah Terakhir (STTB)</li>
            <li class="list-group-item">5. Pas Photo 3 X 3 (6 Lembar)</li>
            <li class="list-group-item">6. Fotocopy Akta Nikah Orang Tua</li>
            <li class="list-group-item">7. Fotocopy Akta Kelahiran</li>
            <!-- <li class="list-group-item">5. Berkas Asli dibawa saat pengambilan surat</li>
            <li class="list-group-item">6. Surat Kuasa jika pengambilan berkas dikuasakan ke orang lain</li> -->
          </ul>
          <div class="col-md-12" id="tab-diri"></div>
        </div>
      </div>

    </div>
  </div>
</section>

<script type="text/javascript">
(function($) {
  $.fn.replaceClass = function(pFromClass, pToClass) {
    return this.removeClass(pFromClass).addClass(pToClass);
  };
}(jQuery));

function pindah(num) {
  $('#pills-tab li:nth-child(' + num + ') a').replaceClass('disabled', 'enabled');
  $('#pills-tab li:nth-child(' + num + ') a').tab('show');
  $('#pills-tab li a').replaceClass('enabled', 'disabled');
}
</script>