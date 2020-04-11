<ul data-component="posts" class="posts-list" data-nextstart="{nextStart}">
	{{{each posts}}}
	<!-- IMPORT partials/posts-list-item.tpl -->
	{{{end}}}
</ul>
<div data-component="posts/loading" class="loading-indicator text-center hidden">
	<i class="fa fa-refresh fa-spin"></i>
</div>