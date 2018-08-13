<div class="dn--form-item">
  <% if $UseButtonTag %>
    <button $getAttributesHTML("class") class="dn--btn <% if $getAttribute("type") == "submit" %>dn--btn--primary<% else %>dn--btn--secondary<% end_if %> $extraClass">
      <% if $ButtonContent %>$ButtonContent<% else %><span>$Title.XML</span><% end_if %>
    </button>
  <% else %>
    <input $getAttributesHTML("class") class="dn--btn <% if $getAttribute("type") == "submit" %>dn--btn--primary<% else %>dn--btn--secondary<% end_if %> $extraClass" />
  <% end_if %>
</div>
