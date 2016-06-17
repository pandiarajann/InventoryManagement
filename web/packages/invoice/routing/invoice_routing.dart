library invoice_routing;

import 'package:angular/angular.dart';

void invoiceRouteInitializer(Router router, RouteViewFactory views) {
  views.configure({
    'add1': ngRoute(
        path: '/add1',
        view: 'view/addInvoice.html'),
    'invoice': ngRoute(
    path: '/invoice/:itemCode',
    mount: {
      'view': ngRoute(
          path: '/view',
          view: 'view/viewItemDetails.html'),
      'edit': ngRoute(
          path: '/edit',
          view: 'view/editInvoice.html')
    })
  });
}