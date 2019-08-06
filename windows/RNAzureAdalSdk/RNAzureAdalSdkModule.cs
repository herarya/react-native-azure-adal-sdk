using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Azure.Adal.Sdk.RNAzureAdalSdk
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNAzureAdalSdkModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNAzureAdalSdkModule"/>.
        /// </summary>
        internal RNAzureAdalSdkModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNAzureAdalSdk";
            }
        }
    }
}
