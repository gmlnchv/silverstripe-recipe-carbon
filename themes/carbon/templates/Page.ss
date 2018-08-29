<!DOCTYPE html>
<html lang="$ContentLocale">
<head>
    <% base_tag %>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> | $SiteConfig.Title</title>
    $MetaTags(false)

    <% if not $isLiveReload %>
      <% require themedCss('dist/main') %>
    <% end_if %>

    <% if $isLiveReload %>
      <script src="http://localhost:35729/livereload.js"></script>
    <% end_if %>
</head>
<body>
    <% include Header %>

    <main id="maincontent" role="main">
      $Layout
    </main>

    <% include Footer %>
    <% require themedJavascript('dist/main') %>
</body>
</html>
