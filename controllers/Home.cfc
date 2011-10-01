<cfcomponent extends="Controller" output="false">
	<cffunction name="index">
		<cfset sessions = model("session").findAll(where="date >= Now()", include="conference", where="sessions.date >= Now() AND sessions.announceDate <= Now() OR sessions.announceDate IS NULL", order="conferences.eventName, sessions.date")/>
	</cffunction>
</cfcomponent>