package test.jfreechart;

import java.awt.Font;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartFrame;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PiePlot;
import org.jfree.chart.title.TextTitle;
import org.jfree.data.general.DefaultPieDataset;

public class Test {

	public static void main(String[] args) {
		
		DefaultPieDataset dpd = new DefaultPieDataset(); // 数据集
		dpd.setValue("rookie", 30);
		dpd.setValue(" master-hand;", 50);
		dpd.setValue("NR", 20);
       
		JFreeChart chart =  ChartFactory.createPieChart3D("Personnel level classification", dpd,true,false,false );
		chart.setTitle(new TextTitle("人员分布信息", new Font("黑体",Font.BOLD, 22)));
		chart.getLegend().setItemFont(new Font("微软雅黑",Font.BOLD, 15));;
		PiePlot piePlot = (PiePlot) chart.getPlot();
		piePlot.setLabelFont(new Font("宋体", Font.BOLD, 18));
		piePlot.setBackgroundAlpha(0.5f);
		ChartFrame chartFrame  = new ChartFrame("CHART",chart);
		chartFrame.pack();
		chartFrame.setVisible(true);
		
	}
	
}
