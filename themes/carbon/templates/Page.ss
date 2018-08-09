<!DOCTYPE html>
<html lang="$ContentLocale">
<head>
    <% base_tag %>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> | $SiteConfig.Title</title>
    $MetaTags(false)

    <% if not $WebpackDevServer %>
      <% require themedCss('dist/main') %>
    <% end_if %>
</head>
<body>
    <% include Header %>

    <main id="maincontent" role="main">
      <div class="dn--grid max">
        $Layout
      </div>
    </main>

    <% include Footer %>

    <% if $WebpackDevServer %>
      <script src="http://localhost:8081/main.js"></script>
    <% else %>
      <% require themedJavascript('dist/main') %>
    <% end_if %>
</body>
</html>
