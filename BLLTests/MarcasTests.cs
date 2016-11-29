using Microsoft.VisualStudio.TestTools.UnitTesting;
using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL.Tests
{
    [TestClass()]
    public class MarcasTests
    {
        [TestMethod()]
        public void MarcasTest()
        {
            Assert.Fail();
        }

        [TestMethod()]
        public void MarcasTest1()
        {
            Assert.Fail();
        }

        [TestMethod()]
        public void InsertarTest()
        {
            Marcas marca = new Marcas();
            marca.Descripcion = "Honda";
            Assert.IsTrue(marca.Insertar());
        }

        [TestMethod()]
        public void EditarTest()
        {
            Marcas marca = new Marcas();
            marca.MarcaId = 1;
            marca.Descripcion = "Toyota";
            Assert.IsTrue(marca.Editar());
        }

        [TestMethod()]
        public void EliminarTest()
        {
            Marcas marca = new Marcas();
            marca.MarcaId = 1;
            Assert.IsTrue(marca.Eliminar());
        }

        [TestMethod()]
        public void BuscarTest()
        {
            Marcas marca = new Marcas();
            Assert.IsTrue(marca.Buscar(2));
        }

        [TestMethod()]
        public void ListadoTest()
        {
            Marcas marca = new Marcas();
            Assert.IsTrue(marca.Listado(" * ", " 1=1 ", "").Rows.Count > 0);
        }
    }
}