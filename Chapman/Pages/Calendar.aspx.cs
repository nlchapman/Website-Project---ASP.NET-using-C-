using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chapman.Pages
{
    public partial class Calendar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void MyCalendar_DayRender(Object source, DayRenderEventArgs e)
        {
            Label lbl = new Label();
            Image img = new Image();

            if(e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
            }

            if(e.Day.Date.DayOfWeek == DayOfWeek.Wednesday && !e.Day.IsOtherMonth)
            {
                e.Cell.BackColor = System.Drawing.Color.LightGoldenrodYellow;

                lbl.Text = "<br/>";

                img.ImageUrl ="~/Images/books.png";
                img.Width = Unit.Pixel(20);
                img.Height = Unit.Pixel(20);

                e.Cell.Controls.Add(lbl);
                e.Cell.Controls.Add(img);
                
            }

            if((e.Day.Date.Day == 3 || e.Day.Date.Day == 18 || e.Day.Date.Day == 27) && !e.Day.IsOtherMonth)
            {
                e.Cell.BackColor = System.Drawing.Color.GhostWhite;
            }

            if(e.Day.Date.Day == 12 && e.Day.Date.Month == 4)
            {
                lbl.Text = "<br/>40% off Sale!!";
                lbl.ForeColor = System.Drawing.Color.Tomato;
                lbl.Font.Size = 8;
                e.Cell.Controls.Add(lbl);
            }

            //Holidays
            if(e.Day.Date.Day == 1 && e.Day.Date.Month == 1)
            {
                lbl.Text = "<br/> New Year's Day";
                lbl.ForeColor = System.Drawing.Color.Azure;
                lbl.Font.Size = 8;
                e.Cell.Controls.Add(lbl);
            }

            if (e.Day.Date.Day == 31 && e.Day.Date.Month == 12)
            {
                lbl.Text = "<br/> New Year's Eve";
                lbl.ForeColor = System.Drawing.Color.Azure;
                lbl.Font.Size = 8;
                e.Cell.Controls.Add(lbl);
            }
            if (e.Day.Date.Day == 1 && e.Day.Date.Month == 4)
            {
                lbl.Text = "<br/> April Fool's Day";
                lbl.ForeColor = System.Drawing.Color.Azure;
                lbl.Font.Size = 8;
                e.Cell.Controls.Add(lbl);
            }

            if (e.Day.Date.Day == 24 && e.Day.Date.Month == 12)
            {
                lbl.Text = "<br/> Christmas Eve";
                lbl.ForeColor = System.Drawing.Color.Azure;
                lbl.Font.Size = 8;
                e.Cell.Controls.Add(lbl);
            }

            if (e.Day.Date.Day == 25 && e.Day.Date.Month == 12)
            {
                lbl.Text = "<br/> Christmas Day";
                lbl.ForeColor = System.Drawing.Color.Azure;
                lbl.Font.Size = 8;
                e.Cell.Controls.Add(lbl);
            }

            if (e.Day.Date.Day == 15 && e.Day.Date.Month == 1)
            {
                lbl.Text = "<br/> Martin Luther King, Jr. Day";
                lbl.ForeColor = System.Drawing.Color.Azure;
                lbl.Font.Size = 8;
                e.Cell.Controls.Add(lbl);
            }

            if (e.Day.Date.Day == 4 && e.Day.Date.Month == 7)
            {
                lbl.Text = "<br/> Independence Day";
                lbl.ForeColor = System.Drawing.Color.Azure;
                lbl.Font.Size = 8;
                e.Cell.Controls.Add(lbl);
            }

            if (e.Day.Date.Day == 22 && e.Day.Date.Month == 11)
            {
                lbl.Text = "<br/> Thanksgiving";
                lbl.ForeColor = System.Drawing.Color.Azure;
                lbl.Font.Size = 8;
                e.Cell.Controls.Add(lbl);
            }

            if (e.Day.Date.Day == 3 && e.Day.Date.Month == 9)
            {
                lbl.Text = "<br/> Labor Day";
                lbl.ForeColor = System.Drawing.Color.Azure;
                lbl.Font.Size = 8;
                e.Cell.Controls.Add(lbl);
            }
            if (e.Day.Date.Day == 27 && e.Day.Date.Month == 5)
            {
                lbl.Text = "<br/> Memorial Day";
                lbl.ForeColor = System.Drawing.Color.Azure;
                lbl.Font.Size = 8;
                e.Cell.Controls.Add(lbl);
            }

            if (e.Day.Date.Day == 14 && e.Day.Date.Month == 10)
            {
                lbl.Text = "<br/> Columbus Day";
                lbl.ForeColor = System.Drawing.Color.Azure;
                lbl.Font.Size = 8;
                e.Cell.Controls.Add(lbl);
            }

            if (e.Day.Date.Day == 11 && e.Day.Date.Month == 11)
            {
                lbl.Text = "<br/> Veterans' Day";
                lbl.ForeColor = System.Drawing.Color.Azure;
                lbl.Font.Size = 8;
                e.Cell.Controls.Add(lbl);
            }
        }

        protected void MyCalendar_OnSelectionChanged(Object source, EventArgs e)
        {

            switch(MyCalendar.SelectedDate.DayOfWeek)
            {
                case DayOfWeek.Monday:
                case DayOfWeek.Tuesday:
                case DayOfWeek.Friday:
                    SelectedDate.Text = "The store hours for " + MyCalendar.SelectedDate.DayOfWeek.ToString() + " are: 9 a.m. to 10p.m.";
                    break;
                case DayOfWeek.Wednesday:
                case DayOfWeek.Thursday:
                    SelectedDate.Text = "The store hours for " + MyCalendar.SelectedDate.DayOfWeek.ToString() + " are: 10 a.m. to 8 p.m.";
                    break;
                case DayOfWeek.Saturday:
                case DayOfWeek.Sunday:
                    SelectedDate.Text = "The store hours for " + MyCalendar.SelectedDate.DayOfWeek.ToString() + " are: 12 p.m. to 5 p.m.";
                    break;
            }

            if(MyCalendar.SelectedDate.Day == 3 || MyCalendar.SelectedDate.Day == 18 || MyCalendar.SelectedDate.Day == 27)
            {
                SelectedDate.Text = "We're sorry, but the store is not opened today: " + MyCalendar.SelectedDate.DayOfWeek + " the " + MyCalendar.SelectedDate.Day;
                switch(MyCalendar.SelectedDate.Day)
                {
                    case 3:
                        SelectedDate.Text += "rd";
                        break;
                    case 18:
                    case 27:
                        SelectedDate.Text += "th";
                        break;
                }
            }
        }

    }
}