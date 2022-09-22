<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="search">
	<div class="row">
		<div class="<!-- IF widgets.sidebar.length -->col-lg-9 col-sm-12<!-- ELSE -->col-lg-12<!-- ENDIF widgets.sidebar.length -->">
			<form id="advanced-search mb-3">
				<div class="mb-3">
					<div class="row">
						<div class="col-md-6">
							<label class="form-label">[[global:search]]</label>
							<input type="text" class="form-control" id="search-input" placeholder="[[global:search]]">
						</div>
						<div class="col-md-2">
							<label class="form-label">[[search:in]]</label>
							<select id="search-in" class="form-select">
								<option value="titlesposts">[[search:titles-posts]]</option>
								<option value="titles">[[search:titles]]</option>
								<option value="posts">[[global:posts]]</option>
								<option value="categories">[[global:header.categories]]</option>
								{{{if privileges.search:users}}}
								<option value="users">[[global:users]]</option>
								{{{end}}}
								{{{if privileges.search:tags}}}
								<option value="tags">[[tags:tags]]</option>
								{{{end}}}
							</select>
						</div>
						<div class="col-md-2">
							<label class="form-label">[[search:match-words]]</label>
							<select id="match-words-filter" class="form-select">
								<option value="all">[[search:all]]</option>
								<option value="any">[[search:any]]</option>
							</select>
						</div>
						<div class="col-md-2">
							<label class="form-label">&nbsp;</label>
							<button type="submit" class="btn btn-primary form-control">[[global:search]]</button>
						</div>
					</div>
				</div>

				<div class="card mb-3">
					<h5 class="card-header" data-bs-toggle="collapse" data-bs-target=".search-options">
						<i class="fa fa-sort"></i> [[search:advanced-search]]
					</h5>
					<div class="card-body search-options collapse <!-- IF expandSearch -->in<!-- ENDIF expandSearch -->">
						<div class="mb-2 post-search-item">
							<div class="row">
								<div class="col-md-6">
									<label class="form-label">[[search:in-categories]]</label>
									<select multiple class="form-select" id="posted-in-categories" size="{allCategoriesCount}">
										{{{each allCategories}}}
										<option value="{allCategories.value}">{allCategories.text}</option>
										{{{end}}}
									</select>
									<input type="checkbox" id="search-children"> [[search:search-child-categories]]
								</div>
								<div class="col-md-6">
									<div class="mb-2 post-search-item">
										<div class="row">
											<div class="col-md-6">
												<label class="form-label">[[search:posted-by]]</label>
												<input type="text" class="form-control" id="posted-by-user" placeholder="[[search:posted-by]]">
											</div>
											<div class="col-md-6">
												<label class="form-label">[[search:has-tags]]</label>
												<input type="text" class="form-control" id="has-tags">
											</div>
										</div>
									</div>

									<div class="mb-2 post-search-item">
										<label class="form-label">[[search:reply-count]]</label>
										<div class="row">
											<div class="col-md-6">
												<select id="reply-count-filter" class="form-select">
													<option value="atleast">[[search:at-least]]</option>
													<option value="atmost">[[search:at-most]]</option>
												</select>
											</div>
											<div class="col-md-6">
												<input type="text" class="form-control" id="reply-count">
											</div>
										</div>
									</div>

									<div class="mb-2 post-search-item">
										<label class="form-label">[[search:post-time]]</label>
										<div class="row">
											<div class="col-md-6">
												<select id="post-time-filter" class="form-select">
													<option value="newer">[[search:newer-than]]</option>
													<option value="older">[[search:older-than]]</option>
												</select>
											</div>
											<div class="col-md-6">
												<select id="post-time-range" class="form-select">
													<option value="">[[search:any-date]]</option>
													<option value="86400">[[search:yesterday]]</option>
													<option value="604800">[[search:one-week]]</option>
													<option value="1209600">[[search:two-weeks]]</option>
													<option value="2592000">[[search:one-month]]</option>
													<option value="7776000">[[search:three-months]]</option>
													<option value="15552000">[[search:six-months]]</option>
													<option value="31104000">[[search:one-year]]</option>
												</select>
											</div>
										</div>
									</div>

									<div class="mb-2 post-search-item">
										<label class="form-label">[[search:sort-by]]</label>
										<div class="row">
											<div class="col-md-6">
												<select id="post-sort-by" class="form-select">
													<option value="relevance">[[search:relevance]]</option>
													<option value="timestamp">[[search:post-time]]</option>
													<option value="votes">[[search:votes]]</option>
													<option value="topic.lastposttime">[[search:last-reply-time]]</option>
													<option value="topic.title">[[search:topic-title]]</option>
													<option value="topic.postcount">[[search:number-of-replies]]</option>
													<option value="topic.viewcount">[[search:number-of-views]]</option>
													<option value="topic.votes">[[search:topic-votes]]</option>
													<option value="topic.timestamp">[[search:topic-start-date]]</option>
													<option value="user.username">[[search:username]]</option>
													<option value="category.name">[[search:category]]</option>
												</select>
											</div>
											<div class="col-md-6">
												<select id="post-sort-direction" class="form-select">
													<option value="desc">[[search:descending]]</option>
													<option value="asc">[[search:ascending]]</option>
												</select>
											</div>
										</div>
									</div>

									<div class="mb-2 post-search-item">
										<label class="form-label">[[search:show-results-as]]</label>
										<div class="radio">
											<label>
												<input type="radio" name="options" id="show-as-posts" checked>
												[[global:posts]]
											</label>
										</div>
										<div class="radio">
											<label>
												<input type="radio" name="options" id="show-as-topics">
												[[global:topics]]
											</label>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="btn-group">
							<button type="submit" class="btn btn-primary">[[global:search]]</button>
							<a class="btn btn-outline-secondary" id="save-preferences" href="#">[[search:save-preferences]]</a>
							<a class="btn btn-outline-secondary" id="clear-preferences" href="#">[[search:clear-preferences]]</a>
						</div>
					</div>
				</div>
			</form>

			<div id="results" class="search-results col-md-12" data-search-query="{search_query}">
				<!-- IF matchCount -->
				<div class="alert alert-info">[[search:results_matching, {matchCount}, {search_query}, {time}]] </div>
				<!-- ELSE -->
				<!-- IF search_query -->
				<div class="alert alert-warning">[[search:no-matches]]</div>
				<!-- ENDIF search_query -->
				<!-- ENDIF matchCount -->

				{{{each posts}}}
				<div class="topic-row card clearfix mb-3">
					<div class="card-body">
						<a href="{config.relative_path}/user/{posts.user.userslug}">{buildAvatar(posts.user, "24px", true)}</a>
						<span class="search-result-text search-result-title"><a href="{config.relative_path}/post/{posts.pid}">{posts.topic.title}</a></span>
						<br/>
						<!-- IF showAsPosts -->
						<div class="search-result-text">
							{posts.content}
							<p class="fade-out"></p>
						</div>
						<!-- ENDIF showAsPosts -->

						<small class="post-info float-end">
							<a href="{config.relative_path}/category/{posts.category.slug}">
								<div class="category-item d-inline-block">
									<span role="presentation" class="icon" style="{function.generateCategoryBackground, posts.category}">
										<i class="fa fa-fw {posts.category.icon}"></i>
									</span>
									{posts.category.name}
								</div>
							</a> &bull;
							<span class="timeago" title="{posts.timestampISO}"></span>
						</small>
					</div>
				</div>
				{{{end}}}

				<!-- IF users.length -->
				<!-- IMPORT partials/users_list.tpl -->
				<!-- ENDIF users.length -->

				<!-- IF tags.length -->
				<!-- IMPORT partials/tags_list.tpl -->
				<!-- ENDIF tags.length -->

				{{{ if categories.length }}}
				<ul class="categories">
					{{{each categories}}}
					<!-- IMPORT partials/categories/item.tpl -->
					{{{end}}}
				</ul>
				{{{ end }}}

				<!-- IMPORT partials/paginator.tpl -->
			</div>
		</div>
		<div data-widget-area="sidebar" class="col-lg-3 col-sm-12 <!-- IF !widgets.sidebar.length -->hidden<!-- ENDIF !widgets.sidebar.length -->">
			{{{each widgets.sidebar}}}
			{{widgets.sidebar.html}}
			{{{end}}}
		</div>
	</div>
</div>
