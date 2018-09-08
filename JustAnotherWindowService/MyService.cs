using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.ServiceModel;
using System.ServiceProcess;
using System.Text;
using System.Threading.Tasks;
using wcfTest;

namespace JustAnotherWindowService
{
    public partial class MyService : ServiceBase
    {
        ServiceHost host;
        public MyService()
        {
            InitializeComponent();
        }

        protected override void OnStart(string[] args)
        {
            host = new ServiceHost(typeof(WCFTestService));
            host.Open();
        }

        protected override void OnStop()
        {
            host.Close();
        }
    }
}
