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
    public partial class ProfileComponent : ComponentBase
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
        protected AuthenticationStateProvider AuthenticationStateProvider { get; set; }

        [Inject]
        protected ConDataService ConData { get; set; }

        ApplicationUser _user;
        protected ApplicationUser user
        {
            get
            {
                return _user;
            }
            set
            {
                if (!object.Equals(_user, value))
                {
                    var args = new PropertyChangedEventArgs(){ Name = "user", NewValue = value, OldValue = _user };
                    _user = value;
                    OnPropertyChanged(args);
                    Reload();
                }
            }
        }

        string _oldPassword;
        protected string oldPassword
        {
            get
            {
                return _oldPassword;
            }
            set
            {
                if (!object.Equals(_oldPassword, value))
                {
                    var args = new PropertyChangedEventArgs(){ Name = "oldPassword", NewValue = value, OldValue = _oldPassword };
                    _oldPassword = value;
                    OnPropertyChanged(args);
                    Reload();
                }
            }
        }

        string _newPassword;
        protected string newPassword
        {
            get
            {
                return _newPassword;
            }
            set
            {
                if (!object.Equals(_newPassword, value))
                {
                    var args = new PropertyChangedEventArgs(){ Name = "newPassword", NewValue = value, OldValue = _newPassword };
                    _newPassword = value;
                    OnPropertyChanged(args);
                    Reload();
                }
            }
        }

        string _confirmPassword;
        protected string confirmPassword
        {
            get
            {
                return _confirmPassword;
            }
            set
            {
                if (!object.Equals(_confirmPassword, value))
                {
                    var args = new PropertyChangedEventArgs(){ Name = "confirmPassword", NewValue = value, OldValue = _confirmPassword };
                    _confirmPassword = value;
                    OnPropertyChanged(args);
                    Reload();
                }
            }
        }

        protected override async System.Threading.Tasks.Task OnInitializedAsync()
        {
            await Security.InitializeAsync(AuthenticationStateProvider);
            if (!Security.IsAuthenticated())
            {
                UriHelper.NavigateTo("Login", true);
            }
            else
            {
                await Load();
            }
        }
        protected async System.Threading.Tasks.Task Load()
        {
            if (Security.User != null)
            {
                var securityGetUserByIdResult = await Security.GetUserById($"{Security.User.Id}");
                user = securityGetUserByIdResult;
            }

            oldPassword = "";

            newPassword = "";

            confirmPassword = "";
        }

        protected async System.Threading.Tasks.Task Button2Click(MouseEventArgs args)
        {
            DialogService.Close();
            await JSRuntime.InvokeAsync<string>("window.history.back");
        }
    }
}
