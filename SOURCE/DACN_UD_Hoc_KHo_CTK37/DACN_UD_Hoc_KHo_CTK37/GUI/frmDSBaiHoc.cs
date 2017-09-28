﻿using System;
using System.Drawing;
using System.Linq;
using DACN_UD_Hoc_KHo_CTK37.DAO;
using DACN_UD_Hoc_KHo_CTK37.DTO;
using DevExpress.XtraEditors;
using DevExpress.XtraEditors.Controls;
using System.Windows.Forms;

namespace DACN_UD_Hoc_KHo_CTK37
{
	public partial class FrmDsBaiHoc : XtraForm
	{

		public FrmDsBaiHoc()
		{
			InitializeComponent();
			LoadBaiHoc();
		}


		void LoadBaiHoc()
		{
			try
			{
				flpBaiHoc.Enabled = false;
				flpBaiHoc.Controls.Clear();
				int i = 0;
				foreach (BaiHoc item in BaiHocDao.Instance.LoadBaiHoc())
				{
					i++;
					SimpleButton btn = new SimpleButton() { Width = 200, Height = 60 };
					btn.Text = "Bài " + i + ": \n" + item.TenKHo + "\n" + item.TenViet;
					btn.Click += btn_Click;
					btn.Tag = item;
					System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmDsBaiHoc));
					btn.Image = ((Image)(resources.GetObject("btn.Glyph")));
					btn.Font = new Font("TNKeyUni-Arial", 8F, FontStyle.Bold);
					btn.ImageLocation = ImageLocation.MiddleLeft;
					btn.Location = new Point(85, 61);
					flpBaiHoc.Controls.Add(btn);

				}
				flpBaiHoc.Enabled = true;
				animator.Show(flpBaiHoc);
			}
			catch (Exception)
			{
				MessageBox.Show("Không thể kết nối dữ liệu.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}

		void btn_Click(object sender, EventArgs e)
		{
			frmDictionary frm = Application.OpenForms.OfType<frmDictionary>().FirstOrDefault();
			if (frm != null)
			{
				frm.Close();
			}
			SimpleButton simpleButton = sender as SimpleButton;
			if (simpleButton != null)
			{
				BaiHoc baiHoc = (simpleButton.Tag as BaiHoc);
				FrmBaiHocChiTiet f = new FrmBaiHocChiTiet(baiHoc.ID);

				f.Text = f.Text + " số " + baiHoc.ID;
				//f. = this;
				f.Text = "Bài học";
				f.ShowDialog();
			}
		}
	}
}