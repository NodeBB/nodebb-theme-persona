<div class="composer">

	<div class="composer-container">
		<nav class="navbar navbar-fixed-top mobile-navbar visible-xs visible-sm">
			<span class="pull-left">
				<button class="btn btn-primary composer-discard" data-action="discard" tabindex="-1"><i class="fa fa-times"></i></button>
			</span>
			<span class="pull-right">
				<button class="btn btn-primary composer-submit" data-action="post" tabindex="-1"><i class="fa fa-chevron-right"></i></button>
			</span>
		</nav>
		<div class="title-container row">
			<!-- IF showHandleInput -->
			<div class="col-sm-3 col-md-12">
				<input class="handle form-control" type="text" tabindex="1" placeholder="[[topic:composer.handle_placeholder]]" value="{handle}" />
			</div>
			<div class="col-sm-9 col-md-12">
				<!-- IF isTopicOrMain -->
				<input class="title form-control" type="text" tabindex="1" placeholder="[[topic:composer.title_placeholder]]" value="{title}"/>
				<!-- ELSE -->
				<span class="title form-control">[[topic:composer.replying_to, "{title}"]]</span>
				<!-- ENDIF isTopicOrMain -->
			</div>
			<!-- ELSE -->
			<div class="<!-- IF isTopic -->col-lg-9<!-- ELSE -->col-lg-12<!-- ENDIF isTopic --> col-md-12">
				<!-- IF isTopicOrMain -->
				<input class="title form-control" type="text" tabindex="1" placeholder="[[topic:composer.title_placeholder]]" value="{title}"/>
				<!-- ELSE -->
				<span class="title form-control">[[topic:composer.replying_to, "{title}"]]</span>
				<!-- ENDIF isTopicOrMain -->
			</div>
			<!-- IF isTopic -->
			<div class="category-list-container col-lg-3 col-md-12">
				<select tabindex="3" class="form-control category-list"></select>
			</div>
			<!-- ENDIF isTopic -->
			<!-- ENDIF showHandleInput -->
		</div>

		<div class="row category-tag-row">
			<div class="btn-toolbar formatting-bar">
				<div class="btn-group">
					<!-- BEGIN formatting -->
						<!-- IF formatting.spacer -->
						<span class="btn spacer"></span>
						<!-- ELSE -->
						<!-- IF !formatting.mobile -->
						<span class="btn btn-link" tabindex="-1" data-format="{formatting.name}"><i class="{formatting.className}"></i></span>
						<!-- ENDIF !formatting.mobile -->
						<!-- ENDIF formatting.spacer -->
					<!-- END formatting -->

					<!--[if gte IE 9]><!-->
						<span class="btn btn-link img-upload-btn hide" data-format="picture" tabindex="-1">
							<i class="fa fa-picture-o"></i>
						</span>
						<span class="btn btn-link file-upload-btn hide" data-format="upload" tabindex="-1">
							<i class="fa fa-upload"></i>
						</span>
					<!--<![endif]-->

					<!-- IF allowTopicsThumbnail -->
					<span class="btn btn-link" tabindex="-1">
						<i class="fa fa-th-large topic-thumb-btn topic-thumb-toggle-btn hide" title="[[topic:composer.thumb_title]]"></i>
					</span>
					<div class="topic-thumb-container center-block hide">
						<form id="thumbForm" method="post" class="topic-thumb-form form-inline" enctype="multipart/form-data">
							<img class="topic-thumb-preview"></img>
							<div class="form-group">
								<label for="topic-thumb-url">[[topic:composer.thumb_url_label]]</label>
								<input type="text" id="topic-thumb-url" class="form-control" placeholder="[[topic:composer.thumb_url_placeholder]]" />
							</div>
							<div class="form-group">
								<label for="topic-thumb-file">[[topic:composer.thumb_file_label]]</label>
								<input type="file" id="topic-thumb-file" class="form-control" />
							</div>
							<div class="form-group topic-thumb-ctrl">
								<i class="fa fa-spinner fa-spin hide topic-thumb-spinner" title="[[topic:composer.uploading]]"></i>
								<i class="fa fa-times topic-thumb-btn hide topic-thumb-clear-btn" title="[[topic:composer.thumb_remove]]"></i>
							</div>
						</form>
					</div>
					<!--  ENDIF allowTopicsThumbnail -->

					<form id="fileForm" method="post" enctype="multipart/form-data">
						<!--[if gte IE 9]><!-->
							<input type="file" id="files" name="files[]" multiple class="gte-ie9 hide"/>
						<!--<![endif]-->
						<!--[if lt IE 9]>
							<input type="file" id="files" name="files[]" class="lt-ie9 hide" value="Upload"/>
						<![endif]-->
					</form>
				</div>

				<div class="btn-group pull-right action-bar hidden-sm hidden-xs">
					<button class="btn btn-default composer-discard" data-action="discard" tabindex="-1"><i class="fa fa-times"></i> [[topic:composer.discard]]</button>

					<button class="btn btn-primary composer-submit" data-action="post" tabindex="6"><i class="fa fa-check"></i> [[topic:composer.submit]]</button>
					<!-- IF !isEditing -->
					<button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown">
						<span class="caret"></span>
						<span class="sr-only">[[modules:composer.toggle_dropdown]]</span>
					</button>
					<ul class="dropdown-menu pull-right" role="menu">
						<li><a href="#" data-switch-action="post"><i class="fa fa-fw fa-check"></i> [[topic:composer.submit]]</a></li>
						<!-- IF isAdminOrMod -->
						<li><a href="#" data-switch-action="post-lock"><i class="fa fa-fw fa-lock"></i> [[modules:composer.submit_and_lock]]</a></li>
						<!-- ENDIF isAdminOrMod -->
					</ul>
					<!-- ENDIF !isEditing -->
				</div>

				<!-- IF isTopicOrMain -->
				<div class="tags-container inline-block">
					<input class="tags" type="text" class="form-control" placeholder="[[tags:enter_tags_here, {minimumTagLength}, {maximumTagLength}]]" tabindex="4"/>
				</div>
				<!-- ENDIF isTopicOrMain -->
			</div>
		</div>

		<div class="row write-preview-container">
			<div class="col-md-6 col-sm-12 write-container">
				<div class="help-text">
					[[modules:composer.compose]] <span class="help hidden"><i class="fa fa-question-circle"></i></span>
					<span class="toggle-preview hide">[[modules:composer.show_preview]]</span>
				</div>
				<textarea class="write" tabindex="5"></textarea>
			</div>
			<div class="col-md-6 hidden-sm hidden-xs preview-container">
				<div class="help-text">
					<span class="toggle-preview">[[modules:composer.hide_preview]]</span>
				</div>
				<div class="preview well"></div>
			</div>
		</div>

		<div class="imagedrop"><div>[[topic:composer.drag_and_drop_images]]</div></div>

		<div class="resizer"><div class="trigger text-center"><i class="fa"></i></div></div>
	</div>
</div>
