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
					<label for="homePageRoute">[[user:homepage]]</label>
					<select class="form-select" id="homePageRoute" data-property="homePageRoute">
						<option value="none">None</option>
						{{{each homePageRoutes}}}
						<option value="{homePageRoutes.route}" <!-- IF homePageRoutes.selected -->selected="1"<!-- ENDIF homePageRoutes.selected -->>{homePageRoutes.name}</option>
						{{{end}}}
					</select>
					<p class="form-text">[[user:homepage_description]]</p>
				</div>
				<div id="homePageCustom" class="mb-2" style="display: none;">
					<label for="homePageCustom">[[user:custom_route]]</label>
					<input type="text" class="form-control" data-property="homePageCustom" id="homePageCustom" value="{settings.homePageRoute}"/>
					<p class="form-text">[[user:custom_route_help]]</p>
				</div>
			</div>
			<!-- ENDIF allowUserHomePage -->

			<h4>[[global:privacy]]</h4>
			<div class="card card-body mb-3">
				<!-- IF !hideEmail -->
				<div class="form-check">
					<input class="form-check-input" type="checkbox" data-property="showemail" <!-- IF settings.showemail -->checked <!-- ENDIF settings.showemail -->/>
					<strong>
						<label class="form-check-label">[[user:show_email]]</label>
					</strong>
				</div>
				<!-- ENDIF !hideEmail -->

				<!-- IF !hideFullname -->
				<div class="form-check">
					<input class="form-check-input" type="checkbox" data-property="showfullname" <!-- IF settings.showfullname -->checked<!-- ENDIF settings.showfullname -->/>
					<strong>
						<label class="form-check-label">[[user:show_fullname]]</label>
					</strong>
				</div>
				<!-- ENDIF !hideFullname -->
				<!-- IF !config.disableChat -->
				<div class="form-check">
					<input class="form-check-input" type="checkbox" data-property="restrictChat" <!-- IF settings.restrictChat -->checked<!-- ENDIF settings.restrictChat -->/>
					<strong>
						<label class="form-check-label">[[user:restrict_chats]]</label>
					</strong>
				</div>
				<!-- ENDIF !config.disableChat -->
			</div>

			<h4>[[user:browsing]]</h4>
			<div class="card card-body mb-3">
				<div class="form-check">
					<input class="form-check-input" type="checkbox" data-property="openOutgoingLinksInNewTab" <!-- IF settings.openOutgoingLinksInNewTab -->checked<!-- ENDIF settings.openOutgoingLinksInNewTab -->/>
					<strong>
						<label class="form-check-label">[[user:open_links_in_new_tab]]</label>
					</strong>
				</div>
				<!-- IF inTopicSearchAvailable -->
				<div class="form-check">
					<input class="form-check-input" type="checkbox" data-property="topicSearchEnabled" <!-- IF settings.topicSearchEnabled -->checked<!-- ENDIF settings.topicSearchEnabled -->/>
					<strong>
						<label class="form-check-label">[[user:enable_topic_searching]]</label>
					</strong>
				</div>
				<p class="form-text">[[user:topic_search_help]]</p>
				<!-- ENDIF inTopicSearchAvailable -->
				<div class="form-check">
					<input class="form-check-input" type="checkbox" data-property="updateUrlWithPostIndex" {{{ if settings.updateUrlWithPostIndex }}}checked{{{ end }}}/>
					<strong>
						<label class="form-check-label">[[user:update_url_with_post_index]]</label>
					</strong>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="checkbox" data-property="scrollToMyPost" <!-- IF settings.scrollToMyPost -->checked<!-- ENDIF settings.scrollToMyPost -->/>
					<strong>
						<label class="form-check-label">[[user:scroll_to_my_post]]</label>
					</strong>
				</div>
			</div>

			<h4>[[global:pagination]]</h4>
			<div class="card card-body mb-3">
				<div class="mb-2 form-check">
					<input type="checkbox" class="form-check-input" data-property="usePagination" <!-- IF settings.usePagination -->checked<!-- ENDIF settings.usePagination -->> <strong><label class="form-check-label">[[user:paginate_description]]</label></strong>
				</div>
				<div class="mb-3">
					<strong><label class="form-label">[[user:topics_per_page]] ([[user:max_items_per_page, {maxTopicsPerPage}]])</label></strong>
					<input type="text" class="form-control" data-property="topicsPerPage" value="{settings.topicsPerPage}">
				</div>
				<div class="">
					<strong><label class="form-label">[[user:posts_per_page]] ([[user:max_items_per_page, {maxPostsPerPage}]])</label></strong>
					<input type="text" class="form-control" data-property="postsPerPage" value="{settings.postsPerPage}">
				</div>
			</div>

			<!-- IF !disableEmailSubscriptions -->
			<h4>[[global:email]]</h4>
			<div class="card card-body mb-3">
				<div class="mb-2">
					<label for="dailyDigestFreq">[[user:digest_label]]</label>
					<select class="form-select" id="dailyDigestFreq" data-property="dailyDigestFreq" autocomplete="off">
						{{{each dailyDigestFreqOptions}}}
						<option value="{dailyDigestFreqOptions.value}" <!-- IF dailyDigestFreqOptions.selected -->selected="1"<!-- ENDIF dailyDigestFreqOptions.selected -->>{dailyDigestFreqOptions.name}</option>
						{{{end}}}
					</select>
					<p class="form-text">[[user:digest_description]]</p>
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
				<div class="row">
					<div class="mb-2 col-lg-12">
						<select data-property="userLang" class="form-select">
							{{{each languages}}}
							<option value="{languages.code}" <!-- IF languages.selected -->selected<!-- ENDIF languages.selected -->>{languages.name} ({languages.code})</option>
							{{{end}}}
						</select>
					</div>
				</div>
				<!-- IF isAdmin -->
				<!-- IF isSelf -->
				<label>[[user:acp_language]]</label>
				<div class="row">
					<div class="mb-2 col-lg-12">
						<select data-property="acpLang" class="form-select">
							{{{each acpLanguages}}}
							<option value="{acpLanguages.code}" <!-- IF acpLanguages.selected -->selected<!-- ENDIF acpLanguages.selected -->>{acpLanguages.name} ({acpLanguages.code})</option>
							{{{end}}}
						</select>
					</div>
				</div>
				<!-- ENDIF isSelf -->
				<!-- ENDIF isAdmin -->
			</div>

			<h4>[[topic:watch]]</h4>
			<div class="card card-body mb-3">
				<div class="form-check">
					<input class="form-check-input" type="checkbox" data-property="followTopicsOnCreate" <!-- IF settings.followTopicsOnCreate -->checked <!-- ENDIF settings.followTopicsOnCreate -->/>
					<strong>
						<label class="form-check-label">[[user:follow_topics_you_create]]</label>
					</strong>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="checkbox" data-property="followTopicsOnReply" <!-- IF settings.followTopicsOnReply -->checked<!-- ENDIF settings.followTopicsOnReply -->/>
					<strong>
						 <label class="form-check-label">[[user:follow_topics_you_reply_to]]</label>
					</strong>
				</div>
				<div class="mb-2">
					<label>[[user:default-category-watch-state]]</label>
					<select class="form-select" data-property="categoryWatchState">
						<option value="watching" <!-- IF categoryWatchState.watching -->selected<!-- ENDIF categoryWatchState.watching -->>[[category:watching]]</option>
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
						<label>{notificationSettings.label}</label>
					</div>
					<div class="mb-2 col-5">
						<select class="form-select" data-property="{notificationSettings.name}">
							<option value="none" <!-- IF notificationSettings.none -->selected<!-- ENDIF notificationSettings.none -->>[[notifications:none]]</option>
							<option value="notification" <!-- IF notificationSettings.notification -->selected<!-- ENDIF notificationSettings.notification -->>[[notifications:notification_only]]</option>
							<option value="email" <!-- IF notificationSettings.email -->selected<!-- ENDIF notificationSettings.email -->>[[notifications:email_only]]</option>
							<option value="notificationemail" <!-- IF notificationSettings.notificationemail -->selected<!-- ENDIF notificationSettings.notificationemail -->>[[notifications:notification_and_email]]</option>
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
		<a id="submitBtn" href="#" class="btn btn-primary">[[global:save_changes]]</a>
	</div>
</div>

