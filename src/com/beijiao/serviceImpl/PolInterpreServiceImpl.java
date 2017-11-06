/**
 * 
 */
package com.beijiao.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.beijiao.dao.PolInterpreMapper;
import com.beijiao.model.PolInterpre;
import com.beijiao.service.PolInterpreService;

/**
 * @author cmy
 *����11:29:26
 */
@Service("polInterpreService")
public class PolInterpreServiceImpl implements PolInterpreService {

	@Resource
	private PolInterpreMapper polInterpreMapper;
	/* (non-Javadoc)
	 * @see com.beijiao.service.PolInterpreService#selectPolInterpre(int)
	 */
	@Override
	public PolInterpre selectPolInterpre(int polInterpreId) {
		// TODO Auto-generated method stub
		return polInterpreMapper.selectPolInterpre(polInterpreId);
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.PolInterpreService#selectListPolInterpre()
	 */
	@Override
	public List<PolInterpre> selectListPolInterpre() {
		// TODO Auto-generated method stub
		return polInterpreMapper.selectListPolInterpre();
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.PolInterpreService#addPolInterpre(com.beijiao.model.PolInterpre)
	 */
	@Override
	public int addPolInterpre(PolInterpre polInterpre) {
		// TODO Auto-generated method stub
		return polInterpreMapper.addPolInterpre(polInterpre);
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.PolInterpreService#deletePolInterpre(int)
	 */
	@Override
	public int deletePolInterpre(int polInterpreId) {
		// TODO Auto-generated method stub
		return polInterpreMapper.deletePolInterpre(polInterpreId);
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.PolInterpreService#changePolInterpre(java.lang.String)
	 */
	@Override
	public int changePolInterpre(String polInterpreContent) {
		// TODO Auto-generated method stub
		return polInterpreMapper.changePolInterpre(polInterpreContent);
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.PolInterpreService#searchPolInterpre(java.lang.String)
	 */
	@Override
	public List<PolInterpre> searchPolInterpre(String search) {
		// TODO Auto-generated method stub
		return polInterpreMapper.searchPolInterpre(search);
	}

	@Override
	public List<PolInterpre> selectAllPolInterpre() {
		// TODO Auto-generated method stub
		return polInterpreMapper.selectAllPolInterpre();
	}

	@Override
	public int getRecordCount() {
		// TODO Auto-generated method stub
		return polInterpreMapper.getRecordCount();
	}

}
