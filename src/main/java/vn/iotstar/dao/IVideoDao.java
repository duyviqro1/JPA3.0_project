package vn.iotstar.dao;

import java.util.List;
import vn.iotstar.entity.Video;


public interface IVideoDao {
	
	int count();

	Video findByTitle(String title) throws Exception;

	List<Video> findAll();

	Video findById(String videoid);

	void delete(String videoid) throws Exception;

	void update(Video video);

	void insert(Video video);

	List<Video> searchByTitle(String keyword);

	List<Video> findByCategoryId(int cateid);
}
