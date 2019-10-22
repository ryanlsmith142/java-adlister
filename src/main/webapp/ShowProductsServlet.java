@WebServlet("/products")
public class ShowProductsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
        // Use the factory to get the dao object
        Products productsDao = DaoFactory.getProductsDao();
        // Use a method on the dao to get all the products
        List<Product> products = productsDao.all();
        // Pass the data to the jsp
        request.setAttribute("products", products);
        request.getRequestDispatcher("/products/index.jsp").forward(request, resp);
    }
}