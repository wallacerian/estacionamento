<div class="app-sidebar colored">
	<div class="sidebar-header">
		<a class="header-brand" href="index.html">
			<div class="logo-img">
				<img src="src/img/brand-white.svg" class="header-brand-img" alt="lavalite">
			</div>
			<span class="text">ThemeKit</span>
		</a>
		<button type="button" class="nav-toggle"><i data-toggle="expanded" class="ik ik-toggle-right toggle-icon"></i></button>
		<button id="sidebarClose" class="nav-close"><i class="ik ik-x"></i></button>
	</div>
	<div class="sidebar-content">
		<div class="nav-container">
			<nav id="main-menu-navigation" class="navigation-main">
				<div class="nav-lavel">Navigation</div>
				<div class="nav-item active">
					<a data-toggle="tooltip" data-placement="bottom" title="Home" href="<?php echo base_url('/'); ?>"><i class="ik ik-home"></i><span>Home</span></a>
				</div>
				<div class="nav-item">
					<a data-toggle="tooltip" data-placement="bottom" title="Gerenciar Mensalistas" href="<?php echo base_url('mensalistas'); ?>"><i class="fas fa-users"></i><span>Mensalistas</span></a>
				</div>
				
				<div class="nav-lavel">Administração</div>
				<div class="nav-item">
					<a data-toggle="tooltip" data-placement="bottom" title="Gerenciar sistema" href="<?php echo base_url('sistema'); ?>"><i class="ik ik-settings"></i><span>usuários</span></a>
				</div>
				<div class="nav-item">
					<a data-toggle="tooltip" data-placement="bottom" title="Gerenciar usuários" href="<?php echo base_url('usuarios'); ?>"><i class="ik ik-users"></i><span>Sistema</span></a>
				</div>
				<div class="nav-item">
					<a data-toggle="tooltip" data-placement="bottom" title="Gerenciar precificações" href="<?php echo base_url('precificacoes'); ?>"><i class="fas fa-dollar-sign"></i><span> precificações</span></a>
				</div>
				<div class="nav-item">
					<a data-toggle="tooltip" data-placement="bottom" title="Gerenciar formas de pagamento" href="<?php echo base_url('formas'); ?>"><i class="fas fa-comment-dollar"></i><span>Formas de pagamento</span></a>
				</div>
			</nav>
		</div>
	</div>
</div>
