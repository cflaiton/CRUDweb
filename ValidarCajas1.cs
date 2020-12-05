using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace AppCRUDCsharp
{
    public class ValidarCajas
    {
        //validar si es vacio
        public Boolean Vacio(TextBox caja, Label error, string mensaje)
        {
            if (caja.Text == "")
            {
                error.Text = mensaje;
                caja.Focus();
                return true;
            }
            else
            {
                error.Text = "";

                return false;
            }
        }

        //validar si es texto+
        public Boolean TipoTexto(TextBox caja, Label error, string mensaje)
        {
            Regex formato = new Regex("^[a-zA-Z]+$");
            if (!formato.IsMatch(caja.Text))
            {
                error.Text = mensaje;
                caja.Focus();
                return true;
            }
            else
            {
                error.Text = "";
                return false;
            }
        }

        //validar si es Numero+
        public Boolean TipoNumero(TextBox caja, Label error, string mensaje)
        {
            Regex formato = new Regex("[0-9]{1,9}(\\.[0-9]{0,2})?$");
            if (!formato.IsMatch(caja.Text))
            {
                error.Text = mensaje;
                caja.Focus();
                return true;
            }
            else
            {
                error.Text = "";
                return false;
            }
        }


        // validar que sea tipo correo 
        public Boolean TipoCorreo(TextBox caja, Label error, string mensaje)
        {
            Regex formato = new Regex(@"^(?("")("".+?(?<!\\)""@)|(([0-9a-z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-z])@))" +
                @"(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-z][-0-9a-z]*[0-9a-z]*\.)+[a-z0-9][\-a-z0-9]{0,22}[a-z0-9]))$");
            if (!formato.IsMatch(caja.Text))

            {
                error.Text = mensaje;
                caja.Focus();
                return false;
            }
            else
            {
                error.Text = "";
                return true;
            }


        }

        public Boolean ValidarClave(TextBox caja, Label error, string mensaje)
        {
            Regex formato = new Regex(@"^(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{8,16}$");

            if (!formato.IsMatch(caja.Text))
            {
                error.Text = mensaje;
                caja.Focus();
                return false;
            }
            else
            {
                error.Text = "";
                return true;
            }
        }
    }
}