Deface::Override.new(:virtual_path => 'spree/admin/general_settings/edit',
  :name => 'add_leadgrid_widget_to_order_info',
  :insert_before => "#preferences fieldset .form-actions",
  :text => "
	  <!-- ============================================= -->
      <!-- LeadGrid Settings                             -->
      <!-- ============================================= -->
      <div class='row'>
        <div class='col-md-12'>
          <div class='panel panel-default currency'>
            <div class='panel-heading'>
              <h1 class='panel-title'>
                LeadGrid Settings
              </h1>
            </div>

            <div class='panel-body'>
              <div class='row'>
                <div class='col-md-6'>
                  <div class='form-group'>
                    <label for='site_id'>Site Id</label>
                    <input type='text' name='site_id' class='form-control' value='<%= Spree::Config.site_id %>'/>                  
                  </div>
                </div>
                <div class='col-md-6'>
                  <div class='form-group'>
                  <label for='site_id'>Language</label>
                    <input type='text' name='language' class='form-control' value='<%= Spree::Config.language %>' />                  
                  </div>
                </div>
              </div>              
            </div>
          </div>
        </div>
      </div>
 ")