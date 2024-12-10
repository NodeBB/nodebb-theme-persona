<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="row">
		<div class="col-12 col-md-6">
			<!-- IF !disableCustomUserSkins -->
			<h4>[[user:select-skin]]</h4>
			<div class="card card-body mb-3">
				<select class="form-select" id="bootswatchSkin" data-property="bootswatchSkin">
					{{{each bootswatchSkinOptions}}}
					<option value="{bootswatchSkinOptions.value}" <!-- IF bootswatchSkinOptions.selected -->selected<!-- ENDIF bootswatchSkinOptions.selected -->>{bootswatchSkinOptions.name}</option>
					{{{end}}}
				</select>
			</div>
			<!-- ENDIF !disableCustomUserSkins -->

			<!-- IF allowUserHomePage -->
			<h4>[[user:select-homepage]]</h4>
			<div class="card card-body mb-3">
				<div class="mb-2">
					<select class="form-select" id="homePageRoute" data-property="homePageRoute">
						<option value="none">None</option>
						{{{each homePageRoutes}}}
						<option value="{homePageRoutes.route}" <!-- IF homePageRoutes.selected -->selected="1"<!-- ENDIF homePageRoutes.selected -->>{homePageRoutes.name}</option>
						{{{end}}}
					</select>
					<p class="form-text mb-0">[[user:homepage-description]]</p>
				</div>
				<div id="homePageCustomContainer" class="mb-2" style="display: none;">
					<label for="homePageCustom" class="form-label">[[user:custom-route]]</label>
					<input type="text" class="form-control" data-property="homePageCustom" id="homePageCustom" value="{settings.homePageRoute}"/>
					<p class="form-text">[[user:custom-route-help]]</p>
				</div>
			</div>
			<!-- ENDIF allowUserHomePage -->

			<h4>[[global:privacy]]</h4>
			<div class="card card-body mb-3">
				<!-- IF !hideEmail -->
				<div class="form-check mb-2">
					<input id="showemail" class="form-check-input" type="checkbox" data-property="showemail" <!-- IF settings.showemail -->checked <!-- ENDIF settings.showemail -->/>
					<label for="showemail" class="form-check-label">[[user:show-email]]</label>
				</div>
				<!-- ENDIF !hideEmail -->

				<!-- IF !hideFullname -->
				<div class="form-check mb-2">
					<input id="showfullname" class="form-check-input" type="checkbox" data-property="showfullname" <!-- IF settings.showfullname -->checked<!-- ENDIF settings.showfullname -->/>
					<label for="showfullname" class="form-check-label">[[user:show-fullname]]</label>
				</div>
				<!-- ENDIF !hideFullname -->
				<!-- IF !config.disableChat -->
				<div class="form-check">
					<input id="restrictChat" class="form-check-input" type="checkbox" data-property="restrictChat" <!-- IF settings.restrictChat -->checked<!-- ENDIF settings.restrictChat -->/>
					<label for="restrictChat" class="form-check-label">[[user:restrict-chats]]</label>
				</div>
				<!-- ENDIF !config.disableChat -->
			</div>

			<h4>[[user:browsing]]</h4>
			<div class="card card-body mb-3">
				<div class="form-check mb-2">
					<input id="openOutgoingLinksInNewTab" class="form-check-input" type="checkbox" data-property="openOutgoingLinksInNewTab" <!-- IF settings.openOutgoingLinksInNewTab -->checked<!-- ENDIF settings.openOutgoingLinksInNewTab -->/>
					<label for="openOutgoingLinksInNewTab" class="form-check-label">[[user:open-links-in-new-tab]]</label>
				</div>
				<!-- IF inTopicSearchAvailable -->
				<div class="form-check mb-2">
					<input id="topicSearchEnabled" class="form-check-input" type="checkbox" data-property="topicSearchEnabled" <!-- IF settings.topicSearchEnabled -->checked<!-- ENDIF settings.topicSearchEnabled -->/>
					<label for="topicSearchEnabled" class="form-check-label">[[user:enable-topic-searching]]</label>
				</div>
				<p class="form-text">[[user:topic-search-help]]</p>
				<!-- ENDIF inTopicSearchAvailable -->
				<div class="form-check mb-2">
					<input id="updateUrlWithPostIndex" class="form-check-input" type="checkbox" data-property="updateUrlWithPostIndex" {{{ if settings.updateUrlWithPostIndex }}}checked{{{ end }}}/>
					<label for="updateUrlWithPostIndex" class="form-check-label">[[user:update-url-with-post-index]]</label>
				</div>
				<div class="form-check">
					<input id="scrollToMyPost" class="form-check-input" type="checkbox" data-property="scrollToMyPost" <!-- IF settings.scrollToMyPost -->checked<!-- ENDIF settings.scrollToMyPost -->/>
					<label for="scrollToMyPost" class="form-check-label">[[user:scroll-to-my-post]]</label>
				</div>
			</div>

			<h4>[[global:pagination]]</h4>
			<div class="card card-body mb-3">
				<div class="form-check mb-2">
					<input id="usePagination" type="checkbox" class="form-check-input" data-property="usePagination" <!-- IF settings.usePagination -->checked<!-- ENDIF settings.usePagination -->>
					<label for="usePagination" class="form-check-label">[[user:paginate-description]]</label>
				</div>
				<div class="mb-3">
					<label for="topicsPerPage" class="form-label">[[user:topics-per-page]] ([[user:max-items-per-page, {maxTopicsPerPage}]])</label>
					<input id="topicsPerPage" type="text" class="form-control" data-property="topicsPerPage" value="{settings.topicsPerPage}">
				</div>
				<div>
					<label for="postsPerPage" class="form-label">[[user:posts-per-page]] ([[user:max-items-per-page, {maxPostsPerPage}]])</label>
					<input id="postsPerPage" type="text" class="form-control" data-property="postsPerPage" value="{settings.postsPerPage}">
				</div>
			</div>

			<h4>[[global:sort]]</h4>
			<div class="card card-body mb-3">
				<div class="mb-2">
					<label for="categoryTopicSort" class="form-label">[[user:category-topic-sort]]</label>
					<select id="categoryTopicSort" class="form-select" data-property="categoryTopicSort">
						<option value="recently_replied" {{{ if (settings.categoryTopicSort == "recently_replied") }}}selected{{{ end }}}>[[topic:recently-replied]]</option>
						<option value="recently_created" {{{ if (settings.categoryTopicSort == "recently_created") }}}selected{{{ end }}}>[[topic:recently-created]]</option>
						<option value="most_posts" {{{ if (settings.categoryTopicSort == "most_posts") }}}selected{{{ end }}}>[[topic:most-posts]]</option>
						<option value="most_votes" {{{ if (settings.categoryTopicSort == "most_votes") }}}selected{{{ end }}}>[[topic:most-votes]]</option>
						<option value="most_views" {{{ if (settings.categoryTopicSort == "most_views") }}}selected{{{ end }}}>[[topic:most-views]]</option>
					</select>
				</div>
				<div>
					<label for="topicPostSort" class="form-label">[[user:topic-post-sort]]</label>
					<select id="topicPostSort" class="form-select" data-property="topicPostSort">
						<option value="oldest_to_newest" {{{ if (settings.topicPostSort == "oldest_to_newest") }}}selected{{{ end }}}>[[topic:oldest-to-newest]]</option>
						<option value="newest_to_oldest" {{{ if (settings.topicPostSort == "newest_to_oldest") }}}selected{{{ end }}}>[[topic:newest-to-oldest]]</option>
						<option value="most_votes" {{{ if (settings.topicPostSort == "most_votes") }}}selected{{{ end }}}>[[topic:most-votes]]</option>
					</select>
				</div>
			</div>

			<!-- IF !disableEmailSubscriptions -->
			<h4>[[global:email]]</h4>
			<div class="card card-body mb-3">
				<div class="mb-2">
					<label class="form-label" for="dailyDigestFreq">[[user:digest-label]]</label>
					<select class="form-select" id="dailyDigestFreq" data-property="dailyDigestFreq" autocomplete="off">
						{{{each dailyDigestFreqOptions}}}
						<option value="{dailyDigestFreqOptions.value}" <!-- IF dailyDigestFreqOptions.selected -->selected="1"<!-- ENDIF dailyDigestFreqOptions.selected -->>{dailyDigestFreqOptions.name}</option>
						{{{end}}}
					</select>
					<p class="form-text">[[user:digest-description]]</p>
				</div>
			</div>
			<!-- ENDIF !disableEmailSubscriptions -->

			{{{each customSettings}}}
			<h4>{customSettings.title}</h4>
			<div class="card card-body mb-3">
				{customSettings.content}
			</div>
			{{{end}}}

		</div>

		<div class="col-12 col-md-6">
			<h4>[[global:language]]</h4>
			<div class="card card-body mb-3">
				<select data-property="userLang" class="form-select">
					{{{each languages}}}
					<option value="{languages.code}" <!-- IF languages.selected -->selected<!-- ENDIF languages.selected -->>{languages.name} ({languages.code})</option>
					{{{end}}}
				</select>
			</div>
			<!-- IF isAdmin -->
			<!-- IF isSelf -->
			<h4>[[user:acp-language]]</h4>
			<div class="card card-body mb-3">
				<select id="acpLang" data-property="acpLang" class="form-select">
					{{{each acpLanguages}}}
					<option value="{acpLanguages.code}" <!-- IF acpLanguages.selected -->selected<!-- ENDIF acpLanguages.selected -->>{acpLanguages.name} ({acpLanguages.code})</option>
					{{{end}}}
				</select>
			</div>
			<!-- ENDIF isSelf -->
			<!-- ENDIF isAdmin -->

			<h4>[[topic:watch]]</h4>
			<div class="card card-body mb-3">
				<div class="form-check mb-2">
					<input id="followTopicsOnCreate" class="form-check-input" type="checkbox" data-property="followTopicsOnCreate" <!-- IF settings.followTopicsOnCreate -->checked <!-- ENDIF settings.followTopicsOnCreate -->/>
					<label for="followTopicsOnCreate" class="form-check-label">[[user:follow-topics-you-create]]</label>
				</div>
				<div class="form-check mb-2">
					<input id="followTopicsOnReply" class="form-check-input" type="checkbox" data-property="followTopicsOnReply" <!-- IF settings.followTopicsOnReply -->checked<!-- ENDIF settings.followTopicsOnReply -->/>
					<label for="followTopicsOnReply" class="form-check-label">[[user:follow-topics-you-reply-to]]</label>
				</div>
				<div class="">
					<label for="categoryWatchState" class="form-label">[[user:default-category-watch-state]]</label>
					<select id="categoryWatchState" class="form-select" data-property="categoryWatchState">
						<option value="tracking" <!-- IF categoryWatchState.tracking -->selected<!-- ENDIF categoryWatchState.tracking -->>[[category:tracking]]</option>
						<option value="notwatching" <!-- IF categoryWatchState.notwatching -->selected<!-- ENDIF categoryWatchState.notwatching -->>[[category:not-watching]]</option>
						<option value="ignoring" <!-- IF categoryWatchState.ignoring -->selected<!-- ENDIF categoryWatchState.ignoring -->>[[category:ignoring]]</option>
					</select>
				</div>
			</div>


			<h4>[[user:notifications]]</h4>
			<div class="card card-body mb-3">
				{{{each notificationSettings}}}
				<div class="row mb-3">
					<div class="col-7">
						<label for="{./name}">{notificationSettings.label}</label>
					</div>
					<div class="mb-2 col-5">
						<select class="form-select" id="{./name}" data-property="{notificationSettings.name}">
							<option value="none" <!-- IF notificationSettings.none -->selected<!-- ENDIF notificationSettings.none -->>[[notifications:none]]</option>
							<option value="notification" <!-- IF notificationSettings.notification -->selected<!-- ENDIF notificationSettings.notification -->>[[notifications:notification-only]]</option>
							<option value="email" <!-- IF notificationSettings.email -->selected<!-- ENDIF notificationSettings.email -->>[[notifications:email-only]]</option>
							<option value="notificationemail" <!-- IF notificationSettings.notificationemail -->selected<!-- ENDIF notificationSettings.notificationemail -->>[[notifications:notification-and-email]]</option>
						</select>
					</div>
				</div>
				{{{end}}}

				<div class="row">
					<div class="col-7">
						<label for="upvote-notif-freq">[[user:upvote-notif-freq]]</label>
					</div>
					<div class="mb-2 col-5">
						<select class="form-select" id="upvote-notif-freq" name="upvote-notif-freq" data-property="upvoteNotifFreq">
							{{{each upvoteNotifFreq}}}
							<option value="{upvoteNotifFreq.name}" <!-- IF upvoteNotifFreq.selected -->selected<!-- ENDIF upvoteNotifFreq.selected -->>
								[[user:upvote-notif-freq.{upvoteNotifFreq.name}]]
							</option>
							{{{end}}}
						</select>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="form-actions">
		<a id="submitBtn" href="#" class="btn btn-primary">[[global:save-changes]]</a>
	</div>
</div>

