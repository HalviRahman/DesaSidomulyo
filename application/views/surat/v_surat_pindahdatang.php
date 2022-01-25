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
      <h2>Persyaratan Pindah Datang</h2>
      <!-- <p class="separator" style="">Isi data dibawah dengan sebenar-benarnya.</p> -->
    </div>
    <div class="row">
      <div class="col-md-8 offset-md-2">
        <div class="card">
          <div class="card-header text-center bg-danger text-light">
            Syarat dan Ketentuan Dokumen
          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">1. <b>Surat Pindah Asli</b> dari daerah asal yang dibuat oleh dispendukcapil;
            </li>
            <li class="list-group-item">2. <b>Formulir Isian Kartu Keluarga (KK)</b> yang telah dilegalisasi oleh Ketua
              RT/RW dan Kepala Desa/Lurah;</li>
            <li class="list-group-item">3. <b>Formulir Isian Kartu Tanda Penduduk (KTP)</b> yang telah dilegalisasi oleh
              Kepala Desa/Lurah;</li>
            <li class="list-group-item">4. <b>Fotocopy Surat Nikah</b> (bagi yang sudah menikah);</li>
            <li class="list-group-item">5. <b>Fotocopy Surat Cerai</b> (bagi yang statusnya cerai hidup);</li>
            <li class="list-group-item">6. <b>Fotocopy Akta Kelahiran</b>/surat kelahiran;</li>
            <li class="list-group-item text-center bg-secondary text-light"><b>YANG BERSANGKUTAN HARUS DATANG SENDIRI
                DAN TIBAK BOLEH
                DIWAKILKAN</b>
            </li>
          </ul>
          <!-- <div class="col-md-12" id="tab-diri"></div> -->
        </div>
      </div>
      <div class="col-md-12 mt-5">
        <!-- <div class="card-header text-center bg-info text-light">
        Syarat dan Ketentuan Dokumen
      </div> -->

        <?php echo form_open_multipart(base_url("surat/pindahdatang"), array('class' => 'form-horizontal')); ?>

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