﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using GEC.ViewModels.Enumerations.General;

namespace GEC.ViewModels.Groups
{
    public class NewGroupFrViewModel : IGroupViewModel
    {
        [Required(ErrorMessage = "Le champ Nom est nécessaire."), MaxLength(128, ErrorMessage = "Le nom du group ne peut pas dépasser 128 caractères."), Remote("CreateNameValidation", "GroupsAPI", AdditionalFields = "WebsiteLanguage")]
        public string Name { get; set; }
        public string Description { get; set; }
        public WebsiteLanguage WebsiteLanguage { get; set; } = WebsiteLanguage.Fr;
    }
}
