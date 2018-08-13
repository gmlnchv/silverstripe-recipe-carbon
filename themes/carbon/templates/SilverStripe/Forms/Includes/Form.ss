<% if $IncludeFormTag %>
<form $AttributesHTML>
<% end_if %>
    <fieldset>
        <% if $Legend %><legend>$Legend</legend><% end_if %>
        <% loop $Fields %>
            $FieldHolder
        <% end_loop %>
        <div class="clear"><!-- --></div>
    </fieldset>

    <% if $Message %>
    <div data-notification id="{$FormName}_error" class="dn--inline-notification dn--inline-notification--error $MessageType" role="alert">
        <div class="dn--inline-notification__details">
            <svg class="dn--inline-notification__icon" width="16" height="16" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
            <path d="M8 16A8 8 0 1 1 8 0a8 8 0 0 1 0 16zM3.293 4.707l8 8 1.414-1.414-8-8-1.414 1.414z" fill-rule="evenodd" />
            </svg>
            <div class="dn--inline-notification__text-wrapper">
            <p class="dn--inline-notification__title">Error:</p>
            <p class="dn--inline-notification__subtitle">$Message</p>
            </div>
        </div>
    </div>
    <% else %>
    <div data-notification id="{$FormName}_error" class="dn--inline-notification dn--inline-notification--error $MessageType" style="display: none"></div>
    <% end_if %>

    <% if $Actions %>
    <% loop $Actions %>
      $Field
    <% end_loop %>
    <% end_if %>
<% if $IncludeFormTag %>
</form>
<% end_if %>
