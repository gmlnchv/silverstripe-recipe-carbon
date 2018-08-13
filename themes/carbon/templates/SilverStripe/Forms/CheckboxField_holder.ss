<div id="$HolderID" class="dn--form-item dn--checkbox-wrapper<% if extraClass %> $extraClass<% end_if %>">
  $Field
  <label class="dn--checkbox-label" for="$ID">$Title</label>

  <% if $Message %><span class="message $MessageType">$Message</span><% end_if %>

  <% if $Description %><span class="description">$Description</span><% end_if %>
</div>
