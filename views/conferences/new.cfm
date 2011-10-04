<!--- 
	title: new.cfm
	author: Ken Barrett
	purpose: I display the new conference form.
 --->
 
<cfoutput>
	#startFormTag(action="create")#
	#includePartial("conferenceForm")#
	#endFormTag()#
</cfoutput>