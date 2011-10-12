<cfoutput>
	<h1>Sessions Maintenance</h1>
	
	#buttonTo(action="new", text="Add New Session")#
	<p><br/></p>
	<cfform name="sessionListForm" action="edit" method="post">
		<label for="id"><strong>Session: </strong></label>
		<select name="id" id="id">
			<option>select session...</option>
			<cfloop query="sessions">
				<option value="#id#">#name# - #DateFormat(date, 'm/d/yyyy')#</option>
			</cfloop>
		</select>
		<br/>
		#submitTag("Update this session")#
	</cfform> 
</cfoutput>