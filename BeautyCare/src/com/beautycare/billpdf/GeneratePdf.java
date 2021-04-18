package com.beautycare.billpdf;
import java.io.FileOutputStream;
import java.util.Date;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter ;
import com.itextpdf.text.Paragraph ;
public class GeneratePdf {
    public void generatePdf(String Service_Name, String Cost)
    {Document document = new Document();
    try
    {
    	
    	
        PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream("E:/bill/bill7.pdf"));
        document.open();
        Font f1= new Font(Font.FontFamily.TIMES_ROMAN,30,Font.ITALIC,BaseColor.PINK);
        Font f2= new Font(Font.FontFamily.TIMES_ROMAN,20,Font.ITALIC,BaseColor.BLACK);
        Paragraph intro=new Paragraph("BEAUTY CARE",f1);
        Paragraph date=new Paragraph(new Date().toString());
        Paragraph addr=new Paragraph("28, Annai Nagar,Chennai - 600102.");
        Paragraph ph=new Paragraph("Ph: 91-9876543210");
        Paragraph thank=new Paragraph("THANKYOU");
        ph.setLeading(20);
        intro.setAlignment(Element.ALIGN_CENTER);
        thank.setAlignment(Element.ALIGN_CENTER);
        date.setAlignment(Element.ALIGN_CENTER);
        addr.setAlignment(Element.ALIGN_CENTER);
        ph.setAlignment(Element.ALIGN_CENTER);
        Paragraph space=new Paragraph(" ");
        PdfPTable table=new PdfPTable(2);
        PdfPCell c1=new PdfPCell(new Paragraph("Service",f2));
        PdfPCell c2=new PdfPCell(new Paragraph("Cost",f2));
        PdfPCell c3=new PdfPCell(new Paragraph(Service_Name));
        PdfPCell c4=new PdfPCell(new Paragraph(Cost));
        PdfPCell c5=new PdfPCell(new Paragraph("Total"));
        PdfPCell c6=new PdfPCell(new Paragraph(Cost));
        c1.setHorizontalAlignment(Element.ALIGN_CENTER);
        c2.setHorizontalAlignment(Element.ALIGN_CENTER);
        c3.setHorizontalAlignment(Element.ALIGN_CENTER);
        c4.setHorizontalAlignment(Element.ALIGN_CENTER);
        c5.setHorizontalAlignment(Element.ALIGN_CENTER);
        c6.setHorizontalAlignment(Element.ALIGN_CENTER);
        c1.setBorderColor(BaseColor.WHITE);
        c2.setBorderColor(BaseColor.WHITE);
        c3.setBorderColor(BaseColor.WHITE);
        c4.setBorderColor(BaseColor.WHITE);
        c5.setBorderColor(BaseColor.WHITE);
        c6.setBorderColor(BaseColor.WHITE);
        c1.setPaddingBottom(20);
        c2.setPaddingBottom(20);
        c5.setPaddingTop(20);
        c6.setPaddingTop(20);
        c5.setPaddingBottom(20);
        c6.setPaddingBottom(20);
       
        table.addCell(c1);
        table.addCell(c2);
        table.addCell(c3);
        table.addCell(c4);
        table.addCell(c5);
        table.addCell(c6);
        document.add(intro);
        document.add(date);
        document.add(addr);
        document.add(ph);
        document.add(space);
        document.add(table);
        document.add(thank);       
       document.close();
       writer.close();
    } catch (Exception e)
    {
        e.printStackTrace();
    }
}
}

