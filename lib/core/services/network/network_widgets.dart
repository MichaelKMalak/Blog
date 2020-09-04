import 'package:blog/core/models/blog_post/blog_post.dart';
import 'package:blog/core/models/blog_post_header/blog_post_header.dart';
import 'package:blog/core/services/network/network.dart';
import 'package:blog/ui/screens/home.dart';
import 'package:blog/ui/screens/post.dart';
import 'package:blog/ui/shared/exception_widget.dart';
import 'package:blog/ui/shared/loading_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class HomeQuery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Network.wrap(
      child: Query(
        options: QueryOptions(
          documentNode: gql(Network.constants.getPostList),
        ),
        builder: (QueryResult result,
            {VoidCallback refetch, FetchMore fetchMore}) {
          if (result.hasException)
            return ExceptionWidget(result.exception.toString());

          if (result.loading) return LoadingWidget();

          final _resultedList = BlogPostHeader.fromJsonList(result.data);
          return HomeScreen(_resultedList);
        },
      ),
    );
  }
}

class BlogPostQuery extends StatelessWidget {
  final String _postId;
  BlogPostQuery({@required String postId}): _postId = postId;

  @override
  Widget build(BuildContext context) {
    return Network.wrap(
      child: Query(
        options: QueryOptions(
          documentNode: gql(Network.constants.getPostById(_postId)),
        ),
        builder: (QueryResult result,
            {VoidCallback refetch, FetchMore fetchMore}) {
          if (result.hasException)
            return ExceptionWidget(result.exception.toString());

          if (result.loading) return LoadingWidget();

          final _resultPost = BlogPost.fromJsonList(result.data);
          return BlogPostScreen(post: _resultPost);
        },
      ),
    );
  }
}
