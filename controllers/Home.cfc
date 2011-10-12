<cfcomponent extends="Controller" output="false">
	<cfset meta.title = "Event Registration"/>
	
	<cffunction name="index">
		<cfset sessions = model("session").findAll(where="date >= Now()", include="conference", where="sessions.date >= Now() AND sessions.announceDate <= Now() OR sessions.announceDate IS NULL", order="conferences.name, sessions.date")/>
	</cffunction>

</cfcomponent>