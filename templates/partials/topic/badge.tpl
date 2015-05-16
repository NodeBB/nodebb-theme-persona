<!-- IF posts.user.groups.length -->
<!-- BEGIN groups -->
<!-- IF ../selected -->
<!-- IF ../userTitleEnabled -->
<a href="{config.relative_path}/groups/{../slug}"><small class="label group-label inline-block" style="background-color: {../labelColor};"><!-- IF ../icon --><i class="fa {../icon}"></i> <!-- ENDIF ../icon -->{../userTitle}</small></a>
<!-- ENDIF ../userTitleEnabled -->
<!-- ENDIF ../selected -->
<!-- END groups -->
<!-- ENDIF posts.user.groups.length -->