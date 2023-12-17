using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsumeWebservice
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ConvertTemperature(object sender, EventArgs e)
        {
             
            ServiceReference1.WebService1SoapClient client = new ServiceReference1.WebService1SoapClient();
            //AwsBeanstalkServiceReference.WebService1SoapClient client = new AwsBeanstalkServiceReference.WebService1SoapClient();

            double temperature = Convert.ToDouble(temperatureInput.Text);
            string selectedUnit = unitSelect.SelectedValue;

            // Perform the temperature conversion
            double convertedTemperature;
            string resultUnit;


            if (selectedUnit == "Celsius")
            {
                convertedTemperature = client.CelsiusToFahrenheit(temperature); // Celsius to Fahrenheit
                resultUnit = "°F";
            }
            else
            {
                convertedTemperature = client.FahrenheitToCelsius(temperature);
                resultUnit = "°C";
            }

            // Display the result with corresponding units
            resultSpan.InnerText = $"{convertedTemperature.ToString("0.00")} {resultUnit}";
            resultDiv.Visible = true;
        }

        protected void SolveQuadraticEquation(object sender, EventArgs e)
        {
            ServiceReference1.WebService1SoapClient client = new ServiceReference1.WebService1SoapClient();
            //AwsBeanstalkServiceReference.WebService1SoapClient client = new AwsBeanstalkServiceReference.WebService1SoapClient();
            double a = Convert.ToDouble(coefficientA.Text);
            double b = Convert.ToDouble(coefficientB.Text);
            double c = Convert.ToDouble(coefficientC.Text);

            string resultMessage;

            var resultModel = client.SolveQuadraticEquation(a, b, c);
            if (resultModel.HasSolution)
            {
                resultMessage = $"Real Roots: {resultModel.Root1}, {resultModel.Root2}";
                //resultMessage = $"Real Roots: {root1.ToString("0.00")}, {root2.ToString("0.00")}";
            }
            else
            {
                resultMessage = resultModel.ErrorMessage;
            }

            // Display the result
            quadraticResultSpan.InnerText = resultMessage;
            quadraticResult.Visible = true;
        }
    }
}