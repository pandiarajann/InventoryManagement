library invoice_routing;

import 'package:angular/angular.dart';

void invoiceRouteInitializer(Router router, RouteViewFactory views) {
  views.configure({
    'empty': ngRoute(
        path: '/empty',
        view: 'view/empty_page.html'),
    'add': ngRoute(
        path: '/add',
        view: 'view/addInvoice.html'),
    'invoice': ngRoute(
    path: '/invoice/:itemCode',
    mount: {
      'view': ngRoute(
          path: '/view',
          view: 'view/viewItemDetails.html'),
      'edit': ngRoute(
          path: '/edit',
          view: 'view/editInvoice.html'),
      'delete': ngRoute(
          path: '/delete',
          view: 'view/deleteProduct.html'),
      'view_default': ngRoute(
          defaultRoute: true,
          enter: (RouteEnterEvent e) =>
              router.go('view', {},
                  startingFrom: router.root.findRoute('invoice'),
                  replace: true))
    })
  });

}