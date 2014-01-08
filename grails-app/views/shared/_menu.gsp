
<script type="text/javascript">
        try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
</script>

<div class="sidebar-shortcuts" id="sidebar-shortcuts">
  <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
    
    <g:link class="btn btn-small btn-success" controller="dashboard" action="index">
      <i class="icon-home"></i>
    </g:link>

    <g:link class="btn btn-small btn-warning" controller="user">
      <i class="icon-lock"></i>
    </g:link>

  </div>

  <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
    <span class="btn btn-success"></span>

    <span class="btn btn-info"></span>

    <span class="btn btn-warning"></span>

    <span class="btn btn-danger"></span>
  </div>
</div><!--#sidebar-shortcuts-->

<ul class="nav nav-list">
  <li>
    <g:link controller="configuracionDeProyecto" action="create">
      <i class="icon-check"></i>
      <span class="menu-text">Configurar Proyecto</span>
    </g:link> 
  </li>
  <li>
    <g:link controller="promocionDeVersion" action="create">
      <i class="icon-check"></i>
      <span class="menu-text">Promocionar Versión</span>
    </g:link> 
  </li>
  <li class="active open">
    <g:link controller="tarea" action="hoy">
      <i class="icon-check"></i>
      <span class="menu-text">Procesos</span>
    </g:link> 
    <ul class="submenu">
        <li>
            <g:link controller="proceso" action="show" id="1">
              <i class="icon-double-angle-right"></i> Iniciar Proceso 1
            </g:link>
        </li>
        <li>
            <g:link controller="proceso" action="show" id="2">
              <i class="icon-double-angle-right"></i> Iniciar Proceso 2
            </g:link>
        </li>
        <li>
            <g:link controller="proceso" action="show" id="3">
              <i class="icon-double-angle-right"></i> Iniciar Proceso 3
            </g:link>
        </li>
    </ul>
  </li>
  <li>
    <g:link controller="autorizacionDePromocion" action="create">
      <i class="icon-check"></i>
      <span class="menu-text">Autorizar Promoción</span>
    </g:link> 
  </li>
  <li>
    <g:link controller="bitacora" action="index">
      <i class="icon-check"></i>
      <span class="menu-text">Bitácora</span>
    </g:link> 
  </li>
  <li>
    <g:link controller="user">
      <i class="icon-lock"></i>
      <span class="menu-text">Seguridad</span>
    </g:link> 
  </li>
</ul><!--/.nav-list-->

<div class="sidebar-collapse" id="sidebar-collapse">
  <i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
</div>

<script type="text/javascript">
        try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
</script>