/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.71
 * Generated at: 2023-10-19 16:23:03 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class processaLogin2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"ISO-8859-1\">\r\n");
      out.write("    <title>Transferência de Dinheiro</title>\r\n");
      out.write("\r\n");
      out.write("    <!-- Adicione seus links para os estilos e scripts do Bootstrap aqui -->\r\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN\" crossorigin=\"anonymous\">\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("\r\n");
      out.write("    <!-- Adicione seu estilo CSS personalizado aqui -->\r\n");
      out.write("    <style>\r\n");
      out.write("        * {\r\n");
      out.write("            margin: 0;\r\n");
      out.write("            padding: 0;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        body {\r\n");
      out.write("            display: flex;\r\n");
      out.write("            align-items: center;\r\n");
      out.write("            justify-content: center;\r\n");
      out.write("            flex-direction: column;\r\n");
      out.write("            height: 80vh;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .container {\r\n");
      out.write("            margin-top: 20px;\r\n");
      out.write("        }\r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");

    // Dados do usuário
    String nome = "Vitor Hugo";
    double saldo = 25000000.0;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("    <div class=\"col-lg-12\">\r\n");
      out.write("        <h1>Bem-vindo, ");
      out.print(nome );
      out.write("!</h1>\r\n");
      out.write("        <p>Saldo: R$ <span id=\"saldo\">");
      out.print(String.format("%.2f", saldo) );
      out.write("</span></p>\r\n");
      out.write("\r\n");
      out.write("        <!-- Formulário de transferência -->\r\n");
      out.write("        <form id=\"transferForm\" action=\"Transferencia.jsp\" method=\"post\">\r\n");
      out.write("            <div class=\"mb-3\">\r\n");
      out.write("                <label for=\"destinatario\" class=\"form-label\">Destinatário:</label>\r\n");
      out.write("                <input type=\"text\" class=\"form-control\" id=\"destinatario\" name=\"destinatario\" required>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"mb-3\">\r\n");
      out.write("                <label for=\"valor\" class=\"form-label\">Valor (R$):</label>\r\n");
      out.write("                <input type=\"number\" class=\"form-control\" id=\"valor\" name=\"valor\" step=\"0.01\" required>\r\n");
      out.write("            </div>\r\n");
      out.write("            <button type=\"submit\" class=\"btn btn-primary\" id=\"transferirBtn\">Transferir</button>\r\n");
      out.write("        </form>\r\n");
      out.write("\r\n");
      out.write("        <!-- Botão para exibir o modal de extrato -->\r\n");
      out.write("        <div class=\"d-grid gap-2 d-md-flex justify-content-md-end\">\r\n");
      out.write("            <button class=\"btn btn-outline-danger\" data-bs-toggle=\"modal\" data-bs-target=\"#staticBackdrop\">Extrato</button>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <!-- Modal de Extrato -->\r\n");
      out.write("        <div class=\"modal fade\" id=\"staticBackdrop\" data-bs-backdrop=\"static\" data-bs-keyboard=\"false\" tabindex=\"-1\" aria-labelledby=\"staticBackdropLabel\" aria-hidden=\"true\">\r\n");
      out.write("            <div class=\"modal-dialog modal-dialog-scrollable\">\r\n");
      out.write("                <div class=\"modal-content\">\r\n");
      out.write("                    <div class=\"modal-header\">\r\n");
      out.write("                        <h1 class=\"modal-title fs-5\" id=\"staticBackdropLabel\">Extrato Bancario</h1>\r\n");
      out.write("                        <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"modal\" aria-label=\"Close\"></button>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"modal-body\">\r\n");
      out.write("                        <!-- Adicione aqui o conteúdo do seu extrato -->\r\n");
      out.write("                        <p>Data: 2023-10-17 | Descrição: Depósito | Valor: R$ 10,000.00</p>\r\n");
      out.write("                        <p>Data: 2023-10-18 | Descrição: Retirada | Valor: R$ -5,000.00</p>\r\n");
      out.write("                        <!-- Adicione mais linhas conforme necessário -->\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"modal-footer\">\r\n");
      out.write("                        <button type=\"button\" class=\"btn btn-secondary\" data-bs-dismiss=\"modal\">Fechar</button>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<!-- Script para inicializar a funcionalidade de área de transferência e redirecionamento -->\r\n");
      out.write("<script>\r\n");
      out.write("\r\n");
      out.write("    var clipboardSaldo = new ClipboardJS('#saldo');\r\n");
      out.write("    var clipboardTransferir = new ClipboardJS('#transferirBtn', {\r\n");
      out.write("        text: function () {\r\n");
      out.write("            var destinatario = document.getElementById('destinatario').value;\r\n");
      out.write("            var valor = document.getElementById('valor').value;\r\n");
      out.write("\r\n");
      out.write("            // Verifica se o valor é nulo ou vazio\r\n");
      out.write("            if (valor != null && valor.trim() !== \"\") {\r\n");
      out.write("                // Garante que o valor seja numérico e maior que zero\r\n");
      out.write("                if (!isNaN(valor) && parseFloat(valor) > 0) {\r\n");
      out.write("                    return \"Transferir R$ \" + parseFloat(valor).toLocaleString('pt-BR', { minimumFractionDigits: 2 }) + \" para \" + destinatario;\r\n");
      out.write("                } else {\r\n");
      out.write("                    alert(\"Por favor, insira um valor válido maior que zero.\");\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
