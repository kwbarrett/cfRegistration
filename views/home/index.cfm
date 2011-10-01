<cfoutput>
	<p>#linkTo(text="Calendar View")#</p>
</cfoutput>

<table cellspacing="0" id="schedule"> 
	<tr>
		<th>Date</th>
		<th>Time</th>
		<th>Location</th>
		<th>Click To<br>Register</th>
		<th>Current<br>Attendees</th>
	</tr>
	<cfoutput query="sessions" group="eventName">
		<tr>
			<td colspan="5" class="head">
				<strong>#eventName#</strong>(#linkTo(controller="Events", action="view", key=events.id, title="View description of this event")#)
			</td>
		</tr>
		<cfoutput>
			<tr>
				<td>#date#</td>
				<td>#TimeFormat(date, 'medium' )#</td>
				<td>#location#</td>
				<td align="center">
					
				</td>
				<td align="center">
					<!--- TODO: Placeholder for current attendees calculated property.   --->
				</td>
			</tr>
		</cfoutput>
	</cfoutput>
</table>
<cfoutput>
	<p>#linkTo(text="Update Your Info")#</p>
</cfoutput>