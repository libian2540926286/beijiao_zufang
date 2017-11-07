/**
 * 
 */
package com.beijiao.dao;

import java.util.List;
import java.util.Map;

import com.beijiao.model.PolInterpre;

/**
 * @author cmy
 *����11:11:38
 */
public interface PolInterpreMapper {

	/*
	 * ��ѯ���߽��
	 */
	public PolInterpre selectPolInterpre(int polInterpreId);
	public List<PolInterpre> selectListPolInterpre();
	/**
	 * 查看记录的的总数
	 * @return
	 */
	public int getRecordCount();

	public List<PolInterpre> selectAllPolInterpre(Map map);
	public List<PolInterpre> searchPolInterpre(String search);

/*
 * ������߽��
*/
    public int addPolInterpre(PolInterpre polInterpre);
    /*
     * ɾ�����߽��
     */
    public int deletePolInterpre(int polInterpreId);
    /*
     * �޸����߽��
     */
    public int changePolInterpre(String polInterpreContent);
     
  }