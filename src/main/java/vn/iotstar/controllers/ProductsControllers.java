package vn.iotstar.controllers;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.iotstar.entity.Video;
import vn.iotstar.services.IVideoService;
import vn.iotstar.services.impl.VideoService;

@WebServlet(urlPatterns = {"/products"})
public class ProductsControllers extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private IVideoService videoService = new VideoService();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Video> listVideos = videoService.findAll();

        // Gửi danh sách video vào request
        req.setAttribute("listVideos", listVideos);

        // Chuyển tiếp đến trang JSP để hiển thị
        req.getRequestDispatcher("/view/products.jsp").forward(req, resp);
	}
	
}
