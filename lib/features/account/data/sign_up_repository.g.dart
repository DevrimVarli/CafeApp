// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$signUpRepositoryHash() => r'ff317310e47bd591e86a37ab6cf02f802a30317f';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [signUpRepository].
@ProviderFor(signUpRepository)
const signUpRepositoryProvider = SignUpRepositoryFamily();

/// See also [signUpRepository].
class SignUpRepositoryFamily extends Family<AsyncValue<void>> {
  /// See also [signUpRepository].
  const SignUpRepositoryFamily();

  /// See also [signUpRepository].
  SignUpRepositoryProvider call({
    required BuildContext context,
    required UserModel userModel,
  }) {
    return SignUpRepositoryProvider(context: context, userModel: userModel);
  }

  @override
  SignUpRepositoryProvider getProviderOverride(
    covariant SignUpRepositoryProvider provider,
  ) {
    return call(context: provider.context, userModel: provider.userModel);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'signUpRepositoryProvider';
}

/// See also [signUpRepository].
class SignUpRepositoryProvider extends AutoDisposeFutureProvider<void> {
  /// See also [signUpRepository].
  SignUpRepositoryProvider({
    required BuildContext context,
    required UserModel userModel,
  }) : this._internal(
         (ref) => signUpRepository(
           ref as SignUpRepositoryRef,
           context: context,
           userModel: userModel,
         ),
         from: signUpRepositoryProvider,
         name: r'signUpRepositoryProvider',
         debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
             ? null
             : _$signUpRepositoryHash,
         dependencies: SignUpRepositoryFamily._dependencies,
         allTransitiveDependencies:
             SignUpRepositoryFamily._allTransitiveDependencies,
         context: context,
         userModel: userModel,
       );

  SignUpRepositoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.context,
    required this.userModel,
  }) : super.internal();

  final BuildContext context;
  final UserModel userModel;

  @override
  Override overrideWith(
    FutureOr<void> Function(SignUpRepositoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SignUpRepositoryProvider._internal(
        (ref) => create(ref as SignUpRepositoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        context: context,
        userModel: userModel,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _SignUpRepositoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SignUpRepositoryProvider &&
        other.context == context &&
        other.userModel == userModel;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, context.hashCode);
    hash = _SystemHash.combine(hash, userModel.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SignUpRepositoryRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `context` of this provider.
  BuildContext get context;

  /// The parameter `userModel` of this provider.
  UserModel get userModel;
}

class _SignUpRepositoryProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with SignUpRepositoryRef {
  _SignUpRepositoryProviderElement(super.provider);

  @override
  BuildContext get context => (origin as SignUpRepositoryProvider).context;
  @override
  UserModel get userModel => (origin as SignUpRepositoryProvider).userModel;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
