<div class="persona-usercard d-flex text-bg-dark">
	<a href="{config.relative_path}/user/{userslug}">
		{{buildAvatar(@value, "150px", false, "shadow-none")}}
	</a>
	<div class="usercard-body w-100 d-flex flex-column justify-content-between gap-2 py-2 px-3 overflow-hidden position-relative">

		<a href="{config.relative_path}/user/{userslug}" class="text-reset text-truncate d-block">
			<span class="usercard-name fs-5">{{{ if fullname }}}{fullname}{{{ else }}}{username}{{{ end }}}</span>
		</a>

		<div class="d-flex gap-2 align-items-center">
			<a href="{config.relative_path}/user/{userslug}" class="text-reset text-truncate d-block">
				<span class="usercard-username text-uppercase text-sm text-truncate">{{{ if !banned }}}@{username}{{{ else }}}[[user:banned]]{{{ end }}}</span>
			</a>
			{{{ if !banned }}}
			<span component="user/status" class="border border-white border-2 m-0 rounded-circle status {status}" title="[[global:{status}]]" style="transform: none;"><span class="visually-hidden">[[global:{posts.user.status}]]</span></span>
			{{{ end }}}
		</div>

		<div class="d-flex justify-content-between usercard-info">
			<div class="d-flex flex-column text-center">
				<small>[[global:posts]]</small>
				<span class="fs-5">{humanReadableNumber(postcount)}</span>
			</div>
			<div class="d-flex flex-column text-center">
				<small>[[global:reputation]]</small>
				<span class="fs-5">{humanReadableNumber(reputation)}</span>
			</div>
			<button class="btn-morph persona-fab fs-3  {{{ if banned }}} invisible{{{ end }}}">
				<span>
					<span class="s1"></span>
					<span class="s2"></span>
					<span class="s3"></span>
				</span>
			</button>
		</div>
	</div>

</div>