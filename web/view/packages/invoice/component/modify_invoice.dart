library view_recipe_component;

import 'package:invoice/service/Invoice.dart';
import 'package:angular/angular.dart';

@Component(
    selector: 'modify-invoice',
    templateUrl: 'modify_invoice.html'
    )
class ModifyInvoiceComponent {

  @NgOneWay('invoice-map')
  Map<String, Invoice> invoiceMap;

  String _invoice_itemCode;

  Invoice get invoice => invoiceMap == null ? null : invoiceMap[_invoice_itemCode];

  ModifyInvoiceComponent(RouteProvider routeProvider) {
    _invoice_itemCode = routeProvider.parameters['itemCode'];
     //inv = new Invoice(invoice1.itemCode,invoice1.date,invoice1.productName,invoice1.description, invoice1.quantity, invoice1.unitPrice);

    //_invoice = invoiceMap[_invoice_itemCode];
  }

  void save() {

    print(_invoice_itemCode + ' ' + invoice.quantity.toString());

//    print(invoiceMap[_invoice_itemCode].quantity);

    //setInvoiceMap(invoice,_invoice_itemCode);

    //invoiceMap.putIfAbsent(_invoice_itemCode+'1', () => invoice);

    //print(invoiceMap[_invoice_itemCode].itemCode +' '+  invoiceMap[_invoice_itemCode].quantity );

  }
}
