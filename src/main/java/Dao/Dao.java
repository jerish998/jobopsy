package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import Bean.Register;
public class Dao {
	Connection con = null;
	PreparedStatement ps = null;
	Statement st = null;
	ResultSet rs = null;
	String query = null;
	DataBaseConnector dobj = new DataBaseConnector();

	//inserting details in usereg
	
	public String regUser(Register robj) {
		try {
			con = dobj.Dbconnect();
			query = "insert into userreg(uname,ugender,ulocation,uemail,upassword,uphone)values(?,?,?,?,?,?)";
			ps = con.prepareStatement(query);
			ps.setString(1, robj.getUname());
			ps.setString(2, robj.getUgender());
			ps.setString(3, robj.getUlocation());
			ps.setString(4, robj.getUemail());
			ps.setString(5, robj.getUpassword());
			ps.setString(6, robj.getUphone());

			int i = ps.executeUpdate();
			if (i != 0) {

				return "success";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}

	
	//for userlogin from table 'userreg"
	
	public String logUser(String email, String pass) {
		// ArrayList<Register>logL=new ArrayList<Register>();
		try {
			query = "select * from userreg where uemail='" + email + "' && upassword = '" + pass + "' ";
			con = dobj.Dbconnect();

			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {

				return "success";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}
	
	//for viewing the client
	
	public ArrayList<Register> viewUser() {
		ArrayList<Register> viewU = new ArrayList<Register>();
		try {
			query = "select * from userreg";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				Register robj = new Register();
				robj.setUid(rs.getString(1));
				robj.setUname(rs.getString(2));
				robj.setUgender(rs.getString(3));
				robj.setUlocation(rs.getString(4));
				robj.setUemail(rs.getString(5));
				robj.setUpassword(rs.getString(6));
				robj.setUphone(rs.getString(7));

				viewU.add(robj);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return viewU;
	}
	
	
	//inserting details into empreg (temporary table)
	
	public String regEmp(Register robj) {
		try {
			con = dobj.Dbconnect();
			query = "insert into empreg(ename,egender,elocation,employees,eemail,epassword,ephone,service)values(?,?,?,?,?,?,?,?)";
			ps = con.prepareStatement(query);
			ps.setString(1, robj.getEname());
			ps.setString(2, robj.getEgender());
			ps.setString(3, robj.getElocation());
			ps.setString(4, robj.getEmployees());
			ps.setString(5, robj.getEemail());
			ps.setString(6, robj.getEpassword());
			ps.setString(7, robj.getEphone());
			ps.setString(8, robj.getService());

			int i = ps.executeUpdate();
			if (i != 0) {
				System.out.println("insert the empdetails to empreg");
				return "success";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}

	
	// for viewing the employer details in admin pannel
	
	public ArrayList<Register> viewemp() {
		ArrayList<Register> viewE = new ArrayList<Register>();
		try {
			query = "select * from empreg";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				Register robj = new Register();
				robj.setEid(rs.getString(1));
				robj.setEname(rs.getString(2));
				robj.setEgender(rs.getString(3));
				robj.setElocation(rs.getString(4));
				robj.setEmployees(rs.getString(5));
				robj.setEemail(rs.getString(6));
				robj.setEpassword(rs.getString(7));
				robj.setEphone(rs.getString(8));
				robj.setService(rs.getString(9));
				viewE.add(robj);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return viewE;

	}
	
	/////////////////////////////
	
	public String viewad() {
		// ArrayList<Register>logL=new ArrayList<Register>();
		try {
			query = "select * from emprreg";
			con = dobj.Dbconnect();

			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {

				return "success";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}
	
	///////////////////////////
	
	
	//employer login from permanant table: "pemp"
	
	public String logemp(String pemail, String ppass) {
		// ArrayList<Register>logL=new ArrayList<Register>();
		try {
			query = "select * from pemp where peemail='" + pemail + "' && pepassword = '" + ppass + "' ";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				return "success";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}
	
	
	
	//////////////////////////////////////////////////////
	
	public String plumberdetails(String p) {
		try {
			query = "select * from pemp where service='" + p + "'";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				return "success";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}

	public ArrayList<Register> viewp() {
		ArrayList<Register> viewE = new ArrayList<Register>();
		try {
			query = "select * from pemp where service='PLUMBER'";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				Register robj = new Register();
				robj.setEid(rs.getString(1));
				robj.setEname(rs.getString(2));
				robj.setEgender(rs.getString(3));
				robj.setElocation(rs.getString(4));
				robj.setEmployees(rs.getString(5));
				robj.setEemail(rs.getString(6));
				robj.setEpassword(rs.getString(7));
				robj.setEphone(rs.getString(8));
				robj.setService(rs.getString(9));

				viewE.add(robj);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return viewE;

	}

	public String carpenderdetails(String c) {
		try {
			query = "select * from pemp where service='" + c + "'";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				return "success";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}

	public ArrayList<Register> viewc() {
		ArrayList<Register> viewE = new ArrayList<Register>();
		try {
			query = "select * from pemp where service='CARPENTER'";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				Register robj = new Register();
				robj.setEid(rs.getString(1));
				robj.setEname(rs.getString(2));
				robj.setEgender(rs.getString(3));
				robj.setElocation(rs.getString(4));
				robj.setEmployees(rs.getString(5));
				robj.setEemail(rs.getString(6));
				robj.setEpassword(rs.getString(7));
				robj.setEphone(rs.getString(8));
				robj.setService(rs.getString(9));

				viewE.add(robj);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return viewE;

	}

	public String electriciandetails(String c) {
		// TODO Auto-generated method stub
		try {
			query = "select * from pemp where service='" + c + "'";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				return "success";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}

	public ArrayList<Register> viewe() {
		ArrayList<Register> viewE = new ArrayList<Register>();
		try {
			query = "select * from pemp where service='ELECTRICIAN'";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				Register robj = new Register();
				robj.setEid(rs.getString(1));
				robj.setEname(rs.getString(2));
				robj.setEgender(rs.getString(3));
				robj.setElocation(rs.getString(4));
				robj.setEmployees(rs.getString(5));
				robj.setEemail(rs.getString(6));
				robj.setEpassword(rs.getString(7));
				robj.setEphone(rs.getString(8));
				robj.setService(rs.getString(9));

				viewE.add(robj);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return viewE;

	}

	public String painterdetails(String c) {
		// TODO Auto-generated method stub
		try {
			query = "select * from pemp where service='" + c + "'";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				return "success";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}

	public ArrayList<Register> viewpa() {
		ArrayList<Register> viewE = new ArrayList<Register>();
		try {
			query = "select * from pemp where service='PAINTER'";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				Register robj = new Register();
				robj.setEid(rs.getString(1));
				robj.setEname(rs.getString(2));
				robj.setEgender(rs.getString(3));
				robj.setElocation(rs.getString(4));
				robj.setEmployees(rs.getString(5));
				robj.setEemail(rs.getString(6));
				robj.setEpassword(rs.getString(7));
				robj.setEphone(rs.getString(8));
				robj.setService(rs.getString(9));

				viewE.add(robj);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return viewE;

	}

	public String fcdetails(String c) {
		// TODO Auto-generated method stub
		try {
			query = "select * from pemp where service='" + c + "'";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				return "success";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}

	public ArrayList<Register> viewfc() {
		ArrayList<Register> viewE = new ArrayList<Register>();
		try {
			query = "select * from pemp where service='FLOOR CLEANING'";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				Register robj = new Register();
				robj.setEid(rs.getString(1));
				robj.setEname(rs.getString(2));
				robj.setEgender(rs.getString(3));
				robj.setElocation(rs.getString(4));
				robj.setEmployees(rs.getString(5));
				robj.setEemail(rs.getString(6));
				robj.setEpassword(rs.getString(7));
				robj.setEphone(rs.getString(8));
				robj.setService(rs.getString(9));

				viewE.add(robj);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return viewE;

	}

	public String hcdetails(String c) {
		// TODO Auto-generated method stub
		try {
			query = "select * from pemp where service='" + c + "'";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				return "success";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}

	public ArrayList<Register> viewhc() {
		ArrayList<Register> viewE = new ArrayList<Register>();
		try {
			query = "select * from pemp where service='HOUSE CLEANING'";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				Register robj = new Register();
				robj.setEid(rs.getString(1));
				robj.setEname(rs.getString(2));
				robj.setEgender(rs.getString(3));
				robj.setElocation(rs.getString(4));
				robj.setEmployees(rs.getString(5));
				robj.setEemail(rs.getString(6));
				robj.setEpassword(rs.getString(7));
				robj.setEphone(rs.getString(8));
				robj.setService(rs.getString(9));

				viewE.add(robj);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return viewE;

	}

	public String regBooking(Register robj) {
		try {
			con = dobj.Dbconnect();
			query = "insert into booking(ubname,ubemail,ubphone,ublocation,address,date,stype,pay)values(?,?,?,?,?,?,?,?)";
			ps = con.prepareStatement(query);
			ps.setString(1, robj.getUbname());
			ps.setString(2, robj.getUbemail());
			ps.setString(3, robj.getUbphone());
			ps.setString(4, robj.getUblocation());
			ps.setString(5, robj.getAddress());
			ps.setString(6, robj.getDate());
			ps.setString(7, robj.getStype());
			ps.setString(8, robj.getPay());


			int i = ps.executeUpdate();
			if (i != 0) {

				return "success";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}

	public ArrayList<Register> viewbd() {
		ArrayList<Register> viewE = new ArrayList<Register>();
		try {
			query = "select * from pemp";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				Register robj = new Register();
				robj.setEid(rs.getString(1));
				robj.setEname(rs.getString(2));
				robj.setEgender(rs.getString(3));
				robj.setElocation(rs.getString(4));
				robj.setEmployees(rs.getString(5));
				robj.setEemail(rs.getString(6));
				robj.setEpassword(rs.getString(7));
				robj.setEphone(rs.getString(8));
				robj.setService(rs.getString(9));
				robj.setPayment(rs.getString(10));

				viewE.add(robj);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return viewE;

	}

	public String cdetails(Register robj) {
		try {
			con = dobj.Dbconnect();
			query = "insert into payment(pname,cno,cvc,pdate)values(?,?,?,?)";
			ps = con.prepareStatement(query);
			ps.setString(1, robj.getPname());
			ps.setString(2, robj.getCno());
			ps.setString(3, robj.getCvc());
			ps.setString(4, robj.getPdate());

			int i = ps.executeUpdate();
			if (i != 0) {

				return "success";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}

	public ArrayList<Register> viewcd() {
		ArrayList<Register> viewE = new ArrayList<Register>();
		try {
			query = "select * from payment";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				Register robj = new Register();
				robj.setPid(rs.getString(1));
				robj.setPname(rs.getString(2));
				robj.setCno(rs.getString(3));
				robj.setCvc(rs.getString(4));
				robj.setPdate(rs.getString(5));

				viewE.add(robj);
			}
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
		return viewE;
	}

	public ArrayList<Register> viewub() {
		ArrayList<Register> viewE = new ArrayList<Register>();
		try {
			query = "select * from booking";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				Register robj = new Register();
				robj.setUbid(rs.getString(1));
				robj.setUbname(rs.getString(2));
				robj.setUbemail(rs.getString(3));
				robj.setUbphone(rs.getString(4));
				robj.setUblocation(rs.getString(5));
				robj.setAddress(rs.getString(6));
				robj.setDate(rs.getString(7));
				robj.setStype(rs.getString(8));
				robj.setPay(rs.getString(8));


				viewE.add(robj);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return viewE;
	}
	
	
	


	public String regcontact(Register robj) {
		try {
			con = dobj.Dbconnect();
			query = "insert into contact(cname,cemail,cphone,message)values(?,?,?,?)";
			ps = con.prepareStatement(query);
			ps.setString(1, robj.getCname());
			ps.setString(2, robj.getCemail());
			ps.setString(3, robj.getCphone());
			ps.setString(4, robj.getMessage());
			

			int i = ps.executeUpdate();
			if (i != 0) {

				return "success";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	
	}
	
	
	public ArrayList<Register> viewct() {
		ArrayList<Register> viewE = new ArrayList<Register>();
		try {
			query = "select * from contact";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				Register robj = new Register();
				robj.setCid(rs.getString(1));
				robj.setCname(rs.getString(2));
				robj.setCemail(rs.getString(3));
				robj.setCphone(rs.getString(4));
				robj.setMessage(rs.getString(5));

				viewE.add(robj);
			}
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
		return viewE;
	

}
