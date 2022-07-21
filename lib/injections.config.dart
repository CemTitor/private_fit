// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/activity_tracker/bloc/activity_tracker_bloc.dart' as _i28;
import 'application/bot_nav_bar/bloc/bot_nav_bar_bloc.dart' as _i4;
import 'application/home/bloc/home_bloc.dart' as _i26;
import 'application/on_boarding/bloc/on_boarding_bloc.dart' as _i17;
import 'application/open_food/bloc/open_food_bloc.dart' as _i27;
import 'domain/activity_tracker/i_activity_tracker_facade.dart' as _i5;
import 'domain/activity_tracker/use_cases/get_fetched_step_use_case.dart'
    as _i24;
import 'domain/contacts/i_contacts_facade.dart' as _i9;
import 'domain/contacts/use_cases/at_contact_initialization_use_case.dart'
    as _i21;
import 'domain/contacts/use_cases/at_contacts_use_cases.dart' as _i19;
import 'domain/contacts/use_cases/get_active_atsign_use_case.dart' as _i22;
import 'domain/home/i_home_facade.dart' as _i11;
import 'domain/home/use_cases/set_username_use_case.dart' as _i20;
import 'domain/on_boarding/i_atsign_on_boarding_facade.dart' as _i7;
import 'domain/on_boarding/use_cases/get_on_boarded_at_sign_use_case.dart'
    as _i25;
import 'domain/on_boarding/use_cases/load_client_prefs_use_case.dart' as _i15;
import 'domain/on_boarding/use_cases/on_board_data_when_succesful_use_case.dart'
    as _i16;
import 'domain/on_boarding/use_cases/on_boarding_use_cases.dart' as _i18;
import 'domain/open_food/i_open_food_facts_facade.dart' as _i13;
import 'domain/open_food/use_cases/get_fetched_food_use_case.dart' as _i23;
import 'infrastructure/activity_tracker/activity_tracker_services2.dart' as _i6;
import 'infrastructure/contacts/contacts_facade.dart' as _i10;
import 'infrastructure/home/home_facade.dart' as _i12;
import 'infrastructure/on_boarding/onboarding_atsign_facade.dart' as _i8;
import 'infrastructure/open_food_facts/open_food_services.dart' as _i14;
import 'presentation/routes/router.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.$Router>(_i3.$Router());
  gh.lazySingleton<_i4.BotNavBarBloc>(() => _i4.BotNavBarBloc());
  gh.lazySingleton<_i5.IActivityTrackerFacade>(
      () => _i6.ActivityTrackerServices());
  gh.lazySingleton<_i7.IAtsignOnBoardingFacade>(
      () => _i8.OnBoardingAtsignFacade());
  gh.lazySingleton<_i9.IContactsFacade>(() => _i10.ContactsFacade());
  gh.factory<_i11.IHomeFacade>(() => _i12.HomeFacade());
  gh.lazySingleton<_i13.IOpenFoodFactsFacade>(
      () => _i14.OpenFoodFactsServices());
  gh.factory<_i15.LoadAtClientPreferenceUseCase>(() =>
      _i15.LoadAtClientPreferenceUseCase(get<_i7.IAtsignOnBoardingFacade>()));
  gh.factory<_i16.OnBoardDataWhenSuccessfulUseCase>(() =>
      _i16.OnBoardDataWhenSuccessfulUseCase(
          get<_i7.IAtsignOnBoardingFacade>()));
  gh.lazySingleton<_i17.OnBoardingBloc>(() => _i17.OnBoardingBloc(
      get<_i18.LoadAtClientPreferenceUseCase>(),
      get<_i18.GetOnBoardedAtSignUseCase>(),
      get<_i18.OnBoardDataWhenSuccessfulUseCase>(),
      get<_i19.AtContactInitializationUseCase>()));
  gh.lazySingleton<_i20.SetUserNameUseCase>(
      () => _i20.SetUserNameUseCase(get<_i11.IHomeFacade>()));
  gh.factory<_i21.AtContactInitializationUseCase>(
      () => _i21.AtContactInitializationUseCase(get<_i9.IContactsFacade>()));
  gh.factory<_i22.GetActiveAtsignUseCase>(
      () => _i22.GetActiveAtsignUseCase(get<_i9.IContactsFacade>()));
  gh.factory<_i23.GetFetchedFood>(
      () => _i23.GetFetchedFood(get<_i13.IOpenFoodFactsFacade>()));
  gh.factory<_i24.GetFetchedStep>(
      () => _i24.GetFetchedStep(get<_i5.IActivityTrackerFacade>()));
  gh.factory<_i25.GetOnBoardedAtSignUseCase>(
      () => _i25.GetOnBoardedAtSignUseCase(get<_i7.IAtsignOnBoardingFacade>()));
  gh.factory<_i26.HomeBloc>(
      () => _i26.HomeBloc(get<_i20.SetUserNameUseCase>()));
  gh.lazySingleton<_i27.OpenFoodBloc>(
      () => _i27.OpenFoodBloc(get<_i23.GetFetchedFood>()));
  gh.lazySingleton<_i28.ActivityTrackerBloc>(
      () => _i28.ActivityTrackerBloc(get<_i24.GetFetchedStep>()));
  return get;
}
