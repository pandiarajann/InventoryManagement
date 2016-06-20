library invoice_routing;

import 'package:angular/angular.dart';

void invoiceRouteInitializer(Router router, RouteViewFactory views) {
  views.configure({
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
      'view_default': ngRoute(
          defaultRoute: true,
          enter: (RouteEnterEvent e) =>
              router.go('view', {},
                  startingFrom: router.root.findRoute('invoice'),
                  replace: true))
    })
  });

  /*
  add': ngRoute(
        path: '/add',
        mount: {
          'add': ngRoute(
              path: '/add',
              view: 'view/addInvoice.html'
          )
        }),
   */

}