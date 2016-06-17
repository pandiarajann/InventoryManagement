library invoice_main;

import 'package:angular/angular.dart';
import 'package:angular/application_factory.dart';
import 'package:logging/logging.dart';

import 'package:invoice/component/invoice_component.dart';
import 'package:invoice/component/modify_invoice.dart';
import 'package:invoice/routing/invoice_routing.dart';

//import 'package:invoice/service/Invoice.dart';


/*import 'package:tutorial/component/recipe_book.dart';
import 'package:tutorial/component/rating.dart';
import 'package:tutorial/component/search_recipe.dart';
import 'package:tutorial/component/modify_invoice.dart';
import 'package:tutorial/formatter/category_filter.dart';
import 'package:tutorial/routing/recipe_book_router.dart';
import 'package:tutorial/service/query.dart';
import 'package:tutorial/tooltip/tooltip.dart';*/

class MyAppModule extends Module {
  MyAppModule() {
    bind(InvoiceComponent);
    bind(ModifyInvoiceComponent);
    bind(RouteInitializerFn, toValue: invoiceRouteInitializer);
    bind(NgRoutingUsePushState, toValue: new NgRoutingUsePushState.value(false));
   /* bind(RecipeBookComponent);
    bind(RatingComponent);
    bind(Tooltip);
    bind(CategoryFilter);
    bind(SearchRecipeComponent);
    bind(ViewRecipeComponent);
    bind(QueryService);
    bind(RouteInitializerFn, toValue: recipeBookRouteInitializer);
    bind(NgRoutingUsePushState, toValue: new NgRoutingUsePushState.value(false));*/
  }
}

void main() {
  Logger.root..level = Level.FINEST
             ..onRecord.listen((LogRecord r) { print(r.message); });

  applicationFactory()
      .addModule(new MyAppModule())
      .run();
}
