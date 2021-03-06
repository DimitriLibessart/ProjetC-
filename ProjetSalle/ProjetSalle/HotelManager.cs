﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace Projet2
{
    class HotelManager
    {
        TextBox _tbox;
        TextBox _tbox2;
        TextBox _tbox3;
        public void AccueilClient(TextBox tbox)
        {
            _tbox = tbox;
            tbox.Text = "Maitre d'hôtel : Bonjour Monsieur quel est votre nom ? Avez vous une reservation ? ";
        }
        public void CheckReservation(TextBox tbox, TextBox tbox2, TextBox tbox3)
        {
            string nom;
            _tbox = tbox;
            _tbox2 = tbox2;
            _tbox3 = tbox3;
            nom = tbox2.Text;

            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = "Server=ORDINATEUR-KISU\\SQLEXPRESS;Database=ProjectC#;Trusted_Connection=true";
                conn.Open();
                SqlCommand command = new SqlCommand("SELECT Reservation FROM Customer WHERE Name=@0", conn);
                command.Parameters.Add(new SqlParameter("0", nom));
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {

                        string str = (String.Format("{0} \n", reader[0]));
                        int nbr = int.Parse(str);
                        switch (nbr)
                        {
                            case 0:
                                tbox.Text = "Maitre d'hôtel : Vous n'avez pas de réservation";
                                break;
                            case 1:
                                tbox.Text = "Maitre d'hôtel : Vous avez reservé";
                                break;
                        }
                        tbox3.Text = "Maitre d'hôtel : Combien êtes vous ?";
                    }


                }



            }
        }
        public void AssignerTable(TextBox tbox, TextBox tbox2)
        {
            _tbox = tbox;
            _tbox2 = tbox2;
                using (SqlConnection conn = new SqlConnection())
                {
                    int nbrPers = int.Parse(tbox2.Text);
                    conn.ConnectionString = "Server=ORDINATEUR-KISU\\SQLEXPRESS;Database=ProjectC#;Trusted_Connection=true";
                    conn.Open();
                    SqlCommand command = new SqlCommand("Select TOP 1 RoundTable.ID from RoundTable Where Quantity>=@0 AND RoundTable.Vide=1 ", conn);
                    command.Parameters.Add(new SqlParameter("0", nbrPers));
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            string str = (String.Format("{0} \n", reader[0]));
                            int nbrTable = int.Parse(str);
                            tbox.Text = "Maitre d'hôtel : Je vous place sur la table " + nbrTable + " Monsieur";
                        }
                    }
                    string string1 = tbox.Text;
                    string toFind1 = "table ";
                    string toFind2 = " Monsieur";
                    int start = string1.IndexOf(toFind1) + toFind1.Length;
                    int end = string1.IndexOf(toFind2, start); //Start after the index of 'my' since 'is' appears twice
                    string string2 = string1.Substring(start, end - start);
                    int nbr2 = int.Parse(string2);
                    SqlCommand command2 = new SqlCommand("Update RoundTable set Vide=0 Where ID=@0 ", conn);
                    command2.Parameters.Add(new SqlParameter("0", nbr2));
                    using (SqlDataReader reader2 = command2.ExecuteReader())
                    {
                    }
                }
            
        }
    }
}
