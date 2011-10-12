<cfoutput>
	<h1>Session Maintenance</h1>
	
	<p>#linkTo(text="Back to Admin Menu")#
</cfoutput>

<cfoutput>
	<cfform name="sessionForm" action="create" method="post">
		#select(objectName="session", options=conferences, property="conferenceid", includeBlank="select event...", label="<span class='red'>*</span> Event: ", appendToLabel="")#
		<br/>
		<div style="float:left"><label for=""><span class="red">*</span> <strong>Date:</strong>&nbsp;&nbsp;</label>  &nbsp;&nbsp;</div>
		<cfinput type="datefield" name="session[sessiondate]" class="input"><br/><p>
		<label for="session[time]"><span class="red">*</span> <strong>Time:</strong> </label>#timeSelect(objectName="session", property="sessionTime", minuteStep="15", twelvehour=true, combine=false, order="hour,minute")#<br/>
		#textField(objectName="session", property="endTime", label="Ending Time: ", appendToLabel="</strong>", append=" <em>(e.g. 3:00 PM or thru Thursday 4:00 PM)</em><br/>", size="40", maxlength="250", class="input")#<br/>
		<div style="float:left"><label for=""><span class="red">*</span> <strong>Announce Date:</strong>&nbsp;&nbsp;</label>  &nbsp;&nbsp;</div>
		<cfinput type="datefield" name="session[announcedate]" class="input"><br/>
		#textField(objectName="session", property="location", label="Location: ", size="60", maxlength="250",prependToLabel="<br/><strong>", appendToLabel="</strong>", class="input")#<br/>
		#textField(objectName="session", property="location2", label="Location 2: ", size="60", maxlength="250", appendToLabel="</strong>", class="input")#
		<br/>
		#textField(objectName="session", property="maxAttendees", label="<span class='red'>*</span> Maximum Attendees: ", size="4", appendToLabel="</strong>", class="input", append=" <em>(0 for unlimited)</em><br/>")#
		<br/>
		<p>#submitTag("Add Session")#</p>
	</cfform> 
</cfoutput>