<!-- IMPORT partials/account/header.tpl -->

<div class="d-flex justify-content-between align-items-center mb-3">
	<div class="d-flex gap-1">
		<h3 class="fw-semibold fs-4 mb-0 align-self-center">[[global:topics]]</h3>
		{{{ if showSort }}}
		<div class="dropdown bottom-sheet" component="thread/sort">
			<button title="[[global:sort]]" class="btn btn-ghost btn-sm dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" type="button"><i class="fa-solid fa-arrow-up-wide-short"></i></button>
			<ul class="dropdown-menu p-1 text-sm" role="menu">
				{{{each sortOptions }}}
				<li>
					<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" href="{config.relative_path}{./url}" role="menuitem">
						<div class="flex-grow-1">{./name}</div>
						<i class="flex-shrink-0 fa fa-fw {{{if ./selected}}}fa-check{{{end}}}"></i>
					</a>
				</li>
				{{{end}}}
			</ul>
		</div>
		{{{ end }}}
	</div>

	<div class="d-flex gap-1">
		{{{ if canEdit }}}
		<a href="{config.relative_path}/user/{userslug}/topics" class="btn btn-ghost btn-sm ff-secondary fw-semibold {{{ if template.account/topics }}}active{{{ end }}}">[[global:header.recent]]</a>
		<a href="{config.relative_path}/user/{userslug}/watched"class="btn btn-ghost btn-sm ff-secondary fw-semibold {{{ if template.account/watched }}}active{{{ end }}}">[[user:watched]]</a>
		<a href="{config.relative_path}/user/{userslug}/ignored" class="btn btn-ghost btn-sm ff-secondary fw-semibold {{{ if template.account/ignored }}}active{{{ end }}}">[[user:ignored]]</a>
		<a href="{config.relative_path}/user/{userslug}/read" class="btn btn-ghost btn-sm ff-secondary fw-semibold {{{ if template.account/read }}}active{{{ end }}}">[[user:read]]</a>
		{{{ end }}}
	</div>
</div>


{{{ if !topics.length }}}
<div class="alert alert-warning text-center">{noItemsFoundKey}</div>
{{{ end }}}

<div class="category">
	<!-- IMPORT partials/topics_list.tpl -->
	{{{ if config.usePagination }}}
	<!-- IMPORT partials/paginator.tpl -->
	{{{ end }}}
</div>

<!-- IMPORT partials/account/footer.tpl -->