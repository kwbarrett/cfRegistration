<cfcomponent extends="Controller" output="false">
	<cffunction name="index">
		<cfset conferences = model("conference").findAll()/>
		<cfdump var="#conferences#">
	</cffunction>
</cfcomponent>