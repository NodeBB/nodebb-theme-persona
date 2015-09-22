			<li data-username="{../username}" data-uid="{../uid}" class="<!-- IF ../unread -->unread<!-- ENDIF ../unread -->">
				<img class="user-img" src="{../picture}">
				<i component="user/status" title="[[global:{../status}]]" class="fa fa-circle status {../status}"></i>
				<span class="username">{../username}</span>
				<span class="teaser-content">{../teaser.content}</span>
				<span class="teaser-timestamp timeago" title="{../teaser.timestampISO}"></span>
			</li>