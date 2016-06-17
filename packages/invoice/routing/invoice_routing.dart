library invoice_routing;

import 'package:angular/angular.dart';

void invoiceRouteInitializer(Router router, RouteViewFactory views) {
  views.configure({
    'add': ngRoute(
        path: '/add',
        view: 'invoice/component/add_invoice.html')
  });
}