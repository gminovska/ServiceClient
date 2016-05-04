using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShowTrackerForm : System.Web.UI.Page
{
    ServiceReference.ServiceClient showtracker= new ServiceReference.ServiceClient();

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Fill_Artist_Dropdown();
            Fill_Venue_Dropdown();
            Fill_Show_Dropdown();
        }
    }
    protected void Fill_Artist_Dropdown()
    {
        string[] artists = showtracker.GetArtistNames();
        ArtistDropDownList.DataSource = artists;
        ArtistDropDownList.DataBind();
    }

    protected void Fill_Venue_Dropdown()
    {
        string[] venues = showtracker.GetVenueNames();
        VenueDropDownList.DataSource = venues;
        VenueDropDownList.DataBind();
    }
    protected void Fill_Show_Dropdown()
    {
        string[] shows = showtracker.GetShowNames();
        ShowDropDownList.DataSource = shows;
        ShowDropDownList.DataBind();
    }
    protected void ShowsbyArtistButton_Click(object sender, EventArgs e)
    {
        string artist = ArtistDropDownList.SelectedItem.Text;
        ServiceReference.ShowsPerArtist[] spa = showtracker.GetArtistShows(artist);
        ShowGridView.DataSource = spa;
        ShowGridView.DataBind();
    }
    protected void ShowsbyVenueButton_Click(object sender, EventArgs e)
    {
        string venue = VenueDropDownList.SelectedItem.Text;
        ServiceReference.ShowsPerVenue[] spv = showtracker.GetVenueShows(venue);
        ShowGridView.DataSource = spv;
        ShowGridView.DataBind();
    }
}