<cfoutput>
	#textField(objectName="conference", label="Name of conference", property="name", size="80", maxlength="250")#
	#textarea(objectName="conference", label="Description", property="description", rows="6", cols="80")#
	#textField(objectName="conference", label="Contact Name", property="contactName", size="60", maxlentgh="250")#
	#textField(objectName="conference", label="Phone", property="contactPhone", size="15", maxlentgh="50")#
	<br/><br/>
	#submitTag(value="Add Event")#
</cfoutput>