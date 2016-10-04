using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace Generic.BrowserAgentConverter {
   class Program {

      // New code:
      static HttpClient client = new HttpClient();

      static void Main(string[] args) {
         RunAsync().Wait();
      }

      static async Task RunAsync() {
         client.BaseAddress = new Uri("http://www.useragentstring.com/");
         client.DefaultRequestHeaders.Accept.Clear();
         client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

         try {

            using (var context = new SocialInfluenceEntities()) {
               foreach (var agentLine in context.BrowserAgentMaps.Where(a => a.Status == 0)) {
                  var userAgentInfo = await GetUserAgentInfoAsync(String.Format("?uas={0}&getJSON=all", agentLine.BrowserAgentString));

                  agentLine.Status = 1;
                  agentLine.AgentType = userAgentInfo.agent_type;
                  agentLine.AgentName = userAgentInfo.agent_name;
                  agentLine.AgentVersion = userAgentInfo.agent_version;
                  agentLine.OsType = userAgentInfo.os_type;
                  agentLine.OsName = userAgentInfo.os_name;
                  agentLine.OsVersionName = userAgentInfo.os_versionName;
                  agentLine.OsVersionNumber = userAgentInfo.os_versionNumber;
                  agentLine.OsProducer = userAgentInfo.os_producer;
                  agentLine.OsProducerUrl = userAgentInfo.os_producerURL;
                  agentLine.AgentLanguage = userAgentInfo.agent_language;
                  agentLine.AgentLanguageTag = userAgentInfo.agent_languageTag;
                  agentLine.CreatedDate = DateTime.Now;

                  context.SaveChanges();
               }
            }

            //var userAgentInfo = await GetUserAgentInfoAsync(String.Format("?uas={0}&getJSON=all", "Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36"));
            //Console.WriteLine(String.Format("name: {0}", userAgentInfo.agent_name));
         }
         catch (Exception ex) {            
            throw;
         }
      }

      static async Task<UserAgentInfo> GetUserAgentInfoAsync(string strPath) {
         UserAgentInfo agentInfo = null;
         var httpResponseMessage = await client.GetAsync(strPath);

         if (httpResponseMessage.IsSuccessStatusCode) {
            agentInfo = await httpResponseMessage.Content.ReadAsAsync<UserAgentInfo>();            
         }

         return agentInfo;
      } 
   }

   public class UserAgentInfo {
      public string agent_type { get; set; }
      public string agent_name { get; set; }
      public string agent_version { get; set; }
      public string os_type { get; set; }
      public string os_name { get; set; }
      public string os_versionName { get; set; }
      public string os_versionNumber { get; set; }
      public string os_producer { get; set; }
      public string os_producerURL { get; set; }
      public string agent_language { get; set; }
      public string agent_languageTag { get; set; }
 
   }
}
