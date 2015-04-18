import java.io.IOException;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class HelloWorldTag extends SimpleTagSupport
{
	public void doTag() throws JspException,IOException
	{
		// 获取页面输出流
		getJspContext().getOut().write("Hello World :" + new java.util.Date());
	}

}
