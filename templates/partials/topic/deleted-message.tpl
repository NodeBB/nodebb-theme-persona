<div component="topic/deleted/message" class="alert alert-warning<!-- IF !deleted --> hidden<!-- ENDIF !deleted --> clearfix">
    <span class="float-start">[[topic:deleted_message]]</span>
    <span class="float-end">
        <!-- IF deleter -->
        <a href="{config.relative_path}/user/{deleter.userslug}">
            <strong>{deleter.username}</strong>
        </a>
        <small class="timeago" title="{deletedTimestampISO}"></small>
        <!-- ENDIF deleter -->
    </span>
</div>