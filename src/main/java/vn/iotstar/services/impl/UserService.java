package vn.iotstar.services.impl;

import java.util.List;

import vn.iotstar.dao.IUserDao;
import vn.iotstar.dao.impl.UserDao;
import vn.iotstar.entity.User;
import vn.iotstar.services.IUserService;

public class UserService implements IUserService{
	IUserDao userDao = new UserDao();
	@Override
	public int count() {
		return userDao.count();
	}

	@Override
	public User findByUsername(String uname) throws Exception {
		try {
			return userDao.findByUsername(uname);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<User> findAll() {
		return userDao.findAll();
	}

	@Override
	public User findById(int uid) {
		return userDao.findById(uid);
	}

	@Override
	public void delete(int uid) throws Exception {
		try {
			userDao.delete(uid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void update(User user) {
		User usr = this.findById(user.getId());
		if (usr != null) {
			userDao.update(user);
		}
		
	}

	@Override
	public void insert(User user) {
		try {
	        User usr = this.findByUsername(user.getUsername());
	        if (usr == null) {
	            userDao.insert(user);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
		
	}

	@Override
	public List<User> searchByName(String keyword) {
		return userDao.searchByName(keyword);
	}


	@Override
	public User login(String username, String password) throws Exception {
		User user = this.findByUsername(username);
		if (user != null && password.equals(user.getPassword())) {
			return user;
		}
		return null;
	}

	@Override
	public boolean checkExistEmail(String email) {
		try {
	        User user = userDao.findByEmail(email);
	        return user != null;  // Nếu có user với email này thì trả về true
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return false;
	}

	@Override
	public boolean checkExistPhone(String phone) {
		try {
	        // Giả sử có một phương thức findByPhone trong UserDao để tìm người dùng theo số điện thoại
	        User user = userDao.findByPhone(phone);
	        return user != null;  // Nếu có user với số điện thoại này thì trả về true
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return false;
	}

	@Override
	public boolean register(String username, String email, String password, String fullname, String phone) {
		try {
	        // Kiểm tra email và số điện thoại có tồn tại không
	        if (checkExistEmail(email)) {
	            System.out.println("Email đã tồn tại.");
	            return false;  // Nếu email đã tồn tại thì không thể đăng ký
	        }

	        if (checkExistPhone(phone)) {
	            System.out.println("Số điện thoại đã tồn tại.");
	            return false;  // Nếu số điện thoại đã tồn tại thì không thể đăng ký
	        }

	        // Tạo một đối tượng User mới và thiết lập thông tin
	        User user = new User();
	        user.setUsername(username);
	        user.setEmail(email);
	        user.setPassword(password);
	        user.setFullname(fullname);
	        user.setPhone(phone);
	        user.setImages(null);
	        user.setRoleid(2);  // Mặc định là người dùng

	        // Thực hiện insert user vào cơ sở dữ liệu
	        userDao.insert(user);
	        return true;  // Đăng ký thành công
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return false;  // Nếu có lỗi xảy ra trong quá trình đăng ký thì trả về false
}
	}
