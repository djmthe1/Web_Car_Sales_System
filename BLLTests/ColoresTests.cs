using Microsoft.VisualStudio.TestTools.UnitTesting;
using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL.Tests
{
    [TestClass()]
    public class ColoresTests
    {
        [TestMethod()]
        public void ColoresTest()
        {
            Assert.Fail();
        }

        [TestMethod()]
        public void ColoresTest1()
        {
            Assert.Fail();
        }

        [TestMethod()]
        public void InsertarTest()
        {
            Colores color = new Colores();
            color.Descripcion = "Rojo";
            Assert.IsTrue(color.Insertar());
        }

        [TestMethod()]
        public void EditarTest()
        {
            Colores color = new Colores();
            color.ColorId = 1;
            color.Descripcion = "Azul";
            Assert.IsTrue(color.Editar());
        }

        [TestMethod()]
        public void EliminarTest()
        {
            Colores color = new Colores();
            color.ColorId = 1;
            Assert.IsTrue(color.Eliminar());
        }

        [TestMethod()]
        public void BuscarTest()
        {
            Colores color = new Colores();
            Assert.IsTrue(color.Buscar(2));
        }

        [TestMethod()]
        public void ListadoTest()
        {
            Colores color = new Colores();
            Assert.IsTrue(color.Listado(" * ", " 1=1 ", "").Rows.Count > 0);
        }
    }
}