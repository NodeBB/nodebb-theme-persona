<!-- IF posts.user.groups.length -->
<!-- BEGIN groups -->
<!-- IF groups.selected -->
<!-- IF groups.userTitleEnabled -->
<a href="{relative_path}/groups/{posts.user.groups.slug}"><small class="label group-label inline-block" style="background-color: {posts.user.groups.labelColor};"><!-- IF posts.user.groups.icon --><i class="fa {posts.user.groups.icon}"></i> <!-- ENDIF posts.user.groups.icon -->{posts.user.groups.userTitle}</small></a>
<!-- ENDIF groups.userTitleEnabled -->
<!-- ENDIF groups.selected -->
<!-- END groups -->
<!-- ENDIF posts.user.groups.length -->