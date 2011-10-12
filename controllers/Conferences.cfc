<cfcomponent extends="Controller" output="false">
	
	<cffunction name="index">
		<cfset meta.title="Conference Maintenance"/>
		<cfset conferences = model("conference").findAll()/>
		<cfset conference = model("conference").new()/>
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
	
	<cffunction name="edit">
		<cfset meta.title = "Edit Conference"/>
		<cfset conference = model("conference").findByKey(params.key)/>
	</cffunction>
	
	<cffunction name="update">
		<cfset conference = model("conference").findByKey(params.key)/>
		<cfif conference.update(params.conference)>
			<cfset flashInsert(success="Your entry has been updated successfully.")>
			<cfset redirectTo(action="index")/>
		<cfelse>
			<cfset flashInsert(error="There was a problem with your entry.")/>
			<cfset renderPage(action="edit", key=conference.id)/>
		</cfif>
	</cffunction>
	
	<cffunction name="delete">
		<cfset conference = model("conference").findByKey(params.key)/>
		<cfset conference.delete()/>
		<cfset flashInsert(success="Conference deleted successfully.")/>
		<cfset redirectTo(action="index")/>
	</cffunction>
	
	<cffunction name="view">
		<cfset meta.title = "View Conference"/>
		<cfset conference = model("conference").findByKey(params.key)/>
	</cffunction>
</cfcomponent>