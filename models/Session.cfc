<cfcomponent extends="Model">
	<cffunction name="init">
		<cfset belongsTo("conference")/>
	</cffunction>
</cfcomponent>