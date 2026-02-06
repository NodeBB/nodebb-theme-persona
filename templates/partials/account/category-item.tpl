<li component="categories/category" data-cid="{./cid}" data-parent-cid="{../parentCid}" class="category-{./cid}">
	<meta itemprop="name" content="{./name}">
	<div class="content depth-{./depth} d-flex gap-2">
		<div class="flex-grow-1 align-items-start d-flex gap-2">
			<div>
				{buildCategoryIcon(@value, "24px", "rounded-circle")}
			</div>
			<div class="d-grid gap-0">
				<div class="title fw-semibold">
					<!-- IMPORT partials/categories/link.tpl -->
				</div>
				{{{ if ./descriptionParsed }}}
				<div class="description text-muted text-xs w-100 line-clamp-5">{./descriptionParsed}</div>
				{{{ end }}}
			</div>
		</div>
		<div class="flex-shrink-0">
			<!-- IMPORT partials/category/watch.tpl -->
		</div>
	</div>
	<hr />
</li>
