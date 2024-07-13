<%-- 
    Document   : index
    Created on : 12/07/2024, 1:25:45 p. m.
    Author     : SEBASTIAN
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <title>Lista de bd</title>
    </head>
    <body>
        
        <%
        Connection con=null;
        Statement st=null;
        ResultSet rs=null;

        %>

        <div class="container mt-5">
            <div class="row">
                <div class="col-sm">

                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">nombre</th>
                        
                            </tr>
                        </thead>
                        <tbody>
                            
                            
                            <%
                           try
                            {
                            Class.forName("org.postgresql.Driver");
                            con =DriverManager.getConnection("jdbc:postgresql://localhost:5432/prueba", "postgres","root");
                            
                            st= con.createStatement();
                            rs=st.executeQuery("Select * from prueba;");
                            while(rs.next()){
                                %>
                                
                                  <tr>
                                      <th scope="row"> <%= rs.getString(1)  %> </th>
                                <td> <%= rs.getString(2)  %></td>
                              
                            </tr>
                            <%
                                }
                                    }catch(Exception e) {
                                         out.print("Errores"+ e);
                                                            }
                            %>
                          
                  
                        </tbody>
                    </table>

                </div>

            </div>

        </div>
    </body>
</html>
