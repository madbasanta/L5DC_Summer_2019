using System;
using System.Collections.Generic;
using System.Text;

namespace Sudoku.Classess
{
    class Sudoku_Generator
    {
        private string[] s_Sud_No;

        public void Init()
        {
            s_Sud_No = new string[] 
            {
               "152974368",
               "489326751",
               "763581492",
                
               "537298614",
               "621745983",
               "894613527",
                
               "315867249",
               "946132875",
               "278459136"
            };
        }

        public string[] s_No_Remove(int i_Difficulty)
        {
            var v_Random = new Random(DateTime.Now.Millisecond);
            for (int i = 0; i < i_Difficulty; i++)
            {
                string s_No = "";

                int i_Row = 0;
                int i_Col = 0;

                do
                {
                    i_Row = v_Random.Next(0, 9);
                    i_Col = v_Random.Next(0, 9);

                    var v_Row = s_Sud_No[i_Row];

                    s_No = "" + v_Row[i_Col];

                } while (s_No == ".");

                s_Sud_No[i_Row] = s_Sud_No[i_Row].Replace(s_No, ".");
            }

            return s_Sud_No;
        }

        private void flip(int i_Row, int i_Col)
        {
            for (int i_Col_Cntr = 0; i_Col_Cntr < s_Sud_No.Length; i_Col_Cntr++)
            {
                var v_Col_Replace = s_Sud_No[i_Col_Cntr];
                v_Col_Replace = v_Col_Replace.Replace(i_Row.ToString(), "x");
                v_Col_Replace = v_Col_Replace.Replace(i_Col.ToString(), i_Row.ToString());
                v_Col_Replace = v_Col_Replace.Replace("x", i_Col.ToString());

                s_Sud_No[i_Col_Cntr] = v_Col_Replace;
            }
        }

        private void flip_Row(int i_Row, int i_Col)
        {
            for (int i_Row_Count = 0; i_Row_Count < (s_Sud_No.Length); i_Row_Count++)
            {
                var v_Row = s_Sud_No[i_Row_Count];

                var v_Col_Val_1 = v_Row[i_Row].ToString();
                var v_Col_Val_2 = v_Row[i_Col].ToString();

                v_Row = v_Row.Replace(v_Col_Val_1, "x");
                v_Row = v_Row.Replace(v_Col_Val_2, v_Col_Val_1);
                v_Row = v_Row.Replace("x", v_Col_Val_2);

                s_Sud_No[i_Row_Count] = v_Row;
            }
        }

        private void flip_Col(int i_Row, int i_Col)
        {
            var v_Temp_Value = s_Sud_No[i_Row];
            s_Sud_No[i_Row] = s_Sud_No[i_Col];
            s_Sud_No[i_Col] = v_Temp_Value;
        }
        public string[] s_No_Generate()
        {
            Init();

            var v_Random = new Random(DateTime.Now.Millisecond);

            for (int i_Cnt = 0; i_Cnt < 9; i_Cnt++)
            {
                int i_Row = v_Random.Next(1, 10);
                int i_Col = v_Random.Next(1, 10);

                flip(i_Row, i_Col);

                int i_Value = i_Cnt;

                switch (i_Cnt)
                {

                    case 0:
                    case 1:
                    case 2:
                        i_Value = v_Random.Next(0, 3);
                        break;

                    case 3:
                    case 4:
                    case 5:
                        i_Value = v_Random.Next(3, 6);
                        break;

                    case 6:
                    case 7:
                    case 8:
                    default:
                        i_Value = v_Random.Next(6, 9);
                        break;
                }


                flip_Row((i_Cnt), (i_Value));
                flip_Col((i_Cnt), (i_Value));

            }

            return s_Sud_No;
        }

    }
}
