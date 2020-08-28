import 'package:blog/pages/home/post_list.dart';
import 'package:blog/services/network/network.dart';
import 'package:blog/shared/exception_widget.dart';
import 'package:blog/shared/loading_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class PostListQuery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
        documentNode: gql(Network.getPostList),
        variables: {
          'nRepositories': 50,
        },
        pollInterval: 10,
      ),
      builder: (QueryResult result,
          {VoidCallback refetch, FetchMore fetchMore}) {
        if (result.hasException)
          return ExceptionWidget(result.exception.toString());

        if (result.loading) return LoadingWidget();

        return PostList(result.data['repository']['issues']['edges']);
      },
    );
  }
}
