package crc64ea362b2585d89661;


public class DXWebViewHandler_JavaScriptLink
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_Post:(Ljava/lang/String;)V:__export__\n" +
			"";
		mono.android.Runtime.register ("DevExpress.Maui.HtmlEditor.Internal.DXWebViewHandler+JavaScriptLink, DevExpress.Maui.HtmlEditor", DXWebViewHandler_JavaScriptLink.class, __md_methods);
	}


	public DXWebViewHandler_JavaScriptLink ()
	{
		super ();
		if (getClass () == DXWebViewHandler_JavaScriptLink.class) {
			mono.android.TypeManager.Activate ("DevExpress.Maui.HtmlEditor.Internal.DXWebViewHandler+JavaScriptLink, DevExpress.Maui.HtmlEditor", "", this, new java.lang.Object[] {  });
		}
	}

	@android.webkit.JavascriptInterface

	public void post (java.lang.String p0)
	{
		n_Post (p0);
	}

	private native void n_Post (java.lang.String p0);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
