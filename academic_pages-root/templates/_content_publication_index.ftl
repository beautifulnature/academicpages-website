<#-- Move into content after https://github.com/jbake-org/jbake/issues/693 -->
<#import "publicationBase.ftl" as parent>
<#import "macros.ftl" as macros>

<@layout>${content.body}</@layout>

<#macro layout>
<@parent.layout>
    <h1>${content.title}</h1>
    <ul>
        <#list published_publications as publication>
            <li class="mb-2">
                <div class="title">
                    <a href="${content.rootpath}${publication.uri}">${publication.title}</a>
                </div>
                <div class="small">${publication.date?string("EEE d MMMM yyyy")}</div>
                <@macros.userBadgeInline userId=publication.author/>
            </li>
        </#list>
    </ul>
</@parent.layout>
</#macro>
