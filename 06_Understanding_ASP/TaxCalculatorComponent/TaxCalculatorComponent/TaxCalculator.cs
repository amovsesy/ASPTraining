using System;
using System.Collections.Generic;
using System.Text;

namespace TaxCalculatorComponent
{
    public class TaxCalculator
    {
        private const double SalesTaxMultiplier = 1.175;

        public static double CalculateTotalPrice(double netPrice)
        {
            return netPrice * SalesTaxMultiplier;
        }

        public static double CalculateNetPrice(double totalPrice)
        {
            return totalPrice / SalesTaxMultiplier;
        }
    }
}
