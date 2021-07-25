import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_failure.freezed.dart';

@freezed
class CollectionFailure with _$CollectionFailure implements Exception {
  const factory CollectionFailure.couldNotWatchCollection() = CouldNotWatchCollection;

  const factory CollectionFailure.couldNotChangeOwner() = CouldNotChangeOwner;
}
