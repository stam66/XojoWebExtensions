#tag Class
Protected Class TextElement
Implements Element
	#tag Method, Flags = &h0
		Sub Constructor(value as string, isRaw as Boolean = False)

		  self.Text = value
		  self.Raw = isRaw
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString(delimiter as string = "") As String
		  If Raw Then
		    Return Text
		  End If

		  Return DOM.EscapeHTML(Text)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		#tag Note
			When True, Text is emitted as-is so intentional HTML entities or markup survive.
			When False (the default), Text is HTML-escaped.
		#tag EndNote
		Raw As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		Text As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Text"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
