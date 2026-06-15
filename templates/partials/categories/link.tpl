<!-- IF ../isSection -->
{../name}
<!-- ELSE -->
<!-- IF ../link -->
<a href="{txEscape(../link)}" itemprop="url">
<!-- ELSE -->
<a href="{config.relative_path}/category/{../slug}" itemprop="url">
<!-- ENDIF ../link -->
{../name}
</a>
<!-- ENDIF ../isSection -->