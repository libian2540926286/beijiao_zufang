/**
 * 
 */
package com.beijiao.service;

import java.util.List;
import java.util.Map;

import com.beijiao.model.PolInterpre;

/**
 * @author cmy
 *����11:15:37
 */
public interface PolInterpreService {

	/*
	 * ��ѯ���߽��
	 */
	public PolInterpre selectPolInterpre(int polInterpreId);
	public List<PolInterpre> selectListPolInterpre();
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
