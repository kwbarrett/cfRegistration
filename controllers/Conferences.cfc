<cfcomponent extends="Controller" output="false">
	
	<cffunction name="index">
		<cfset meta.title="Event Maintenance"/>
		<cfset conferences = model("conference").findAll()/>
	</cffunction>
	
	<cffunction name="new">
		<cfset meta.title="Event Information"/>
		<cfset conference = model("conference").new()/>
	</cffunction>
	
	<cffunction name="create">
		<cfset conference = model("conference").new(params.conference)/>
		<cfif conference.save()>
			<cfset flashInsert(sucess="Conference created.")/>
			<cfset redirectTo(action="index")/>
		<cfelse>
			<cfset flashInsert(error="There was a problem with your entry. #errorMessagesFor('conference')#")/>
			<cfset renderPage(action="new")/>
		</cfif>
	</cffunction>
</cfcomponent>