import 'package:auto_route/auto_route.dart';
import 'package:crafity/interface/screen/screens.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashPage,
      path: '/',
      initial: true,
      // guards: [LoginGuard],
    ),
    AutoRoute(
      page: NavHandlingPage,
      path: '/nav',
      // guards: [AuthRouteGuard],
      usesTabsRouter: true,
      children: [
        homePage,
        browsePage,
        requestPage,
        eventPage,
        personalPage,
      ],
    ),
    AutoRoute(
      path: '/:ownerName',
      page: OwnerDashboardPage,
      usesTabsRouter: true,
      children: [
        AutoRoute(
          path: 'product',
          initial: true,
          page: ProductGridPage,
        ),
        AutoRoute(
          path: 'collection',
          page: CollectionGridPage,
        ),
        AutoRoute(
          path: 'my_voucher',
          page: VoucherGridPage,
        ),
      ],
    ),
    AutoRoute(
      path: '/cart',
      page: EmptyRouterPage,
      name: 'CartRoute',
      // guards: [AuthRouteGuard],
      children: [
        AutoRoute(
          path: ':cartId',
          page: OrderCartPage,
          initial: true,
          // guards: [AuthRouteGuard],
        ),
        AutoRoute(
          path: 'payment',
          page: PaymentPage,
          // guards: [AuthRouteGuard],
        ),
      ],
    ),
    AutoRoute<bool>(
      path: '/login',
      page: AuthAccountPage,
      name: 'AuthenticateUserRoute',
      children: [
        AutoRoute(
          path: '',
          page: LoginPage,
          initial: true,
        ),
        AutoRoute(
          path: 'forget_password',
          page: SendEmailPage,
        ),
        AutoRoute(
          path: 'reset_password/:uid',
          page: ResetPasswordPage,
          name: 'ResetPswFromLogin',
        ),
      ],
    ),
    AutoRoute(
      path: '/signup',
      page: AuthAccountPage,
      name: 'CreateNewUserRoute',
      children: [
        AutoRoute(
          path: 'new_account',
          page: RegisterPage,
          initial: true,
        ),
        AutoRoute(
          path: 'regist_phone',
          page: VerifyAccountPage,
        ),
        AutoRoute(
          path: 'verify_phone',
          page: SendSmsCodePage,
        ),
      ],
    ),
    AutoRoute(
      path: '/product/:prodName/details',
      page: ProductDetailsPage,
    ),
    AutoRoute(
      path: '/collection/:collName/details',
      page: CollectionDetailsPage,
    ),
    AutoRoute(
      path: '/event/:eventName/details',
      page: EventDetailsPage,
      // guards: [AuthRouteGuard],
    ),
    AutoRoute(
      path: '/idea/:ideaName/details',
      page: IdeaDetailsPage,
      // guards: [AuthRouteGuard],
    ),
    AutoRoute(path: '*', page: NotFoundPage),
  ],
)
class $AppRouter {}

const homePage = AutoRoute(
  page: HomePage,
  path: 'home',
  initial: true,
);

const browsePage = AutoRoute(
  path: 'browse',
  page: EmptyRouterPage,
  name: 'BrowseRoute',
  children: [
    AutoRoute(
      path: ':browseResult',
      page: CatalogGridPage,
      initial: true,
      usesTabsRouter: true,
      children: [
        AutoRoute(
          path: '#catalog',
          page: ProductPage,
        ),
        AutoRoute(
          path: '#industry',
          page: IndustryPage,
        ),
      ],
    ),
    AutoRoute(
      path: 'filter',
      page: CatalogFilterPage,
      usesTabsRouter: true,
      children: [
        AutoRoute(
          path: '#product',
          page: ProductFilterPage,
        ),
        AutoRoute(
          path: '#industry',
          page: IndustryFilterPage,
        ),
      ],
    ),
  ],
);

const requestPage = AutoRoute(
  path: 'request',
  page: EmptyRouterPage,
  name: 'RequestOrderRoute',
  // guards: [AuthRouteGuard],
  children: [
    AutoRoute(
      path: '',
      page: IdeaGridPage,
      initial: true,
    ),
    AutoRoute(
      path: 'create',
      page: AddRequestPage,
      // guards: [AuthRouteGuard],
    ),
    AutoRoute(
      path: 'edit',
      page: EditRequestPage,
      // guards: [AuthRouteGuard],
    ),
  ],
);

const eventPage = AutoRoute(
  path: 'event/:search',
  page: EventCatalogPage,
  // guards: [AuthRouteGuard],
);

const personalPage = AutoRoute(
  path: ':userName',
  page: PersonalDashboardPage,
  usesTabsRouter: true,
  // guards: [AuthRouteGuard],
  children: [
    AutoRoute(
      path: 'activity',
      page: ActivityPage,
      usesTabsRouter: true,
      // guards: [AuthRouteGuard],
      children: [
        AutoRoute(
          path: 'subs',
          page: SubsPage,
        ),
        AutoRoute(
          path: 'bookmark',
          page: BookmarkPage,
        ),
        AutoRoute(
          path: 'delivery_status',
          page: DeliveryStatusPage,
        ),
        AutoRoute(
          path: 'purchased',
          page: PurchasedPage,
        ),
      ],
    ),
    AutoRoute(
      path: 'notif',
      page: EmptyRouterPage,
      name: 'NotifRoute',
      // guards: [AuthRouteGuard],
      children: [
        AutoRoute(
          path: '',
          page: NotifAppPage,
          initial: true,
        ),
        AutoRoute(
          path: ':notifName',
          page: NotifDetailsPage,
        ),
      ],
    ),
    AutoRoute(
      path: 'dm',
      page: EmptyRouterPage,
      name: 'MessageRoute',
      // guards: [AuthRouteGuard],
      children: [
        AutoRoute(
          path: ':user',
          page: DirectMessagePage,
          // guards: [AuthRouteGuard],
        ),
        AutoRoute(
          path: 'contact',
          page: ContactPersonPage,
          // guards: [AuthRouteGuard],
        ),
        AutoRoute(
          path: 'room/:user',
          page: ChatRoomPage,
          // guards: [AuthRouteGuard],
        ),
      ],
    ),
    AutoRoute(
      path: 'settings',
      page: SettingsPage,
      name: 'SettingsRoute',
      // guards: [AuthRouteGuard],
      children: [
        AutoRoute(
          path: '',
          page: SettingsMenuPage,
          initial: true,
          // guards: [AuthRouteGuard],
        ),
        AutoRoute(
          path: 'reauthenticate',
          page: ReAuthAccountPage,
          // guards: [AuthRouteGuard],
        ),
        AutoRoute(
          path: 'change_account',
          page: ChangeEmailPage,
          // guards: [AuthRouteGuard],
        ),
        AutoRoute(
          path: 'update_password',
          page: ResetPasswordPage,
          name: 'ResetPswFromSettings',
          // guards: [AuthRouteGuard],
        ),
        AutoRoute(
          path: 'update_phone_number',
          page: VerifyAccountPage,
          name: 'UpdatePhoneNumberRoute',
          // guards: [AuthRouteGuard],
        ),
        AutoRoute(
          path: 'verify_new_phone',
          page: SendSmsCodePage,
          name: 'VerifyNewPhoneNumber',
          // guards: [AuthRouteGuard],
        ),
        AutoRoute(
          path: ':creditEvent',
          page: CreditCardPage,
          // guards: [AuthRouteGuard],
        ),
      ],
    ),
    AutoRoute(
      path: 'voucher',
      page: VoucherPage,
      // guards: [AuthRouteGuard],
    ),
  ],
);
