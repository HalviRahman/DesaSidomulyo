<style media="screen">
/* .feature-block{
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
  } */

.img-fluid {
  height: 100px;
  width: 100px;
}
</style>
<section id="get-started" class="padd-section text-center wow fadeInUp">
  <div class="containers">
    <div class="section-title text-center" style="margin-top:-10px;">
      <h2>Daftar Surat</h2>
      <p class="separator" style="margin-top:-20px;">Berikut daftar surat yang dapat diurus oleh warga masyarakat.</p>
    </div>
    <div class="row" style="margin-top:20px;">
      <div class="col-md-6 col-lg-4 mb-5">
        <div class="feature-block">
          <a href="<?= base_url("surat/nikah") ?>"><img src="<?= base_url() ?>assets/img/surat/icon/couple.png"
              alt="img" class="img-fluid"></a>
          <a href="<?= base_url("surat/nikah") ?>">
            <h4>Surat Persyaratan <br />Nikah</h4>
          </a>
        </div>
      </div>
      <div class="col-md-6 col-lg-4 mb-5">
        <div class="feature-block">
          <a href="<?= base_url("surat/kematian") ?>"><img src="<?= base_url() ?>assets/img/surat/icon/tombstone.png"
              alt="img" class="img-fluid"></a>
          <a href="<?= base_url("surat/kematian") ?>">
            <h4>Surat Akta <br />Kematian</h4>
          </a>
        </div>
      </div>
      <div class="col-md-6 col-lg-4 mb-5">
        <div class="feature-block">
          <a href="<?= base_url("surat/pindahnikah") ?>"><img src="<?= base_url() ?>assets/img/surat/icon/couple.png"
              alt="img" class="img-fluid"></a>
          <a href="<?= base_url("surat/nikah") ?>">
            <h4>Surat Persyaratan <br />Pindah Nikah</h4>
          </a>
        </div>
      </div>
      <div class="col-md-6 col-lg-4 mb-5">
        <div class="feature-block">
          <a href="<?= base_url("surat/santunankematian") ?>"><img
              src="<?= base_url() ?>assets/img/surat/icon/tombstone.png" alt="img" class="img-fluid"></a>
          <a href="<?= base_url("surat/santunankematian") ?>">
            <h4>Syarat Pengajuan <br />Santunan Kematian</h4>
          </a>
        </div>
      </div>
      <div class="col-md-6 col-lg-4">
        <div class="feature-block">
          <a href="<?= base_url("surat/ketUsaha") ?>"><img src="<?= base_url() ?>assets/img/surat/icon/online-store.png"
              alt="img" class="img-fluid"></a>
          <a href="<?= base_url("surat/ketUsaha") ?>">
            <h4>Surat Keterangan <br />Usaha</h4>
          </a>
        </div>
      </div>
      <div class="col-md-6 col-lg-4 mb-5">
        <div class="feature-block">
          <a href="<?= base_url("surat/pindahdatang") ?>"><img src="<?= base_url() ?>assets/img/surat/icon/Loaders.jpg"
              alt="img" class="img-fluid"></a>
          <a href="<?= base_url("surat/pindahdatang") ?>">
            <h4>Persyaratan <br />Pindah Datang</h4>
          </a>
        </div>
      </div>
      <div class="col-md-6 col-lg-4">
        <div class="feature-block">
          <a href="<?= base_url("surat/pengalihanbpjs") ?>"><img src="<?= base_url() ?>assets/img/surat/icon/file.png"
              alt="img" class="img-fluid"></a>
          <a href="<?= base_url("surat/pengalihanbpjs") ?>">
            <h4>Pengalihan BPJS Mandiri <br />Ke KIS</h4>
          </a>
        </div>
      </div>
      <div class="col-md-6 col-lg-4 mb-5">
        <div class="feature-block">
          <a href="<?= base_url("surat/pindahkeluar") ?>"><img src="<?= base_url() ?>assets/img/surat/icon/Loaders.jpg"
              alt="img" class="img-fluid"></a>
          <a href="<?= base_url("surat/pindahkeluar") ?>">
            <h4>Persyaratan <br />Pindah Keluar</h4>
          </a>
        </div>
      </div>
      <div class="col-md-6 col-lg-4">
        <div class="feature-block">
          <a href="<?= base_url("surat/skck") ?>"><img src="<?= base_url() ?>assets/img/surat/icon/file.png" alt="img"
              class="img-fluid"></a>
          <a href="<?= base_url("surat/skck") ?>">
            <h4>Surat Keterangan <br />Catatan Kepolisian</h4>
          </a>
        </div>
      </div>
    </div>
  </div>
</section>











<!-- <?php //echo form_open_multipart(base_url("surat/isi"),array('class' => 'form-horizontal')); 
      ?>
<textarea name="isiartikel" id="ckeditor" class="ckeditor" rows="8" cols="80"></textarea>
<input type="submit" name="gas" value="Gas">
<?php //echo form_close(); 
?>
<script type="text/javascript">
CKEDITOR.disableAutoInline = true;
CKEDITOR.inline = editable;
</script> -->