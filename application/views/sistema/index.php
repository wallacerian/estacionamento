<?php $this->load->view('layout/navbar') ;?>

<div class="page-wrap">
  <?php  $this->load->view('layout/sidebar') ;?>
  
  <div class="main-content">
                    <div class="container-fluid">
                        <div class="page-header">
                            <div class="row align-items-end">
                                <div class="col-lg-8">
                                    <div class="page-header-title">
                                        <i class="<?php echo $icone_view;?> bg-blue"></i>
                                        <div class="d-inline">
                                            <h5><?php echo $titulo; ?></h5>
                                            <span><?php echo $sub_titulo; ?></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <nav class="breadcrumb-container" aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item">
                                                <a data-toggle="tooltip" data-placement="left" title="Home" href="<?php echo base_url('/'); ?>"><i class="ik ik-home"></i></a>
											</li>
                                            <li  class="breadcrumb-item active" aria-current="page"><?php echo $titulo; ?></li>
                                        </ol>
                                    </nav>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-header"><?php echo(isset($sistema) ? '<i class="ik ik-calendar ik-2x"></i>&nbsp;Data da última alteração: &nbsp;'.formata_data_banco_com_hora($sistema->sistema_data_alteracao) : ''); ?></div>
                                    <div class="card-body">
									  <form class="forms-sample" name="form_index" method="POST">
                                            <div class="form-group row">
                                               <div class="col-md-6 mb-20">
											    <label>Razão social</label>
                                                <input type="text" class="form-control" name="sistema_razao_social" value="<?php echo(isset($sistema) ? $sistema->sistema_razao_social : set_value('sistema_razao_social')); ?>">
											     <?php echo form_error('sistema_razao_social','<div class="text-danger">','</div>' ); ?>
											   </div>
											   <div class="col-md-6 mb-20">
											    <label>Nome fantasia</label>
                                                <input type="text" class="form-control" name="sistema_nome_fantasia" value="<?php echo(isset($sistema) ? $sistema->sistema_nome_fantasia : set_value('sistema_nome_fantasia')); ?>">
												<?php echo form_error('sistema_nome_fantasia','<div class="text-danger">','</div>' ); ?>
											   </div>
                                            </div>
											<div class="form-group row">
                                               <div class="col-md-3 mb-20">
											    <label>CNPJ</label>
                                                <input type="text" class="form-control cnpj" name="sistema_cnpj" value="<?php echo(isset($sistema) ? $sistema->sistema_cnpj : set_value('sistema_cnpj')); ?>">
											     <?php echo form_error('sistema_cnpj','<div class="text-danger">','</div>' ); ?>
											   </div>
											   <div class="col-md-3 mb-20">
											    <label>Inscrição estadual</label>
                                                <input type="text" class="form-control" name="sistema_ie" value="<?php echo(isset($sistema) ? $sistema->sistema_ie : set_value('sistema_ie')); ?>">
												<?php echo form_error('sistema_ie','<div class="text-danger">','</div>' ); ?>
											   </div>
											<div class="col-md-3 mb-20">
											    <label>Telefone fixo</label>
                                                <input type="text" class="form-control" name="sistema_ie" value="<?php echo(isset($sistema) ? $sistema->sistema_ie : set_value('sistema_ie')); ?>">
												<?php echo form_error('sistema_ie','<div class="text-danger">','</div>' ); ?>
											   </div>
                                            </div>

										
                                            <button type="submit" class="btn btn-primary mr-2">Salvar</button>
                                            <a class="btn btn-info" href="<?php echo base_url($this->router->fetch_class()); ?>">Voltar</a>
                                          </form>
									</div>
								</div>
							</div>
						</div>

	<footer class="footer">
		<div class="w-100 clearfix">
			<span class="text-center text-sm-left d-md-inline-block">Copyright © <?php echo date('Y'); ?> date ThemeKit v2.0. All Rights Reserved.</span>
			<span class="float-none float-sm-right mt-1 mt-sm-0 text-center">Customizado <i class="fas fa-code text-dark"></i> by <a href="javascript:void" class="text-dark" >Wallace</a></span>
		</div>
	</footer>
	
</div>
