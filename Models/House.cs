using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace craigslistCSharp.Models
{
    public class House
    {
        public int Id { get; set; }
        public int? Year { get; set; }
        public int? Bedrooms { get; set; }
        public int? Bathrooms { get; set; }
        public double? Price { get; set; }
        public int? Sqft { get; set; }
        public bool? Hoa { get; set; }
        public bool? HasPool { get; set; }
        public string Description { get; set; }
        public DateTime CreatedAt { get; set; }
        public DateTime UpdatedAt { get; set; }
    }
}