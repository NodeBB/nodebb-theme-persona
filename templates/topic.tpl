<div class="topic">
	<!-- IMPORT partials/breadcrumbs.tpl -->

	<ul component="topic" id="post-container" class="posts" data-tid="{tid}">
		<!-- BEGIN posts -->
			<li component="post" class="post-row <!-- IF posts.deleted -->deleted<!-- ENDIF posts.deleted -->" <!-- IMPORT partials/data/topic.tpl -->>
				<a component="post/anchor" name="{posts.index}"></a>

				<meta itemprop="datePublished" content="{posts.relativeTime}">
				<meta itemprop="dateModified" content="{posts.relativeEditTime}">

				<div class="col-md-1 profile-image-block hidden-xs hidden-sm sub-post">
					<a href="<!-- IF posts.user.userslug -->{relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
						<img src="{posts.user.picture}" align="left" class="img-thumbnail" itemprop="image" />
						<!-- IF posts.user.banned -->
						<span class="label label-danger">[[user:banned]]</span>
						<!-- ENDIF posts.user.banned -->
					</a>
				</div>

				<div class="col-md-11 panel panel-default post-block topic-item">

					<a class="main-post avatar" href="<!-- IF posts.user.userslug -->{relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
						<img itemprop="image" src="{posts.user.picture}" align="left" class="img-thumbnail" width=150 height=150 />
					</a>
					<h3 class="main-post">
						<p component="post/header" class="topic-title" itemprop="name"><i class="fa fa-thumb-tack hide"></i> <i class="fa fa-lock hide"></i> {title}</p>
					</h3>

					<div class="topic-buttons">

						<div class="btn-group">

							<button class="btn btn-sm btn-default dropdown-toggle" data-toggle="dropdown" type="button" title="<!-- IF posts.user.userslug -->[[topic:posted_by, {posts.user.username}]]<!-- ELSE -->[[topic:posted_by_guest]]<!-- ENDIF posts.user.userslug -->">
								<i class="fa fa-circle status {posts.user.status}" title="[[global:{posts.user.status}]]"></i>
								<span class="visible-xs visible-md"><img class="" src="{posts.user.picture}" width=18 height=18 />&nbsp;</span>
								<span class="username-field" href="<!-- IF posts.user.userslug -->{relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}">{posts.user.username}&nbsp;</span>
								<span class="caret"></span>
							</button>

						    <ul class="dropdown-menu">
								<li><a href="<!-- IF posts.user.userslug -->{relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->"><i class="fa fa-user"></i> [[topic:profile]]</a></li>
								<!-- IF !posts.selfPost -->
								<!-- IF posts.user.userslug -->
								<!-- IF loggedIn -->
								<!-- IF !config.disableChat -->
								<li><a href="#" class="chat" component="post/chat"><i class="fa fa-comment"></i> [[topic:chat]]</a></li>
								<!-- ENDIF !config.disableChat -->
								<!-- ENDIF loggedIn -->
								<!-- ENDIF posts.user.userslug -->
								<!-- ENDIF !posts.selfPost -->
						    </ul>
						</div>

						<div class="btn-group">
							<!-- IF !posts.index -->
							<button component="topic/follow" class="btn btn-sm btn-default follow" type="button" title="[[topic:notify_me]]"><!-- IF isFollowing --><i class="fa fa-eye-slash"><!-- ELSE --><i class="fa fa-eye"><!-- ENDIF isFollowing --></i></button>
							<!-- ENDIF !posts.index -->
							<!-- IF !posts.selfPost -->
							<button component="post/flag" class="btn btn-sm btn-default flag" type="button" title="[[topic:flag_title]]"><i class="fa fa-flag-o"></i></button>
							<!-- ENDIF !posts.selfPost -->
							<button component="post/favourite" data-favourited="{posts.favourited}" class="favourite favourite-tooltip btn btn-sm btn-default <!-- IF posts.favourited --> btn-warning <!-- ENDIF posts.favourited -->" type="button">
								<span class="favourite-text">[[topic:favourite]]</span>
								<span class="favouriteCount" data-favourites="{posts.reputation}">{posts.reputation}</span>&nbsp;
								<!-- IF posts.favourited -->
								<i class="fa fa-star"></i>
								<!-- ELSE -->
								<i class="fa fa-star-o"></i>
								<!-- ENDIF posts.favourited -->
							</button>
						</div>

						<!-- IF !reputation:disabled -->
						<div class="btn-group">
							<button component="post/upvote" class="upvote btn btn-sm btn-default <!-- IF posts.upvoted --> upvoted btn-primary <!-- ENDIF posts.upvoted -->">
								<i class="fa fa-chevron-up"></i>
							</button>
							<button component="post/votes" class="votes btn btn-sm btn-default" data-votes="{posts.votes}">{posts.votes}</button>
							<!-- IF !downvote:disabled -->
							<button component="post/downvote" class="downvote btn btn-sm btn-default <!-- IF posts.downvoted --> downvoted btn-primary <!-- ENDIF posts.downvoted -->">
								<i class="fa fa-chevron-down"></i>
							</button>
							<!-- ENDIF !downvote:disabled -->
						</div>
						<!-- ENDIF !reputation:disabled -->

						<!-- IF privileges.topics:reply -->
						<div class="btn-group">
							<button component="post/quote" class="btn btn-sm btn-default quote" type="button" title="[[topic:quote]]"><i class="fa fa-quote-left"></i></button>
							<button component="post/reply" class="btn btn-sm btn-primary btn post_reply" type="button">[[topic:reply]] <i class="fa fa-reply"></i></button>
						</div>
						<!-- ENDIF privileges.topics:reply -->

						<div class="pull-right">
							<div class="btn-group post-tools">
								<div class="dropdown share-dropdown pull-right">
									<button title="[[topic:share]]"class="btn btn-sm btn-default share" data-toggle="dropdown" href="#"><i class="fa fa-share-square-o"></i></button>
									<!-- IMPORT partials/share_dropdown.tpl -->
								</div>
							</div>

							<!-- IF posts.display_moderator_tools -->
							<div class="btn-group post-tools">
								<div class="dropdown">
									<button title="[[topic:tools]]" class="btn btn-sm btn-default" data-toggle="dropdown" href="#"><i class="fa fa-gear"></i></button>
									<ul class="dropdown-menu text-center pull-right" role="menu" aria-labelledby="dLabel">
										<button component="post/edit" class="btn btn-sm btn-default edit" type="button" title="[[topic:edit]]"><i class="fa fa-pencil"></i></button>
										<button component="post/delete" class="btn btn-sm btn-default delete" type="button" title="[[topic:delete]]"><i class="fa fa-trash-o"></i></button>
										<button component="post/purge" class="btn btn-sm btn-default purge <!-- IF !posts.deleted -->none<!-- ENDIF !posts.deleted -->" type="button" title="[[topic:purge]]"><i class="fa fa-eraser"></i></button>

										<!-- IF posts.display_move_tools -->
										<button component="post/move" class="btn btn-sm btn-default move" type="button" title="[[topic:move]]"><i class="fa fa-arrows"></i></button>
										<!-- ENDIF posts.display_move_tools -->
									</ul>
								</div>
							</div>
							<!-- ENDIF posts.display_moderator_tools -->
						</div>
					</div>

					<div component="post/content" class="post-content" itemprop="text">{posts.content}</div>
					<!-- IF posts.user.signature -->
					<div class="post-signature">{posts.user.signature}</div>
					<!-- ENDIF posts.user.signature -->

					<div class="post-info">
						<span class="pull-right">
							[[global:posted_ago, <span class="timeago" title="{posts.relativeTime}"></span>]]
							<!-- IF posts.editor.username -->
							<span>| [[global:last_edited_by_ago, <strong><a href="{relative_path}/user/{posts.editor.userslug}">{posts.editor.username}</a></strong>, <span class="timeago" title="{posts.relativeEditTime}"></span>]]</span>
							<!-- ENDIF posts.editor.username -->
						</span>
						<span class="pull-left">
							[[global:reputation]]: <i class='fa fa-star'></i> <span component="user/reputation" data-reputation="{posts.user.reputation}" data-uid="{posts.uid}" class='formatted-number reputation'>{posts.user.reputation}</span>&nbsp;|&nbsp;[[global:posts]]: <i class='fa fa-pencil'></i> <span class='formatted-number' component="user/postcount" data-uid="{posts.uid}" data-postcount="{posts.user.postcount}">{posts.user.postcount}</span>
							<!-- IF posts.user.custom_profile_info.length -->
								<!-- BEGIN custom_profile_info -->
								| {posts.user.custom_profile_info.content}
								<!-- END custom_profile_info -->
							<!-- ENDIF posts.user.custom_profile_info.length -->
						</span>
						<div style="clear:both;"></div>
					</div>
				</div>
				<div style="clear:both;"></div>
			</li>

			<!-- IF !posts.index -->
			<li class="well post-bar" data-index="{posts.index}">
				<!-- IMPORT partials/post_bar.tpl -->
			</li>
			<!-- ENDIF !posts.index -->
		<!-- END posts -->
	</ul>

	<div class="well col-md-11 col-xs-12 pull-right post-bar bottom-post-bar hide">
		<!-- IMPORT partials/post_bar.tpl -->
	</div>

	<!-- IF config.usePagination -->
		<!-- IMPORT partials/paginator.tpl -->
	<!-- ENDIF config.usePagination -->

	<!-- IMPORT partials/move_thread_modal.tpl -->
	<!-- IMPORT partials/fork_thread_modal.tpl -->
	<!-- IMPORT partials/move_post_modal.tpl -->
</div>

<div widget-area="footer" class="col-xs-12"></div>

<!-- IMPORT partials/noscript/paginator.tpl -->
<!-- IMPORT partials/variables/topic.tpl -->