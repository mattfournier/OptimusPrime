<%response.buffer = true%>


<!-- #include virtual="/common/doctypeStrict_e.inc"-->

<!-- #include virtual="/FINIMScripts/dbqueryFINCLF2.asp"-->
<!-- FIN Toolkit TEMPLATE Markup 2008-10-10 2:57:02 PM -->

<%
writePreContentDetails()
if sView <> "printable" Then
%>
<!-- #include virtual="/common/fin-SB-eng.htm"-->
<%
End If
writeTableCells()
%>
<!-- #include file="index-BD-eng.htm"-->
<%
writePostContentDetails()

Sub writeHeadScript()
' Use this area if you need to add any script under the <head> tag, otherwise leave it blank.
End Sub
%>

