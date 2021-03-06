﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace NYshariaCooperative.ServiceLoginn {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServiceLoginn.IServiceLogin")]
    public interface IServiceLogin {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServiceLogin/loginAdmin", ReplyAction="http://tempuri.org/IServiceLogin/loginAdminResponse")]
        bool loginAdmin(string username, string password);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServiceLogin/loginAdmin", ReplyAction="http://tempuri.org/IServiceLogin/loginAdminResponse")]
        System.Threading.Tasks.Task<bool> loginAdminAsync(string username, string password);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IServiceLoginChannel : NYshariaCooperative.ServiceLoginn.IServiceLogin, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class ServiceLoginClient : System.ServiceModel.ClientBase<NYshariaCooperative.ServiceLoginn.IServiceLogin>, NYshariaCooperative.ServiceLoginn.IServiceLogin {
        
        public ServiceLoginClient() {
        }
        
        public ServiceLoginClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public ServiceLoginClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ServiceLoginClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ServiceLoginClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public bool loginAdmin(string username, string password) {
            return base.Channel.loginAdmin(username, password);
        }
        
        public System.Threading.Tasks.Task<bool> loginAdminAsync(string username, string password) {
            return base.Channel.loginAdminAsync(username, password);
        }
    }
}
