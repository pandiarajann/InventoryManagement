library delete_product_component;

import 'dart:async';

import 'package:invoice/service/Invoice.dart';
import 'package:angular/angular.dart';
import 'package:invoice/service/QueryService.dart';

@Component(
    selector: 'delete-product',
    useShadowDom: false
)
class deleteProductComponent {

  final QueryService queryService;
  String _invoice_itemCode;

  deleteProductComponent(RouteProvider routeProvider,this.queryService) {
    _invoice_itemCode = routeProvider.parameters['itemCode'];
    queryService.deleteProduct(_invoice_itemCode);
    //print(_invoice_itemCode);

  }

/*  deleteProduct() {

  }*/

}