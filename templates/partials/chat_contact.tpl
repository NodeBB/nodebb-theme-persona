			<li data-username="{../username}" data-uid="{../uid}" class="<!-- IF ../unread -->unread<!-- ENDIF ../unread -->">
				<!-- IF ../picture -->
				<img class="user-img" src="{../picture}">
				<!-- ELSE -->
				<div class="user-icon user-img" style="background-color: {../icon:bgColor};">{../icon:text}</div>
				<!-- ENDIF ../picture -->
				<i component="user/status" title="[[global:{../status}]]" class="fa fa-circle status {../status}"></i>
				<span class="username">{../username}</span>
				<span class="teaser-content">{../teaser.content}</span>
				<span class="teaser-timestamp timeago" title="{../teaser.timestampISO}"></span>
			</li>