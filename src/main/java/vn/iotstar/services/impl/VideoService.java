package vn.iotstar.services.impl;

import java.util.List;

import vn.iotstar.entity.Video;
import vn.iotstar.services.IVideoService;
import vn.iotstar.dao.IVideoDao;
import vn.iotstar.dao.impl.VideoDao;
public class VideoService implements IVideoService{
	IVideoDao videoDao = new VideoDao();
	
	@Override
	public int count() {
		return videoDao.count();
	}

	@Override
	public Video findByTitle(String title) throws Exception {
		try {
			return videoDao.findByTitle(title);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Video> findAll() {
		return videoDao.findAll();
	}

	@Override
	public Video findById(String videoid) {
		return videoDao.findById(videoid);
	}

	@Override
	public void delete(String videoid) throws Exception {
		try {
			videoDao.delete(videoid);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void update(Video video) {
		Video vid = this.findById(video.getVideoId());
		if (vid != null) {
			videoDao.update(video);
		}
	}

	@Override
	public void insert(Video video) {
		try {
	        Video vid = this.findByTitle(video.getTitle());
	        if (vid == null) {
	            videoDao.insert(video);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}

	@Override
	public List<Video> searchByTitle(String keyword) {
		return videoDao.searchByTitle(keyword);
	}

	@Override
	public List<Video> findByCategoryId(int cateid) {
		return videoDao.findByCategoryId(cateid);
	}

}
