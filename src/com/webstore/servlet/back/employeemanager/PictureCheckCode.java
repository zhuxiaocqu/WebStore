package com.webstore.servlet.back.employeemanager;

import java.awt.*;
import java.awt.geom.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class PictureCheckCode extends HttpServlet {
	public PictureCheckCode() {
		super();
	}

	public void destroy() {
		super.destroy(); 
	}

	public void init() throws ServletException {
		super.init();
	}

	// ��ȡ�����ɫ
	public Color getRandColor(int s, int e) {
		Random random = new Random();
		if (s > 255) s = 255;
		if (e > 255) e = 255;
		int r = s + random.nextInt(e - s);		//�������RGB��ɫ�е�rֵ
		int g = s + random.nextInt(e - s);		//�������RGB��ɫ�е�gֵ
		int b = s + random.nextInt(e - s);		//�������RGB��ɫ�е�bֵ
		return new Color(r, g, b);
	}

	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "No-cache");
		response.setDateHeader("Expires", 0);
		// ָ�����ɵ���Ӧ��ͼƬ
		response.setContentType("image/jpeg");
		int width = 86;
		int height = 22;
		BufferedImage image = new BufferedImage(width, height,
				BufferedImage.TYPE_INT_RGB);
		Graphics g = image.getGraphics();
		Graphics2D g2d = (Graphics2D) g;
		Random random = new Random();
		Font mFont = new Font("����", Font.BOLD, 17);
		g.setColor(getRandColor(200, 250));
		g.fillRect(0, 0, width, height);
		g.setFont(mFont);
		g.setColor(getRandColor(180, 200));
		// �����������
		for (int i = 0; i < 100; i++) {
			int x = random.nextInt(width - 1);
			int y = random.nextInt(height - 1);
			int x1 = random.nextInt(6) + 1;
			int y1 = random.nextInt(12) + 1;
			BasicStroke bs = new BasicStroke(2f, BasicStroke.CAP_BUTT,
					BasicStroke.JOIN_BEVEL);
			Line2D line = new Line2D.Double(x, y, x + x1, y + y1);
			g2d.setStroke(bs);
			g2d.draw(line);
		}
		String sRand = "";
		// ����������֤����
		String ctmp = "";
		int itmp = 0;
		for (int i = 0; i < 4; i++) {
			//random = new Random(new java.util.Date().getTime() + i);
			switch (random.nextInt(4)) {
			case 1:
				itmp = random.nextInt(26) + 65; // ����A~Z����ĸ
				ctmp = String.valueOf((char) itmp);
				break;
			case 2: // ���ɺ���
				String[] rBase = { "0", "1", "2", "3", "4", "5", "6", "7", "8",
						"9", "a", "b", "c", "d", "e", "f" };
				// ���ɵ�1λ������
				int r1 = random.nextInt(3) + 11;	//����11��14֮��������
				String str_r1 = rBase[r1];
				// ���ɵ�2λ������
				int r2;
				if (r1 == 13) {
					r2 = random.nextInt(7);			//����0��7֮��������
				} else {
					r2 = random.nextInt(16);		//����0��16֮��������
				}
				String str_r2 = rBase[r2];
				// ���ɵ�1λ��λ��
				int r3 = random.nextInt(6) + 10;	//����10��16֮��������
				String str_r3 = rBase[r3];
				// ���ɵ�2λ��λ��
				int r4;
				if (r3 == 10) {
					r4 = random.nextInt(15) + 1;	//����1��16֮��������
				} else if (r3 == 15) {
					r4 = random.nextInt(15);		//����0��15֮��������
				} else {
					r4 = random.nextInt(16);		//����0��16֮��������
				}
				String str_r4 = rBase[r4];
				System.out.println(str_r1 + str_r2 + str_r3 + str_r4);
				// �����ɻ�����ת��Ϊ����
				byte[] bytes = new byte[2];
				//�����ɵ����뱣�浽�ֽ�����ĵ�1��Ԫ����
				String str_r12 = str_r1 + str_r2;
				int tempLow = Integer.parseInt(str_r12, 16);
				bytes[0] = (byte) tempLow;
				//�����ɵ�λ�뱣�浽�ֽ�����ĵ�2��Ԫ����
				String str_r34 = str_r3 + str_r4;
				int tempHigh = Integer.parseInt(str_r34, 16);
				bytes[1] = (byte) tempHigh;
				
				ctmp = new String(bytes);	//�����ֽ��������ɺ���
//				System.out.println("���ɺ���:" + ctmp);
				break;
			default:
				itmp = random.nextInt(10) + 48; // ����0~9������
				ctmp = String.valueOf((char) itmp);
				break;
			}
			sRand += ctmp;
			Color color = new Color(20 + random.nextInt(110), 20 + random
					.nextInt(110), 20 + random.nextInt(110));
			g.setColor(color);
			/** **����������ֲ���������תָ���Ƕ�* */
			// ��������תָ���Ƕ�
			Graphics2D g2d_word = (Graphics2D) g;
			AffineTransform trans = new AffineTransform();
			trans.rotate(random.nextInt(45) * 3.14 / 180, 15 * i + 8, 7);
			// ��������
			float scaleSize = random.nextFloat() +0.8f;
			if (scaleSize > 1f)	scaleSize = 1f;
			trans.scale(scaleSize, scaleSize);
			g2d_word.setTransform(trans);
			/** ********************* */
			g.drawString(ctmp, 15 * i + 18, 14);

		}
		// �����ɵ���֤�뱣�浽Session��
		HttpSession session = request.getSession(true);
		session.setAttribute("randCheckCode", sRand);
		g.dispose();
		ImageIO.write(image, "JPEG", response.getOutputStream());
		
	}

}
