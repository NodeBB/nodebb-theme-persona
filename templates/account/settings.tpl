<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="row">
		<div class="col-sm-12 col-lg-6">
			<!-- IF !disableCustomUserSkins -->
			<h5>[[user:select-skin]]</h5>
			<div class="card card-block">
				<select class="form-control" id="bootswatchSkin" data-property="bootswatchSkin">
					<!-- BEGIN bootswatchSkinOptions -->
					<option value="{bootswatchSkinOptions.value}" <!-- IF bootswatchSkinOptions.selected -->selected<!-- ENDIF bootswatchSkinOptions.selected -->>{bootswatchSkinOptions.name}</option>
					<!-- END bootswatchSkinOptions -->
				</select>
			</div>
			<!-- ENDIF !disableCustomUserSkins -->

			<!-- IF allowUserHomePage -->
			<h5>[[user:select-homepage]]</h5>
			<div class="card card-block">
				<div class="form-group">
					<label for="dailyDigestFreq">[[user:homepage]]</label>
					<select class="form-control" data-property="homePageRoute">
						<option value="none">None</option>
						<!-- BEGIN homePageRoutes -->
						<option value="{homePageRoutes.route}" <!-- IF homePageRoutes.selected -->selected="1"<!-- ENDIF homePageRoutes.selected -->>{homePageRoutes.name}</option>
						<!-- END homePageRoutes -->
					</select>
					<p class="help-block">[[user:homepage_description]]</p>
				</div>
				<div id="homePageCustom" class="form-group" style="display: none;">
					<label for="homePageCustom">[[user:custom_route]]</label>
					<input type="text" class="form-control" data-property="homePageCustom" id="homePageCustom" value="{settings.homePageRoute}"/>
					<p class="help-block">[[user:custom_route_help]]</p>
				</div>
			</div>
			<!-- ENDIF allowUserHomePage -->

			<h5>[[user:browsing]]</h5>
			<div class="card card-block">
				<div class="checkbox">
					<label>
						<input type="checkbox" data-property="openOutgoingLinksInNewTab" <!-- IF settings.openOutgoingLinksInNewTab -->checked<!-- ENDIF settings.openOutgoingLinksInNewTab -->/> <strong>[[user:open_links_in_new_tab]]</strong>
					</label>
				</div>
				<!-- IF inTopicSearchAvailable -->
				<div class="checkbox">
					<label>
						<input type="checkbox" data-property="topicSearchEnabled" <!-- IF settings.topicSearchEnabled -->checked<!-- ENDIF settings.topicSearchEnabled -->/> <strong>[[user:enable_topic_searching]]</strong>
					</label>
				</div>
				<p class="help-block">[[user:topic_search_help]]</p>
				<!-- ENDIF inTopicSearchAvailable -->
				<div class="checkbox">
					<label>
						<input type="checkbox" data-property="scrollToMyPost" <!-- IF settings.scrollToMyPost -->checked<!-- ENDIF settings.scrollToMyPost -->/> <strong>[[user:scroll_to_my_post]]</strong>
					</label>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" data-property="delayImageLoading" <!-- IF settings.delayImageLoading -->checked<!-- ENDIF settings.delayImageLoading -->/> <strong>[[user:delay_image_loading]]</strong>
					</label>
				</div>
				<p class="help-block">[[user:image_load_delay_help]]</p>
			</div>

			<!-- IF !disableEmailSubscriptions -->
			<h5>[[global:email]]</h5>
			<div class="card card-block">
				<div class="form-group">
					<label for="dailyDigestFreq">[[user:digest_label]]</label>
					<select class="form-control" id="dailyDigestFreq" data-property="dailyDigestFreq" autocomplete="off">
						<!-- BEGIN dailyDigestFreqOptions -->
						<option value="{dailyDigestFreqOptions.value}" <!-- IF dailyDigestFreqOptions.selected -->selected="1"<!-- ENDIF dailyDigestFreqOptions.selected -->>{dailyDigestFreqOptions.name}</option>
						<!-- END dailyDigestFreqOptions -->
					</select>
					<p class="help-block">[[user:digest_description]]</p>
				</div>

				<div class="checkbox">
					<label>
						<input type="checkbox" data-property="sendChatNotifications" <!-- IF settings.sendChatNotifications -->checked<!-- ENDIF settings.sendChatNotifications -->/> <strong>[[user:send_chat_notifications]]</strong>
					</label>
				</div>

				<div class="checkbox">
					<label>
						<input type="checkbox" data-property="sendPostNotifications" <!-- IF settings.sendPostNotifications -->checked<!-- ENDIF settings.sendPostNotifications -->/> <strong>[[user:send_post_notifications]]</strong>
					</label>
				</div>
			</div>
			<!-- ENDIF !disableEmailSubscriptions -->

			<!-- BEGIN customSettings -->
			<h5>{customSettings.title}</h5>
			<div class="card card-block">
				{customSettings.content}
			</div>
			<!-- END customSettings -->

		</div>

		<div class="col-sm-12 col-lg-6">
			<h5>[[global:language]]</h5>
			<div class="card card-block">
				<select data-property="userLang" class="form-control">
					<!-- BEGIN languages -->
					<option value="{languages.code}" <!-- IF languages.selected -->selected<!-- ENDIF languages.selected -->>{languages.name} ({languages.code})</option>
					<!-- END languages -->
				</select>
			</div>


			<h5>[[global:pagination]]</h5>
			<div class="card card-block">
				<div class="checkbox">
					<label>
						<input type="checkbox" data-property="usePagination" <!-- IF settings.usePagination -->checked<!-- ENDIF settings.usePagination -->> <strong>[[user:paginate_description]]</strong>
					</label>
				</div>

				<strong>[[user:topics_per_page]]</strong><br /> <input type="text" class="form-control" data-property="topicsPerPage" value="{settings.topicsPerPage}"><br />
				<strong>[[user:posts_per_page]]</strong><br /> <input type="text" class="form-control" data-property="postsPerPage" value="{settings.postsPerPage}"><br />
			</div>

			<h5>[[global:privacy]]</h5>
			<div class="card card-block">
				<div class="checkbox">
					<label>
						<input type="checkbox" data-property="showemail" <!-- IF settings.showemail -->checked <!-- ENDIF settings.showemail -->/> <strong>[[user:show_email]]</strong>
					</label>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" data-property="showfullname" <!-- IF settings.showfullname -->checked<!-- ENDIF settings.showfullname -->/> <strong>[[user:show_fullname]]</strong>
					</label>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" data-property="restrictChat" <!-- IF settings.restrictChat -->checked<!-- ENDIF settings.restrictChat -->/> <strong>[[user:restrict_chats]]</strong>
					</label>
				</div>
			</div>

			<h5>[[topic:watch]]</h5>
			<div class="card card-block">
				<div class="checkbox">
					<label>
						<input type="checkbox" data-property="followTopicsOnCreate" <!-- IF settings.followTopicsOnCreate -->checked <!-- ENDIF settings.followTopicsOnCreate -->/> <strong>[[user:follow_topics_you_create]]</strong>
					</label>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" data-property="followTopicsOnReply" <!-- IF settings.followTopicsOnReply -->checked<!-- ENDIF settings.followTopicsOnReply -->/> <strong>[[user:follow_topics_you_reply_to]]</strong>
					</label>
				</div>
			</div>

			<h5>[[global:header.notifications]]</h5>
			<div class="card card-block">
				<div class="checkbox">
					<label>
						<input type="checkbox" data-property="notificationSounds" <!-- IF settings.notificationSounds -->checked<!-- ENDIF settings.notificationSounds -->> <strong>[[user:notification_sounds]]</strong>
					</label>
				</div>
			</div>
		</div>
	</div>
	<div class="form-actions">
		<a id="submitBtn" href="#" class="btn btn-primary">[[global:save_changes]]</a>
	</div>
</div>