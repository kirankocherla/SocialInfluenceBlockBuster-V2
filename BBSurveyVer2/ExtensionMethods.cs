using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BBSurveyVer2 {
   public static class ExtensionMethods {
      public static T RandomElement(this IEnumerable<T> enumerable) {
         return enumerable.RandomElementUsing(new Random());
      }

      public static T RandomElementUsing(this IEnumerable<T> enumerable, Random rand) {
         int index = rand.Next(0, enumerable.Count());
         return enumerable.ElementAt(index);
      }


      private static Random rng = new Random();

      public static void Shuffle<T>(this IList<T> list) {
         int n = list.Count;
         while (n > 1) {
            n--;
            int k = rng.Next(n + 1);
            T value = list[k];
            list[k] = list[n];
            list[n] = value;
         }
      }
   }
}