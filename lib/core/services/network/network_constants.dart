import 'package:blog/constants.dart';

class NetworkConstants {
  const NetworkConstants();
  String get githubUri => 'https://api.github.com/graphql';

  String get getPostList => '''
  query Flutter_Github_GraphQL {
    repository(name: "blog", owner: "${Constants.username}") {
      issues(filterBy: {states: OPEN, labels: "blog tech" createdBy: "${Constants.username}"}, first: 20, orderBy: {field: CREATED_AT, direction: ASC}, labels: "") {
        edges {
          node {
            number
            createdAt
            title
           author {
            avatarUrl
            }
          }
        }
      }
    }
  }
  ''';

  String getPostById (String id) => '''
 query Flutter_Github_GraphQL {
  repository(name: "blog", owner: "${Constants.username}") {
    issue(number: $id) {
      body
      createdAt
      url
      title
     author {
        avatarUrl
      }
    }
  }
}
  ''';
}
