// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ArticleListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticleListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArticleListEvent()';
}


}

/// @nodoc
class $ArticleListEventCopyWith<$Res>  {
$ArticleListEventCopyWith(ArticleListEvent _, $Res Function(ArticleListEvent) __);
}


/// Adds pattern-matching-related methods to [ArticleListEvent].
extension ArticleListEventPatterns on ArticleListEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ArticlesListInitialFetch value)?  initialFetch,TResult Function( _ArticleListLoadMore value)?  loadMore,TResult Function( _ArticleListRefresh value)?  refresh,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticlesListInitialFetch() when initialFetch != null:
return initialFetch(_that);case _ArticleListLoadMore() when loadMore != null:
return loadMore(_that);case _ArticleListRefresh() when refresh != null:
return refresh(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ArticlesListInitialFetch value)  initialFetch,required TResult Function( _ArticleListLoadMore value)  loadMore,required TResult Function( _ArticleListRefresh value)  refresh,}){
final _that = this;
switch (_that) {
case _ArticlesListInitialFetch():
return initialFetch(_that);case _ArticleListLoadMore():
return loadMore(_that);case _ArticleListRefresh():
return refresh(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ArticlesListInitialFetch value)?  initialFetch,TResult? Function( _ArticleListLoadMore value)?  loadMore,TResult? Function( _ArticleListRefresh value)?  refresh,}){
final _that = this;
switch (_that) {
case _ArticlesListInitialFetch() when initialFetch != null:
return initialFetch(_that);case _ArticleListLoadMore() when loadMore != null:
return loadMore(_that);case _ArticleListRefresh() when refresh != null:
return refresh(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initialFetch,TResult Function()?  loadMore,TResult Function()?  refresh,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticlesListInitialFetch() when initialFetch != null:
return initialFetch();case _ArticleListLoadMore() when loadMore != null:
return loadMore();case _ArticleListRefresh() when refresh != null:
return refresh();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initialFetch,required TResult Function()  loadMore,required TResult Function()  refresh,}) {final _that = this;
switch (_that) {
case _ArticlesListInitialFetch():
return initialFetch();case _ArticleListLoadMore():
return loadMore();case _ArticleListRefresh():
return refresh();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initialFetch,TResult? Function()?  loadMore,TResult? Function()?  refresh,}) {final _that = this;
switch (_that) {
case _ArticlesListInitialFetch() when initialFetch != null:
return initialFetch();case _ArticleListLoadMore() when loadMore != null:
return loadMore();case _ArticleListRefresh() when refresh != null:
return refresh();case _:
  return null;

}
}

}

/// @nodoc


class _ArticlesListInitialFetch implements ArticleListEvent {
  const _ArticlesListInitialFetch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticlesListInitialFetch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArticleListEvent.initialFetch()';
}


}




/// @nodoc


class _ArticleListLoadMore implements ArticleListEvent {
  const _ArticleListLoadMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticleListLoadMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArticleListEvent.loadMore()';
}


}




/// @nodoc


class _ArticleListRefresh implements ArticleListEvent {
  const _ArticleListRefresh();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticleListRefresh);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ArticleListEvent.refresh()';
}


}




// dart format on
