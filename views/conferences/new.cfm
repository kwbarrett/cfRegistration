<!--- 
	title: new.cfm
	author: Ken Barrett
	purpose: I display the new conference form.
 --->

<h1>New Conference</h1>

<cfoutput>
	#startFormTag(action="create")#
	#includePartial("conferenceForm")#
	#submitTag(value="Add Event")#
	#endFormTag()#
</cfoutput>