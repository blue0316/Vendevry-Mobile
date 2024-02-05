import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/drawer_list_component/drawer_list_component_widget.dart';
import '/components/product_card_component/product_card_component_widget.dart';
import '/components/product_seller_slider/product_seller_slider_widget.dart';
import '/components/seller_provider_card/seller_provider_card_widget.dart';
import '/components/service_card_component/service_card_component_widget.dart';
import '/components/service_provider_slider/service_provider_slider_widget.dart';
import '/components/simple_product_card/simple_product_card_widget.dart';
import '/components/simple_service_card/simple_service_card_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  int tabIndex = 0;

  int loopIndex = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (AllProductCategories)] action in HomePage widget.
  ApiCallResponse? allProductCategoriesApiResult;
  // Stores action output result for [Backend Call - API (AllServiceCategories)] action in HomePage widget.
  ApiCallResponse? allServiceCategoriesApiResult;
  // Stores action output result for [Backend Call - API (AllProductConditions)] action in HomePage widget.
  ApiCallResponse? allProductConditionsApiResult;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for ProductCardComponent component.
  late ProductCardComponentModel productCardComponentModel1;
  // Model for ProductCardComponent component.
  late ProductCardComponentModel productCardComponentModel2;
  // Model for ProductCardComponent component.
  late ProductCardComponentModel productCardComponentModel3;
  // Model for ProductCardComponent component.
  late ProductCardComponentModel productCardComponentModel4;
  // Model for SponseredSellersSlider.
  late ProductSellerSliderModel sponseredSellersSliderModel;
  // State field(s) for PageView widget.
  PageController? pageViewController1;

  int get pageViewCurrentIndex1 => pageViewController1 != null &&
          pageViewController1!.hasClients &&
          pageViewController1!.page != null
      ? pageViewController1!.page!.round()
      : 0;
  // Model for SellerProviderCard component.
  late SellerProviderCardModel sellerProviderCardModel1;
  // Model for SellerProviderCard component.
  late SellerProviderCardModel sellerProviderCardModel2;
  // Model for SellerProviderCard component.
  late SellerProviderCardModel sellerProviderCardModel3;
  // Model for SimpleProductCard component.
  late SimpleProductCardModel simpleProductCardModel1;
  // Model for SimpleProductCard component.
  late SimpleProductCardModel simpleProductCardModel2;
  // Model for SimpleProductCard component.
  late SimpleProductCardModel simpleProductCardModel3;
  // Model for SimpleProductCard component.
  late SimpleProductCardModel simpleProductCardModel4;
  // Model for SimpleProductCard component.
  late SimpleProductCardModel simpleProductCardModel5;
  // Model for SimpleProductCard component.
  late SimpleProductCardModel simpleProductCardModel6;
  // Model for ServiceCardComponent component.
  late ServiceCardComponentModel serviceCardComponentModel1;
  // Model for ServiceCardComponent component.
  late ServiceCardComponentModel serviceCardComponentModel2;
  // Model for ServiceCardComponent component.
  late ServiceCardComponentModel serviceCardComponentModel3;
  // Model for ServiceCardComponent component.
  late ServiceCardComponentModel serviceCardComponentModel4;
  // Model for ServiceProviderSlider component.
  late ServiceProviderSliderModel serviceProviderSliderModel;
  // State field(s) for PageView widget.
  PageController? pageViewController2;

  int get pageViewCurrentIndex2 => pageViewController2 != null &&
          pageViewController2!.hasClients &&
          pageViewController2!.page != null
      ? pageViewController2!.page!.round()
      : 0;
  // Model for SellerProviderCard component.
  late SellerProviderCardModel sellerProviderCardModel4;
  // Model for SellerProviderCard component.
  late SellerProviderCardModel sellerProviderCardModel5;
  // Model for SellerProviderCard component.
  late SellerProviderCardModel sellerProviderCardModel6;
  // Model for SimpleServiceCard component.
  late SimpleServiceCardModel simpleServiceCardModel1;
  // Model for SimpleServiceCard component.
  late SimpleServiceCardModel simpleServiceCardModel2;
  // Model for SimpleServiceCard component.
  late SimpleServiceCardModel simpleServiceCardModel3;
  // Model for SimpleServiceCard component.
  late SimpleServiceCardModel simpleServiceCardModel4;
  // Model for SimpleServiceCard component.
  late SimpleServiceCardModel simpleServiceCardModel5;
  // Model for SimpleServiceCard component.
  late SimpleServiceCardModel simpleServiceCardModel6;
  // Model for DrawerListComponent component.
  late DrawerListComponentModel drawerListComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    productCardComponentModel1 =
        createModel(context, () => ProductCardComponentModel());
    productCardComponentModel2 =
        createModel(context, () => ProductCardComponentModel());
    productCardComponentModel3 =
        createModel(context, () => ProductCardComponentModel());
    productCardComponentModel4 =
        createModel(context, () => ProductCardComponentModel());
    sponseredSellersSliderModel =
        createModel(context, () => ProductSellerSliderModel());
    sellerProviderCardModel1 =
        createModel(context, () => SellerProviderCardModel());
    sellerProviderCardModel2 =
        createModel(context, () => SellerProviderCardModel());
    sellerProviderCardModel3 =
        createModel(context, () => SellerProviderCardModel());
    simpleProductCardModel1 =
        createModel(context, () => SimpleProductCardModel());
    simpleProductCardModel2 =
        createModel(context, () => SimpleProductCardModel());
    simpleProductCardModel3 =
        createModel(context, () => SimpleProductCardModel());
    simpleProductCardModel4 =
        createModel(context, () => SimpleProductCardModel());
    simpleProductCardModel5 =
        createModel(context, () => SimpleProductCardModel());
    simpleProductCardModel6 =
        createModel(context, () => SimpleProductCardModel());
    serviceCardComponentModel1 =
        createModel(context, () => ServiceCardComponentModel());
    serviceCardComponentModel2 =
        createModel(context, () => ServiceCardComponentModel());
    serviceCardComponentModel3 =
        createModel(context, () => ServiceCardComponentModel());
    serviceCardComponentModel4 =
        createModel(context, () => ServiceCardComponentModel());
    serviceProviderSliderModel =
        createModel(context, () => ServiceProviderSliderModel());
    sellerProviderCardModel4 =
        createModel(context, () => SellerProviderCardModel());
    sellerProviderCardModel5 =
        createModel(context, () => SellerProviderCardModel());
    sellerProviderCardModel6 =
        createModel(context, () => SellerProviderCardModel());
    simpleServiceCardModel1 =
        createModel(context, () => SimpleServiceCardModel());
    simpleServiceCardModel2 =
        createModel(context, () => SimpleServiceCardModel());
    simpleServiceCardModel3 =
        createModel(context, () => SimpleServiceCardModel());
    simpleServiceCardModel4 =
        createModel(context, () => SimpleServiceCardModel());
    simpleServiceCardModel5 =
        createModel(context, () => SimpleServiceCardModel());
    simpleServiceCardModel6 =
        createModel(context, () => SimpleServiceCardModel());
    drawerListComponentModel =
        createModel(context, () => DrawerListComponentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    tabBarController?.dispose();
    productCardComponentModel1.dispose();
    productCardComponentModel2.dispose();
    productCardComponentModel3.dispose();
    productCardComponentModel4.dispose();
    sponseredSellersSliderModel.dispose();
    sellerProviderCardModel1.dispose();
    sellerProviderCardModel2.dispose();
    sellerProviderCardModel3.dispose();
    simpleProductCardModel1.dispose();
    simpleProductCardModel2.dispose();
    simpleProductCardModel3.dispose();
    simpleProductCardModel4.dispose();
    simpleProductCardModel5.dispose();
    simpleProductCardModel6.dispose();
    serviceCardComponentModel1.dispose();
    serviceCardComponentModel2.dispose();
    serviceCardComponentModel3.dispose();
    serviceCardComponentModel4.dispose();
    serviceProviderSliderModel.dispose();
    sellerProviderCardModel4.dispose();
    sellerProviderCardModel5.dispose();
    sellerProviderCardModel6.dispose();
    simpleServiceCardModel1.dispose();
    simpleServiceCardModel2.dispose();
    simpleServiceCardModel3.dispose();
    simpleServiceCardModel4.dispose();
    simpleServiceCardModel5.dispose();
    simpleServiceCardModel6.dispose();
    drawerListComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
