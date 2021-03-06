﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using GEC.ViewModels.Enumerations.General;

namespace GEC.ViewModels.Folders
{
    public class EditFolderArViewModel : IFolderViewModel
    {
        public long Id { get; set; }
        [Required(ErrorMessage = "يجب ملء خانة الإسم."), MaxLength(128, ErrorMessage = "لا يمكن للإسم تجاوز 128 حرف."), Remote("EditNameValidation", "FoldersAPI", AdditionalFields = "Id, WebsiteLanguage")]
        public string Name { get; set; }
        public string Description { get; set; }
        public WebsiteLanguage WebsiteLanguage { get; set; } = WebsiteLanguage.Ar;
    }
}
