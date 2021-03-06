﻿using System;
using System.Drawing;
using System.Windows.Forms;
using DACN_UD_Hoc_KHo_CTK37.DAO;
using DACN_UD_Hoc_KHo_CTK37.Properties;
using DevExpress.XtraEditors;

namespace DACN_UD_Hoc_KHo_CTK37.GUI
{
	public partial class FrmDictionary : XtraForm
	{
		public FrmDictionary()
		{
			InitializeComponent();
			DataForm();
		}

		#region Method
		void DataForm()
		{
			txtDicti.Enter += txtDicti_Enter;
			lbcTuVung.Items.Clear();
			foreach (var item in TuVungDao.Instance.LoadTuVungDic())
				lbcTuVung.Items.Add(item.KHo);
			
		}

		#endregion
		#region action
		private void lbcTuVung_Click(object sender, EventArgs e)
		{
			recNghia.ResetText();
			recNghia.Font = new Font("TNKeyUni-Arial", 11F);
			string tukhoa = lbcTuVung.SelectedItem.ToString();
			string name = tukhoa;
			foreach (var item in TuVungDao.Instance.LoadTuVungByKHo(name))
				if (item.KHo != null)
				{
					recNghia.Text += item.Viet == null ? item.KHo + ": Đang cập nhật\n" : item.KHo + ": " + item.Viet + "\n";
					txtDicti.Text = item.KHo;
				}
		}
		#endregion

		private void btnDic_Click(object sender, EventArgs e)
		{
			if (txtDicti.Text == Resources.nhap_tu_can_tra || txtDicti.Text == "")
				XtraMessageBox.Show("Vui lòng nhập từ cần tra!", Resources.thong_bao, MessageBoxButtons.OK, MessageBoxIcon.Warning);
			else
			{
				recNghia.ResetText();
				recNghia.Font = new Font("TNKeyUni-Arial", 11F);
				string name = txtDicti.Text;
				if (TuVungDao.Instance.LoadTuVungByKHo(name).Count <= 0)
					recNghia.Text += Resources.khong_tim_thay;
				else
					foreach (var item in TuVungDao.Instance.LoadTuVungByKHo(name))
						if (item.KHo != null)
						{
							lbcTuVung.SelectedValue = item.KHo;
							recNghia.Text += item.Viet == null ? item.KHo + ": Đang cập nhật\n" : item.KHo + ": " + item.Viet + "\n";
						}

			}
		}




		private void txtDicti_Enter(object sender, EventArgs e)
		{
			if (txtDicti.Text == Resources.nhap_tu_can_tra)
			{
				txtDicti.Text = "";
				txtDicti.ForeColor = Color.Black;
			}
		}

		private void txtDicti_KeyDown(object sender, KeyEventArgs e)
		{
			if (e.KeyCode == Keys.Enter)
			{
				btnDic.PerformClick();
			}
		}

		private void txtDicti_TextChanged(object sender, EventArgs e)
		{
			int i;
			try
			{
				for (i = 0; i <= lbcTuVung.Items.Count - 1; i++)
				{
					string a =
						txtDicti.Text
							.Replace('\\', 'a')
							.Replace('|', 'b')
							.Replace('~', 'c')
							.Replace('`', 'd')
							.Replace('{', 'e')
							.Replace('[', 'f')
							.Replace('}', 'g')
							.Replace(']', 'h');
					string b = lbcTuVung.Items[i].ToString().Replace('\\', 'a')
							.Replace('|', 'b')
							.Replace('~', 'c')
							.Replace('`', 'd')
							.Replace('{', 'e')
							.Replace('[', 'f')
							.Replace('}', 'g')
							.Replace(']', 'h');//.Substring(0, txtDicti.TextLength)
						
					if (b.Contains(a))
					{
						lbcTuVung.SelectedIndex = i;
						break;
					}
				}
			}
			catch (Exception ex)
			{
			}
		}

	}
}