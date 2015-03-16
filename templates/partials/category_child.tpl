		<div class="{children.class}" data-cid="{children.cid}" data-numRecentReplies="{children.numRecentReplies}">
			<meta itemprop="name" content="{children.name}">
			<h4 class="category-title">
				<!-- IF !children.link -->
				<span class="badge {children.unread-class}">{children.topic_count} </span>
				<!-- ENDIF !children.link -->

				<!-- IF children.link -->
				<a href="{children.link}" itemprop="url" target="_blank">
				<!-- ELSE -->
				<a href="{relative_path}/category/{children.slug}" itemprop="url">
				<!-- ENDIF children.link -->
				{children.name}
				</a>
			</h4>

			<!-- IF children.link -->
			<a style="color: {children.color};" href="{children.link}" itemprop="url" target="_blank">
			<!-- ELSE -->
			<a style="color: {children.color};" href="{relative_path}/category/{children.slug}" itemprop="url">
			<!-- ENDIF children.link -->
				<div
					id="category-{children.cid}" class="category-header category-header-image-{children.imageClass}"
					title="{children.description}"
					style="
						<!-- IF children.backgroundImage -->background-image: url({children.backgroundImage});<!-- ENDIF children.backgroundImage -->
						<!-- IF children.bgColor -->background-color: {children.bgColor};<!-- ENDIF children.bgColor -->
					"
				>
					<div id="category-{children.cid}" class="category-slider-{children.post_count}">
						<!-- IF children.icon -->
						<div class="category-box"><i class="fa {children.icon} fa-4x"></i></div>
						<!-- ENDIF children.icon -->
						<div class="category-box" itemprop="description">{children.description}</div>

						<!-- BEGIN posts -->
						<div class="category-box">
							<div class="post-preview">
								<img src="{children.posts.user.picture}" class="pull-left" />
								<p class=""><strong>{children.posts.user.username}</strong>: {children.posts.content}</p>
							</div>
						</div>
						<!-- END posts -->
						<!-- IF children.icon -->
						<div class="category-box"><i class="fa {children.icon} fa-4x"></i></div>
						<!-- ENDIF children.icon -->
					</div>
				</div>
			</a>
		</div>