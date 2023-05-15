package Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;

import Bean.Register;
import Dao.Dao;

/**
 * Servlet implementation class Controller
 */
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Controller() {
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		// client registration

		String action = request.getParameter("action");
		Dao dobj = new Dao();
		HttpSession ses = request.getSession();

		if (action.equals("ureg")) {
			Register robj = new Register();
			robj.setUname(request.getParameter("uname"));
			robj.setUgender(request.getParameter("ugender"));
			robj.setUlocation(request.getParameter("ulocation"));
			robj.setUemail(request.getParameter("uemail"));
			robj.setUpassword(request.getParameter("upassword"));
			robj.setUphone(request.getParameter("uphone"));
			String result = dobj.regUser(robj); // reguser in dao
			if (result.equals("success")) {
				request.getRequestDispatcher("ulog.jsp").forward(request, response);
			}
		}

		// Employer registration

		if (action.equals("ereg")) {
			Register robj = new Register();
			robj.setEname(request.getParameter("ename"));
			robj.setEgender(request.getParameter("egender"));
			robj.setElocation(request.getParameter("elocation"));
			robj.setEmployees(request.getParameter("employees"));
			robj.setEemail(request.getParameter("eemail"));
			robj.setEpassword(request.getParameter("epassword"));
			robj.setEphone(request.getParameter("ephone"));
			robj.setService(request.getParameter("service"));
			String result = dobj.regEmp(robj);
			if (result.equals("success")) {
				request.getRequestDispatcher("Helloemp.jsp").forward(request, response);
			}
		}

		// client login and forward to user home page

		if (action.equals("ulogin")) {
			Register robj = new Register();
			String email = request.getParameter("uemail");
			String pass = request.getParameter("upassword");
			ArrayList<Register> viewUser = dobj.viewUser();
			ses.setAttribute("ulist1", viewUser);
			if (email.equals("#@1") && pass.equals("#@1")) {
				request.getRequestDispatcher("Adminp.jsp").forward(request, response);
				// System.out.println("jerish");
			} else {
				// System.out.println("jerish1");
				String result1 = dobj.logUser(email, pass);
				if (result1.equals("success")) {
					ses.setAttribute("ulist1", viewUser);
					request.getRequestDispatcher("Uhome.jsp").forward(request, response);
				}
			}

			
			// Employer login

			if (action.equals("elogin")) {
				Register robj1 = new Register();
				String pemail = request.getParameter("peemail");
				String ppass = request.getParameter("pepassword");
				
				
				if (pemail.equals("#@1") && ppass.equals("#@1")) {
					ArrayList<Register> viewempa = dobj.viewemp();
					if (result.equals("success")) {
						ses.setAttribute("ulist", viewempa);
						request.getRequestDispatcher("Adminp.jsp").forward(request, response);
					// System.out.println("peemail");
				} else {
					String result = dobj.logemp(pemail, ppass);
					ArrayList<Register> viewemp1 = dobj.viewemp();
					if (result.equals("success")) {
						ses.setAttribute("ulist", viewemp1);
						if (result.equals("success")) {
							request.getRequestDispatcher("EmpHome.jsp").forward(request, response);
						}
					}
				}
				

				// employer login
				// if(action.equals("elogin")) {

					/////////////////////////////////////
					
					if (action.equals("plumber")) {
						Register robj = new Register();
						String p = request.getParameter("service");

						String result = dobj.plumberdetails(p);
						ArrayList<Register> viewp = dobj.viewp();
						if (result.equals("success")) {
							ses.setAttribute("ulist", viewp);
							request.getRequestDispatcher("spinfo.jsp").forward(request, response);
						}

					}

					if (action.equals("carpenter")) {
						Register robj = new Register();
						String c = request.getParameter("service");

						String result = dobj.carpenderdetails(c);
						ArrayList<Register> viewc = dobj.viewc();
						if (result.equals("success")) {
							ses.setAttribute("ulist", viewc);
							request.getRequestDispatcher("spinfo.jsp").forward(request, response);
						}

					}

					if (action.equals("electrician")) {
						Register robj = new Register();
						String c = request.getParameter("service");

						String result = dobj.electriciandetails(c);
						ArrayList<Register> viewe = dobj.viewe();
						if (result.equals("success")) {
							ses.setAttribute("ulist", viewe);
							request.getRequestDispatcher("spinfo.jsp").forward(request, response);
						}

					}

					if (action.equals("painter")) {
						Register robj = new Register();
						String c = request.getParameter("service");

						String result = dobj.painterdetails(c);
						ArrayList<Register> viewpa = dobj.viewpa();
						if (result.equals("success")) {
							ses.setAttribute("ulist", viewpa);
							request.getRequestDispatcher("spinfo.jsp").forward(request, response);
						}

					}

					if (action.equals("floor cleaning")) {
						Register robj = new Register();
						String c = request.getParameter("service");

						String result = dobj.fcdetails(c);
						ArrayList<Register> viewfc = dobj.viewfc();
						if (result.equals("success")) {
							ses.setAttribute("ulist", viewfc);
							request.getRequestDispatcher("spinfo.jsp").forward(request, response);
						}

					}

					if (action.equals("house cleaning")) {
						Register robj = new Register();
						String c = request.getParameter("service");

						String result = dobj.hcdetails(c);
						ArrayList<Register> viewhc = dobj.viewhc();
						if (result.equals("success")) {
							ses.setAttribute("ulist", viewhc);
							request.getRequestDispatcher("spinfo.jsp").forward(request, response);
						}

					}

					if (action.equals("ubooking")) {
						Register robj = new Register();
						robj.setUbname(request.getParameter("ubname"));
						robj.setUbemail(request.getParameter("ubemail"));
						robj.setUbphone(request.getParameter("ubphone"));
						robj.setUblocation(request.getParameter("ublocation"));
						robj.setAddress(request.getParameter("address"));
						robj.setDate(request.getParameter("date"));
						robj.setStype(request.getParameter("stype"));
						ArrayList<Register> viewub = dobj.viewub();

						String result = dobj.regBooking(robj);
						if (result.equals("success")) {
							ses.setAttribute("ulist2", viewub);

							request.getRequestDispatcher("paymentdetails.jsp").forward(request, response);
						}
					}

					if (action.equals("cd")) {
						Register robj = new Register();
						robj.setPname(request.getParameter("pname"));
						robj.setCno(request.getParameter("pname"));
						robj.setCvc(request.getParameter("cvc"));
						robj.setPdate(request.getParameter("pdate"));

						ArrayList<Register> viewcd = dobj.viewcd();
						String result = dobj.cdetails(robj);
						if (result.equals("success")) {
							ses.setAttribute("ulist3", viewcd);
							request.getRequestDispatcher("paytable.jsp").forward(request, response);
						}
					}
			}

		}
	}
}
}
