<!-- IF config.showMultipleBadges -->
    <!-- BEGIN posts.user.allGroups -->
        <a href="{config.relative_path}/groups/{posts.user.allGroups.slug}"><small class="label group-label inline-block" style="background-color: {posts.user.allGroups.labelColor};"><!-- IF posts.user.allGroups.icon --><i class="fa {posts.user.allGroups.icon}"></i> <!-- ENDIF posts.user.allGroups.icon -->{posts.user.allGroups.userTitle}</small></a>
    <!-- END posts.user.allGroups -->
<!-- ENDIF config.showMultipleBadges -->
<!-- IF !config.showMultipleBadges -->
    <!-- IF posts.user.selectedGroup.slug -->
        <a href="{config.relative_path}/groups/{posts.user.selectedGroup.slug}"><small class="label group-label inline-block" style="background-color: {posts.user.selectedGroup.labelColor};"><!-- IF posts.user.selectedGroup.icon --><i class="fa {posts.user.selectedGroup.icon}"></i> <!-- ENDIF posts.user.selectedGroup.icon -->{posts.user.selectedGroup.userTitle}</small></a>
    <!-- ENDIF posts.user.selectedGroup.slug -->
<!-- ENDIF !config.showMultipleBadges -->