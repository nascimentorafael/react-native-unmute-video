using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Com.Reactlibrary.RNUnmuteVideo
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNUnmuteVideoModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNUnmuteVideoModule"/>.
        /// </summary>
        internal RNUnmuteVideoModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNUnmuteVideo";
            }
        }
    }
}
