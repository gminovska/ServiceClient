<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowTrackerForm.aspx.cs" Inherits="ShowTrackerForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show Tracker App</title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <h1>Show Tracker Application</h1>
    <form id="form1" runat="server">

        <div id="select_artist">
            <h2>Artists and Shows</h2>
            <p>In order to see all the artists, click on the drop down menu. By selecting an artist and clicking on the "Shows per Artist" Button, you can see all the shows that feature the artist you selected. </p>
            <asp:DropDownList ID="ArtistDropDownList" runat="server"></asp:DropDownList>
            <asp:Button ID="ShowsbyArtist" runat="server" Text="Shows per Artist" OnClick="ShowsbyArtistButton_Click" />
        </div>
        <div id="select_venue">
            <h2>Venues and Shows</h2>
            <p>Curious about which shows play at which venue? <br />Select a venue from the drop down list, and click on the "Shows per Venue" button to see the shows played there.</p>
            <asp:DropDownList ID="VenueDropDownList" runat="server"></asp:DropDownList>
            <asp:Button ID="ShowsbyVenue" runat="server" Text="Shows per Venue" OnClick="ShowsbyVenueButton_Click" />
        </div>
        <div id="select_shows">
            <h2>Shows only</h2>
            <p>Interested in shows only? <br /> If you are looking for overview of all the shows currently available, see the drop down menu below.</p>
            <asp:DropDownList ID="ShowDropDownList" runat="server"></asp:DropDownList>
        </div>
        
        <asp:GridView ID="ShowGridView" runat="server"></asp:GridView>
        
    </form>
</body>
</html>
