<form component="search/form" id="search-form" class="d-flex justify-content-end align-items-center" role="search" method="GET">
	<div component="search/fields" class="hidden" id="search-fields">
		<div class="input-group flex-nowrap">
			<input autocomplete="off" type="text" class="form-control" placeholder="[[global:search]]" name="query" value="">

			<a href="{config.relative_path}/search" class="btn btn-outline-secondary" aria-label="[[search:type-to-search]]">
				<i class="fa fa-gears fa-fw"></i>
			</a>
		</div>

		<div id="quick-search-container" class="quick-search-container dropdown-menu d-block mt-2 hidden">
			<div class="form-check filter-category mb-2 ms-4">
				<input class="form-check-input" type="checkbox" checked>
				<label class="form-check-label name"></label>
			</div>

			<div class="text-center loading-indicator"><i class="fa fa-spinner fa-spin"></i></div>
			<div class="quick-search-results-container"></div>
		</div>
		<button type="submit" class="btn btn-outline-secondary hide">[[global:search]]</button>
	</div>

	<div id="" class="nav-item"><a component="search/button" id="search-button" href="#" class="nav-link"><i class="fa fa-search fa-fw" title="Search"></i></a></div>
</form>
