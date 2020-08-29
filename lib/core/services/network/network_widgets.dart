import 'package:blog/core/models/blog_post_header/blog_post_header.dart';
import 'package:blog/core/services/network/network.dart';
import 'package:blog/ui/widgets/exception_widget.dart';
import 'package:blog/ui/widgets/loading_widget.dart';
import 'package:blog/ui/widgets/post_list.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class BlogPostListQuery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
        documentNode: gql(Network.getPostList),
      ),
      builder: (QueryResult result,
          {VoidCallback refetch, FetchMore fetchMore}) {
        if (result.hasException)
          return ExceptionWidget(result.exception.toString());

        if (result.loading) return LoadingWidget();

        final _resultedList = BlogPostHeader.fromJsonList(result.data);

        return BlogPostList(_resultedList);
      },
    );
  }
}
