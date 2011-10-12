<h1>Conference Maintenance</h1>

<cfoutput>
		
<p>
	#flash("success")#
</p>
<p>#buttonTo(action="new", text="Add New Conference")#</p>
#conferences.recordcount# records found.
<table width="75%" border="1" cellpadding="3" cellspacing="1">
	<tr>
		<th>Conference</th>
		<th>Contact Person</th>
		<th>Contact Phone</th>
		<th>Actions</th>
	</tr>
	<cfloop query="conferences">
		<tr>
			<td>#linkTo(text="#name#", action="view", key=id)#</td>
			<td>#contactName#</td>
			<td>#contactPhone#</td>
			<td align="center">
				#linkTo(action="edit", text="Edit", key=id)# | #linkTo(action="delete", text="Delete", key=id, confirm="Are you sure you w ant to delete #name#?")#
			</td>
		</tr>
	</cfloop>
</table>
</cfoutput>