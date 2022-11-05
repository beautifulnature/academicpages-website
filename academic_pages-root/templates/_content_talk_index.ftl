<#-- Move into content after https://github.com/jbake-org/jbake/issues/693 -->
<#import "talkBase.ftl" as parent>
<#import "macros.ftl" as macros>
<#assign videos = data.get('videos.yml').data>

<@layout></@layout>

<#macro layout>
<@parent.layout>
    <h1>${content.title}</h1>
    <ul>
        <#list videos as video>
            <li class="mb-2">
                <a style="cursor: pointer" data-bs-toggle="modal" data-bs-target="#videoModal" data-youtube-id="${video.youtubeId}" data-video-title="${video.title}">
                    <span><i class="fas fa-play-circle"></i></span>
                    <span class="align-text-middle link-primary">${video.title}</span>
                </a>
                <div class="small">${video.date?string("EEE d MMMM yyyy")}</div>
                <#if video.author??>
                    <@macros.userBadgeInline userId=video.author/>
                </#if>
            </li>
        </#list>
    </ul>
</@parent.layout>
</#macro>
