import 'package:blog/core/models/blog_post/blog_post.dart';
import 'package:blog/ui/shared/scaffold_with_header_footer.dart';
import 'package:blog/ui/widgets/blog_post_widget.dart';
import 'package:flutter/material.dart';

class BlogPostScreen extends StatelessWidget {
  final BlogPost post;
  BlogPostScreen({@required this.post});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWithHeaderFooter(
      avatarUrl: post.avatarUrl,
      child: BlogPostWidget(post: post),
    );
  }
}
