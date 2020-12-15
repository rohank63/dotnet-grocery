using System.ComponentModel.DataAnnotations;

namespace Grocerydelevery.BusinessLayer.ViewModels
{
    public class CategoryViewModel
    {
        [Required]
        public string Title { get; set; }
        [Required]
        public string Url { get; set; }
        public bool OpenInNewWindow { get; set; }
    }
}
