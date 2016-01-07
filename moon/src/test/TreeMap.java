package test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.json.JSONException;
import org.apache.struts2.json.JSONUtil;

public class TreeMap {

	public static void main(String[] args) throws JSONException {
		
		
		Map<String, Object> masp = new HashMap<String, Object>();
		masp.put("total", 26);
		
		List<HashMap<String, Object>> lists  = new ArrayList<HashMap<String,Object>>();
		HashMap<String, Object> l_m = new HashMap<String, Object>();		
		for(int i = 0 ;i < 10;i++){
			l_m.put("id", i);
			l_m.put("name","KOOI"+i);
			lists.add(l_m);
		}
		masp.put("rows", lists);
		System.out.println(JSONUtil.serialize(masp));
		
		
		
		
		
//		gettreedate();
	}

	private static void gettreedate() throws JSONException {
		List<Map<String, Object>> roots = new ArrayList<Map<String,Object>>();
		Map<String, Object> first  = new HashMap<String, Object>();
		String id = "id";
		first.put(id,1);
		first.put("text", "Languages");
		
		List<Map<String, Object>> childs = new ArrayList<Map<String,Object>>();
		Map<String,Object> children = new HashMap<String, Object>();
		for (int i = 0; i < 10; i++) {
			children.put("id",i);
			children.put("text", "Java"+i+"--");
			children.put("children", getdata());
			childs.add(children);
		}
		first.put("children",childs);
		roots.add(first);
		
		System.out.println(JSONUtil.serialize(roots));
	}
	
	public static List<Map<String, Object>> getdata(){
		List<Map<String, Object>> roots = new ArrayList<Map<String,Object>>();
		Map<String, Object> first  = new HashMap<String, Object>();
		String id = "id";
		first.put(id,1);
		first.put("text", "Languages");
		
		List<Map<String, Object>> childs = new ArrayList<Map<String,Object>>();
		Map<String,Object> children = new HashMap<String, Object>();
		for (int i = 0; i < 10; i++) {
			children.put("id",i);
			children.put("text", "Java"+i+"--");
			childs.add(children);
		}
		first.put("children",childs);
		roots.add(first);
		return roots;
	}
	
	
}
