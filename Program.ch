using System;
//using System.Runtime.Serialization.Formatters.Binary;
using System.IO;
using System.Xml.Serialization;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Json;
using System.Collections.Generic;
using Newtonsoft.Json;

namespace itProger16
{

    class Program
    {
        static void Main(string[] args)
        {
            var tom = new Animal("Tom", 2);
            var bob = new Animal("Bob", 15);
            var anArr = new List<Animal> { tom, bob };

            var outPut = JsonConvert.SerializeObject(tom);

            var outPut_2 = JsonConvert.SerializeObject(anArr);

            deser<Animal>(ref outPut);
            deser<List<Animal>>(ref outPut_2);
            Console.ReadKey();

        }
        public static void deser<T>(ref T x)
        {          
            var deserializedProduct = JsonConvert.DeserializeObject<T>(x);

            Console.WriteLine(deserializedProduct);  
        }


    }
}
