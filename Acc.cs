using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.Common;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace _20220707_Parquadero
{
    public class Acc
    {
        AccesoDatos conectar = new AccesoDatos("PARQUEADERO");
        public DataSet Usuario()
        {
            conectar.Conectar();
            conectar.CrearComando("SP_SELECT_CLIENTE");
            //conectar.AsignarParametros("USUARIO", strUsuario, DbType.String);
            //conectar.AsignarParametros("CLAVE", strClave, DbType.String);
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }

        public DataSet verCliente(string strIdentificacion)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_SELECT_CLIENTE");
            conectar.AsignarParametros("identificacion", strIdentificacion, DbType.String);
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }
        public DataSet verCostoActual()
        {
            conectar.Conectar();
            conectar.CrearComando("SP_SELECT_COSTOACTUAL");
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }

        public DataSet registrarCosto(double dblValor, int intEstado)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_INSERT_COSTO");
            conectar.AsignarParametros("valor", dblValor.ToString(), DbType.Double);
            conectar.AsignarParametros("estado", intEstado.ToString(), DbType.Int32);
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }
        public DataSet registrarEmpleado(string strNombre, string strApellido, string strUsuario, string strContrasena, string strCorreo, int intEstado)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_INSERT_EMPLEADO");
            conectar.AsignarParametros("nombre", strNombre, DbType.String);
            conectar.AsignarParametros("apellido", strApellido, DbType.String);
            conectar.AsignarParametros("usuario", strUsuario, DbType.String);
            conectar.AsignarParametros("contrasena", strContrasena, DbType.String);
            conectar.AsignarParametros("correo", strCorreo, DbType.String);
            conectar.AsignarParametros("estado", intEstado.ToString(), DbType.Int32);
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }

        public DataSet registrarCliente(string strNombre, string strApellido, string strDireccion, string strIdentificacion, string strUsuario, string strContrasena, string strCorreo, int intEstado)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_INSERT_CLIENTE");
            conectar.AsignarParametros("nombre", strNombre, DbType.String);
            conectar.AsignarParametros("apellido", strApellido, DbType.String);
            conectar.AsignarParametros("direccion", strDireccion, DbType.String);
            conectar.AsignarParametros("identificacion", strIdentificacion, DbType.String);
            conectar.AsignarParametros("usuario", strUsuario, DbType.String);
            conectar.AsignarParametros("contrasena", strContrasena, DbType.String);
            conectar.AsignarParametros("correo", strCorreo, DbType.String);
            conectar.AsignarParametros("estado", intEstado.ToString(), DbType.Int32);
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }
        public DataSet registrarIVA(double dblValor, int intEstado)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_INSERT_IVA");
            conectar.AsignarParametros("valor", dblValor.ToString(), DbType.Double);
            conectar.AsignarParametros("estado", intEstado.ToString(), DbType.Int32);
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }
        public DataSet verIVAActual()
        {
            conectar.Conectar();
            conectar.CrearComando("SP_SELECT_IVAACTUAL");
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }

        public DataSet registrarDisponibilidad(int intCantidad, int intEstado)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_INSERT_DISPONIBILIDAD");
            conectar.AsignarParametros("cantidad", intCantidad.ToString(), DbType.Double);
            conectar.AsignarParametros("estado", intEstado.ToString(), DbType.Int32);
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }
        public DataSet verDisponibilidadActual()
        {
            conectar.Conectar();
            conectar.CrearComando("SP_SELECT_DISPONIBILIDADACTUAL");
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }

        public DataSet registrarAuto(string strPlaca, string strIdentificacion)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_INSERT_INGRESOAUTO");
            conectar.AsignarParametros("placa", strPlaca, DbType.String);
            conectar.AsignarParametros("identificacion", strIdentificacion, DbType.String);
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }

        public DataSet retirarAuto(string strPlaca)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_INSERT_SALIDAAUTO");
            conectar.AsignarParametros("placa", strPlaca, DbType.String);
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }

        public DataSet reducirDisponibilidad()
        {
            conectar.Conectar();
            conectar.CrearComando("SP_UPDATE_DISPONIBILIDAD");
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }
        public DataSet aumentarDisponibilidad()
        {
            conectar.Conectar();
            conectar.CrearComando("SP_UPDATE_RESETDISPONIBILIDAD");
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }

         public DataSet VerificarUsuario(string strUsuario, string strContrasena)
         {
             conectar.Conectar();
             conectar.CrearComando("SP_SELECT_VERIFICARUSUARIO");
             conectar.AsignarParametros("usuario", strUsuario, DbType.String);
             conectar.AsignarParametros("pass", strContrasena, DbType.String);
             DataSet dsDatos = conectar.EjecutarDataset();
             conectar.Desconectar();
             return dsDatos;
         }
        public DataSet verReporteIVA(string strFechaInicio, string strFechaFin)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_SELECT_REPORTEIVA");
            conectar.AsignarParametros("inicio", strFechaInicio, DbType.String);
            conectar.AsignarParametros("fin", strFechaFin, DbType.String);
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }
        public DataSet verReporteAutos(string strFechaInicio, string strFechaFin)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_SELECT_REPORTEAUTOS");
            conectar.AsignarParametros("inicio", strFechaInicio, DbType.String);
            conectar.AsignarParametros("fin", strFechaFin, DbType.String);
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }
        
        public DataSet eliminarCliente(string strIdentificacion)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_DELETE_CLIENTE");
            conectar.AsignarParametros("identificacion", strIdentificacion, DbType.String);
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }

        public DataSet eliminarEmpleado(string strUsuario)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_DELETE_EMPLEADO");
            conectar.AsignarParametros("usuario", strUsuario, DbType.String);
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }
        public DataSet verEmpleado(string strUsuario)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_SELECT_EMPLEADO");
            conectar.AsignarParametros("usuario", strUsuario, DbType.String);
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }
        public DataSet registrarVenta(double dblValor)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_INSERT_VENTA");
            conectar.AsignarParametros("valor", dblValor.ToString(), DbType.Double);
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }

        public DataSet verVentas(string strFechaInicio, string strFechaFinal)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_SELECT_REPORTEVENTAS");
            conectar.AsignarParametros("inicio", strFechaInicio, DbType.String);
            conectar.AsignarParametros("fin", strFechaFinal, DbType.String);
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }
        public DataSet verTotalVentas(string strFechaInicio, string strFechaFinal)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_SELECT_REPORTETOTALVENTAS");
            conectar.AsignarParametros("inicio", strFechaInicio, DbType.String);
            conectar.AsignarParametros("fin", strFechaFinal, DbType.String);
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }

        public DataSet modificarCliente(string strNombre, string strApellido, string strDireccion, 
            string strUsuario, string strContrasena, string strCorreo, string strIdentificacion)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_UPDATE_CLIENTE");
            conectar.AsignarParametros("nombre", strNombre, DbType.String);
            conectar.AsignarParametros("apellido", strApellido, DbType.String);
            conectar.AsignarParametros("direccion", strDireccion, DbType.String);
            conectar.AsignarParametros("usuario", strUsuario, DbType.String);
            conectar.AsignarParametros("contrasena", strContrasena, DbType.String);
            conectar.AsignarParametros("correo", strCorreo, DbType.String);
            conectar.AsignarParametros("identificacion", strIdentificacion, DbType.String);
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }

        public DataSet modificarEmpleado(string strNombre, string strApellido,
            string strUsuario, string strContrasena, string strCorreo)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_UPDATE_EMPLEADO");
            conectar.AsignarParametros("nombre", strNombre, DbType.String);
            conectar.AsignarParametros("apellido", strApellido, DbType.String);
            conectar.AsignarParametros("usuario", strUsuario, DbType.String);
            conectar.AsignarParametros("contrasena", strContrasena, DbType.String);
            conectar.AsignarParametros("correo", strCorreo, DbType.String);
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }

        public DataSet registrarHistorial(string strPlaca)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_INSERT_HISTORIAL");
            conectar.AsignarParametros("placa", strPlaca, DbType.String);
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }
        public DataSet verHistorial(string strFechaInicio, string strFechaFinal)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_SELECT_REPORTEHISTORIAL");
            conectar.AsignarParametros("inicio", strFechaInicio, DbType.String);
            conectar.AsignarParametros("fin", strFechaFinal, DbType.String);
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }
        public DataSet cambiarContrasenaEmp(string strUsuario, string strContrasena)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_UPDATE_CONTRASENAEMPLEADO");
            conectar.AsignarParametros("usuario", strUsuario, DbType.String);
            conectar.AsignarParametros("contrasena", strContrasena, DbType.String);
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }
        public DataSet eliminarRegistro(string strPlaca)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_DELETE_REGISTROAUTO");
            conectar.AsignarParametros("placa", strPlaca, DbType.String);
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }

        public DataSet verEncabezado(int intID)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_SELECT_ENCABEZADO");
            conectar.AsignarParametros("encabezadoid", intID.ToString(), DbType.Int32);
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }
        public DataSet verDetalle(int intID)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_SELECT_DETALLE");
            conectar.AsignarParametros("detalleid", intID.ToString(), DbType.Int32);
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }

        public DataSet registrarFactura(string strPlaca)
        {
            conectar.Conectar();
            conectar.CrearComando("SP_INSERT_FACTURA");
            conectar.AsignarParametros("placa", strPlaca, DbType.String);
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }

        public DataSet verUltimaFactura()
        {
            conectar.Conectar();
            conectar.CrearComando("SP_SELECT_FACTURA");
            DataSet dsDatos = conectar.EjecutarDataset();
            conectar.Desconectar();
            return dsDatos;
        }
    }
}
    //public DataSet Usuario(string strUsuario, string strClave)
    //{
    //    conectar.Conectar();
    //    conectar.CrearComando("SP_SELECT_CLIENTE");
    //    //conectar.AsignarParametros("USUARIO", strUsuario, DbType.String);
    //    //conectar.AsignarParametros("CLAVE", strClave, DbType.String);
    //    DataSet dsDatos = conectar.EjecutarDataset();
    //    conectar.Desconectar();
    //    return dsDatos;
    //}

