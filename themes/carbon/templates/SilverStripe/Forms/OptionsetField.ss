<div $getAttributesHTML("class") class="dn--radio-button-group $extraClass">
  <% loop $Options %>
    <input id="$ID" class="dn--radio-button" name="$Name" type="radio" value="$Value"<% if $isChecked %> checked<% end_if %><% if $isDisabled %> disabled<% end_if %> <% if $Up.Required %>required<% end_if %> />
    <label for="$ID" class="dn--radio-button__label">
      <span class="dn--radio-button__appearance"></span>
      $Title
    </label>
  <% end_loop %>
</div>

