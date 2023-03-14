<div class="modal fade" id="modal-bay">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
        <div class="modal-body">
            <?php
            if($cek_diameter != 0) {
            echo '<a class="btn btn-app bg-warning" data-toggle="modal" data-target="#modal-diameter-next">
                  <span class="badge bg-success">'.$count_wiring_diameter.'</span>
                  <i class="fas fa-atom-simple"></i> Diameter
            </a>';
            }            
            if($cek_penghantar != 0) {
            echo '<a class="btn btn-app bg-gray-dark" data-toggle="modal" data-target="#modal-bay-next">
                  <span class="badge bg-success">'.$count_wiring_penghantar.'</span>
                  <i class="fas fa-utility-pole-double"></i> Penghantar
            </a>';
            }
            if($cek_trafo != 0) {
            echo '<a class="btn btn-app bg-info" data-toggle="modal" data-target="#modal-trafo-next">
                  <span class="badge bg-success">'.$count_wiring_trafo.'</span>
                  <i class="fas fa-transformer-bolt"></i> Trafo
            </a>';
            }
            if($cek_kopel != 0) {
            echo '<a class="btn btn-app bg-olive" data-toggle="modal" data-target="#modal-kopel-next">
                  <span class="badge bg-success">'.$count_wiring_kopel.'</span>
                  <i class="fas fa-network-wired"></i> Kopel
            </a>';
            }
            if($cek_kapasitor != 0) {
            echo '<a class="btn btn-app bg-maroon" data-toggle="modal" data-target="#modal-kapasitor-next">
                  <span class="badge bg-success">'.$count_wiring_kapasitor.'</span>
                  <i class="fas fa-flux-capacitor"></i> Kapasitor
            </a>';
            }
            if($cek_busbar != 0) {
            echo '<a class="btn btn-app bg-secondary" data-toggle="modal" data-target="#modal-busbar-next">
                  <span class="badge bg-success">'.$count_wiring_busbar.'</span>
                  <i class="fas fa-waveform-lines"></i> Busbar & Synchro
            </a>';
            }
            ?>
        </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<?php $this->load->view('admin/admin_gardu_modal_2'); ?><!-- /.modal2-page -->