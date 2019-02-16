<!-- BEGIN posts -->
<li>
    <a href="/post/{posts.pid}">
        <!-- IF posts.user.picture -->
        <img title="{posts.user.username}" class="avatar avatar-sm avatar-rounded" src="{posts.user.picture}" />
        <!-- ELSE -->
        <span title="{posts.user.username}" class="avatar avatar-sm avatar-rounded" style="background-color: {posts.user.icon:bgColor};">{posts.user.icon:text}</span>
        <!-- ENDIF posts.user.picture -->
        {posts.topic.title}

    </a>
</li>
<!-- END posts -->
<!-- IF multiplePages -->
<li class="text-center">
    <a href="{url}">
        [[search:see-more-results]]
    </a>
</li>
<!-- ENDIF multiplePages -->