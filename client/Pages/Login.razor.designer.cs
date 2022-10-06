using System;
using System.Linq;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.JSInterop;
using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Components.Authorization;
using Microsoft.AspNetCore.Components.Web;
using Radzen;
using Radzen.Blazor;
using VirtualLeague.Models.ConData;
using Microsoft.AspNetCore.Identity;
using VirtualLeague.Models;
using VirtualLeague.Client.Pages;

namespace VirtualLeague.Pages
{
    public partial class LoginComponent : ComponentBase
    {
        [Parameter(CaptureUnmatchedValues = true)]
        public IReadOnlyDictionary<string, dynamic> Attributes { get; set; }

        public void Reload()
        {
            InvokeAsync(StateHasChanged);
        }

        public void OnPropertyChanged(PropertyChangedEventArgs args)
        {
        }

        [Inject]
        protected IJSRuntime JSRuntime { get; set; }

        [Inject]
        protected NavigationManager UriHelper { get; set; }

        [Inject]
        protected DialogService DialogService { get; set; }

        [Inject]
        protected TooltipService TooltipService { get; set; }

        [Inject]
        protected ContextMenuService ContextMenuService { get; set; }

        [Inject]
        protected NotificationService NotificationService { get; set; }

        [Inject]
        protected SecurityService Security { get; set; }


        [Inject]
        protected ConDataService ConData { get; set; }

        dynamic _redirectUrl;
        protected dynamic redirectUrl
        {
            get
            {
                return _redirectUrl;
            }
            set
            {
                if (!object.Equals(_redirectUrl, value))
                {
                    var args = new PropertyChangedEventArgs(){ Name = "redirectUrl", NewValue = value, OldValue = _redirectUrl };
                    _redirectUrl = value;
                    OnPropertyChanged(args);
                    Reload();
                }
            }
        }

        protected override async System.Threading.Tasks.Task OnInitializedAsync()
        {
            await Load();
        }
        protected async System.Threading.Tasks.Task Load()
        {
            var query = System.Web.HttpUtility.ParseQueryString(new Uri(UriHelper.ToAbsoluteUri(UriHelper.Uri).ToString()).Query);

            var error = query.Get("error");

            redirectUrl = query.Get("redirectUrl");;

            if (!string.IsNullOrEmpty(error))
            {
                NotificationService.Notify(new NotificationMessage(){ Severity = NotificationSeverity.Error,Summary = $"Error",Detail = $"{error}" });
            }
        }

        protected async System.Threading.Tasks.Task Login0Register()
        {
            await DialogService.OpenAsync<RegisterApplicationUser>("Register Application User", null);
        }
    }
}
