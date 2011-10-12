<cfoutput>
	<h1>Session Maintenance</h1>
	#startFormTag(action="update", method="post")#
	#hiddenField(objectName="session", property="id")#
	<!---#select(objectName="session", options=conferences, property="conferenceid", includeBlank="select event...", label="* Event: ", appendToLabel="")#--->
	<br/>
	<div>
		<label for="session-date-month"><strong>* Date of Session:</strong> </label>
		#dateTimeSelect(objectName="session", property="date", startYear="2011", combine="true", prependToLabel="", minuteStep="15", twelveHour="true", timeOrder="hour,minute")#
	</div>
	<br/>
	#textField(objectName="session", property="endTime", label="Ending Time: ", appendToLabel="</strong>", append=" <em>(e.g. 3:00 PM or thru Thursday 4:00 PM)</em><br/>", size="40", maxlength="250", class="input")#
	<br/>
	<label for="session-announcedate-month"><strong>* Announce Date:</strong> </label>
	#dateSelect(objectName="session", property="announceDate", appendToLabel="</strong>", startYear="2011")#
	<br/>
	#textField(objectName="session", property="location", label="Location: ", size="60", maxlength="250",prependToLabel="<br/><strong>", appendToLabel="</strong>", class="input")#<br/>
	#textField(objectName="session", property="location2", label="Location 2: ", size="60", maxlength="250", appendToLabel="</strong>", class="input")#
	<br/>
	#textField(objectName="session", property="maxAttendees", label="* Maximum Attendees: ", size="4", appendToLabel="</strong>", class="input", append=" <em>(0 for unlimited)</em><br/>")#
	<br/>
	#submitTag("Update Session")#
	#endFormTag()#
</cfoutput>