<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ConsumeWebservice._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <%--<section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">ASP.NET</h1>
            <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
            <p><a href="http://www.asp.net" class="btn btn-primary btn-md">Learn more &raquo;</a></p>
        </section>--%>

        <div class="row mt-4">
            <section class="col-md-4" aria-labelledby="webServiceTitle">
                <h3 >Temperature Converter</h3>
                <p>
                    A tool that converts temperature from one unit to another
                </p>
                   <!-- Input Section -->
                    

                    <div class="form-group">
                        <label for="unitSelect">Select Unit:</label>
                        <asp:DropDownList ID="unitSelect" runat="server" CssClass="form-control">
                            <asp:ListItem Text="Celsius" Value="Celsius"></asp:ListItem>
                            <asp:ListItem Text="Fahrenheit" Value="Fahrenheit"></asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="form-group">
                        <label for="temperatureInput">Enter Temperature:</label>
                        <asp:TextBox ID="temperatureInput" runat="server" CssClass="form-control" type="number"></asp:TextBox>
                    </div>

                    <asp:Button ID="convertButton" runat="server" Text="Convert" CssClass="btn btn-primary mt-4" OnClick="ConvertTemperature" />

                    <!-- Result Section -->
                    <div class="alert alert-info mt-4" id="resultDiv" runat="server" visible="false">
                        <strong>Result:</strong>
                        <span id="resultSpan" runat="server"></span>
                    </div> 
            </section>

            
            <section class="col-md-4" aria-labelledby="webServiceTitle">
                <h3>Quadratic Equation Calculator</h3>
                <p>
                    A tool that uses the quadratic formular to solve quadratic equations by taking the coefficients.
                </p>
                            <!-- Input Section -->
            <div class="form-group">
                <label for="coefficientA">Coefficient A:</label>
                <asp:TextBox ID="coefficientA" runat="server" CssClass="form-control" type="number"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="coefficientB">Coefficient B:</label>
                <asp:TextBox ID="coefficientB" runat="server" CssClass="form-control" type="number"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="coefficientC">Coefficient C:</label>
                <asp:TextBox ID="coefficientC" runat="server" CssClass="form-control" type="number"></asp:TextBox>
            </div>

            <asp:Button ID="solveButton" runat="server" Text="Solve" CssClass="btn btn-primary mt-4" OnClick="SolveQuadraticEquation" />

            <!-- Result Section -->
            <div class="alert alert-info mt-4" id="quadraticResult" runat="server" visible="false">
                <strong>Result:</strong>
                <span id="quadraticResultSpan" runat="server"></span>
            </div>
            </section>
        </div>
    </main>

</asp:Content>
