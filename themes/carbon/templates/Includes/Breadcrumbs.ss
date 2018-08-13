<div class="dn--grid max">
  <nav class="dn--breadcrumb dn--breadcrumb--no-trailing-slash" aria-label="breadcrumb">
    <div class="dn--breadcrumb-item">
      <a href="$BaseHref" class="dn--link">Home</a>
    </div>

    <% loop $BreadcrumbItems %>
      <div class="dn--breadcrumb-item">
        <a href="$Link" class="dn--link">$MenuTitle.XML</a>
      </div>
    <% end_loop %>
  </nav>
</div>
