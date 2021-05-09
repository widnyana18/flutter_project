// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i3;

import '../screen/screens.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.SplashPage());
    },
    NavHandlingRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.NavHandlingPage());
    },
    OwnerDashboardRoute.name: (entry) {
      var route = entry.routeData.as<OwnerDashboardRoute>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i2.OwnerDashboardPage(ownerName: route.ownerName));
    },
    CartRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    AuthenticateUserRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.AuthAccountPage());
    },
    CreateNewUserRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.AuthAccountPage());
    },
    ProductDetailsRoute.name: (entry) {
      var route = entry.routeData.as<ProductDetailsRoute>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i2.ProductDetailsPage(prodName: route.prodName));
    },
    CollectionDetailsRoute.name: (entry) {
      var route = entry.routeData.as<CollectionDetailsRoute>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i2.CollectionDetailsPage(collName: route.collName));
    },
    EventDetailsRoute.name: (entry) {
      var route = entry.routeData.as<EventDetailsRoute>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i2.EventDetailsPage(eventName: route.eventName));
    },
    IdeaDetailsRoute.name: (entry) {
      var route = entry.routeData.as<IdeaDetailsRoute>();
      return _i1.MaterialPageX(
          entry: entry, child: _i2.IdeaDetailsPage(ideaName: route.ideaName));
    },
    NotFoundRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.NotFoundPage());
    },
    HomeRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.HomePage());
    },
    BrowseRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    RequestOrderRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    EventCatalogRoute.name: (entry) {
      var route = entry.routeData.as<EventCatalogRoute>();
      return _i1.MaterialPageX(
          entry: entry, child: _i2.EventCatalogPage(search: route.search));
    },
    PersonalDashboardRoute.name: (entry) {
      var route = entry.routeData.as<PersonalDashboardRoute>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i2.PersonalDashboardPage(userName: route.userName));
    },
    CatalogGridRoute.name: (entry) {
      var route = entry.routeData.as<CatalogGridRoute>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i2.CatalogGridPage(browseResult: route.browseResult));
    },
    CatalogFilterRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.CatalogFilterPage());
    },
    ProductRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.ProductPage());
    },
    IndustryRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.IndustryPage());
    },
    ProductFilterRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.ProductFilterPage());
    },
    IndustryFilterRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.IndustryFilterPage());
    },
    IdeaGridRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.IdeaGridPage());
    },
    AddRequestRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.AddRequestPage());
    },
    EditRequestRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.EditRequestPage());
    },
    ActivityRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.ActivityPage());
    },
    NotifRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    MessageRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i1.EmptyRouterPage());
    },
    SettingsRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.SettingsPage());
    },
    VoucherRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.VoucherPage());
    },
    SubsRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.SubsPage());
    },
    BookmarkRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.BookmarkPage());
    },
    DeliveryStatusRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.DeliveryStatusPage());
    },
    PurchasedRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.PurchasedPage());
    },
    NotifAppRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.NotifAppPage());
    },
    NotifDetailsRoute.name: (entry) {
      var route = entry.routeData.as<NotifDetailsRoute>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i2.NotifDetailsPage(notifName: route.notifName));
    },
    DirectMessageRoute.name: (entry) {
      var route = entry.routeData.as<DirectMessageRoute>();
      return _i1.MaterialPageX(
          entry: entry, child: _i2.DirectMessagePage(user: route.user));
    },
    ContactPersonRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.ContactPersonPage());
    },
    ChatRoomRoute.name: (entry) {
      var route = entry.routeData.as<ChatRoomRoute>();
      return _i1.MaterialPageX(
          entry: entry, child: _i2.ChatRoomPage(user: route.user));
    },
    SettingsMenuRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.SettingsMenuPage());
    },
    ReAuthAccountRoute.name: (entry) {
      var route = entry.routeData.as<ReAuthAccountRoute>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i2.ReAuthAccountPage(
              popUpPage: route.popUpPage,
              redirectPage: route.redirectPage,
              routeName: route.routeName));
    },
    ChangeEmailRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.ChangeEmailPage());
    },
    ResetPswFromSettings.name: (entry) {
      var route = entry.routeData.as<ResetPswFromSettings>();
      return _i1.MaterialPageX(
          entry: entry, child: _i2.ResetPasswordPage(uid: route.uid));
    },
    UpdatePhoneNumberRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.VerifyAccountPage());
    },
    VerifyNewPhoneNumber.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.SendSmsCodePage());
    },
    CreditCardRoute.name: (entry) {
      var route = entry.routeData.as<CreditCardRoute>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i2.CreditCardPage(creditEvent: route.creditEvent));
    },
    ProductGridRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.ProductGridPage());
    },
    CollectionGridRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.CollectionGridPage());
    },
    VoucherGridRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.VoucherGridPage());
    },
    OrderCartRoute.name: (entry) {
      var route = entry.routeData.as<OrderCartRoute>();
      return _i1.MaterialPageX(
          entry: entry, child: _i2.OrderCartPage(cartId: route.cartId));
    },
    PaymentRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.PaymentPage());
    },
    LoginRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.LoginPage());
    },
    SendEmailRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.SendEmailPage());
    },
    ResetPswFromLogin.name: (entry) {
      var route = entry.routeData.as<ResetPswFromLogin>();
      return _i1.MaterialPageX(
          entry: entry, child: _i2.ResetPasswordPage(uid: route.uid));
    },
    RegisterRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.RegisterPage());
    },
    VerifyAccountRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.VerifyAccountPage());
    },
    SendSmsCodeRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.SendSmsCodePage());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig<SplashRoute>(SplashRoute.name,
            path: '/', routeBuilder: (match) => SplashRoute.fromMatch(match)),
        _i1.RouteConfig<NavHandlingRoute>(NavHandlingRoute.name,
            path: '/nav',
            usesTabsRouter: true,
            routeBuilder: (match) => NavHandlingRoute.fromMatch(match),
            children: [
              _i1.RouteConfig<HomeRoute>(HomeRoute.name,
                  path: 'home',
                  routeBuilder: (match) => HomeRoute.fromMatch(match)),
              _i1.RouteConfig<BrowseRoute>(BrowseRoute.name,
                  path: 'browse',
                  routeBuilder: (match) => BrowseRoute.fromMatch(match),
                  children: [
                    _i1.RouteConfig<CatalogGridRoute>(CatalogGridRoute.name,
                        path: ':browseResult',
                        usesTabsRouter: true,
                        routeBuilder: (match) =>
                            CatalogGridRoute.fromMatch(match),
                        children: [
                          _i1.RouteConfig<ProductRoute>(ProductRoute.name,
                              path: '#catalog',
                              routeBuilder: (match) =>
                                  ProductRoute.fromMatch(match)),
                          _i1.RouteConfig<IndustryRoute>(IndustryRoute.name,
                              path: '#industry',
                              routeBuilder: (match) =>
                                  IndustryRoute.fromMatch(match))
                        ]),
                    _i1.RouteConfig<CatalogFilterRoute>(CatalogFilterRoute.name,
                        path: 'filter',
                        usesTabsRouter: true,
                        routeBuilder: (match) =>
                            CatalogFilterRoute.fromMatch(match),
                        children: [
                          _i1.RouteConfig<ProductFilterRoute>(
                              ProductFilterRoute.name,
                              path: '#product',
                              routeBuilder: (match) =>
                                  ProductFilterRoute.fromMatch(match)),
                          _i1.RouteConfig<IndustryFilterRoute>(
                              IndustryFilterRoute.name,
                              path: '#industry',
                              routeBuilder: (match) =>
                                  IndustryFilterRoute.fromMatch(match))
                        ])
                  ]),
              _i1.RouteConfig<RequestOrderRoute>(RequestOrderRoute.name,
                  path: 'request',
                  routeBuilder: (match) => RequestOrderRoute.fromMatch(match),
                  children: [
                    _i1.RouteConfig<IdeaGridRoute>(IdeaGridRoute.name,
                        path: '',
                        routeBuilder: (match) =>
                            IdeaGridRoute.fromMatch(match)),
                    _i1.RouteConfig<AddRequestRoute>(AddRequestRoute.name,
                        path: 'create',
                        routeBuilder: (match) =>
                            AddRequestRoute.fromMatch(match)),
                    _i1.RouteConfig<EditRequestRoute>(EditRequestRoute.name,
                        path: 'edit',
                        routeBuilder: (match) =>
                            EditRequestRoute.fromMatch(match))
                  ]),
              _i1.RouteConfig<EventCatalogRoute>(EventCatalogRoute.name,
                  path: 'event/:search',
                  routeBuilder: (match) => EventCatalogRoute.fromMatch(match)),
              _i1.RouteConfig<PersonalDashboardRoute>(
                  PersonalDashboardRoute.name,
                  path: ':userName',
                  usesTabsRouter: true,
                  routeBuilder: (match) =>
                      PersonalDashboardRoute.fromMatch(match),
                  children: [
                    _i1.RouteConfig<ActivityRoute>(ActivityRoute.name,
                        path: 'activity',
                        usesTabsRouter: true,
                        routeBuilder: (match) => ActivityRoute.fromMatch(match),
                        children: [
                          _i1.RouteConfig<SubsRoute>(SubsRoute.name,
                              path: 'subs',
                              routeBuilder: (match) =>
                                  SubsRoute.fromMatch(match)),
                          _i1.RouteConfig<BookmarkRoute>(BookmarkRoute.name,
                              path: 'bookmark',
                              routeBuilder: (match) =>
                                  BookmarkRoute.fromMatch(match)),
                          _i1.RouteConfig<DeliveryStatusRoute>(
                              DeliveryStatusRoute.name,
                              path: 'delivery_status',
                              routeBuilder: (match) =>
                                  DeliveryStatusRoute.fromMatch(match)),
                          _i1.RouteConfig<PurchasedRoute>(PurchasedRoute.name,
                              path: 'purchased',
                              routeBuilder: (match) =>
                                  PurchasedRoute.fromMatch(match))
                        ]),
                    _i1.RouteConfig<NotifRoute>(NotifRoute.name,
                        path: 'notif',
                        routeBuilder: (match) => NotifRoute.fromMatch(match),
                        children: [
                          _i1.RouteConfig<NotifAppRoute>(NotifAppRoute.name,
                              path: '',
                              routeBuilder: (match) =>
                                  NotifAppRoute.fromMatch(match)),
                          _i1.RouteConfig<NotifDetailsRoute>(
                              NotifDetailsRoute.name,
                              path: ':notifName',
                              routeBuilder: (match) =>
                                  NotifDetailsRoute.fromMatch(match))
                        ]),
                    _i1.RouteConfig<MessageRoute>(MessageRoute.name,
                        path: 'dm',
                        routeBuilder: (match) => MessageRoute.fromMatch(match),
                        children: [
                          _i1.RouteConfig<DirectMessageRoute>(
                              DirectMessageRoute.name,
                              path: ':user',
                              routeBuilder: (match) =>
                                  DirectMessageRoute.fromMatch(match)),
                          _i1.RouteConfig<ContactPersonRoute>(
                              ContactPersonRoute.name,
                              path: 'contact',
                              routeBuilder: (match) =>
                                  ContactPersonRoute.fromMatch(match)),
                          _i1.RouteConfig<ChatRoomRoute>(ChatRoomRoute.name,
                              path: 'room/:user',
                              routeBuilder: (match) =>
                                  ChatRoomRoute.fromMatch(match))
                        ]),
                    _i1.RouteConfig<SettingsRoute>(SettingsRoute.name,
                        path: 'settings',
                        routeBuilder: (match) => SettingsRoute.fromMatch(match),
                        children: [
                          _i1.RouteConfig<SettingsMenuRoute>(
                              SettingsMenuRoute.name,
                              path: '',
                              routeBuilder: (match) =>
                                  SettingsMenuRoute.fromMatch(match)),
                          _i1.RouteConfig<ReAuthAccountRoute>(
                              ReAuthAccountRoute.name,
                              path: 'reauthenticate',
                              routeBuilder: (match) =>
                                  ReAuthAccountRoute.fromMatch(match)),
                          _i1.RouteConfig<ChangeEmailRoute>(
                              ChangeEmailRoute.name,
                              path: 'change_account',
                              routeBuilder: (match) =>
                                  ChangeEmailRoute.fromMatch(match)),
                          _i1.RouteConfig<ResetPswFromSettings>(
                              ResetPswFromSettings.name,
                              path: 'update_password',
                              routeBuilder: (match) =>
                                  ResetPswFromSettings.fromMatch(match)),
                          _i1.RouteConfig<UpdatePhoneNumberRoute>(
                              UpdatePhoneNumberRoute.name,
                              path: 'update_phone_number',
                              routeBuilder: (match) =>
                                  UpdatePhoneNumberRoute.fromMatch(match)),
                          _i1.RouteConfig<VerifyNewPhoneNumber>(
                              VerifyNewPhoneNumber.name,
                              path: 'verify_new_phone',
                              routeBuilder: (match) =>
                                  VerifyNewPhoneNumber.fromMatch(match)),
                          _i1.RouteConfig<CreditCardRoute>(CreditCardRoute.name,
                              path: ':creditEvent',
                              routeBuilder: (match) =>
                                  CreditCardRoute.fromMatch(match))
                        ]),
                    _i1.RouteConfig<VoucherRoute>(VoucherRoute.name,
                        path: 'voucher',
                        routeBuilder: (match) => VoucherRoute.fromMatch(match))
                  ])
            ]),
        _i1.RouteConfig<OwnerDashboardRoute>(OwnerDashboardRoute.name,
            path: '/:ownerName',
            usesTabsRouter: true,
            routeBuilder: (match) => OwnerDashboardRoute.fromMatch(match),
            children: [
              _i1.RouteConfig<ProductGridRoute>(ProductGridRoute.name,
                  path: 'product',
                  routeBuilder: (match) => ProductGridRoute.fromMatch(match)),
              _i1.RouteConfig<CollectionGridRoute>(CollectionGridRoute.name,
                  path: 'collection',
                  routeBuilder: (match) =>
                      CollectionGridRoute.fromMatch(match)),
              _i1.RouteConfig<VoucherGridRoute>(VoucherGridRoute.name,
                  path: 'my_voucher',
                  routeBuilder: (match) => VoucherGridRoute.fromMatch(match))
            ]),
        _i1.RouteConfig<CartRoute>(CartRoute.name,
            path: '/cart',
            routeBuilder: (match) => CartRoute.fromMatch(match),
            children: [
              _i1.RouteConfig<OrderCartRoute>(OrderCartRoute.name,
                  path: ':cartId',
                  routeBuilder: (match) => OrderCartRoute.fromMatch(match)),
              _i1.RouteConfig<PaymentRoute>(PaymentRoute.name,
                  path: 'payment',
                  routeBuilder: (match) => PaymentRoute.fromMatch(match))
            ]),
        _i1.RouteConfig<AuthenticateUserRoute>(AuthenticateUserRoute.name,
            path: '/login',
            routeBuilder: (match) => AuthenticateUserRoute.fromMatch(match),
            children: [
              _i1.RouteConfig<LoginRoute>(LoginRoute.name,
                  path: '',
                  routeBuilder: (match) => LoginRoute.fromMatch(match)),
              _i1.RouteConfig<SendEmailRoute>(SendEmailRoute.name,
                  path: 'forget_password',
                  routeBuilder: (match) => SendEmailRoute.fromMatch(match)),
              _i1.RouteConfig<ResetPswFromLogin>(ResetPswFromLogin.name,
                  path: 'reset_password/:uid',
                  routeBuilder: (match) => ResetPswFromLogin.fromMatch(match))
            ]),
        _i1.RouteConfig<CreateNewUserRoute>(CreateNewUserRoute.name,
            path: '/signup',
            routeBuilder: (match) => CreateNewUserRoute.fromMatch(match),
            children: [
              _i1.RouteConfig<RegisterRoute>(RegisterRoute.name,
                  path: 'new_account',
                  routeBuilder: (match) => RegisterRoute.fromMatch(match)),
              _i1.RouteConfig<VerifyAccountRoute>(VerifyAccountRoute.name,
                  path: 'regist_phone',
                  routeBuilder: (match) => VerifyAccountRoute.fromMatch(match)),
              _i1.RouteConfig<SendSmsCodeRoute>(SendSmsCodeRoute.name,
                  path: 'verify_phone',
                  routeBuilder: (match) => SendSmsCodeRoute.fromMatch(match))
            ]),
        _i1.RouteConfig<ProductDetailsRoute>(ProductDetailsRoute.name,
            path: '/product/:prodName/details',
            routeBuilder: (match) => ProductDetailsRoute.fromMatch(match)),
        _i1.RouteConfig<CollectionDetailsRoute>(CollectionDetailsRoute.name,
            path: '/collection/:collName/details',
            routeBuilder: (match) => CollectionDetailsRoute.fromMatch(match)),
        _i1.RouteConfig<EventDetailsRoute>(EventDetailsRoute.name,
            path: '/event/:eventName/details',
            routeBuilder: (match) => EventDetailsRoute.fromMatch(match)),
        _i1.RouteConfig<IdeaDetailsRoute>(IdeaDetailsRoute.name,
            path: '/idea/:ideaName/details',
            routeBuilder: (match) => IdeaDetailsRoute.fromMatch(match)),
        _i1.RouteConfig<NotFoundRoute>(NotFoundRoute.name,
            path: '*', routeBuilder: (match) => NotFoundRoute.fromMatch(match))
      ];
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/');

  SplashRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'SplashRoute';
}

class NavHandlingRoute extends _i1.PageRouteInfo {
  const NavHandlingRoute({List<_i1.PageRouteInfo> children})
      : super(name, path: '/nav', initialChildren: children);

  NavHandlingRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'NavHandlingRoute';
}

class OwnerDashboardRoute extends _i1.PageRouteInfo {
  OwnerDashboardRoute({this.ownerName, List<_i1.PageRouteInfo> children})
      : super(name,
            path: '/:ownerName',
            params: {'ownerName': ownerName},
            initialChildren: children);

  OwnerDashboardRoute.fromMatch(_i1.RouteMatch match)
      : ownerName = match.pathParams.getString('ownerName'),
        super.fromMatch(match);

  final String ownerName;

  static const String name = 'OwnerDashboardRoute';
}

class CartRoute extends _i1.PageRouteInfo {
  const CartRoute({List<_i1.PageRouteInfo> children})
      : super(name, path: '/cart', initialChildren: children);

  CartRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'CartRoute';
}

class AuthenticateUserRoute extends _i1.PageRouteInfo {
  const AuthenticateUserRoute({List<_i1.PageRouteInfo> children})
      : super(name, path: '/login', initialChildren: children);

  AuthenticateUserRoute.fromMatch(_i1.RouteMatch match)
      : super.fromMatch(match);

  static const String name = 'AuthenticateUserRoute';
}

class CreateNewUserRoute extends _i1.PageRouteInfo {
  const CreateNewUserRoute({List<_i1.PageRouteInfo> children})
      : super(name, path: '/signup', initialChildren: children);

  CreateNewUserRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'CreateNewUserRoute';
}

class ProductDetailsRoute extends _i1.PageRouteInfo {
  ProductDetailsRoute({this.prodName})
      : super(name,
            path: '/product/:prodName/details', params: {'prodName': prodName});

  ProductDetailsRoute.fromMatch(_i1.RouteMatch match)
      : prodName = match.pathParams.getString('prodName'),
        super.fromMatch(match);

  final String prodName;

  static const String name = 'ProductDetailsRoute';
}

class CollectionDetailsRoute extends _i1.PageRouteInfo {
  CollectionDetailsRoute({this.collName})
      : super(name,
            path: '/collection/:collName/details',
            params: {'collName': collName});

  CollectionDetailsRoute.fromMatch(_i1.RouteMatch match)
      : collName = match.pathParams.getString('collName'),
        super.fromMatch(match);

  final String collName;

  static const String name = 'CollectionDetailsRoute';
}

class EventDetailsRoute extends _i1.PageRouteInfo {
  EventDetailsRoute({this.eventName})
      : super(name,
            path: '/event/:eventName/details',
            params: {'eventName': eventName});

  EventDetailsRoute.fromMatch(_i1.RouteMatch match)
      : eventName = match.pathParams.getString('eventName'),
        super.fromMatch(match);

  final String eventName;

  static const String name = 'EventDetailsRoute';
}

class IdeaDetailsRoute extends _i1.PageRouteInfo {
  IdeaDetailsRoute({this.ideaName})
      : super(name,
            path: '/idea/:ideaName/details', params: {'ideaName': ideaName});

  IdeaDetailsRoute.fromMatch(_i1.RouteMatch match)
      : ideaName = match.pathParams.getString('ideaName'),
        super.fromMatch(match);

  final String ideaName;

  static const String name = 'IdeaDetailsRoute';
}

class NotFoundRoute extends _i1.PageRouteInfo {
  const NotFoundRoute() : super(name, path: '*');

  NotFoundRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'NotFoundRoute';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: 'home');

  HomeRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'HomeRoute';
}

class BrowseRoute extends _i1.PageRouteInfo {
  const BrowseRoute({List<_i1.PageRouteInfo> children})
      : super(name, path: 'browse', initialChildren: children);

  BrowseRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'BrowseRoute';
}

class RequestOrderRoute extends _i1.PageRouteInfo {
  const RequestOrderRoute({List<_i1.PageRouteInfo> children})
      : super(name, path: 'request', initialChildren: children);

  RequestOrderRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'RequestOrderRoute';
}

class EventCatalogRoute extends _i1.PageRouteInfo {
  EventCatalogRoute({this.search})
      : super(name, path: 'event/:search', params: {'search': search});

  EventCatalogRoute.fromMatch(_i1.RouteMatch match)
      : search = match.pathParams.getString('search'),
        super.fromMatch(match);

  final String search;

  static const String name = 'EventCatalogRoute';
}

class PersonalDashboardRoute extends _i1.PageRouteInfo {
  PersonalDashboardRoute({this.userName, List<_i1.PageRouteInfo> children})
      : super(name,
            path: ':userName',
            params: {'userName': userName},
            initialChildren: children);

  PersonalDashboardRoute.fromMatch(_i1.RouteMatch match)
      : userName = match.pathParams.getString('userName'),
        super.fromMatch(match);

  final String userName;

  static const String name = 'PersonalDashboardRoute';
}

class CatalogGridRoute extends _i1.PageRouteInfo {
  CatalogGridRoute({this.browseResult, List<_i1.PageRouteInfo> children})
      : super(name,
            path: ':browseResult',
            params: {'browseResult': browseResult},
            initialChildren: children);

  CatalogGridRoute.fromMatch(_i1.RouteMatch match)
      : browseResult = match.pathParams.getString('browseResult'),
        super.fromMatch(match);

  final String browseResult;

  static const String name = 'CatalogGridRoute';
}

class CatalogFilterRoute extends _i1.PageRouteInfo {
  const CatalogFilterRoute({List<_i1.PageRouteInfo> children})
      : super(name, path: 'filter', initialChildren: children);

  CatalogFilterRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'CatalogFilterRoute';
}

class ProductRoute extends _i1.PageRouteInfo {
  const ProductRoute() : super(name, path: '#catalog');

  ProductRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'ProductRoute';
}

class IndustryRoute extends _i1.PageRouteInfo {
  const IndustryRoute() : super(name, path: '#industry');

  IndustryRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'IndustryRoute';
}

class ProductFilterRoute extends _i1.PageRouteInfo {
  const ProductFilterRoute() : super(name, path: '#product');

  ProductFilterRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'ProductFilterRoute';
}

class IndustryFilterRoute extends _i1.PageRouteInfo {
  const IndustryFilterRoute() : super(name, path: '#industry');

  IndustryFilterRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'IndustryFilterRoute';
}

class IdeaGridRoute extends _i1.PageRouteInfo {
  const IdeaGridRoute() : super(name, path: '');

  IdeaGridRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'IdeaGridRoute';
}

class AddRequestRoute extends _i1.PageRouteInfo {
  const AddRequestRoute() : super(name, path: 'create');

  AddRequestRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'AddRequestRoute';
}

class EditRequestRoute extends _i1.PageRouteInfo {
  const EditRequestRoute() : super(name, path: 'edit');

  EditRequestRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'EditRequestRoute';
}

class ActivityRoute extends _i1.PageRouteInfo {
  const ActivityRoute({List<_i1.PageRouteInfo> children})
      : super(name, path: 'activity', initialChildren: children);

  ActivityRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'ActivityRoute';
}

class NotifRoute extends _i1.PageRouteInfo {
  const NotifRoute({List<_i1.PageRouteInfo> children})
      : super(name, path: 'notif', initialChildren: children);

  NotifRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'NotifRoute';
}

class MessageRoute extends _i1.PageRouteInfo {
  const MessageRoute({List<_i1.PageRouteInfo> children})
      : super(name, path: 'dm', initialChildren: children);

  MessageRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'MessageRoute';
}

class SettingsRoute extends _i1.PageRouteInfo {
  const SettingsRoute({List<_i1.PageRouteInfo> children})
      : super(name, path: 'settings', initialChildren: children);

  SettingsRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'SettingsRoute';
}

class VoucherRoute extends _i1.PageRouteInfo {
  const VoucherRoute() : super(name, path: 'voucher');

  VoucherRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'VoucherRoute';
}

class SubsRoute extends _i1.PageRouteInfo {
  const SubsRoute() : super(name, path: 'subs');

  SubsRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'SubsRoute';
}

class BookmarkRoute extends _i1.PageRouteInfo {
  const BookmarkRoute() : super(name, path: 'bookmark');

  BookmarkRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'BookmarkRoute';
}

class DeliveryStatusRoute extends _i1.PageRouteInfo {
  const DeliveryStatusRoute() : super(name, path: 'delivery_status');

  DeliveryStatusRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'DeliveryStatusRoute';
}

class PurchasedRoute extends _i1.PageRouteInfo {
  const PurchasedRoute() : super(name, path: 'purchased');

  PurchasedRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'PurchasedRoute';
}

class NotifAppRoute extends _i1.PageRouteInfo {
  const NotifAppRoute() : super(name, path: '');

  NotifAppRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'NotifAppRoute';
}

class NotifDetailsRoute extends _i1.PageRouteInfo {
  NotifDetailsRoute({this.notifName})
      : super(name, path: ':notifName', params: {'notifName': notifName});

  NotifDetailsRoute.fromMatch(_i1.RouteMatch match)
      : notifName = match.pathParams.getString('notifName'),
        super.fromMatch(match);

  final String notifName;

  static const String name = 'NotifDetailsRoute';
}

class DirectMessageRoute extends _i1.PageRouteInfo {
  DirectMessageRoute({this.user})
      : super(name, path: ':user', params: {'user': user});

  DirectMessageRoute.fromMatch(_i1.RouteMatch match)
      : user = match.pathParams.getString('user'),
        super.fromMatch(match);

  final String user;

  static const String name = 'DirectMessageRoute';
}

class ContactPersonRoute extends _i1.PageRouteInfo {
  const ContactPersonRoute() : super(name, path: 'contact');

  ContactPersonRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'ContactPersonRoute';
}

class ChatRoomRoute extends _i1.PageRouteInfo {
  ChatRoomRoute({this.user})
      : super(name, path: 'room/:user', params: {'user': user});

  ChatRoomRoute.fromMatch(_i1.RouteMatch match)
      : user = match.pathParams.getString('user'),
        super.fromMatch(match);

  final String user;

  static const String name = 'ChatRoomRoute';
}

class SettingsMenuRoute extends _i1.PageRouteInfo {
  const SettingsMenuRoute() : super(name, path: '');

  SettingsMenuRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'SettingsMenuRoute';
}

class ReAuthAccountRoute extends _i1.PageRouteInfo {
  ReAuthAccountRoute({this.popUpPage, this.redirectPage, this.routeName})
      : super(name, path: 'reauthenticate');

  ReAuthAccountRoute.fromMatch(_i1.RouteMatch match)
      : popUpPage = null,
        redirectPage = null,
        routeName = null,
        super.fromMatch(match);

  final _i3.Widget popUpPage;

  final _i1.PageRouteInfo redirectPage;

  final String routeName;

  static const String name = 'ReAuthAccountRoute';
}

class ChangeEmailRoute extends _i1.PageRouteInfo {
  const ChangeEmailRoute() : super(name, path: 'change_account');

  ChangeEmailRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'ChangeEmailRoute';
}

class ResetPswFromSettings extends _i1.PageRouteInfo {
  ResetPswFromSettings({this.uid}) : super(name, path: 'update_password');

  ResetPswFromSettings.fromMatch(_i1.RouteMatch match)
      : uid = match.pathParams.getString('uid'),
        super.fromMatch(match);

  final String uid;

  static const String name = 'ResetPswFromSettings';
}

class UpdatePhoneNumberRoute extends _i1.PageRouteInfo {
  const UpdatePhoneNumberRoute() : super(name, path: 'update_phone_number');

  UpdatePhoneNumberRoute.fromMatch(_i1.RouteMatch match)
      : super.fromMatch(match);

  static const String name = 'UpdatePhoneNumberRoute';
}

class VerifyNewPhoneNumber extends _i1.PageRouteInfo {
  const VerifyNewPhoneNumber() : super(name, path: 'verify_new_phone');

  VerifyNewPhoneNumber.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'VerifyNewPhoneNumber';
}

class CreditCardRoute extends _i1.PageRouteInfo {
  CreditCardRoute({this.creditEvent})
      : super(name, path: ':creditEvent', params: {'creditEvent': creditEvent});

  CreditCardRoute.fromMatch(_i1.RouteMatch match)
      : creditEvent = match.pathParams.getString('creditEvent'),
        super.fromMatch(match);

  final String creditEvent;

  static const String name = 'CreditCardRoute';
}

class ProductGridRoute extends _i1.PageRouteInfo {
  const ProductGridRoute() : super(name, path: 'product');

  ProductGridRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'ProductGridRoute';
}

class CollectionGridRoute extends _i1.PageRouteInfo {
  const CollectionGridRoute() : super(name, path: 'collection');

  CollectionGridRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'CollectionGridRoute';
}

class VoucherGridRoute extends _i1.PageRouteInfo {
  const VoucherGridRoute() : super(name, path: 'my_voucher');

  VoucherGridRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'VoucherGridRoute';
}

class OrderCartRoute extends _i1.PageRouteInfo {
  OrderCartRoute({this.cartId})
      : super(name, path: ':cartId', params: {'cartId': cartId});

  OrderCartRoute.fromMatch(_i1.RouteMatch match)
      : cartId = match.pathParams.getString('cartId'),
        super.fromMatch(match);

  final String cartId;

  static const String name = 'OrderCartRoute';
}

class PaymentRoute extends _i1.PageRouteInfo {
  const PaymentRoute() : super(name, path: 'payment');

  PaymentRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'PaymentRoute';
}

class LoginRoute extends _i1.PageRouteInfo {
  const LoginRoute() : super(name, path: '');

  LoginRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'LoginRoute';
}

class SendEmailRoute extends _i1.PageRouteInfo {
  const SendEmailRoute() : super(name, path: 'forget_password');

  SendEmailRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'SendEmailRoute';
}

class ResetPswFromLogin extends _i1.PageRouteInfo {
  ResetPswFromLogin({this.uid})
      : super(name, path: 'reset_password/:uid', params: {'uid': uid});

  ResetPswFromLogin.fromMatch(_i1.RouteMatch match)
      : uid = match.pathParams.getString('uid'),
        super.fromMatch(match);

  final String uid;

  static const String name = 'ResetPswFromLogin';
}

class RegisterRoute extends _i1.PageRouteInfo {
  const RegisterRoute() : super(name, path: 'new_account');

  RegisterRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'RegisterRoute';
}

class VerifyAccountRoute extends _i1.PageRouteInfo {
  const VerifyAccountRoute() : super(name, path: 'regist_phone');

  VerifyAccountRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'VerifyAccountRoute';
}

class SendSmsCodeRoute extends _i1.PageRouteInfo {
  const SendSmsCodeRoute() : super(name, path: 'verify_phone');

  SendSmsCodeRoute.fromMatch(_i1.RouteMatch match) : super.fromMatch(match);

  static const String name = 'SendSmsCodeRoute';
}
