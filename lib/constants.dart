class Constants {
  static const String githubUri = 'https://api.github.com/graphql';
  static const String getPostList = '''
  query Flutter_Github_GraphQL {
    repository(name: "blog", owner: "MichaelKMalak") {
      issues(filterBy: {states: OPEN, labels: "blog"}, first: 20, orderBy: {field: CREATED_AT, direction: ASC}, labels: "") {
        edges {
          node {
            id
            body
            bodyHTML
            createdAt
            lastEditedAt
            labels(first: 10) {
              nodes {
                name
              }
            }
            title
            url
            updatedAt
          }
        }
        totalCount
      }
    }
  }
  ''';
  static const String initialRoute = '/';
}
