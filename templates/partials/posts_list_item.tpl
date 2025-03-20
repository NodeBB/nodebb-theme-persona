<li component="post" class="posts-list-item row {{{ if ./deleted }}} deleted{{{ else }}}{{{ if ./topic.deleted }}} deleted{{{ end }}}{{{ end }}}{{{ if ./topic.scheduled }}} scheduled{{{ end }}}" data-pid="{./pid}" data-uid="{./uid}">
    <div class="col-lg-11 col-sm-10 col-9 post-body pb-3">
        <a class="topic-title text-reset" href="{config.relative_path}/post/{encodeURIComponent(../pid)}">
            {{{ if !./isMainPost }}}RE: {{{ end }}}{./topic.title}
        </a>

        <div component="post/content" class="content mb-3">
            {../content}
        </div>

        <div class="mb-3">
            <a class="topic-category text-xs fw-bold text-uppercase text-secondary mb-3" href="{config.relative_path}/category/{../category.slug}">[[global:posted-in, {../category.name}]]</a>

            {{{ if ../isMainPost }}}
            {{{ if ../topic.tags.length }}}
            <span class="tag-list">
                {{{ each ../topic.tags }}}
                <a href="{config.relative_path}/tags/{topic.tags.valueEncoded}"><span class="tag tag-item tag-class-{topic.tags.class}">{topic.tags.valueEscaped}</span></a>
                {{{ end }}}
            </span>
            {{{ end }}}
            {{{ end }}}
        </div>

        <div class="post-info">
            <a href="{config.relative_path}/user/{./user.userslug}">{buildAvatar(./user, "28px", true, "user-img not-responsive")}</a>

            <div class="post-author text-secondary text-uppercase">
                <a class="text-reset" href="{config.relative_path}/user/{./user.userslug}">{./user.displayname}</a><br />
                <span class="timeago" title="{./timestampISO}"></span>
            </div>
        </div>
    </div>
</li>