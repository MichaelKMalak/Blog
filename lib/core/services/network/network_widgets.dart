import 'package:blog/core/models/blog_post/blog_post.dart';
import 'package:blog/core/services/network/network.dart';
import 'package:blog/shared/exception_widget.dart';
import 'package:blog/shared/loading_widget.dart';
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

        final _resultedList = BlogPost.fromJsonList(result.data);

        return BlogPostList(_resultedList);
      },
    );
  }
}
