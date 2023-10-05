<!-- IMPORT partials/account/header.tpl -->

<p>[[themes/persona:settings.intro]]</p>

<hr />

<form id="theme-settings" role="form">
	<div class="form-check mb-3">
		<input class="form-check-input" type="checkbox" id="persona:menus:legacy-layout" name="persona:menus:legacy-layout">
		<label class="form-check-label" for="persona:menus:legacy-layout">[[themes/persona:settings.mobile-menu-side]]</label>
	</div>

	<div class="mb-3">
		<label for="persona:navbar:autohide">[[themes/persona:settings.autoHidingNavbar]]</label>
		<select multiple class="form-control" name="persona:navbar:autohide" id="persona:navbar:autohide">
			<option value="xs">[[themes/persona:settings.autoHidingNavbar-xs]]</option>
			<option value="sm">[[themes/persona:settings.autoHidingNavbar-sm]]</option>
			<option value="md">[[themes/persona:settings.autoHidingNavbar-md]]</option>
			<option value="lg">[[themes/persona:settings.autoHidingNavbar-lg]]</option>
		</select>
	</div>

	<button id="save" type="button" class="btn btn-primary">[[global:save-changes]]</button>
</form>

<!-- IMPORT partials/account/footer.tpl -->