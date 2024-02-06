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
import '/backend/schema/structs/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().deleteProductCategories();
        FFAppState().productCategories = [];

        FFAppState().deleteServiceCategories();
        FFAppState().serviceCategories = [];

        FFAppState().deleteProductConditions();
        FFAppState().productConditions = [];
      });
      setState(() {
        _model.loopIndex = 0;
        _model.tabIndex = 0;
      });
      _model.allProductCategoriesApiResult =
          await VerifiedAPIsGroup.allProductCategoriesCall.call(
        token: FFAppState().accessToken,
      );
      if ((_model.allProductCategoriesApiResult?.succeeded ?? true)) {
        setState(() {
          FFAppState().productCategories =
              VerifiedAPIsGroup.allProductCategoriesCall
                  .data(
                    (_model.allProductCategoriesApiResult?.jsonBody ?? ''),
                  )!
                  .map((e) => ProductCategoryStruct.maybeFromMap(e))
                  .withoutNulls
                  .toList()
                  .toList()
                  .cast<ProductCategoryStruct>();
        });
      }
      _model.allServiceCategoriesApiResult =
          await VerifiedAPIsGroup.allServiceCategoriesCall.call(
        token: FFAppState().accessToken,
      );
      if ((_model.allServiceCategoriesApiResult?.succeeded ?? true)) {
        setState(() {
          FFAppState().serviceCategories =
              VerifiedAPIsGroup.allServiceCategoriesCall
                  .data(
                    (_model.allServiceCategoriesApiResult?.jsonBody ?? ''),
                  )!
                  .map((e) => ServiceCategoryStruct.maybeFromMap(e))
                  .withoutNulls
                  .toList()
                  .toList()
                  .cast<ServiceCategoryStruct>();
        });
      }
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFFBFBFB),
        drawer: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          child: Drawer(
            elevation: 16.0,
            child: wrapWithModel(
              model: _model.drawerListComponentModel,
              updateCallback: () => setState(() {}),
              child: DrawerListComponentWidget(),
            ),
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 148.0,
              child: Stack(
                children: [
                  Builder(
                    builder: (context) {
                      if (_model.tabIndex == 0) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.asset(
                            'assets/images/main-bg-blue.png',
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 131.0,
                            fit: BoxFit.cover,
                            alignment: Alignment(0.0, 0.0),
                          ),
                        );
                      } else {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.asset(
                            'assets/images/service-main-bg.png',
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 131.0,
                            fit: BoxFit.cover,
                            alignment: Alignment(0.0, 0.0),
                          ),
                        );
                      }
                    },
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                scaffoldKey.currentState!.openDrawer();
                              },
                              child: Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4.0,
                                      color: Color(0x33000000),
                                      offset: Offset(0.0, 2.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  FFIcons.kmenu,
                                  color: Color(0xFF333333),
                                  size: 14.0,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, -0.3),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: Image.asset(
                                      'assets/images/main_logo.png',
                                      width: 79.66,
                                      height: 72.98,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                scaffoldKey.currentState!.openDrawer();
                              },
                              child: Container(
                                width: 36.0,
                                height: 36.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4.0,
                                      color: Color(0x33000000),
                                      offset: Offset(0.0, 2.0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  FFIcons.kbag,
                                  color: Color(0xFF333333),
                                  size: 20.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 8.0,
                              color: Color(0x16000000),
                              offset: Offset(0.0, 2.0),
                            )
                          ],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 23.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.search,
                                color: Color(0xFFC5C4C4),
                                size: 16.0,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 8.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.textController,
                                    focusNode: _model.textFieldFocusNode,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                      hintText: 'Search products',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Avenir',
                                            fontSize: 16.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                            lineHeight: 20.0,
                                          ),
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      focusedErrorBorder: InputBorder.none,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Avenir',
                                          fontSize: 16.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                          lineHeight: 20.0,
                                        ),
                                    validator: _model.textControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              FlutterFlowIconButton(
                                borderRadius: 20.0,
                                borderWidth: 0.0,
                                buttonSize: 40.0,
                                hoverIconColor:
                                    FlutterFlowTheme.of(context).primary,
                                icon: Icon(
                                  Icons.filter_list_sharp,
                                  color: Color(0xFFC5C4C4),
                                  size: 24.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                              Container(
                                width: 25.0,
                                height: 25.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(12.5),
                                    bottomRight: Radius.circular(12.5),
                                    topLeft: Radius.circular(12.5),
                                    topRight: Radius.circular(12.5),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/Voice_Search_Button.png',
                                    width: 300.0,
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 1.0, 0.0, 0.0),
              child: Text(
                'Market Filter',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Avenir',
                      fontSize: 16.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                      lineHeight: 1.25,
                    ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment(0.0, 0),
                      child: FlutterFlowButtonTabBar(
                        useToggleButtonStyle: true,
                        isScrollable: true,
                        labelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleMediumFamily,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleMediumFamily),
                                  lineHeight: 1.5,
                                ),
                        unselectedLabelStyle: TextStyle(),
                        labelColor: FlutterFlowTheme.of(context).primaryText,
                        unselectedLabelColor:
                            FlutterFlowTheme.of(context).primary,
                        backgroundColor: _model.tabIndex == 0
                            ? FlutterFlowTheme.of(context).secondary
                            : Color(0xFFF9A877),
                        unselectedBackgroundColor:
                            FlutterFlowTheme.of(context).primary,
                        borderColor: FlutterFlowTheme.of(context).primary,
                        unselectedBorderColor:
                            FlutterFlowTheme.of(context).primary,
                        borderWidth: 0.0,
                        borderRadius: 24.0,
                        elevation: 0.0,
                        labelPadding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        buttonMargin:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        tabs: [
                          Tab(
                            text: 'Products',
                          ),
                          Tab(
                            text: 'Services',
                          ),
                        ],
                        controller: _model.tabBarController,
                        onTap: (i) async {
                          [
                            () async {
                              setState(() {
                                _model.tabIndex = 0;
                              });
                            },
                            () async {
                              setState(() {
                                _model.tabIndex = 1;
                              });
                            }
                          ][i]();
                        },
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _model.tabBarController,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            decoration: BoxDecoration(),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 2.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          child: Text(
                                            'Popular Items ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  fontSize: 18.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          child: Text(
                                            'View all',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: Color(0x65000000),
                                                  fontSize: 16.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 30.0),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model: _model
                                                .productCardComponentModel1,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: ProductCardComponentWidget(),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .productCardComponentModel2,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: ProductCardComponentWidget(),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .productCardComponentModel3,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: ProductCardComponentWidget(),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .productCardComponentModel4,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: ProductCardComponentWidget(),
                                          ),
                                        ]
                                            .divide(SizedBox(width: 12.0))
                                            .addToStart(SizedBox(width: 16.0))
                                            .addToEnd(SizedBox(width: 16.0)),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 12.0),
                                      child: Text(
                                        'Sponsored Sellers',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              fontSize: 18.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                              lineHeight: 1.5,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 30.0),
                                    child: wrapWithModel(
                                      model: _model.sponseredSellersSliderModel,
                                      updateCallback: () => setState(() {}),
                                      child: ProductSellerSliderWidget(
                                        height: 120,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 2.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 14.0),
                                          child: Text(
                                            'New Sellers',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  fontSize: 18.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          child: Text(
                                            'View all',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: Color(0x65000000),
                                                  fontSize: 16.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 16.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 136.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                1.0,
                                        child: PageView(
                                          controller: _model
                                                  .pageViewController1 ??=
                                              PageController(initialPage: 0),
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            wrapWithModel(
                                              model: _model
                                                  .sellerProviderCardModel1,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SellerProviderCardWidget(
                                                shopName: 'Walmart 1',
                                                shopDesc:
                                                    'Explore the world of Walmart where the shopping never ends and the aisles are always stocked!',
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model
                                                  .sellerProviderCardModel2,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SellerProviderCardWidget(
                                                shopName: 'Walmart 2',
                                                shopDesc:
                                                    'Explore the world of Walmart where the shopping never ends and the aisles are always stocked!',
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model
                                                  .sellerProviderCardModel3,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SellerProviderCardWidget(
                                                shopName: 'Walmart 3',
                                                shopDesc:
                                                    'Explore the world of Walmart where the shopping never ends and the aisles are always stocked!',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.4,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4.0, 0.0, 4.0, 0.0),
                                        child: GridView(
                                          padding: EdgeInsets.fromLTRB(
                                            0,
                                            0.0,
                                            0,
                                            16.0,
                                          ),
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            crossAxisSpacing: 6.0,
                                            mainAxisSpacing: 6.0,
                                            childAspectRatio: 0.6,
                                          ),
                                          scrollDirection: Axis.vertical,
                                          children: [
                                            wrapWithModel(
                                              model: _model
                                                  .simpleProductCardModel1,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SimpleProductCardWidget(),
                                            ),
                                            wrapWithModel(
                                              model: _model
                                                  .simpleProductCardModel2,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SimpleProductCardWidget(),
                                            ),
                                            wrapWithModel(
                                              model: _model
                                                  .simpleProductCardModel3,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SimpleProductCardWidget(),
                                            ),
                                            wrapWithModel(
                                              model: _model
                                                  .simpleProductCardModel4,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SimpleProductCardWidget(),
                                            ),
                                            wrapWithModel(
                                              model: _model
                                                  .simpleProductCardModel5,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SimpleProductCardWidget(),
                                            ),
                                            wrapWithModel(
                                              model: _model
                                                  .simpleProductCardModel6,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SimpleProductCardWidget(),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            decoration: BoxDecoration(),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 2.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          child: Text(
                                            'Popular Services',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  fontSize: 18.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          child: Text(
                                            'View all',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: Color(0x65000000),
                                                  fontSize: 16.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 30.0),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model: _model
                                                .serviceCardComponentModel1,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: ServiceCardComponentWidget(),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .serviceCardComponentModel2,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: ServiceCardComponentWidget(),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .serviceCardComponentModel3,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: ServiceCardComponentWidget(),
                                          ),
                                          wrapWithModel(
                                            model: _model
                                                .serviceCardComponentModel4,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: ServiceCardComponentWidget(),
                                          ),
                                        ]
                                            .divide(SizedBox(width: 12.0))
                                            .addToStart(SizedBox(width: 16.0))
                                            .addToEnd(SizedBox(width: 16.0)),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 12.0),
                                      child: Text(
                                        'Sponsored Services',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              fontSize: 18.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                              lineHeight: 1.5,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 30.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 6.0,
                                            color: Color(0x29000000),
                                            offset: Offset(0.0, 3.0),
                                          )
                                        ],
                                      ),
                                      child: wrapWithModel(
                                        model:
                                            _model.serviceProviderSliderModel,
                                        updateCallback: () => setState(() {}),
                                        child: ServiceProviderSliderWidget(
                                          height: 120,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 2.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 14.0),
                                          child: Text(
                                            'New Service Providers',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  fontSize: 18.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          child: Text(
                                            'View all',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: Color(0x65000000),
                                                  fontSize: 16.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 16.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 136.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                1.0,
                                        child: PageView(
                                          controller: _model
                                                  .pageViewController2 ??=
                                              PageController(initialPage: 0),
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            wrapWithModel(
                                              model: _model
                                                  .sellerProviderCardModel4,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SellerProviderCardWidget(
                                                shopName:
                                                    'Satellite Auto Glass 1',
                                                shopDesc:
                                                    'If you have a broken windshield you need a repair or replacement. Trust America’s auto glass experts at Safelite®. Book an appointment with our technicians.',
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model
                                                  .sellerProviderCardModel5,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SellerProviderCardWidget(
                                                shopName:
                                                    'Satellite Auto Glass 2',
                                                shopDesc:
                                                    'If you have a broken windshield you need a repair or replacement. Trust America’s auto glass experts at Safelite®. Book an appointment with our technicians.',
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model
                                                  .sellerProviderCardModel6,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SellerProviderCardWidget(
                                                shopName:
                                                    'Satellite Auto Glass 3',
                                                shopDesc:
                                                    'If you have a broken windshield you need a repair or replacement. Trust America’s auto glass experts at Safelite®. Book an appointment with our technicians.',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.4,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4.0, 0.0, 4.0, 0.0),
                                        child: GridView(
                                          padding: EdgeInsets.fromLTRB(
                                            0,
                                            0.0,
                                            0,
                                            16.0,
                                          ),
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            crossAxisSpacing: 6.0,
                                            mainAxisSpacing: 6.0,
                                            childAspectRatio: 0.6,
                                          ),
                                          scrollDirection: Axis.vertical,
                                          children: [
                                            wrapWithModel(
                                              model: _model
                                                  .simpleServiceCardModel1,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SimpleServiceCardWidget(),
                                            ),
                                            wrapWithModel(
                                              model: _model
                                                  .simpleServiceCardModel2,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SimpleServiceCardWidget(),
                                            ),
                                            wrapWithModel(
                                              model: _model
                                                  .simpleServiceCardModel3,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SimpleServiceCardWidget(),
                                            ),
                                            wrapWithModel(
                                              model: _model
                                                  .simpleServiceCardModel4,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SimpleServiceCardWidget(),
                                            ),
                                            wrapWithModel(
                                              model: _model
                                                  .simpleServiceCardModel5,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SimpleServiceCardWidget(),
                                            ),
                                            wrapWithModel(
                                              model: _model
                                                  .simpleServiceCardModel6,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SimpleServiceCardWidget(),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
