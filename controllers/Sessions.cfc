<cfcomponent extends="Controller" output="false">
	<cfset meta.title = "Session Maintenance"/>
	<cffunction name="view">
		<cfset sessions = model("session").findAll(where="date >= #Now()#")/>
	</cffunction>
	
	<cffunction name="index">
		<cfset meta.title = "Session Maintenance"/>
		<cfset sessions = model("session").findAll(order="date DESC", include="conference")/>
	</cffunction>
	
	<cffunction name="new">
		<cfset meta.title = "Session Maintenance"/>
		<cfset session = model("session").new()/>
		<cfset conferences = model("conference").findAll(order="name")/>
	</cffunction>
	
	<cffunction name="create">
		
		<cfset sessionDate = params.session.sessiondate & " " & timeFormat(params.session.sessionTime,'hh:mm:ss')/>
		<cfset params.session.date = createODBCDateTime(sessionDate)/>
 		<cfset breakoutSession = model("session").new(params.session)/>
		<cfif breakoutSession.save()>
			<cfset flashInsert(sucess="Session created.")/>
			<cfset redirectTo(action="index")/>
		<cfelse>
			<cfset flashInsert(error="There was a problem with your entry. #errorMessagesFor('session')#")/>
			<cfset renderPage(action="new")/>
		</cfif>
	</cffunction>
	
	<cffunction name="edit">
		<cfset session = model("session").findByKey(params.id)/>
	</cffunction>
	
	<cffunction name="update">
		<cfdump var="#params#">
		<cfset updatedSession = model("session").findByKey(params.session.id)/>
		<cfset updatedSession.update(params.session)/>
		<cfif updatedSession.hasErrors()>
			<cfset session = model("session").new(params.session)/>
			<cfset renderPage("edit")/>
		<cfelse>
			<cfset redirectTo(action="index")/>
		</cfif>
	</cffunction>
</cfcomponent>