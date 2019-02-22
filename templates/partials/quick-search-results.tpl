<!-- BEGIN posts -->
<li>
    <a href="/post/{posts.pid}">
        <!-- IF posts.user.picture -->
        <img title="{posts.user.username}" class="avatar avatar-sm avatar-rounded" src="{posts.user.picture}" />
        <!-- ELSE -->
        <span title="{posts.user.username}" class="avatar avatar-sm avatar-rounded" style="background-color: {posts.user.icon:bgColor};">{posts.user.icon:text}</span>
        <!-- ENDIF posts.user.picture -->
        <span class="quick-search-title">{posts.topic.title}</span>
        <br/>
        <p class="snippet">
        {posts.snippet}
        </p>
        <small class="post-info pull-right">
            <span class="fa-stack" style="{function.generateCategoryBackground, posts.category}"><i style="color:{posts.category.color};" class="fa {posts.category.icon} fa-stack-1x"></i></span> {posts.category.name} &bull;
            <span class="timeago" title="{posts.timestampISO}"></span>
        </small>
     </a>
</li>
<!-- IF !@last -->
<li role="separator" class="divider"></li>
<!-- ENDIF -->
<!-- END posts -->
<!-- IF multiplePages -->
<li class="text-center">
    <a href="{url}">
        [[search:see-more-results, {matchCount}]]
    </a>
</li>
<!-- ENDIF multiplePages -->