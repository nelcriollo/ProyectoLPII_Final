/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.17
 * Generated at: 2022-05-23 05:45:33 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Mantenimiento_005fDevolucion_005fde_005fBienes_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Header.jsp", out, false);
      out.write("\r\n");
      out.write("<div id=\"principal\" class=\"container\">\r\n");
      out.write("\t<div class=\"row mx-5 my-4\">\r\n");
      out.write("\t\t<div class=\"col-md-6 text-center p-5 lh-sm\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t<h5 class=\"fw-bold\">Registro de Devolución de Bienes</h5>\r\n");
      out.write("\t\t\t<p>Av Abancay cuadra. 5 S/N, Lima,Perú</p>\r\n");
      out.write("\t\t\t<p>Telf: 990990215 - 989435229</p>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t<div class=\"col-md-4 text-center p-3 lh-sm border border-secondary\">\r\n");
      out.write("\t\t\t<h3>RUC:20401381291</h3>\r\n");
      out.write("\t\t\t<h3>FICHA DE DEVOLUCIÓN</h3>\r\n");
      out.write("\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t<div class=\" mb-2 row g-3 d-flex justify-content-center mr-3\">\r\n");
      out.write("\t\t\t\t\t<div class=\"col-auto\">\r\n");
      out.write("\t\t\t\t\t\t<label for=\"inputPassword6\" class=\"col-form-label\">NRO:</label>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"col-auto\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" id=\"inputPassword6\" class=\"form-control\"\r\n");
      out.write("\t\t\t\t\t\t\taria-describedby=\"passwordHelpInline\">\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"col-md-2\"></div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"row\">\r\n");
      out.write("\t\t<h3>Datos de Registro de Devoluciones</h3>\r\n");
      out.write("\t\t<form class=\"form-horizontal border border-secondary\">\r\n");
      out.write("\t\t\t<div class=\"row p-3\">\r\n");
      out.write("\t\t\t\t<div class=\"col-md-10 col-12\">\r\n");
      out.write("\t\t\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-6 col-12\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"row my-1\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<label for=\"txtFechaDevolucion\" class=\" col-6 col-form-label\">Fecha\r\n");
      out.write("\t\t\t\t\t\t\t\t\tde Devolución</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"col-6\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"date\" id=\"txtFechaDevolucion\" class=\"form-control\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-6 col-12\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"row my-1\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<label for=\"mpDepartamento\" class=\"col-6 col-form-label\">Remitente</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"col-6\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<select id=\"mpDepartamento\" class=\"form-select\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option selected>Seleccionar</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option></option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option></option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option></option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-6 col-12\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"row my-1\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<label for=\"txtProveedor\" class=\" col-6 col-form-label\">Proveedor</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"col-6\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" id=\"txtProveedor\" class=\"form-control\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-6 col-12\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"row my-1\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<label for=\"mpDepartamento\" class=\"col-6 col-form-label\">Total\r\n");
      out.write("\t\t\t\t\t\t\t\t\tcrédito adeudado</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"col-6\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<select id=\"mpDepartamento\" class=\"form-select\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option selected>Seleccionar</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option></option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option></option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option></option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"col-md-2 col-12\">\r\n");
      out.write("\t\t\t\t\t<div class=\"row my-1\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col-lg-12 d-grid\">\r\n");
      out.write("\t\t\t\t\t\t\t<button class=\"btn btn-dark\" type=\"submit\">Nuevo</button>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"row my-1\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col-lg-12 d-grid\">\r\n");
      out.write("\t\t\t\t\t\t\t<button class=\"btn btn-dark\" type=\"submit\">Grabar</button>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"row mt-3\">\r\n");
      out.write("\t\t<table class=\"table table-striped\">\r\n");
      out.write("\t\t\t<thead>\r\n");
      out.write("\t\t\t\t<tr class=\"table-success\">\r\n");
      out.write("\t\t\t\t\t<th scope=\"col\">Num. de Devolución</th>\r\n");
      out.write("\t\t\t\t\t<th scope=\"col\">Fecha de Devolución</th>\r\n");
      out.write("\t\t\t\t\t<th scope=\"col\">Proveedor</th>\r\n");
      out.write("\t\t\t\t\t<th scope=\"col\">Remitente</th>\r\n");
      out.write("\t\t\t\t\t<th scope=\"col\">Total de Devolución</th>\r\n");
      out.write("\t\t\t\t\t<th scope=\"col\"></th>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</thead>\r\n");
      out.write("\t\t\t<tbody>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td></td>\r\n");
      out.write("\t\t\t\t\t<td></td>\r\n");
      out.write("\t\t\t\t\t<td></td>\r\n");
      out.write("\t\t\t\t\t<td></td>\r\n");
      out.write("\t\t\t\t\t<td></td>\r\n");
      out.write("\t\t\t\t\t<td><i class=\"bi bi-trash-fill\" style=\"font-size: 1.2rem;\"></i>\r\n");
      out.write("\t\t\t\t\t\t<button class=\"btn btn-secondary float-end mx-1\">Eliminar</button>\r\n");
      out.write("\t\t\t\t\t\t<button class=\"btn btn-secondary float-end mx-1\">Actualizar</button>\r\n");
      out.write("\t\t\t\t\t\t<button class=\"btn btn-secondary float-end mx-1\">Generar\r\n");
      out.write("\t\t\t\t\t\t\tdetalle</button></td>\r\n");
      out.write("\t\t\t</tbody>\r\n");
      out.write("\t\t</table>\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Footer.jsp", out, false);
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
