library view_recipe_component;

import 'package:invoice/service/Invoice.dart';
import 'package:angular/angular.dart';

@Component(
    selector: 'modify-invoice',
    templateUrl: 'modify-invoice.html'
    )
class modifyInvoiceComponent {
  @NgOneWay('invoices')
  List<Invoice> invoices = [];

  String _invoice_itemCode;

//  Invoice get invoice => invoices == null ? null : invoices.stream().filter(line -> itemCode.equals(line) line);

  invoiceRouteInitializer(RouteProvider routeProvider) {
    _invoice_itemCode = routeProvider.parameters['itemCode'];
  }
}
