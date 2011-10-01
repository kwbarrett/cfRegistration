<cfcomponent extends="Controller" output="false">
	<cffunction name="view">
		<cfset sessions = model("session").findAll(where="date >= #Now()#")/>
	</cffunction>
</cfcomponent>