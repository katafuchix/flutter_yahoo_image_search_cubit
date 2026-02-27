// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_activity_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(NetworkActivityNotifier)
final networkActivityProvider = NetworkActivityNotifierProvider._();

final class NetworkActivityNotifierProvider
    extends
        $AsyncNotifierProvider<
          NetworkActivityNotifier,
          List<ConnectivityResult>
        > {
  NetworkActivityNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'networkActivityProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$networkActivityNotifierHash();

  @$internal
  @override
  NetworkActivityNotifier create() => NetworkActivityNotifier();
}

String _$networkActivityNotifierHash() =>
    r'b453bd2a063d9af9b5212f104404d7c4f75cbd1d';

abstract class _$NetworkActivityNotifier
    extends $AsyncNotifier<List<ConnectivityResult>> {
  FutureOr<List<ConnectivityResult>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<ConnectivityResult>>,
              List<ConnectivityResult>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ConnectivityResult>>,
                List<ConnectivityResult>
              >,
              AsyncValue<List<ConnectivityResult>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
