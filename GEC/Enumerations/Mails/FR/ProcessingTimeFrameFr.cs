﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace GEC.ViewModels.Enumerations.Mails.FR
{
    public enum ProcessingTimeFrameFr
    {
        [Display(Name = "Aucun")]
        None = 0,
        [Display(Name = "Normal")]
        Normal = 1,
        [Display(Name = "Urgent")]
        Urgent = 2       
    }
}
