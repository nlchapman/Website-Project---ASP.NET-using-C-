<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Chapman.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Just a little about me...</h3>
     <img src="../Images/about_pic.jpg" class="img-thumbnail" alt="about_pic">
    <p>
        <br/>
        My name is Nick Chapman and I am a computer programmer.  I'm only a few classes away from getting my BS in Computer Science.
        <br />
        I have taken quite a few classes on programming and have learned a lot along the way.
        <br />
        Below is a background on my programming history, including classes I have taken, and languages I have learned!
    </p>
    <h4>Classes:</h4>
    <ul style="list-style-type:disc">
      <li>Introduction to Programming</li>
      <li>Programming Fundamentals</li>
      <li>Data Management Concepts</li>
      <li>Web Programming I</li>
      <li>Computer Networking</li>
      <li>Computer Network Security</li>
      <li>Data Structures</li>
    </ul>
    <h4>Languages:</h4>
    <ul style="list-style-type:disc">
      <li>Java</li>
      <li>Javascript</li>
      <li>C#</li>
      <li>C++</li>
      <li>Swift</li>
      <li>MySQL</li>
    </ul>
</asp:Content>
