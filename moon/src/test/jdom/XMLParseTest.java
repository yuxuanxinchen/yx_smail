package test.jdom;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.io.DOMReader;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;
import org.xml.sax.SAXException;



/**
 * 
 * Simple to Introduction  
 * @ProjectName:  [moon] 
 * @Package:      [test.jdom.XMLParseTest.java]  
 * @ClassName:    [XMLParseTest]   
 * @Description:  dom4j解析xml 
 * @Author:       [yuxuan]   
 * @CreateDate:   [2015年12月30日 下午7:31:14]   
 * @UpdateUser:   [yuxuan]   
 * @UpdateDate:   [2015年12月30日 下午7:31:14]   
 * @UpdateRemark: [说明本次修改内容]  
 * @Version:      [v1.0]
 */
public class XMLParseTest {

	
	public static void main(String[] args) throws IOException, DocumentException, ParserConfigurationException, SAXException {
		createXML();
//		readXML();
		//
		
//		Pattern pattern = Pattern.compile("^?[\\w{1}]:[/]{1}(\\w+)[/]*\\w+[/]*(\\w+)");
//		Matcher matcher = pattern.matcher("/F:/yx_git_repertory/moon/moon/WebRoot/WEB-INF/classes/");
//		if(matcher.find()){
//			System.out.println(matcher.group()+"--------"+matcher.group(1));
//		}
		
		//0511-4405222 或 021-87888822 
		Pattern pattern = Pattern.compile("^0([1-9]{2,3})-(\\d{7,8})|(\\d{7,9})");
		Matcher matcher = pattern.matcher("021-1234599810");
		System.out.println(matcher.find());
		System.out.println(matcher.group());
		
		
//		System.out.println(System.getProperty("user.dir"));
//		System.out.println(XMLParseTest.class.getResource("/").getPath());
		
		SAXReader saxReader = new SAXReader();
		Document document = saxReader.read(new File("books.xml"));
		Element root  = document.getRootElement();
//		System.out.println("根目录是：----"+root.getName());
		
		List<Element> elements = root.elements();
		for (Element element : elements) {
//			System.out.println(element.getName());
//			System.out.println(element.attributeValue("id"));
			if(element.elements().size()>0){
			List<Element> esl = element.elements();
			for(int i = 0;i < esl.size();i++){
//				System.out.println(esl.get(i).getName()+"---"+esl.get(i).getTextTrim());
			}
			}
		}
		
		
		/*
		 <book id="12">  
        <name>thinking in java</name>  
        <price>85.5</price>  
    </book>  
		*/
		
		
//		System.out.println(root.element("book").element("name").getText()+"-----------zhiding");
		
	}


	
	




	private static void readXML() throws DocumentException,
			ParserConfigurationException, SAXException, IOException {
		SAXReader saxReader = new SAXReader();
		Document document = saxReader.read(new File("F:/yx_git_repertory/moon/moon/test/jdom/student.xml"));
		
		//根元素
		Element root = document.getRootElement();
		/*System.out.println(root.getName());
		System.out.println(root.getData());
		System.out.println(root.getNamespacePrefix());
		System.out.println(root.getNamespaceURI());
		System.out.println(root.getNodeTypeName());
		System.out.println(root.getStringValue());
		System.out.println(root.getText());*/
		
		//获取全部
//		List<Element> lists = root.elements();
//		for (Element element : lists) {
//			 if( element.elements().size()!=0){
//				 List<Element> el = element.elements();
//				 for (Element element2 : el) {
//					System.out.println(element2.getTextTrim());
//				}
//			 }
//			System.out.println(element.getText());
//		}
//		System.out.println(lists.size());
		
		
		
//		Element firstWordElement = root.element("hello");
//		Element es = firstWordElement.element("我是第0个");
//		System.out.println(es.getText());
//		System.out.println(es.attribute(0).getName()+"--------"+es.attributeCount());
//		System.out.println(es.attributeValue("H0"));
//		
	
		//迭代输出
//		for(Iterator iterator=root.elementIterator();iterator.hasNext();){
//			 Element e = (Element) iterator.next();
//			 System.out.println(e.attributeValue("name"));
//		}
		
		
		DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
		DocumentBuilder db = dbFactory.newDocumentBuilder();
		
		org.w3c.dom.Document document2 = db.parse(new File("student.xml"));
		
		DOMReader domReader = new DOMReader();
		Document document3 = domReader.read(document2);
		Element rootElement = document3.getRootElement();
		System.out.println(rootElement.getName());
	}
	
	    
	
	
	

	/**
	 * @Title: createXML 
	 * @Description: 创建
	 * @throws UnsupportedEncodingException
	 * @throws FileNotFoundException
	 * @throws IOException  
	 * @return void 
	 * @Author:[yuxuan]
	 * @Date:[2015年12月30日 下午7:55:22]  
	 * @throws  
	 */
	private static void createXML() throws UnsupportedEncodingException,
			FileNotFoundException, IOException {
		//创建一个根节点
		Document document = DocumentHelper.createDocument();
		
		//创建根节点并添加文档
		Element root = DocumentHelper.createElement("student");
		document.setRootElement(root);
		
		//方法二
//		Element root2=DocumentHelper.createElement("student");
//		Document document2 = DocumentHelper.createDocument(root2);
		
		//添加属性
		root.addAttribute("name","yuxuan");
		
		Element helloElement = root.addElement("hello");
		Element worldElement = root.addElement("World");
		
		helloElement.addAttribute("name", "中国");
		worldElement.addAttribute("name", "非洲");
		
		for (int i = 0; i < 10; i++) {
			Element element = helloElement.addElement("我是第"+i+"个");
			element.addAttribute("H"+i, "hes");
			element.addAttribute("name", i+"");
			Element es  = element.addElement("我是"+i+"--"+i);
			es.setText(""+i);
			es.addAttribute("name", i+"");
			es.addAttribute("nnn", "nn");
//			element.setText("-----------"+i+"--------");
			
		}
		
		worldElement.setText("World text");
		
		//输出
//		XMLWriter xmlWriter = new XMLWriter();
//		xmlWriter.write(document);
		

		//设置缩进为4个空格，并且另起一行为true
		OutputFormat format = new OutputFormat("    ",true);
//		File file = new File("F:/yx_git_repertory/moon/moon/src/test/jdom/student.xml");if(!file.exists());file.mkdir();
		XMLWriter xmlWriter2 = new XMLWriter(new FileOutputStream("student.xml"),format);
		xmlWriter2.write(document);
		
		
//		XMLWriter xmlWriter3 = new XMLWriter(new FileWriter("student.xml"),format);
//		xmlWriter3.write(document);
//		xmlWriter3.flush();
	}
	
	
	
	
	
	
	
}
