using System;
using Microsoft.Azure.Management.Fluent;
using Microsoft.Azure.Management.ResourceManager.Fluent.Core;

namespace Demo3
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello Cloudyna 2019!");

            var azure = Azure.Authenticate("my.azureauth").WithDefaultSubscription();

            var result = azure.StorageAccounts
                            .Define("cloudynademo3")
                            .WithRegion(Region.EuropeWest)
                            .WithExistingResourceGroup("cloudyna2019-euw-rg")
                            .Create();
        }
    }
}
