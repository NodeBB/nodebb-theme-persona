<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="search">
	<div class="row">
		<div class="col-xs-12">
			<form id="advanced-search">
				<div class="form-group">
					<div class="row">
						<div class="col-md-6">
							<label>[[global:search]]</label>
							<input type="text" class="form-control" id="search-input" placeholder="[[global:search]]">
						</div>
						<div class="col-md-2">
							<label>[[search:in]]</label>
							<select id="search-in" class="form-control">
								<option value="titlesposts">[[search:titles-posts]]</option>
								<option value="titles">[[search:titles]]</option>
								<option value="posts">[[global:posts]]</option>
								{{{if privileges.search:users}}}
								<option value="users">[[global:users]]</option>
								{{{end}}}
								{{{if privileges.search:tags}}}
								<option value="tags">[[tags:tags]]</option>
								{{{end}}}
							</select>
						</div>
						<div class="col-md-2">
							<label>[[search:match-words]]</label>
							<select id="match-words-filter" class="form-control">
								<option value="all">[[search:all]]</option>
								<option value="any">[[search:any]]</option>
							</select>
						</div>
						<div class="col-md-2">
							<label>&nbsp;</label>
							<button type="submit" class="btn btn-primary form-control">[[global:search]]</button>
						</div>
					</div>
				</div>

				<div class="panel panel-default">
					<div class="panel-heading" data-toggle="collapse" data-target=".search-options">
						<h3 class="panel-title"><i class="fa fa-caret-down"></i> [[search:advanced-search]]</h3>
					</div>
					<div class="panel-body search-options collapse <!-- IF expandSearch -->in<!-- ENDIF expandSearch -->">
						<div class="form-group post-search-item">
							<div class="row">
								<div class="col-md-6">
									<label>[[search:in-categories]]</label>
									<select multiple class="form-control" id="posted-in-categories" size="{categoriesCount}">
										{{{each categories}}}
										<option value="{categories.value}">{categories.text}</option>
										{{{end}}}
									</select>
									<input type="checkbox" id="search-children"> [[search:search-child-categories]]
								</div>
								<div class="col-md-6">
									<div class="form-group post-search-item">
										<div class="row">
											<div class="col-md-6">
												<label>[[search:posted-by]]</label>
												<input type="text" class="form-control" id="posted-by-user" placeholder="[[search:posted-by]]">
											</div>
											<div class="col-md-6">
												<label>[[search:has-tags]]</label>
												<input type="text" class="form-control" id="has-tags">
											</div>
										</div>
									</div>

									<div class="form-group post-search-item">
										<label>[[search:reply-count]]</label>
										<div class="row">
											<div class="col-md-6">
												<select id="reply-count-filter" class="form-control">
													<option value="atleast">[[search:at-least]]</option>
													<option value="atmost">[[search:at-most]]</option>
												</select>
											</div>
											<div class="col-md-6">
												<input type="text" class="form-control" id="reply-count">
											</div>
										</div>
									</div>

									<div class="form-group post-search-item">
										<label>[[search:post-time]]</label>
										<div class="row">
											<div class="col-md-6">
												<select id="post-time-filter" class="form-control">
													<option value="newer">[[search:newer-than]]</option>
													<option value="older">[[search:older-than]]</option>
												</select>
											</div>
											<div class="col-md-6">
												<select id="post-time-range" class="form-control">
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

									<div class="form-group post-search-item">
										<label>[[search:sort-by]]</label>
										<div class="row">
											<div class="col-md-6">
												<select id="post-sort-by" class="form-control">
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
												<select id="post-sort-direction" class="form-control">
													<option value="desc">[[search:descending]]</option>
													<option value="asc">[[search:ascending]]</option>
												</select>
											</div>
										</div>
									</div>

									<div class="form-group post-search-item">
										<label>[[search:show-results-as]]</label>
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
							<a class="btn btn-default" id="save-preferences" href="#">[[search:save-preferences]]</a>
							<a class="btn btn-default" id="clear-preferences" href="#">[[search:clear-preferences]]</a>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

	<div class="row">
		<div id="results" class="search-results col-md-12" data-search-query="{search_query}">
			<!-- IF matchCount -->
			<div class="alert alert-info">[[search:results_matching, {matchCount}, {search_query}, {time}]] </div>
			<!-- ELSE -->
			<!-- IF search_query -->
			<div class="alert alert-warning">[[search:no-matches]]</div>
			<!-- ENDIF search_query -->
			<!-- ENDIF matchCount -->

			{{{each posts}}}
			<div class="topic-row panel panel-default clearfix">
				<div class="panel-body">
					<a href="{config.relative_path}/user/{posts.user.userslug}">{buildAvatar(posts.user, "sm", true)}</a>
					<span class="search-result-text search-result-title"><a href="{config.relative_path}/post/{posts.pid}">{posts.topic.title}</a></span>
					<br/>
					<!-- IF showAsPosts -->
					<div class="search-result-text">
						{posts.content}
						<p class="fade-out"></p>
					</div>
					<!-- ENDIF showAsPosts -->

					<small class="post-info pull-right">
						<a href="{config.relative_path}/category/{posts.category.slug}"><span class="fa-stack" style="{function.generateCategoryBackground, posts.category}"><i style="color:{posts.category.color};" class="fa {posts.category.icon} fa-stack-1x"></i></span> {posts.category.name}</a> &bull;
						<span class="timeago" title="{posts.timestampISO}"></span>
					</small>
				</div>
			</div>
			{{{end}}}

			<!-- IF users.length -->
			<ul id="users-container" class="users-container">
			<!-- IMPORT partials/users_list.tpl -->
			</ul>
			<!-- ENDIF users.length -->

			<!-- IF tags.length -->
			<!-- IMPORT partials/tags_list.tpl -->
			<!-- ENDIF tags.length -->

			<!-- IMPORT partials/paginator.tpl -->
		</div>
	</div>
</div>
