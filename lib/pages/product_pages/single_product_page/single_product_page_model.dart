import '/auth/firebase_auth/auth_util.dart';
import '/backend/schema/enums/enums.dart';
import '/components/product_review_card/product_review_card_widget.dart';
import '/components/related_product_card/related_product_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'single_product_page_widget.dart' show SingleProductPageWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class SingleProductPageModel extends FlutterFlowModel<SingleProductPageWidget> {
  ///  Local state fields for this page.

  bool storeAdded = false;

  int selectedColor = 0;

  int selectedSize = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 0;

  // Model for RelatedProductCard component.
  late RelatedProductCardModel relatedProductCardModel1;
  // Model for RelatedProductCard component.
  late RelatedProductCardModel relatedProductCardModel2;
  // Model for RelatedProductCard component.
  late RelatedProductCardModel relatedProductCardModel3;
  // Model for RelatedProductCard component.
  late RelatedProductCardModel relatedProductCardModel4;
  // Model for ProductReviewCard component.
  late ProductReviewCardModel productReviewCardModel1;
  // Model for ProductReviewCard component.
  late ProductReviewCardModel productReviewCardModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    relatedProductCardModel1 =
        createModel(context, () => RelatedProductCardModel());
    relatedProductCardModel2 =
        createModel(context, () => RelatedProductCardModel());
    relatedProductCardModel3 =
        createModel(context, () => RelatedProductCardModel());
    relatedProductCardModel4 =
        createModel(context, () => RelatedProductCardModel());
    productReviewCardModel1 =
        createModel(context, () => ProductReviewCardModel());
    productReviewCardModel2 =
        createModel(context, () => ProductReviewCardModel());
  }

  void dispose() {
    relatedProductCardModel1.dispose();
    relatedProductCardModel2.dispose();
    relatedProductCardModel3.dispose();
    relatedProductCardModel4.dispose();
    productReviewCardModel1.dispose();
    productReviewCardModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
