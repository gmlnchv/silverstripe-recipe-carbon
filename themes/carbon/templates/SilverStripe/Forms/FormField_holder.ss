<div id="$HolderID" class="dn--form-item<% if $extraClass %> $extraClass<% end_if %>">
  $Field

  <% if $Title %><label class="dn--label" for="$ID">$Title</label><% end_if %>

  <% if $Message %><div class="dn--form-requirement $MessageType">$Message</div><% end_if %>

  <% if $Description %><div class="dn--form__helper-text">$Description</div><% end_if %>
</div>
