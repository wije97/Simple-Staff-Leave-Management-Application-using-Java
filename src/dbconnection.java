
import java.sql.*;
import javax.swing.JOptionPane;
public class dbconnection {
    Connection con;
    Statement st;
    ResultSet rs;
    PreparedStatement pst;
    public Connection connect()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/staff_project","root","");
            st=con.createStatement();
            return con;
        }
        catch(Exception e)
        {
            JOptionPane.showMessageDialog(null,e);
        }
        return null;
    }
}
