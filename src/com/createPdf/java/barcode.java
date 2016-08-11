package com.createPdf.java;

import java.io.FileOutputStream;
import java.util.Date;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Element;
import com.itextpdf.text.Image;
import com.itextpdf.text.List;
import com.itextpdf.text.ListItem;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.lowagie.text.Cell;
import com.lowagie.text.Document;
import com.lowagie.text.Font;
import com.lowagie.text.HeaderFooter;
import com.lowagie.text.Paragraph;
import com.lowagie.text.Phrase;
import com.lowagie.text.pdf.Barcode39;
import com.lowagie.text.pdf.BarcodeEAN;
import com.lowagie.text.pdf.PdfContentByte;
import com.lowagie.text.pdf.PdfWriter;

import java.awt.Color;
import java.io.File;
import java.io.OutputStream;

public class barcode {

	public static void main(String[] args) throws Exception {
		String name = "ishara";
		String Vnumber = "GQ-2213";
		String SDate="2016-07-12";
		String EDate="2016-07-12";
		String Amount = "5000";
		String Address="68/28,Isurumawatha,Yakkala";
		String number= "071-3879092";
		String img1 ="C:\\project\\ParkingSystem\\WebContent\\images\\park.jpg";
		String img2 ="C:\\project\\ParkingSystem\\WebContent\\images\\park.jpg";
		String img3 ="C:\\project\\ParkingSystem\\WebContent\\images\\park.jpg";
		
		Document document = new Document();
		PdfWriter writer = PdfWriter.getInstance(document,
				new FileOutputStream("C:\\project\\ParkingSystem\\WebContent\\CretePDFrepo\\new.pdf"));

		// Inserting Image in PDF

		// Inserting Table in PDF
		com.lowagie.text.Table table = new com.lowagie.text.Table(4);

		com.lowagie.text.Cell cell = new com.lowagie.text.Cell(new Paragraph ("Permision For You"));

		cell.setColspan(4);
		cell.setHorizontalAlignment(Element.ALIGN_CENTER);
		cell.setUseBorderPadding(true);

		table.addCell(cell);

		table.addCell("Vehical No");
		table.addCell("Start Date-Time");
		table.addCell("End Date-Time");
		table.addCell("Charge Amount");
		table.addCell(Vnumber);
		table.addCell(SDate);
		table.addCell(EDate);
		table.addCell(Amount);

		

		document.open();

		com.lowagie.text.Image image01 = com.lowagie.text.Image
				.getInstance("C:\\project\\ParkingSystem\\WebContent\\images\\park.jpg");
		image01.scaleAbsolute(120f, 60f);// image width,height
		image01.setAlignment(Element.ALIGN_RIGHT);

		document.add(image01);

		PdfContentByte cb = writer.getDirectContent();
		BarcodeEAN codeEAN = new BarcodeEAN();
		codeEAN.setCode("4512345678906");
		Paragraph p = new Paragraph();

		// CODE 39
		document.add(new Paragraph("Barcode of your park"));
		Barcode39 code39 = new Barcode39();
		code39.setCode("1 2 3 4 5 6 7 8 9 ");
		document.add(code39.createImageWithBarcode(cb, null, null));

		document.add(p);
		
		 document.add(new Paragraph("Dear "+name+","));
		 document.add(new Paragraph(""));
		 document.add(new Paragraph("This is Your Permition letter for Your car parking"));
		 document.add(new Paragraph(" "));
		 document.add(new Paragraph("Parking Place Address -:"+Address));
		 document.add(new Paragraph("Contact Number -:"+number));
		 
		document.add(table);

		// Something like in HTML :-)

		document.add(new Paragraph("  "));
		
		document.add(new Paragraph("Parking Place Images"));
		
		com.lowagie.text.Image image02 = com.lowagie.text.Image
				.getInstance(img1);
		image02.scaleAbsolute(250f, 120f);// image width,height
		image02.setAlignment(Element.ALIGN_CENTER);
		
		com.lowagie.text.Image image03 = com.lowagie.text.Image
				.getInstance(img2);
		image03.scaleAbsolute(250f, 120f);// image width,height
		image03.setAlignment(Element.ALIGN_CENTER);
		
		com.lowagie.text.Image image04 = com.lowagie.text.Image
				.getInstance(img3);
		image04.scaleAbsolute(250f, 120f);// image width,height
		image04.setAlignment(Element.ALIGN_CENTER);
		
		
		document.add(image02);
		document.add(image03);
		document.add(image04);
		
		document.add(new Paragraph("Document Generated On - " + new Date().toString()));
		document.add(new Paragraph("  "));
		
		document.newPage(); // Opened new page

		

		document.close();
	}
}