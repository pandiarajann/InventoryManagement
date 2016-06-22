library add_invoice_component;

//import 'dart:async';

import 'package:invoice/service/Invoice.dart';
import 'package:angular/angular.dart';
import 'package:invoice/service/QueryService.dart';

@Component(
    selector: 'add-invoice',
    templateUrl: 'add_product.html'
)
class AddProductComponent {

  final QueryService queryService;
  Router router;

  Invoice newProduct = new Invoice('', '', '', '', 0, 0.0);

  AddProductComponent(this.queryService, this.router);

  void save() {

    //print(newProduct.quantity);
    queryService.addInvoice(newProduct);
    router.go("empty", new Map());
  }
}