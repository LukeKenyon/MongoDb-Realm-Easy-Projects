package crc64e1247576af304310;


public class RangeDateTimeSeriesDataAdapter
	extends crc64e1247576af304310.XYSeriesDataAdapter
	implements
		mono.android.IGCUserPeer,
		com.devexpress.dxcharts.RangeDateTimeSeriesData,
		com.devexpress.dxcharts.XYSeriesData
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_getDataCount:()I:GetGetDataCountHandler:DevExpress.Android.Charts.IRangeDateTimeSeriesDataInvoker, DXCharts.a\n" +
			"n_getArgument:(I)Ljava/util/Date;:GetGetArgument_IHandler:DevExpress.Android.Charts.IRangeDateTimeSeriesDataInvoker, DXCharts.a\n" +
			"n_getValue1:(I)D:GetGetValue1_IHandler:DevExpress.Android.Charts.IRangeDateTimeSeriesDataInvoker, DXCharts.a\n" +
			"n_getValue2:(I)D:GetGetValue2_IHandler:DevExpress.Android.Charts.IRangeDateTimeSeriesDataInvoker, DXCharts.a\n" +
			"";
		mono.android.Runtime.register ("DevExpress.Maui.Charts.Android.Internal.RangeDateTimeSeriesDataAdapter, DevExpress.Maui.Charts", RangeDateTimeSeriesDataAdapter.class, __md_methods);
	}


	public RangeDateTimeSeriesDataAdapter ()
	{
		super ();
		if (getClass () == RangeDateTimeSeriesDataAdapter.class) {
			mono.android.TypeManager.Activate ("DevExpress.Maui.Charts.Android.Internal.RangeDateTimeSeriesDataAdapter, DevExpress.Maui.Charts", "", this, new java.lang.Object[] {  });
		}
	}


	public int getDataCount ()
	{
		return n_getDataCount ();
	}

	private native int n_getDataCount ();


	public java.util.Date getArgument (int p0)
	{
		return n_getArgument (p0);
	}

	private native java.util.Date n_getArgument (int p0);


	public double getValue1 (int p0)
	{
		return n_getValue1 (p0);
	}

	private native double n_getValue1 (int p0);


	public double getValue2 (int p0)
	{
		return n_getValue2 (p0);
	}

	private native double n_getValue2 (int p0);

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
