library view_recipe_component;

import 'package:invoice/service/Invoice.dart';
import 'package:angular/angular.dart';

@Component(
    selector: 'modify-invoice',
    templateUrl: 'modify_invoice.html'
    )
class ModifyInvoiceComponent {
  @NgTwoWay('invoice-map')
  Map<String, Invoice> invoiceMap;

  String _invoice_itemCode;

  Invoice get invoice => invoiceMap == null ? null : invoiceMap[_invoice_itemCode];


  ModifyInvoiceComponent(RouteProvider routeProvider) {
    _invoice_itemCode = routeProvider.parameters['itemCode'];
  }
}
