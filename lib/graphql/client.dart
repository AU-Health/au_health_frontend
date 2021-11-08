import 'package:aucares/widgets/error_dialog.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:ferry/ferry.dart' as ferry;
import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:flutter/material.dart';
import 'package:gql_dio_link/gql_dio_link.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<ferry.Client> initClient() async {
  await Hive.initFlutter();

  final box = await Hive.openBox("graphql");

  final store = HiveStore(box);

  final cache = ferry.Cache(store: store);

  final dio = Dio();
  final cookieJar = CookieJar();
  dio.interceptors.add(CookieManager(cookieJar));

  final link =
      ferry.Link.from([DioLink('http://localhost:8000/graphql', client: dio)]);

  final client = ferry.Client(
    link: link,
    cache: cache,
  );

  return client;
}

extension Mutation on ferry.Client {
  /// Executes a GraphQL mutation and returns the response.
  Future<ferry.OperationResponse<TData, TVars>> mutate<TData, TVars>(
      ferry.OperationRequest<TData, TVars> mutationRequest) async {
    return await request(mutationRequest)
        .firstWhere((response) => response.dataSource != DataSource.Optimistic);
  }
}

extension RefreshCache on ferry.Client {
  /// Clears and garbage collects the cache.
  refreshCache() async {
    cache.clear();
    cache.gc();
  }
}

extension Unwrap<TData, TVars> on ferry.OperationResponse<TData, TVars> {
  /// Shows any errors in the response, or returns the data if there are no errors.
  TData? handleErrorsOrUnwrap(BuildContext context) {
    if (hasErrors) {
      showGraphQLErrors(context: context, errors: graphqlErrors!);
      return null;
    }

    return data;
  }
}
