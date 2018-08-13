<fieldset id="$HolderID" class="dn--fieldset<% if $extraClass %> $extraClass<% end_if %>">
  <% if $Title %><legend class="dn--label">$Title</legend><% end_if %>
  <div class="dn--form-item">
    $Field
  </div>

  <% if $RightTitle %><label class="right">$RightTitle</label><% end_if %>
  <% if $Message %><span class="message $MessageType">$Message</span><% end_if %>
  <% if $Description %><span class="description">$Description</span><% end_if %>
</fieldset>
