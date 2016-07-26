Deface::Override.new(:virtual_path => 'spree/orders/show',
  :name => 'add_leadgrid_widget_to_order_info',
  :insert_bottom => "div#order",
  :text => "
	<script type='text/javascript'>
			var jqlg, ws;
    ws = {
        OrderId: '<%= @order.number %>',              
        CustomerEmail: '<%= @order.email %>',  
        OrderValue: '<%= @order.total * 100 %>',        
        OrderCurrency: '<%= @order.currency %>',                        
        OrderZipCode: '',                            // Código postal do pedido. Opcional. Utilizado para otimização de ofertas locais.
        OrderCountry: '',                            // Código do país do pedido (ISO 3166-1 alpha-2). Obrigatório se OrderZipCode for informado.
        CustomerAge: '',                             // Idade do consumidor. Opcional mas altamente recomendado para otimização.
        CustomerGender: '',                          // Gênero do consumidor. 'M' para Masculino e 'F' para Feminino. Opcional mas altamente recomendado para otimização.
        WidgetLanguage: '<%= Spree::Config.language %>'                      // Língua a ser utilizada na interface do widget (Identificadores de Língua - RFC 3066). Opcional. ex.: 'en' para inglês, 'es' para espanhol, 'pt-br' para português do Brasil.
    };
    function al() {(function (d, si, w, ws, sv, ep) {
    var h = d.getElementsByTagName('head')[0], p = d.location.protocol, s, lgs; s = d.createElement('script'); s.type = 'text/javascript'; s.charset = 'utf-8'; s.async = 1; lgs =   '?SiteId=' + si + '&WidgetId=' + w + '&ScriptVersion=' + sv + '&EcommercePlatformId=' + ep + '&' + Object.keys(ws).map(function (key) { return key + '=' + encodeURIComponent(ws[key]); }).join('&'); s.src = 'https://widgets.leadgrid.io/' + ws.WidgetLanguage + '/v1.1/widget/show/' + lgs; h.appendChild(s);
    })(document, '<%= Spree::Config.site_id %>', '', ws, '1.1', '8cf3ca03-dfb5-4c6b-83bc-3f9db1c57d40');} (function () { if (window.attachEvent) window.attachEvent('onload', al); else window.addEventListener('load', al, false); })();
	</script>
 ")