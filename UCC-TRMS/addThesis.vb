﻿Imports MySql.Data.MySqlClient
Public Class addThesis
    Dim conn As New MySqlConnection("server=localhost;username=root;password=;database=dbtrms")
    Public Property SelectedRows As DataGridViewSelectedRowCollection

    Private Sub btnAddThesisClose_Click(sender As Object, e As EventArgs) Handles btnAddThesisClose.Click
        Me.Close()
    End Sub

    Private Sub btnSaveThesis_Click(sender As Object, e As EventArgs) Handles btnSaveThesis.Click
        Try
            Dim dn, dn1 As String
            dn = Date.Now().ToString("MMddyy000")
            conn.Open()
            Dim y As New MySqlCommand("SELECT thesis_id FROM tblthesis ORDER BY thesis_id DESC LIMIT 1;", conn)
            Dim dr As MySqlDataReader
            Dim f As Integer
            Dim tid, id As Integer
            id = 1
            dr = y.ExecuteReader
            If dr.Read() Then
                tid = dr(0)
                f = tid + id
                dr.Close()
            Else
                f = dn.ToString() + tid + id
            End If
            conn.Close()

            conn.Open()
            If MsgBox("Do you want to save this record?", vbYesNo + vbQuestion) = vbYes Then
                Dim comm As New MySqlCommand("INSERT INTO tblthesis(thesis_id, title, objectives, scope, limitations, teamname, members, panels, category) VALUES (@thesis_id, @title, @objectives, @scope, @limitations, @teamname, @members, @panels, @category)", conn)
                With comm
                    .Parameters.AddWithValue("@thesis_id", f)
                    .Parameters.AddWithValue("@title", tbTitle.Text.ToUpper())
                    .Parameters.AddWithValue("@objectives", tbObjectives.Text.ToUpper())
                    .Parameters.AddWithValue("@scope", tbScope.Text.ToUpper())
                    .Parameters.AddWithValue("@limitations", tbLimitation.Text.ToUpper())
                    .Parameters.AddWithValue("@teamname", tbTeam.Text.ToUpper())
                    .Parameters.AddWithValue("@members", tbMembers.Text.ToUpper())
                    .Parameters.AddWithValue("@panels", tbPanel.Text.ToUpper())
                    .Parameters.AddWithValue("@category", cbCategory.Text.ToUpper())
                    .ExecuteNonQuery()
                End With
                MsgBox("Record has been saved!", vbInformation)
                clear()
                With thesis
                    mainForm.OpenChildForm(New thesis)
                End With
                Me.Close()
            End If
            conn.Close()
        Catch ex As Exception

        End Try
    End Sub
    Sub clear()
        tbTitle.Clear()
        tbObjectives.Clear()
        tbScope.Clear()
        tbLimitation.Clear()
        tbTeam.Clear()
        tbMembers.Clear()
        tbPanel.Clear()
        cbCategory.SelectedIndex = -1
    End Sub

    Private Sub btnUpdate_Click(sender As Object, e As EventArgs) Handles btnUpdate.Click
        Dim result As DialogResult = MessageBox.Show("Are you sure you want to update this Record?", "Update", MessageBoxButtons.YesNo, MessageBoxIcon.Warning)
        Dim i As String
        i = SelectedRows(0).Cells(2).Value

        If result = DialogResult.Yes Then

            conn.Open()
            Dim comm As New MySqlCommand("UPDATE tblthesis SET title=@title, objectives=@objectives, scope=@scope, limitations=@limitations, teamname=@teamname, members=@members, panels=@panels, category=@category WHERE thesis_id = '" & i & "'", conn)
            With comm
                .Parameters.AddWithValue("@title", tbTitle.Text.ToUpper())
                .Parameters.AddWithValue("@objectives", tbObjectives.Text.ToUpper())
                .Parameters.AddWithValue("@scope", tbScope.Text.ToUpper())
                .Parameters.AddWithValue("@limitations", tbLimitation.Text.ToUpper())
                .Parameters.AddWithValue("@teamname", tbTeam.Text.ToUpper())
                .Parameters.AddWithValue("@members", tbMembers.Text.ToUpper())
                .Parameters.AddWithValue("@panels", tbPanel.Text.ToUpper())
                .Parameters.AddWithValue("@category", cbCategory.Text.ToUpper())

            End With
            If comm.ExecuteNonQuery Then
                MessageBox.Show("Updated Successfully", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information)
                mainForm.OpenChildForm(New thesis)
                Me.Hide()
            End If
            conn.Close()
        ElseIf result = DialogResult.No Then
        Else
            MsgBox("ERROR")
        End If


    End Sub

End Class