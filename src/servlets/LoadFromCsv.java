package servlets;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import parser.AnafCsvParser;
import parser.Firma;

/**
 * Servlet implementation class LoadFromCsv
 */
@WebServlet("/LoadFromCsv")
public class LoadFromCsv extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoadFromCsv() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath())
				.append("***Data este: " + new java.util.Date());
		// TODO De preluat informatiile din form (de pe request)
		System.out.println(request.getParameter("tipFactura")
				+ request.getParameter("CUIFurnizor")
				+ request.getParameter("CUIClient")
				+ request.getParameter("NrFactura")
				+ request.getParameter("DataFactura")
				+ request.getParameter("ProduseServicii")
				+ request.getParameter("UM")
				+ request.getParameter("Cantitate")
				+ request.getParameter("PretUnitar")
				+ request.getParameter("PersoanaEmitenta"));
		String tipFactura = request.getParameter("tipFactura");
		String cuiFz = request.getParameter("CUIFurnizor");
		String cuiCl = request.getParameter("CUIClient");
		String nrF = request.getParameter("NrFactura");
		String dataF = request.getParameter("DataFactura");
		String prodServ = request.getParameter("ProduseServicii");
		String uM = request.getParameter("UM");
		String cant = request.getParameter("Cantitate");
		String pretU = request.getParameter("PretUnitar");
		String persEm = request.getParameter("PersoanaEmitenta");

		// TODO de interogat CSV pe baza de CUI
		File sursa = new File("C:\\firme\\firme2.csv");
		// constructor obiect sursa care citeste date din firme2.csv
		AnafCsvParser anafCsvParser = new AnafCsvParser(sursa);
		// constructor
		anafCsvParser.parse();//

		List<?> listaFirme = anafCsvParser.getListaFirme();// au venit firmele din csvParser
		Iterator<?> it = listaFirme.iterator();
		Firma firmaFurnizor = null;
		Firma firmaClient = null;

		try {
			int i = 0;
			while (it.hasNext()) {
				// System.out.println("linia curenta"+i);
				Firma f = (Firma) it.next();
				if (f == null)
					System.out.println("firma e null! linia e = " + i);
				if (f.getCUI() == null)
					System.out.println("getCui e null! linia e = " + i);
				if (f.getCUI().equals(cuiFz)) {
					firmaFurnizor = f;
					System.out.println("Nume furnizor:" + firmaFurnizor.getDENUMIRE());
				}
				if (f.getCUI().equals(cuiCl)) {
					firmaClient = f;
					System.out.println("Nume client:" + firmaClient.getDENUMIRE());
				}
				i++;
				if ((firmaFurnizor != null) && (firmaClient != null))
					break;
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// TODO de pus pe sesiune informatiile necesare in jsp-ul de factura

		request.setAttribute("furnizor", firmaFurnizor);
		request.getSession().setAttribute("firmaFurnizor", firmaFurnizor);		
		request.setAttribute("client", firmaClient);
		request.getSession().setAttribute("firmaClient", firmaClient);		
		request.getSession().setAttribute("tipFactura", tipFactura);
		request.getSession().setAttribute("nrFactura", nrF); // System.out.println("factura"+nrF);
		request.getSession().setAttribute("dataFactura", dataF);
		request.getSession().setAttribute("produseServicii", prodServ);
		request.getSession().setAttribute("uM", uM);
		request.getSession().setAttribute("cantitate", cant);
		request.getSession().setAttribute("pretUnitar", pretU);
		request.getSession().setAttribute("persoanaEmitenta", persEm);// request.getSession-iau sesiunea curenta,
																		// setAttribute- pun pe sesiune
		int c = Integer.parseInt(cant);
		float p = Float.parseFloat(pretU);
		request.getSession().setAttribute("valoare", "" + (c * p));
		// int v = Integer.parseInt(valoare);
		// request.getSession().setAttribute("total",""+valoare);

		// TODO redirect la jsp-ul de factura
		RequestDispatcher requestDispacher = request.getRequestDispatcher("/Factura.jsp");
		requestDispacher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
