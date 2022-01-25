<style media="screen">
/* .card{
    transition: 0.5s;
  }

  .form-control, .card{
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
      <h2>Surat Keterangan Usaha</h2>
      <!-- <p class="separator" style="">Isi data dibawah dengan sebenar-benarnya.</p> -->
    </div>
    <div class="row">
      <div class="col-md-8 offset-md-2">
        <div class="card">
          <div class="card-header text-center bg-danger text-light">
            Syarat dan Ketentuan Dokumen
          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">1. Fotocopy KTP</li>
            <li class="list-group-item">2. Fotocopy KK</li>
            <li class="list-group-item">3. Foto Usaha (Cetak)</li>
            <li class="list-group-item">4. Surat Keterangan RT dan RW</li>
          </ul>
          <!-- <div class="col-md-12" id="tab-diri"></div> -->
        </div>
      </div>
      <div class="col-md-12 mt-5">
        <!-- <div class="card-header text-center bg-info text-light">
        Syarat dan Ketentuan Dokumen
      </div> -->

        <?php echo form_open_multipart(base_url("surat/ketUsaha"), array('class' => 'form-horizontal')); ?>

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