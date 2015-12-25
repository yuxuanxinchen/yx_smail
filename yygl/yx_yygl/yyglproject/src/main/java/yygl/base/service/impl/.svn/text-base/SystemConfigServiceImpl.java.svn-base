package yygl.base.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import yygl.base.dao.mapper.BasicinfoMapper;
import yygl.base.dao.mapper.DictinfoMapper;
import yygl.base.pojo.po.Basicinfo;
import yygl.base.pojo.po.Dictinfo;
import yygl.base.pojo.po.DictinfoExample;
import yygl.base.service.SystemConfigService;

/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [yyglproject] 
 * @Package:      [yygl.base.service.impl.SystemConfigServiceImpl.java]  
 * @ClassName:    [SystemConfigServiceImpl]   
 * @Description:  系统Service实现类
 * @Author:       [yuxuan]   
 * @CreateDate:   [2015年11月24日 下午8:35:08]   
 * @UpdateUser:   [yuxuan]   
 * @UpdateDate:   [2015年11月24日 下午8:35:08]   
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class SystemConfigServiceImpl  implements SystemConfigService{

	@Autowired
	private DictinfoMapper dictinfoMapper;
	@Autowired
	private BasicinfoMapper basicinfoMapper;

	
	@Override
	public List findDictinfoByType(String typecode) throws Exception {
		DictinfoExample dictinfoExample = new DictinfoExample();
		DictinfoExample.Criteria criteria = dictinfoExample.createCriteria();
		criteria.andTypecodeEqualTo(typecode);
		return dictinfoMapper.selectByExample(dictinfoExample);
	}
	
	
	public Dictinfo  findDictinfoByDictcode(String typecode,String dictcode) throws Exception{
		DictinfoExample dictinfoExample = new DictinfoExample();
		DictinfoExample.Criteria criteria = dictinfoExample.createCriteria();
		criteria.andDictcodeEqualTo(dictcode);
		criteria.andTypecodeEqualTo(typecode);
		List<Dictinfo> list = dictinfoMapper.selectByExample(dictinfoExample);
		if(list!=null && list.size()==1){
			return list.get(0);
		}
		return null;
	}


	@Override
	public Basicinfo findBasicinfoById(String id) throws Exception {
		return basicinfoMapper.selectByPrimaryKey(id);
	}
}
