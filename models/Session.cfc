<cfcomponent extends="Model">
	
	<cffunction name="init">
		<!--- Associations --->
		<cfset belongsTo("conference")/>
		
		<!--- Properties --->
		
		<!--- Validations --->
		<cfset validatesPresenceOf(property="conferenceid", message="Conference must be selected.")/>
		<cfset validatesPresenceOf(property="date", message="Session date required.")/>
		<cfset validatesFormatOf(property="date", type="date", message="Invalid date.")/>
	</cffunction>
	
</cfcomponent>