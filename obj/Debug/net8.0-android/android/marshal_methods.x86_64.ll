; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [389 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [772 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 283
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 225
	i64 112448776384424146, ; 2: DevExpress.XtraCharts.v23.2 => 0x18f7f90fbd228d2 => 177
	i64 120698629574877762, ; 3: Mono.Android => 0x1accec39cafe242 => 172
	i64 131669012237370309, ; 4: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 230
	i64 196720943101637631, ; 5: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 59
	i64 210515253464952879, ; 6: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 270
	i64 229794953483747371, ; 7: System.ValueTuple.dll => 0x330654aed93802b => 152
	i64 232391251801502327, ; 8: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 311
	i64 295915112840604065, ; 9: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 314
	i64 316157742385208084, ; 10: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 277
	i64 350667413455104241, ; 11: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 133
	i64 422779754995088667, ; 12: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 57
	i64 435118502366263740, ; 13: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 313
	i64 535107122908063503, ; 14: Microsoft.Extensions.ObjectPool.dll => 0x76d1517d9b7670f => 223
	i64 536549396266126416, ; 15: DevExpress.Printing.v23.2.Core => 0x77234d548e48c50 => 207
	i64 558811379087732614, ; 16: DXEditors.a.dll => 0x7c14bfd12f86f86 => 190
	i64 560278790331054453, ; 17: System.Reflection.Primitives => 0x7c6829760de3975 => 96
	i64 598946427227332230, ; 18: pl\System.Private.ServiceModel.resources => 0x84fe29a2a5fde86 => 379
	i64 602358440769925478, ; 19: DevExpress.Maui.Scheduler => 0x85c01cf798cb166 => 202
	i64 634308326490598313, ; 20: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 296
	i64 649145001856603771, ; 21: System.Security.SecureString => 0x90239f09b62167b => 130
	i64 702024105029695270, ; 22: System.Drawing.Common => 0x9be17343c0e7726 => 245
	i64 727816129158616361, ; 23: DevExpress.Data.v23.2 => 0xa19b8e9d04c9529 => 180
	i64 750875890346172408, ; 24: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 146
	i64 798450721097591769, ; 25: Xamarin.AndroidX.Collection.Ktx.dll => 0xb14aab351ad2bd9 => 271
	i64 799765834175365804, ; 26: System.ComponentModel.dll => 0xb1956c9f18442ac => 19
	i64 805302231655005164, ; 27: hu\Microsoft.Maui.Controls.resources.dll => 0xb2d021ceea03bec => 350
	i64 872800313462103108, ; 28: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 282
	i64 895210737996778430, ; 29: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0xc6c6d6c5569cbbe => 297
	i64 940822596282819491, ; 30: System.Transactions => 0xd0e792aa81923a3 => 151
	i64 960778385402502048, ; 31: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 105
	i64 1010599046655515943, ; 32: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 96
	i64 1120440138749646132, ; 33: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 326
	i64 1244917166771784164, ; 34: DevExpress.Maui.Editors => 0x1146d5913c37c9e4 => 197
	i64 1268860745194512059, ; 35: System.Drawing.dll => 0x119be62002c19ebb => 37
	i64 1301626418029409250, ; 36: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 29
	i64 1308460061159651549, ; 37: DevExpress.Charts.v23.2.Core => 0x1228957e3c34f8dd => 178
	i64 1315114680217950157, ; 38: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 265
	i64 1348139812537487829, ; 39: DXEditors.a => 0x12b58e0449dbd1d5 => 190
	i64 1369545283391376210, ; 40: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 304
	i64 1404195534211153682, ; 41: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 51
	i64 1425944114962822056, ; 42: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 116
	i64 1476839205573959279, ; 43: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 71
	i64 1486715745332614827, ; 44: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 227
	i64 1492954217099365037, ; 45: System.Net.HttpListener => 0x14b809f350210aad => 66
	i64 1513467482682125403, ; 46: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 171
	i64 1537168428375924959, ; 47: System.Threading.Thread.dll => 0x15551e8a954ae0df => 146
	i64 1576750169145655260, ; 48: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 325
	i64 1624659445732251991, ; 49: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 264
	i64 1628611045998245443, ; 50: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 300
	i64 1636321030536304333, ; 51: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 290
	i64 1651782184287836205, ; 52: System.Globalization.Calendars => 0x16ec4f2524cb982d => 41
	i64 1659332977923810219, ; 53: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 90
	i64 1682513316613008342, ; 54: System.Net.dll => 0x17597cf276952bd6 => 82
	i64 1735388228521408345, ; 55: System.Net.Mail.dll => 0x181556663c69b759 => 67
	i64 1742173776940291998, ; 56: DevExpress.Pdf.v23.2.Drawing => 0x182d71d1d786d79e => 205
	i64 1743969030606105336, ; 57: System.Memory.dll => 0x1833d297e88f2af8 => 63
	i64 1767386781656293639, ; 58: System.Private.Uri.dll => 0x188704e9f5582107 => 87
	i64 1795316252682057001, ; 59: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 263
	i64 1825687700144851180, ; 60: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 107
	i64 1835311033149317475, ; 61: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 344
	i64 1836611346387731153, ; 62: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 311
	i64 1854145951182283680, ; 63: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 103
	i64 1865037103900624886, ; 64: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 216
	i64 1875417405349196092, ; 65: System.Drawing.Primitives => 0x1a06d2319b6c713c => 36
	i64 1875917498431009007, ; 66: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 260
	i64 1881198190668717030, ; 67: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 366
	i64 1887344313179053137, ; 68: DXCharts.a => 0x1a3131a73be41c51 => 186
	i64 1897575647115118287, ; 69: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 313
	i64 1918852405404808846, ; 70: Xamarin.AndroidX.AutoFill.dll => 0x1aa12218a08eb68e => 267
	i64 1920760634179481754, ; 71: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 228
	i64 1930726298510463061, ; 72: CommunityToolkit.Mvvm.dll => 0x1acb5156cd389055 => 176
	i64 1972385128188460614, ; 73: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 120
	i64 1981742497975770890, ; 74: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 298
	i64 1983602784960811255, ; 75: DevExpress.Maui.Gauges => 0x1b872c392d1090f7 => 198
	i64 2040001226662520565, ; 76: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 143
	i64 2062890601515140263, ; 77: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 142
	i64 2064708342624596306, ; 78: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 334
	i64 2080945842184875448, ; 79: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 54
	i64 2102659300918482391, ; 80: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 36
	i64 2106033277907880740, ; 81: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 142
	i64 2165310824878145998, ; 82: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 257
	i64 2165725771938924357, ; 83: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 268
	i64 2188974421706709258, ; 84: SkiaSharp.HarfBuzz.dll => 0x1e60cca38c3e990a => 238
	i64 2210058262765462106, ; 85: DevExpress.Maui.Controls => 0x1eabb447d50d625a => 192
	i64 2262844636196693701, ; 86: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 282
	i64 2287834202362508563, ; 87: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 9
	i64 2287887973817120656, ; 88: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 15
	i64 2304837677853103545, ; 89: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 310
	i64 2315304989185124968, ; 90: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 52
	i64 2329709569556905518, ; 91: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 293
	i64 2335503487726329082, ; 92: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 137
	i64 2337758774805907496, ; 93: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 102
	i64 2374558518256669781, ; 94: DevExpress.TreeMap.v23.2.Core.dll => 0x20f4206433111455 => 212
	i64 2470498323731680442, ; 95: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 275
	i64 2473092425853538470, ; 96: ko\System.Private.ServiceModel.resources.dll => 0x2252307553b590a6 => 378
	i64 2479423007379663237, ; 97: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 320
	i64 2497223385847772520, ; 98: System.Runtime => 0x22a7eb7046413568 => 117
	i64 2547086958574651984, ; 99: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 258
	i64 2592350477072141967, ; 100: System.Xml.dll => 0x23f9e10627330e8f => 164
	i64 2602673633151553063, ; 101: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 365
	i64 2624866290265602282, ; 102: mscorlib.dll => 0x246d65fbde2db8ea => 167
	i64 2632269733008246987, ; 103: System.Net.NameResolution => 0x2487b36034f808cb => 68
	i64 2656907746661064104, ; 104: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 219
	i64 2656980943734967029, ; 105: Realm.PlatformHelpers.dll => 0x24df7e174e4e0af5 => 235
	i64 2662981627730767622, ; 106: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 340
	i64 2699342487583673876, ; 107: ru\System.Private.ServiceModel.resources => 0x2575fdb0d38b4e14 => 381
	i64 2706075432581334785, ; 108: System.Net.WebSockets => 0x258de944be6c0701 => 81
	i64 2717784572346183842, ; 109: DevExpress.Sparkline.v23.2.Core.dll => 0x25b782ab4abb30a2 => 209
	i64 2720307924436817277, ; 110: DevExpress.Pdf.v23.2.SkiaRenderer.dll => 0x25c079a4fbbc957d => 206
	i64 2739068961103071885, ; 111: ko\System.Private.ServiceModel.resources => 0x260320b539d8ca8d => 378
	i64 2783046991838674048, ; 112: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 102
	i64 2787234703088983483, ; 113: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 315
	i64 2815524396660695947, ; 114: System.Security.AccessControl => 0x2712c0857f68238b => 118
	i64 2851879596360956261, ; 115: System.Configuration.ConfigurationManager => 0x2793e9620b477965 => 243
	i64 2870618300109509804, ; 116: DXCollectionView.a => 0x27d67c227fc354ac => 188
	i64 2895129759130297543, ; 117: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 345
	i64 2923871038697555247, ; 118: Jsr305Binding => 0x2893ad37e69ec52f => 327
	i64 2949958893742743993, ; 119: DevExpress.TreeMap.v23.2.Core => 0x28f05bfbfb8a61b9 => 212
	i64 3017136373564924869, ; 120: System.Net.WebProxy => 0x29df058bd93f63c5 => 79
	i64 3017704767998173186, ; 121: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 326
	i64 3106852385031680087, ; 122: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 115
	i64 3110390492489056344, ; 123: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 122
	i64 3135773902340015556, ; 124: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 49
	i64 3170618410873868073, ; 125: eProjectsOnRealm.resources.dll => 0x2c004ca562734f29 => 0
	i64 3199888167950708788, ; 126: it\System.Private.ServiceModel.resources.dll => 0x2c684955c3ad7034 => 376
	i64 3238539556702659506, ; 127: Microsoft.Win32.SystemEvents.dll => 0x2cf19a917c5023b2 => 232
	i64 3244151229865893572, ; 128: pt-BR\System.Private.ServiceModel.resources => 0x2d058a5af5cd9ec4 => 380
	i64 3254355948039184634, ; 129: DevExpress.Office.v23.2.Core => 0x2d29cb7e0f8e20fa => 203
	i64 3281594302220646930, ; 130: System.Security.Principal => 0x2d8a90a198ceba12 => 129
	i64 3289520064315143713, ; 131: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 291
	i64 3303437397778967116, ; 132: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 261
	i64 3311221304742556517, ; 133: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 83
	i64 3325875462027654285, ; 134: System.Runtime.Numerics => 0x2e27e21c8958b48d => 111
	i64 3328853167529574890, ; 135: System.Net.Sockets.dll => 0x2e327651a008c1ea => 76
	i64 3344514922410554693, ; 136: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 337
	i64 3355395775298280038, ; 137: Xamarin.AndroidX.AutoFill => 0x2e90c2ae13801a66 => 267
	i64 3402559797031278872, ; 138: zh-Hant\System.Private.ServiceModel.resources => 0x2f38521b9d131918 => 384
	i64 3414639567687375782, ; 139: SkiaSharp.Views.Maui.Controls => 0x2f633c9863ffdba6 => 240
	i64 3429672777697402584, ; 140: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 230
	i64 3437845325506641314, ; 141: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 54
	i64 3461602852075779363, ; 142: SkiaSharp.HarfBuzz => 0x300a15741f74b523 => 238
	i64 3493805808809882663, ; 143: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 317
	i64 3494946837667399002, ; 144: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 217
	i64 3508450208084372758, ; 145: System.Net.Ping => 0x30b084e02d03ad16 => 70
	i64 3522470458906976663, ; 146: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 316
	i64 3531994851595924923, ; 147: System.Numerics => 0x31042a9aade235bb => 84
	i64 3551103847008531295, ; 148: System.Private.CoreLib.dll => 0x31480e226177735f => 173
	i64 3567343442040498961, ; 149: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 360
	i64 3571415421602489686, ; 150: System.Runtime.dll => 0x319037675df7e556 => 117
	i64 3634544395678783861, ; 151: System.ServiceModel => 0x32707edf08d21975 => 252
	i64 3638003163729360188, ; 152: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 218
	i64 3647754201059316852, ; 153: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 157
	i64 3655542548057982301, ; 154: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 217
	i64 3659371656528649588, ; 155: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 255
	i64 3716579019761409177, ; 156: netstandard.dll => 0x3393f0ed5c8c5c99 => 168
	i64 3727469159507183293, ; 157: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 309
	i64 3772598417116884899, ; 158: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 283
	i64 3869221888984012293, ; 159: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 221
	i64 3869649043256705283, ; 160: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 33
	i64 3890352374528606784, ; 161: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 228
	i64 3919223565570527920, ; 162: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 123
	i64 3933965368022646939, ; 163: System.Net.Requests => 0x369840a8bfadc09b => 73
	i64 3966267475168208030, ; 164: System.Memory => 0x370b03412596249e => 63
	i64 4006972109285359177, ; 165: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 162
	i64 4009997192427317104, ; 166: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 114
	i64 4070326265757318011, ; 167: da\Microsoft.Maui.Controls.resources.dll => 0x387cb42c56683b7b => 341
	i64 4073500526318903918, ; 168: System.Private.Xml.dll => 0x3887fb25779ae26e => 89
	i64 4073631083018132676, ; 169: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 226
	i64 4120493066591692148, ; 170: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 371
	i64 4127427327551562508, ; 171: DevExpress.Maui.Core => 0x394791494ef3630c => 194
	i64 4148881117810174540, ; 172: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 106
	i64 4154383907710350974, ; 173: System.ComponentModel => 0x39a7562737acb67e => 19
	i64 4167269041631776580, ; 174: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 147
	i64 4168469861834746866, ; 175: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 119
	i64 4187479170553454871, ; 176: System.Linq.Expressions => 0x3a1cea1e912fa117 => 59
	i64 4201423742386704971, ; 177: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 277
	i64 4205801962323029395, ; 178: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 18
	i64 4235503420553921860, ; 179: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 53
	i64 4282138915307457788, ; 180: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 93
	i64 4360412976914417659, ; 181: tr\Microsoft.Maui.Controls.resources.dll => 0x3c834c8002fcc7fb => 366
	i64 4367142137090651694, ; 182: DXCore.a.dll => 0x3c9b34a2b4edb62e => 193
	i64 4373617458794931033, ; 183: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 56
	i64 4384334752651165692, ; 184: DevExpress.Maui.CollectionView.dll => 0x3cd8493a742c3ffc => 189
	i64 4397634830160618470, ; 185: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 130
	i64 4401076402506455931, ; 186: DXGrid.a => 0x3d13c3ab90c05b7b => 195
	i64 4476088006148941309, ; 187: DevExpress.Charts.v23.2.Core.dll => 0x3e1e425385e4e5fd => 178
	i64 4477672992252076438, ; 188: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 153
	i64 4484706122338676047, ; 189: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 42
	i64 4518218285337281303, ; 190: DevExpress.DataAccess.v23.2 => 0x3eb3ef978b340317 => 181
	i64 4533124835995628778, ; 191: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 93
	i64 4620536241703500132, ; 192: System.Data.SqlClient.dll => 0x401f713b2e8e3964 => 244
	i64 4636684751163556186, ; 193: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 321
	i64 4648976354129798698, ; 194: DXScheduler.a.dll => 0x40847b5cdd18e62a => 201
	i64 4672453897036726049, ; 195: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 51
	i64 4716677666592453464, ; 196: System.Xml.XmlSerializer => 0x417501590542f358 => 163
	i64 4743181914488341673, ; 197: DevExpress.Maui.Charts => 0x41d32ad21e2284a9 => 187
	i64 4743821336939966868, ; 198: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 14
	i64 4759461199762736555, ; 199: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 295
	i64 4794310189461587505, ; 200: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 258
	i64 4795410492532947900, ; 201: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 316
	i64 4809057822547766521, ; 202: System.Drawing => 0x42bd349c3145ecf9 => 37
	i64 4814660307502931973, ; 203: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 68
	i64 4853321196694829351, ; 204: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 110
	i64 4871824391508510238, ; 205: nb\Microsoft.Maui.Controls.resources.dll => 0x439c3278d7f2c61e => 356
	i64 4953714692329509532, ; 206: sv\Microsoft.Maui.Controls.resources.dll => 0x44bf21444aef129c => 364
	i64 5055365687667823624, ; 207: Xamarin.AndroidX.Activity.Ktx.dll => 0x4628444ef7239408 => 259
	i64 5081566143765835342, ; 208: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 100
	i64 5099468265966638712, ; 209: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 100
	i64 5103417709280584325, ; 210: System.Collections.Specialized => 0x46d2fb5e161b6285 => 12
	i64 5182934613077526976, ; 211: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 12
	i64 5205316157927637098, ; 212: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 302
	i64 5244375036463807528, ; 213: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 26
	i64 5262971552273843408, ; 214: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 129
	i64 5266851800019912408, ; 215: System.Data.SqlClient => 0x49179dcea0d046d8 => 244
	i64 5278787618751394462, ; 216: System.Net.WebClient.dll => 0x4942055efc68329e => 77
	i64 5280980186044710147, ; 217: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x4949cf7fd7123d03 => 294
	i64 5290786973231294105, ; 218: System.Runtime.Loader => 0x496ca6b869b72699 => 110
	i64 5315518132212402925, ; 219: de\System.Private.ServiceModel.resources.dll => 0x49c4839413ab0aed => 373
	i64 5376510917114486089, ; 220: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 320
	i64 5408338804355907810, ; 221: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 318
	i64 5423376490970181369, ; 222: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 107
	i64 5440320908473006344, ; 223: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 3
	i64 5446034149219586269, ; 224: System.Diagnostics.Debug => 0x4b94333452e150dd => 27
	i64 5451019430259338467, ; 225: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 273
	i64 5457765010617926378, ; 226: System.Xml.Serialization => 0x4bbde05c557002ea => 158
	i64 5459411578015390000, ; 227: DevExpress.Drawing.v23.2.dll => 0x4bc3b9e7ae431930 => 184
	i64 5471532531798518949, ; 228: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 364
	i64 5488847537322884930, ; 229: System.Windows.Extensions => 0x4c2c4dc108687f42 => 253
	i64 5507995362134886206, ; 230: System.Core.dll => 0x4c705499688c873e => 22
	i64 5522859530602327440, ; 231: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 367
	i64 5527431512186326818, ; 232: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 50
	i64 5570799893513421663, ; 233: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 44
	i64 5573260873512690141, ; 234: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 127
	i64 5574231584441077149, ; 235: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 262
	i64 5591791169662171124, ; 236: System.Linq.Parallel => 0x4d9a087135e137f4 => 60
	i64 5650097808083101034, ; 237: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 120
	i64 5692067934154308417, ; 238: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 323
	i64 5724799082821825042, ; 239: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 286
	i64 5757522595884336624, ; 240: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 272
	i64 5783556987928984683, ; 241: Microsoft.VisualBasic => 0x504352701bbc3c6b => 4
	i64 5896680224035167651, ; 242: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 292
	i64 5959344983920014087, ; 243: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x52b3d8b05c8ef307 => 312
	i64 5979151488806146654, ; 244: System.Formats.Asn1 => 0x52fa3699a489d25e => 39
	i64 5984759512290286505, ; 245: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 125
	i64 6010568025199035661, ; 246: DevExpress.XtraTreeMap.v23.2.dll => 0x5369d3c6084f450d => 211
	i64 6102788177522843259, ; 247: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0x54b1758374b3de7b => 312
	i64 6200764641006662125, ; 248: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 361
	i64 6222399776351216807, ; 249: System.Text.Json.dll => 0x565a67a0ffe264a7 => 138
	i64 6251069312384999852, ; 250: System.Transactions.Local => 0x56c0426b870da1ac => 150
	i64 6278736998281604212, ; 251: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 86
	i64 6284145129771520194, ; 252: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 91
	i64 6300676701234028427, ; 253: es\Microsoft.Maui.Controls.resources.dll => 0x57708013cda25f8b => 344
	i64 6319713645133255417, ; 254: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 296
	i64 6357457916754632952, ; 255: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 385
	i64 6401687960814735282, ; 256: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 293
	i64 6469286019115042443, ; 257: DevExpress.Docs.v23.2.dll => 0x59c7855bcfc0c68b => 183
	i64 6471714727257221498, ; 258: fi\Microsoft.Maui.Controls.resources.dll => 0x59d026417dd4a97a => 345
	i64 6478287442656530074, ; 259: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 349
	i64 6504860066809920875, ; 260: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 268
	i64 6548213210057960872, ; 261: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 279
	i64 6556818580853604403, ; 262: DevExpress.Xpo.v23.2.dll => 0x5afe7fc28075c033 => 213
	i64 6557084851308642443, ; 263: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 324
	i64 6560151584539558821, ; 264: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 224
	i64 6589202984700901502, ; 265: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 329
	i64 6591971792923354531, ; 266: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x5b7b636b7e9765a3 => 294
	i64 6597499867318098394, ; 267: DevExpress.DataAccess.v23.2.dll => 0x5b8f072c9d2e99da => 181
	i64 6617685658146568858, ; 268: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 134
	i64 6626285719654822755, ; 269: Realm.PlatformHelpers => 0x5bf54bc12444f363 => 235
	i64 6671798237668743565, ; 270: SkiaSharp => 0x5c96fd260152998d => 237
	i64 6713440830605852118, ; 271: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 97
	i64 6739853162153639747, ; 272: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 4
	i64 6743165466166707109, ; 273: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 357
	i64 6772837112740759457, ; 274: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 106
	i64 6786606130239981554, ; 275: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 34
	i64 6798329586179154312, ; 276: System.Windows => 0x5e5884bd523ca188 => 155
	i64 6814185388980153342, ; 277: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 159
	i64 6836288172504267461, ; 278: DevExpress.Maui.Pdf.dll => 0x5edf5fdf68523ac5 => 200
	i64 6875777690664500017, ; 279: DevExpress.XtraCharts.v23.2.dll => 0x5f6bab61569cfb31 => 177
	i64 6876862101832370452, ; 280: System.Xml.Linq => 0x5f6f85a57d108914 => 156
	i64 6894844156784520562, ; 281: System.Numerics.Vectors => 0x5faf683aead1ad72 => 83
	i64 7011053663211085209, ; 282: Xamarin.AndroidX.Fragment.Ktx => 0x614c442918e5dd99 => 288
	i64 7033815339267038729, ; 283: tr\System.Private.ServiceModel.resources => 0x619d21c8c8b49e09 => 382
	i64 7045132749165778210, ; 284: DevExpress.Maui.Scheduler.dll => 0x61c556e89d7f5522 => 202
	i64 7060448593242414269, ; 285: System.Security.Cryptography.Xml => 0x61fbc096731edcbd => 248
	i64 7060896174307865760, ; 286: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 144
	i64 7076277814058523199, ; 287: DevExpress.Pdf.v23.2.SkiaRenderer => 0x6233fd2e1eef9a3f => 206
	i64 7083547580668757502, ; 288: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 88
	i64 7101497697220435230, ; 289: System.Configuration => 0x628d9687c0141d1e => 20
	i64 7103753931438454322, ; 290: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 289
	i64 7105430439328552570, ; 291: System.Security.Cryptography.Pkcs => 0x629b8f56a06d167a => 247
	i64 7112547816752919026, ; 292: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 52
	i64 7142976273706224655, ; 293: DXNavigation.a.dll => 0x6320f313694d8c0f => 191
	i64 7192745174564810625, ; 294: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 257
	i64 7212687353257279739, ; 295: DevExpress.Maui.Pdf => 0x64189ceeeeda40fb => 200
	i64 7229955455499660495, ; 296: DXCollectionView.a.dll => 0x6455f62e4af46ccf => 188
	i64 7243049202045766964, ; 297: MongoDB.Bson.dll => 0x64847adfba9d4d34 => 233
	i64 7270811800166795866, ; 298: System.Linq => 0x64e71ccf51a90a5a => 62
	i64 7298412563231747843, ; 299: DevExpress.CodeParser.v23.2 => 0x65492b8ebfad2f03 => 179
	i64 7299370801165188114, ; 300: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 55
	i64 7305853726081136831, ; 301: cs\System.Private.ServiceModel.resources.dll => 0x65639b417c07b8bf => 372
	i64 7314237870106916923, ; 302: SkiaSharp.Views.Maui.Core.dll => 0x65816497226eb83b => 241
	i64 7316205155833392065, ; 303: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 5
	i64 7338192458477945005, ; 304: System.Reflection => 0x65d67f295d0740ad => 98
	i64 7349431895026339542, ; 305: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 256
	i64 7353463851965315629, ; 306: DevExpress.Spreadsheet.v23.2.Core => 0x660cc069bd117a2d => 210
	i64 7377312882064240630, ; 307: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 18
	i64 7406532963531635641, ; 308: fr\System.Private.ServiceModel.resources.dll => 0x66c94a7d24863bb9 => 375
	i64 7488575175965059935, ; 309: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 156
	i64 7489048572193775167, ; 310: System.ObjectModel => 0x67ee71ff6b419e3f => 85
	i64 7503526963013706253, ; 311: System.ServiceModel.dll => 0x6821e20478ff620d => 252
	i64 7592577537120840276, ; 312: System.Diagnostics.Process => 0x695e410af5b2aa54 => 30
	i64 7637303409920963731, ; 313: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 46
	i64 7654504624184590948, ; 314: System.Net.Http => 0x6a3a4366801b8264 => 65
	i64 7694700312542370399, ; 315: System.Net.Mail => 0x6ac9112a7e2cda5f => 67
	i64 7714652370974252055, ; 316: System.Private.CoreLib => 0x6b0ff375198b9c17 => 173
	i64 7723873813026311384, ; 317: SkiaSharp.Views.Maui.Controls.dll => 0x6b30b64f63600cd8 => 240
	i64 7725404731275645577, ; 318: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x6b3626ac11ce9289 => 297
	i64 7735176074855944702, ; 319: Microsoft.CSharp => 0x6b58dda848e391fe => 2
	i64 7735352534559001595, ; 320: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 332
	i64 7742555799473854801, ; 321: it\Microsoft.Maui.Controls.resources.dll => 0x6b73157a51479951 => 352
	i64 7789592736793255292, ; 322: DevExpress.Maui.Controls.dll => 0x6c1a3152b5865d7c => 192
	i64 7791074099216502080, ; 323: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 48
	i64 7820441508502274321, ; 324: System.Data => 0x6c87ca1e14ff8111 => 25
	i64 7829098147992928874, ; 325: DevExpress.Xpo.v23.2 => 0x6ca68b4906c9826a => 213
	i64 7836164640616011524, ; 326: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 264
	i64 7927939710195668715, ; 327: SkiaSharp.Views.Android.dll => 0x6e05b32992ed16eb => 239
	i64 7973320301220725699, ; 328: DevExpress.Drawing.v23.2.Skia.dll => 0x6ea6ec91caac03c3 => 185
	i64 7975724199463739455, ; 329: sk\Microsoft.Maui.Controls.resources.dll => 0x6eaf76e6f785e03f => 363
	i64 8000298072852794708, ; 330: DevExpress.Printing.v23.2.Core.dll => 0x6f06c4b5b9a20d54 => 207
	i64 8025517457475554965, ; 331: WindowsBase => 0x6f605d9b4786ce95 => 166
	i64 8031450141206250471, ; 332: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 109
	i64 8064050204834738623, ; 333: System.Collections.dll => 0x6fe942efa61731bf => 13
	i64 8083354569033831015, ; 334: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 291
	i64 8085230611270010360, ; 335: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 64
	i64 8087206902342787202, ; 336: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 28
	i64 8103644804370223335, ; 337: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 24
	i64 8108129031893776750, ; 338: ko\Microsoft.Maui.Controls.resources.dll => 0x7085dc65530f796e => 354
	i64 8113615946733131500, ; 339: System.Reflection.Extensions => 0x70995ab73cf916ec => 94
	i64 8167236081217502503, ; 340: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 169
	i64 8185542183669246576, ; 341: System.Collections => 0x7198e33f4794aa70 => 13
	i64 8187640529827139739, ; 342: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 336
	i64 8246048515196606205, ; 343: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 231
	i64 8264926008854159966, ; 344: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 30
	i64 8290740647658429042, ; 345: System.Runtime.Extensions => 0x730ea0b15c929a72 => 104
	i64 8308610922448049511, ; 346: MongoDB.Bson => 0x734e1d9cf1725567 => 233
	i64 8318905602908530212, ; 347: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 15
	i64 8368701292315763008, ; 348: System.Security.Cryptography => 0x7423997c6fd56140 => 127
	i64 8386351099740279196, ; 349: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x74624de475b9d19c => 369
	i64 8398329775253868912, ; 350: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 274
	i64 8400357532724379117, ; 351: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 306
	i64 8410671156615598628, ; 352: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 92
	i64 8426919725312979251, ; 353: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 295
	i64 8476857680833348370, ; 354: System.Security.Permissions.dll => 0x75a3d925fd9d0312 => 249
	i64 8518412311883997971, ; 355: System.Collections.Immutable => 0x76377add7c28e313 => 10
	i64 8563666267364444763, ; 356: System.Private.Uri => 0x76d841191140ca5b => 87
	i64 8598790081731763592, ; 357: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 285
	i64 8599632406834268464, ; 358: CommunityToolkit.Maui => 0x7758081c784b4930 => 174
	i64 8601935802264776013, ; 359: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 318
	i64 8623059219396073920, ; 360: System.Net.Quic.dll => 0x77ab42ac514299c0 => 72
	i64 8626175481042262068, ; 361: Java.Interop => 0x77b654e585b55834 => 169
	i64 8629949569649228835, ; 362: DevExpress.RichEdit.v23.2.Core.dll => 0x77c3bd69007a3c23 => 208
	i64 8638972117149407195, ; 363: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 2
	i64 8639588376636138208, ; 364: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 305
	i64 8648495978913578441, ; 365: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 6
	i64 8677882282824630478, ; 366: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 359
	i64 8684531736582871431, ; 367: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 45
	i64 8725526185868997716, ; 368: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 28
	i64 8764061001054377811, ; 369: DevExpress.DataVisualization.v23.2.Core => 0x79a0330be5b35753 => 182
	i64 8853378295825400934, ; 370: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 333
	i64 8856627112618224845, ; 371: Remotion.Linq => 0x7ae90f6f3bb3eccd => 236
	i64 8877058193879496586, ; 372: DevExpress.Pdf.v23.2.Core => 0x7b31a56508a8778a => 204
	i64 8941376889969657626, ; 373: System.Xml.XDocument => 0x7c1626e87187471a => 159
	i64 8951477988056063522, ; 374: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 308
	i64 8954753533646919997, ; 375: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 113
	i64 9045785047181495996, ; 376: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 369
	i64 9138683372487561558, ; 377: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 122
	i64 9312692141327339315, ; 378: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 323
	i64 9324707631942237306, ; 379: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 263
	i64 9363564275759486853, ; 380: el\Microsoft.Maui.Controls.resources.dll => 0x81f21019382e9785 => 343
	i64 9468215723722196442, ; 381: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 160
	i64 9551379474083066910, ; 382: uk\Microsoft.Maui.Controls.resources.dll => 0x848d5106bbadb41e => 367
	i64 9552911931735491231, ; 383: DXNavigation.a => 0x8492c2c9d5af429f => 191
	i64 9554839972845591462, ; 384: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 132
	i64 9575902398040817096, ; 385: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 328
	i64 9584643793929893533, ; 386: System.IO.dll => 0x85037ebfbbd7f69d => 58
	i64 9659729154652888475, ; 387: System.Text.RegularExpressions => 0x860e407c9991dd9b => 139
	i64 9662334977499516867, ; 388: System.Numerics.dll => 0x8617827802b0cfc3 => 84
	i64 9667360217193089419, ; 389: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 31
	i64 9678050649315576968, ; 390: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 275
	i64 9702891218465930390, ; 391: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 11
	i64 9723831379162822239, ; 392: DevExpress.Office.v23.2.Core.dll => 0x86f1fd1ecacbf65f => 203
	i64 9773637193738963987, ; 393: ca\Microsoft.Maui.Controls.resources.dll => 0x87a2ef3ea85b4c13 => 339
	i64 9780093022148426479, ; 394: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 325
	i64 9808709177481450983, ; 395: Mono.Android.dll => 0x881f890734e555e7 => 172
	i64 9825649861376906464, ; 396: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 272
	i64 9834056768316610435, ; 397: System.Transactions.dll => 0x8879968718899783 => 151
	i64 9836529246295212050, ; 398: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 95
	i64 9907349773706910547, ; 399: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 285
	i64 9933555792566666578, ; 400: System.Linq.Queryable.dll => 0x89db145cf475c552 => 61
	i64 9956195530459977388, ; 401: Microsoft.Maui => 0x8a2b8315b36616ac => 229
	i64 9959489431142554298, ; 402: System.CodeDom => 0x8a3736deb7825aba => 242
	i64 9974604633896246661, ; 403: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 158
	i64 9990311192647791659, ; 404: cs\System.Private.ServiceModel.resources => 0x8aa4b7194961742b => 372
	i64 9999989524333793374, ; 405: Realm => 0x8ac7197d7b8b105e => 234
	i64 10038780035334861115, ; 406: System.Net.Http.dll => 0x8b50e941206af13b => 65
	i64 10050344524905413833, ; 407: zh-Hans\System.Private.ServiceModel.resources.dll => 0x8b79ff18ad477cc9 => 383
	i64 10051358222726253779, ; 408: System.Private.Xml => 0x8b7d990c97ccccd3 => 89
	i64 10078727084704864206, ; 409: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 80
	i64 10080807920783533798, ; 410: DXGrid.a.dll => 0x8be63964bf3f26e6 => 195
	i64 10089571585547156312, ; 411: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 48
	i64 10092835686693276772, ; 412: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 227
	i64 10096670194649521199, ; 413: System.ServiceModel.Primitives => 0x8c1e940c2e5bdc2f => 251
	i64 10105485790837105934, ; 414: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 144
	i64 10143853363526200146, ; 415: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 341
	i64 10144499162490521328, ; 416: ja\System.Private.ServiceModel.resources.dll => 0x8cc8803d8c7ec6f0 => 377
	i64 10209869394718195525, ; 417: nl\Microsoft.Maui.Controls.resources.dll => 0x8db0be1ecb4f7f45 => 357
	i64 10226222362177979215, ; 418: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 334
	i64 10229024438826829339, ; 419: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 279
	i64 10236703004850800690, ; 420: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 75
	i64 10245369515835430794, ; 421: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 92
	i64 10321854143672141184, ; 422: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 331
	i64 10360651442923773544, ; 423: System.Text.Encoding => 0x8fc86d98211c1e68 => 136
	i64 10364469296367737616, ; 424: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 91
	i64 10376576884623852283, ; 425: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 317
	i64 10406448008575299332, ; 426: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 337
	i64 10430153318873392755, ; 427: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 276
	i64 10447083246144586668, ; 428: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 216
	i64 10454871586088267783, ; 429: DevExpress.Maui.DataGrid => 0x91172a50b51db007 => 196
	i64 10506226065143327199, ; 430: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 339
	i64 10546663366131771576, ; 431: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 113
	i64 10566960649245365243, ; 432: System.Globalization.dll => 0x92a562b96dcd13fb => 43
	i64 10595762989148858956, ; 433: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 160
	i64 10670374202010151210, ; 434: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 5
	i64 10678444886965028446, ; 435: DevExpress.Maui.Editors.dll => 0x9431750c4123065e => 197
	i64 10713464919625732433, ; 436: DevExpress.Pdf.v23.2.Drawing.dll => 0x94addf94ffe69151 => 205
	i64 10714184849103829812, ; 437: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 104
	i64 10734501660890305105, ; 438: Realm.dll => 0x94f89c6302351251 => 234
	i64 10758845614435108878, ; 439: eProjectsOnRealm => 0x954f191561ac880e => 1
	i64 10761706286639228993, ; 440: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0x955942d988382841 => 371
	i64 10785150219063592792, ; 441: System.Net.Primitives => 0x95ac8cfb68830758 => 71
	i64 10822644899632537592, ; 442: System.Linq.Queryable => 0x9631c23204ca5ff8 => 61
	i64 10830817578243619689, ; 443: System.Formats.Tar => 0x964ecb340a447b69 => 40
	i64 10843244350976052224, ; 444: Remotion.Linq.dll => 0x967af14988b04c00 => 236
	i64 10847732767863316357, ; 445: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 265
	i64 10880838204485145808, ; 446: CommunityToolkit.Maui.dll => 0x970080b2a4d614d0 => 174
	i64 10899834349646441345, ; 447: System.Web => 0x9743fd975946eb81 => 154
	i64 10943875058216066601, ; 448: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 57
	i64 10947994639507038094, ; 449: System.Private.ServiceModel.dll => 0x97ef171ea2b29f8e => 246
	i64 10964653383833615866, ; 450: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 35
	i64 11002576679268595294, ; 451: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 222
	i64 11009005086950030778, ; 452: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 229
	i64 11019817191295005410, ; 453: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 262
	i64 11023048688141570732, ; 454: System.Core => 0x98f9bc61168392ac => 22
	i64 11037814507248023548, ; 455: System.Xml => 0x992e31d0412bf7fc => 164
	i64 11047101296015504039, ; 456: Microsoft.Win32.SystemEvents => 0x994f301942c2f2a7 => 232
	i64 11071824625609515081, ; 457: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 329
	i64 11089314871468410253, ; 458: DevExpress.Maui.CollectionView => 0x99e5291f3454c58d => 189
	i64 11103970607964515343, ; 459: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 350
	i64 11136029745144976707, ; 460: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 327
	i64 11156122287428000958, ; 461: th\Microsoft.Maui.Controls.resources.dll => 0x9ad2821cdcf6dcbe => 365
	i64 11157797727133427779, ; 462: fr\Microsoft.Maui.Controls.resources.dll => 0x9ad875ea9172e843 => 346
	i64 11162124722117608902, ; 463: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 322
	i64 11188319605227840848, ; 464: System.Threading.Overlapped => 0x9b44e5671724e550 => 141
	i64 11220793807500858938, ; 465: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 353
	i64 11226290749488709958, ; 466: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 224
	i64 11235648312900863002, ; 467: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 90
	i64 11266672218131436043, ; 468: ru\System.Private.ServiceModel.resources.dll => 0x9c5b42b0627c920b => 381
	i64 11279799931850920893, ; 469: zh-Hans\System.Private.ServiceModel.resources => 0x9c89e6466b7313bd => 383
	i64 11329751333533450475, ; 470: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 148
	i64 11340910727871153756, ; 471: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 278
	i64 11341245327015630248, ; 472: System.Configuration.ConfigurationManager.dll => 0x9d643289535355a8 => 243
	i64 11347436699239206956, ; 473: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 163
	i64 11392833485892708388, ; 474: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 307
	i64 11424733824308102187, ; 475: eProjectsOnRealm.resources => 0x9e8ccee1e346442b => 0
	i64 11432101114902388181, ; 476: System.AppContext => 0x9ea6fb64e61a9dd5 => 7
	i64 11446671985764974897, ; 477: Mono.Android.Export => 0x9edabf8623efc131 => 170
	i64 11448276831755070604, ; 478: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 32
	i64 11468804212318019611, ; 479: pt-BR\System.Private.ServiceModel.resources.dll => 0x9f2960aab1b8201b => 380
	i64 11485890710487134646, ; 480: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 108
	i64 11503653075602048397, ; 481: System.ServiceModel.Http => 0x9fa52f85f697058d => 250
	i64 11508496261504176197, ; 482: Xamarin.AndroidX.Fragment.Ktx.dll => 0x9fb664600dde1045 => 288
	i64 11518296021396496455, ; 483: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 351
	i64 11529969570048099689, ; 484: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 322
	i64 11530571088791430846, ; 485: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 221
	i64 11580057168383206117, ; 486: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 260
	i64 11591352189662810718, ; 487: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 315
	i64 11597940890313164233, ; 488: netstandard => 0xa0f429ca8d1805c9 => 168
	i64 11672361001936329215, ; 489: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 289
	i64 11692977985522001935, ; 490: System.Threading.Overlapped.dll => 0xa245cd869980680f => 141
	i64 11707554492040141440, ; 491: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 60
	i64 11743665907891708234, ; 492: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 145
	i64 11855031688536399763, ; 493: vi\Microsoft.Maui.Controls.resources.dll => 0xa485888294361f93 => 368
	i64 11991047634523762324, ; 494: System.Net => 0xa668c24ad493ae94 => 82
	i64 12040886584167504988, ; 495: System.Net.ServicePoint => 0xa719d28d8e121c5c => 75
	i64 12063623837170009990, ; 496: System.Security => 0xa76a99f6ce740786 => 131
	i64 12096697103934194533, ; 497: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 26
	i64 12102847907131387746, ; 498: System.Buffers => 0xa7f5f40c43256f62 => 8
	i64 12123043025855404482, ; 499: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 94
	i64 12137774235383566651, ; 500: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 319
	i64 12145679461940342714, ; 501: System.Text.Json => 0xa88e1f1ebcb62fba => 138
	i64 12191646537372739477, ; 502: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 254
	i64 12201331334810686224, ; 503: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 114
	i64 12219056647580653652, ; 504: DevExpress.Spreadsheet.v23.2.Core.dll => 0xa992cf48196b9854 => 210
	i64 12269460666702402136, ; 505: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 10
	i64 12310643388884616687, ; 506: fr\System.Private.ServiceModel.resources => 0xaad830f006fa85ef => 375
	i64 12332222936682028543, ; 507: System.Runtime.Handles => 0xab24db6c07db5dff => 105
	i64 12341818387765915815, ; 508: CommunityToolkit.Maui.Core.dll => 0xab46f26f152bf0a7 => 175
	i64 12342184558428949313, ; 509: System.ServiceModel.Primitives.dll => 0xab483f76d5780b41 => 251
	i64 12375446203996702057, ; 510: System.Configuration.dll => 0xabbe6ac12e2e0569 => 20
	i64 12451044538927396471, ; 511: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 287
	i64 12466513435562512481, ; 512: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 301
	i64 12475113361194491050, ; 513: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 385
	i64 12487638416075308985, ; 514: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 281
	i64 12508989635011189811, ; 515: DevExpress.Data.v23.2.dll => 0xad98dbcc2de29c33 => 180
	i64 12517810545449516888, ; 516: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 34
	i64 12536103770525706882, ; 517: zh-Hant\System.Private.ServiceModel.resources.dll => 0xadf92ff5cd9eaa82 => 384
	i64 12538491095302438457, ; 518: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 269
	i64 12550732019250633519, ; 519: System.IO.Compression => 0xae2d28465e8e1b2f => 47
	i64 12699999919562409296, ; 520: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 31
	i64 12700543734426720211, ; 521: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 270
	i64 12705443375979135298, ; 522: DevExpress.Maui.HtmlEditor => 0xb052cd6f23138142 => 199
	i64 12708238894395270091, ; 523: System.IO => 0xb05cbbf17d3ba3cb => 58
	i64 12708922737231849740, ; 524: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 135
	i64 12717050818822477433, ; 525: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 115
	i64 12753841065332862057, ; 526: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 324
	i64 12768018333747347356, ; 527: DevExpress.CodeParser.v23.2.dll => 0xb1311d06d4af7f9c => 179
	i64 12800878955599098772, ; 528: ja\System.Private.ServiceModel.resources => 0xb1a5db969141f394 => 377
	i64 12819489046652477952, ; 529: DevExpress.Maui.HtmlEditor.dll => 0xb1e7f95e0bbb6200 => 199
	i64 12821437452680551383, ; 530: DevExpress.Drawing.v23.2.Skia => 0xb1eee56eace9dbd7 => 185
	i64 12824731971458351941, ; 531: DevExpress.Drawing.v23.2 => 0xb1fa99c79a5ec345 => 184
	i64 12828192437253469131, ; 532: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 335
	i64 12835242264250840079, ; 533: System.IO.Pipes => 0xb21ff0d5d6c0740f => 56
	i64 12843321153144804894, ; 534: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 225
	i64 12843770487262409629, ; 535: System.AppContext.dll => 0xb23e3d357debf39d => 7
	i64 12859557719246324186, ; 536: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 78
	i64 12963446364377008305, ; 537: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 245
	i64 12968212803657805372, ; 538: DevExpress.DataVisualization.v23.2.Core.dll => 0xb3f858d61db22e3c => 182
	i64 12982280885948128408, ; 539: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 280
	i64 12989346753972519995, ; 540: ar\Microsoft.Maui.Controls.resources.dll => 0xb4436e0d5ee7c43b => 338
	i64 13005833372463390146, ; 541: pt-BR\Microsoft.Maui.Controls.resources.dll => 0xb47e008b5d99ddc2 => 359
	i64 13068258254871114833, ; 542: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 112
	i64 13106026140046202731, ; 543: HarfBuzzSharp.dll => 0xb5e1f555ee70176b => 215
	i64 13129914918964716986, ; 544: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 284
	i64 13162471042547327635, ; 545: System.Security.Permissions => 0xb6aa7dace9662293 => 249
	i64 13173818576982874404, ; 546: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 103
	i64 13236013933113115140, ; 547: DXScheduler.a => 0xb7afc48b75540204 => 201
	i64 13315587268572539134, ; 548: DevExpress.Maui.DataGrid.dll => 0xb8ca78125efae8fe => 196
	i64 13343850469010654401, ; 549: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 171
	i64 13370592475155966277, ; 550: System.Runtime.Serialization => 0xb98de304062ea945 => 116
	i64 13381594904270902445, ; 551: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 347
	i64 13395370540386310749, ; 552: DevExpress.Maui.Gauges.dll => 0xb9e5ea88e6755a5d => 198
	i64 13401370062847626945, ; 553: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 319
	i64 13403654910141513527, ; 554: pl\System.Private.ServiceModel.resources.dll => 0xba0359200ae7bf37 => 379
	i64 13404347523447273790, ; 555: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 274
	i64 13431476299110033919, ; 556: System.Net.WebClient => 0xba663087f18829ff => 77
	i64 13454009404024712428, ; 557: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 330
	i64 13463706743370286408, ; 558: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 86
	i64 13465488254036897740, ; 559: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 332
	i64 13491513212026656886, ; 560: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 266
	i64 13540124433173649601, ; 561: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 368
	i64 13572454107664307259, ; 562: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 309
	i64 13578472628727169633, ; 563: System.Xml.XPath => 0xbc706ce9fba5c261 => 161
	i64 13580399111273692417, ; 564: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 3
	i64 13621154251410165619, ; 565: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 280
	i64 13647894001087880694, ; 566: System.Data.dll => 0xbd670f48cb071df6 => 25
	i64 13675589307506966157, ; 567: Xamarin.AndroidX.Activity.Ktx => 0xbdc97404d0153e8d => 259
	i64 13702626353344114072, ; 568: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 33
	i64 13710614125866346983, ; 569: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 118
	i64 13713329104121190199, ; 570: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 38
	i64 13717397318615465333, ; 571: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 17
	i64 13768883594457632599, ; 572: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 53
	i64 13828521679616088467, ; 573: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 333
	i64 13830070810343648044, ; 574: System.ServiceModel.Http.dll => 0xbfee48208d082b2c => 250
	i64 13880527146319145818, ; 575: System.Private.ServiceModel => 0xc0a189e5bb84eb5a => 246
	i64 13881769479078963060, ; 576: System.Console.dll => 0xc0a5f3cade5c6774 => 21
	i64 13882652712560114096, ; 577: System.Windows.Extensions.dll => 0xc0a91716b04239b0 => 253
	i64 13911222732217019342, ; 578: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 124
	i64 13928444506500929300, ; 579: System.Windows.dll => 0xc14bc67b8bba9714 => 155
	i64 13959074834287824816, ; 580: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 287
	i64 14003762306363482591, ; 581: DevExpress.XtraTreeMap.v23.2 => 0xc2575b9f5dcce1df => 211
	i64 14075334701871371868, ; 582: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 132
	i64 14124974489674258913, ; 583: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 269
	i64 14125464355221830302, ; 584: System.Threading.dll => 0xc407bafdbc707a9e => 149
	i64 14178052285788134900, ; 585: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 255
	i64 14212104595480609394, ; 586: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 121
	i64 14220608275227875801, ; 587: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 29
	i64 14226382999226559092, ; 588: System.ServiceProcess => 0xc56e43f6938e2a74 => 133
	i64 14232023429000439693, ; 589: System.Resources.Writer.dll => 0xc5824de7789ba78d => 101
	i64 14254574811015963973, ; 590: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 135
	i64 14261073672896646636, ; 591: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 307
	i64 14298246716367104064, ; 592: System.Web.dll => 0xc66d93a217f4e840 => 154
	i64 14327695147300244862, ; 593: System.Reflection.dll => 0xc6d632d338eb4d7e => 98
	i64 14327709162229390963, ; 594: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 126
	i64 14331727281556788554, ; 595: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 256
	i64 14346402571976470310, ; 596: System.Net.Ping.dll => 0xc718a920f3686f26 => 70
	i64 14349907877893689639, ; 597: ro\Microsoft.Maui.Controls.resources.dll => 0xc7251d2f956ed127 => 361
	i64 14461014870687870182, ; 598: System.Net.Requests.dll => 0xc8afd8683afdece6 => 73
	i64 14464374589798375073, ; 599: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 362
	i64 14486659737292545672, ; 600: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 292
	i64 14491877563792607819, ; 601: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0xc91d7ddcee4fca4b => 370
	i64 14495724990987328804, ; 602: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 310
	i64 14551742072151931844, ; 603: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 137
	i64 14552901170081803662, ; 604: SkiaSharp.Views.Maui.Core => 0xc9f64a827617ad8e => 241
	i64 14556034074661724008, ; 605: CommunityToolkit.Maui.Core => 0xca016bdea6b19f68 => 175
	i64 14561513370130550166, ; 606: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 125
	i64 14574160591280636898, ; 607: System.Net.Quic => 0xca41d1d72ec783e2 => 72
	i64 14610046442689856844, ; 608: cs\Microsoft.Maui.Controls.resources.dll => 0xcac14fd5107d054c => 340
	i64 14622043554576106986, ; 609: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 112
	i64 14644440854989303794, ; 610: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 302
	i64 14653669531502871807, ; 611: DevExpress.Maui.Core.dll => 0xcb5c4acce93184ff => 194
	i64 14669215534098758659, ; 612: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 219
	i64 14690985099581930927, ; 613: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 153
	i64 14705122255218365489, ; 614: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 354
	i64 14735017007120366644, ; 615: ja\Microsoft.Maui.Controls.resources.dll => 0xcc7d4be604bfbc34 => 353
	i64 14744092281598614090, ; 616: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 370
	i64 14792063746108907174, ; 617: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 330
	i64 14832630590065248058, ; 618: System.Security.Claims => 0xcdd816ef5d6e873a => 119
	i64 14852515768018889994, ; 619: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 278
	i64 14854631724902097852, ; 620: es\System.Private.ServiceModel.resources.dll => 0xce2640d9c009a3bc => 374
	i64 14889905118082851278, ; 621: GoogleGson.dll => 0xcea391d0969961ce => 214
	i64 14904040806490515477, ; 622: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 338
	i64 14912225920358050525, ; 623: System.Security.Principal.Windows => 0xcef2de7759506add => 128
	i64 14931407803744742450, ; 624: HarfBuzzSharp => 0xcf3704499ab36c32 => 215
	i64 14935719434541007538, ; 625: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 134
	i64 14954917835170835695, ; 626: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 220
	i64 14984936317414011727, ; 627: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 78
	i64 14987728460634540364, ; 628: System.IO.Compression.dll => 0xcfff1ba06622494c => 47
	i64 14988210264188246988, ; 629: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 281
	i64 15015154896917945444, ; 630: System.Net.Security.dll => 0xd0608bd33642dc64 => 74
	i64 15024878362326791334, ; 631: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 64
	i64 15071021337266399595, ; 632: System.Resources.Reader.dll => 0xd127060e7a18a96b => 99
	i64 15076659072870671916, ; 633: System.ObjectModel.dll => 0xd13b0d8c1620662c => 85
	i64 15111608613780139878, ; 634: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 355
	i64 15115185479366240210, ; 635: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 44
	i64 15133485256822086103, ; 636: System.Linq.dll => 0xd204f0a9127dd9d7 => 62
	i64 15145995544628845172, ; 637: DXCharts.a.dll => 0xd23162b36f405a74 => 186
	i64 15150743910298169673, ; 638: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 308
	i64 15203009853192377507, ; 639: pt\Microsoft.Maui.Controls.resources.dll => 0xd2fbf0e9984b94a3 => 360
	i64 15227001540531775957, ; 640: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 218
	i64 15234786388537674379, ; 641: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 38
	i64 15250465174479574862, ; 642: System.Globalization.Calendars.dll => 0xd3a489469852174e => 41
	i64 15272359115529052076, ; 643: Xamarin.AndroidX.Collection.Ktx => 0xd3f251b2fb4edfac => 271
	i64 15279429628684179188, ; 644: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 336
	i64 15299439993936780255, ; 645: System.Xml.XPath.dll => 0xd452879d55019bdf => 161
	i64 15338463749992804988, ; 646: System.Resources.Reader => 0xd4dd2b839286f27c => 99
	i64 15370334346939861994, ; 647: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 276
	i64 15391712275433856905, ; 648: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 220
	i64 15526743539506359484, ; 649: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 136
	i64 15527772828719725935, ; 650: System.Console => 0xd77dbb1e38cd3d6f => 21
	i64 15530465045505749832, ; 651: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 66
	i64 15536481058354060254, ; 652: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 342
	i64 15541854775306130054, ; 653: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 126
	i64 15557562860424774966, ; 654: System.Net.Sockets => 0xd7e790fe7a6dc536 => 76
	i64 15582737692548360875, ; 655: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 300
	i64 15609085926864131306, ; 656: System.dll => 0xd89e9cf3334914ea => 165
	i64 15661133872274321916, ; 657: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 157
	i64 15710114879900314733, ; 658: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 6
	i64 15755368083429170162, ; 659: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 50
	i64 15777549416145007739, ; 660: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 314
	i64 15783653065526199428, ; 661: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 343
	i64 15817206913877585035, ; 662: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 145
	i64 15817855017947507027, ; 663: es\System.Private.ServiceModel.resources => 0xdb844f550d642953 => 374
	i64 15847085070278954535, ; 664: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 140
	i64 15885744048853936810, ; 665: System.Resources.Writer => 0xdc75800bd0b6eaaa => 101
	i64 15928521404965645318, ; 666: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 226
	i64 15934062614519587357, ; 667: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 124
	i64 15937190497610202713, ; 668: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 121
	i64 15949342492168962360, ; 669: it\System.Private.ServiceModel.resources => 0xdd57727e4ec64138 => 376
	i64 15963349826457351533, ; 670: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 143
	i64 15971679995444160383, ; 671: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 40
	i64 16004103101800851396, ; 672: eProjectsOnRealm.dll => 0xde19fefa4b9127c4 => 1
	i64 16018552496348375205, ; 673: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 69
	i64 16046481083542319511, ; 674: Microsoft.Extensions.ObjectPool => 0xdeb08d870f90b197 => 223
	i64 16054465462676478687, ; 675: System.Globalization.Extensions => 0xdecceb47319bdadf => 42
	i64 16056281320585338352, ; 676: ru\Microsoft.Maui.Controls.resources.dll => 0xded35eca8f3a9df0 => 362
	i64 16058798787132315437, ; 677: DevExpress.Sparkline.v23.2.Core => 0xdedc5069ea7ed72d => 209
	i64 16154507427712707110, ; 678: System => 0xe03056ea4e39aa26 => 165
	i64 16219561732052121626, ; 679: System.Net.Security => 0xe1177575db7c781a => 74
	i64 16288847719894691167, ; 680: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 356
	i64 16315482530584035869, ; 681: WindowsBase.dll => 0xe26c3ceb1e8d821d => 166
	i64 16321164108206115771, ; 682: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 222
	i64 16324796876805858114, ; 683: SkiaSharp.dll => 0xe28d5444586b6342 => 237
	i64 16337011941688632206, ; 684: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 128
	i64 16361933716545543812, ; 685: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 286
	i64 16423015068819898779, ; 686: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 335
	i64 16454459195343277943, ; 687: System.Net.NetworkInformation => 0xe459fb756d988f77 => 69
	i64 16496768397145114574, ; 688: Mono.Android.Export.dll => 0xe4f04b741db987ce => 170
	i64 16589693266713801121, ; 689: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xe63a6e214f2a71a1 => 299
	i64 16621146507174665210, ; 690: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 273
	i64 16648892297579399389, ; 691: CommunityToolkit.Mvvm => 0xe70cbf55c4f508dd => 176
	i64 16649148416072044166, ; 692: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 231
	i64 16677317093839702854, ; 693: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 306
	i64 16702652415771857902, ; 694: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 152
	i64 16709499819875633724, ; 695: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 46
	i64 16737807731308835127, ; 696: System.Runtime.Intrinsics => 0xe848a3736f733137 => 109
	i64 16738961482059635536, ; 697: DevExpress.Pdf.v23.2.Core.dll => 0xe84cbcc7f71c5b50 => 204
	i64 16758309481308491337, ; 698: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 49
	i64 16762783179241323229, ; 699: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 97
	i64 16765015072123548030, ; 700: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 32
	i64 16795178957077639253, ; 701: DXCore.a => 0xe9147646dbba7055 => 193
	i64 16803648858859583026, ; 702: ms\Microsoft.Maui.Controls.resources.dll => 0xe9328d9b8ab93632 => 355
	i64 16822611501064131242, ; 703: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 24
	i64 16833383113903931215, ; 704: mscorlib => 0xe99c30c1484d7f4f => 167
	i64 16856067890322379635, ; 705: System.Data.Common.dll => 0xe9ecc87060889373 => 23
	i64 16869824188424882475, ; 706: DevExpress.RichEdit.v23.2.Core => 0xea1da7b81e5b892b => 208
	i64 16890310621557459193, ; 707: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 139
	i64 16933958494752847024, ; 708: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 79
	i64 16942731696432749159, ; 709: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 363
	i64 16977952268158210142, ; 710: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 55
	i64 16989020923549080504, ; 711: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xebc52084add25bb8 => 299
	i64 16998075588627545693, ; 712: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 304
	i64 17008137082415910100, ; 713: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 11
	i64 17024911836938395553, ; 714: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 261
	i64 17031351772568316411, ; 715: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 303
	i64 17037200463775726619, ; 716: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 290
	i64 17062143951396181894, ; 717: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 17
	i64 17118171214553292978, ; 718: System.Threading.Channels => 0xed8ff6060fc420b2 => 140
	i64 17187273293601214786, ; 719: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 14
	i64 17201328579425343169, ; 720: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 16
	i64 17202182880784296190, ; 721: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 123
	i64 17203614576212522419, ; 722: pl\Microsoft.Maui.Controls.resources.dll => 0xeebf844ef3e135b3 => 358
	i64 17230721278011714856, ; 723: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 88
	i64 17234219099804750107, ; 724: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 150
	i64 17260702271250283638, ; 725: System.Data.Common => 0xef8a5543bba6bc76 => 23
	i64 17310278548634113468, ; 726: hi\Microsoft.Maui.Controls.resources.dll => 0xf03a76a04e6695bc => 348
	i64 17333249706306540043, ; 727: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 35
	i64 17338386382517543202, ; 728: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 80
	i64 17342750010158924305, ; 729: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 348
	i64 17348749373414901731, ; 730: tr\System.Private.ServiceModel.resources.dll => 0xf0c323a333ad07e3 => 382
	i64 17360349973592121190, ; 731: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 328
	i64 17470386307322966175, ; 732: System.Threading.Timer => 0xf27347c8d0d5709f => 148
	i64 17509662556995089465, ; 733: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 81
	i64 17514990004910432069, ; 734: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 346
	i64 17522591619082469157, ; 735: GoogleGson => 0xf32cc03d27a5bf25 => 214
	i64 17590473451926037903, ; 736: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 254
	i64 17623389608345532001, ; 737: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 358
	i64 17627500474728259406, ; 738: System.Globalization => 0xf4a176498a351f4e => 43
	i64 17671790519499593115, ; 739: SkiaSharp.Views.Android => 0xf53ecfd92be3959b => 239
	i64 17685921127322830888, ; 740: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 27
	i64 17704177640604968747, ; 741: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 301
	i64 17710060891934109755, ; 742: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 298
	i64 17712670374920797664, ; 743: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 108
	i64 17743407583038752114, ; 744: System.CodeDom.dll => 0xf63d3f302bff4572 => 242
	i64 17777860260071588075, ; 745: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 111
	i64 17827813215687577648, ; 746: hr\Microsoft.Maui.Controls.resources.dll => 0xf7691da9f3129030 => 349
	i64 17838668724098252521, ; 747: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 8
	i64 17891337867145587222, ; 748: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 331
	i64 17928294245072900555, ; 749: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 45
	i64 17942426894774770628, ; 750: de\Microsoft.Maui.Controls.resources.dll => 0xf9004e329f771bc4 => 342
	i64 17983703858104258717, ; 751: DevExpress.Maui.Charts.dll => 0xf992f3609020509d => 187
	i64 17992315986609351877, ; 752: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 162
	i64 18025913125965088385, ; 753: System.Threading => 0xfa28e87b91334681 => 149
	i64 18032611295476759751, ; 754: de\System.Private.ServiceModel.resources => 0xfa40b46eaf96bcc7 => 373
	i64 18086997142388209056, ; 755: DevExpress.Docs.v23.2 => 0xfb01ec126d8df5a0 => 183
	i64 18116111925905154859, ; 756: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 266
	i64 18121036031235206392, ; 757: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 303
	i64 18146411883821974900, ; 758: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 39
	i64 18146811631844267958, ; 759: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 16
	i64 18203743254473369877, ; 760: System.Security.Cryptography.Pkcs.dll => 0xfca0b00ad94c6915 => 247
	i64 18225059387460068507, ; 761: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 147
	i64 18245806341561545090, ; 762: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 9
	i64 18260797123374478311, ; 763: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 284
	i64 18305135509493619199, ; 764: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 305
	i64 18318849532986632368, ; 765: System.Security.dll => 0xfe39a097c37fa8b0 => 131
	i64 18324163916253801303, ; 766: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 352
	i64 18342408478508122430, ; 767: id\Microsoft.Maui.Controls.resources.dll => 0xfe8d53543697013e => 351
	i64 18358161419737137786, ; 768: he\Microsoft.Maui.Controls.resources.dll => 0xfec54a8ba8b6827a => 347
	i64 18380184030268848184, ; 769: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 321
	i64 18428404840311395189, ; 770: System.Security.Cryptography.Xml.dll => 0xffbed8907bd99375 => 248
	i64 18439108438687598470 ; 771: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 95
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [772 x i32] [
	i32 283, ; 0
	i32 225, ; 1
	i32 177, ; 2
	i32 172, ; 3
	i32 230, ; 4
	i32 59, ; 5
	i32 270, ; 6
	i32 152, ; 7
	i32 311, ; 8
	i32 314, ; 9
	i32 277, ; 10
	i32 133, ; 11
	i32 57, ; 12
	i32 313, ; 13
	i32 223, ; 14
	i32 207, ; 15
	i32 190, ; 16
	i32 96, ; 17
	i32 379, ; 18
	i32 202, ; 19
	i32 296, ; 20
	i32 130, ; 21
	i32 245, ; 22
	i32 180, ; 23
	i32 146, ; 24
	i32 271, ; 25
	i32 19, ; 26
	i32 350, ; 27
	i32 282, ; 28
	i32 297, ; 29
	i32 151, ; 30
	i32 105, ; 31
	i32 96, ; 32
	i32 326, ; 33
	i32 197, ; 34
	i32 37, ; 35
	i32 29, ; 36
	i32 178, ; 37
	i32 265, ; 38
	i32 190, ; 39
	i32 304, ; 40
	i32 51, ; 41
	i32 116, ; 42
	i32 71, ; 43
	i32 227, ; 44
	i32 66, ; 45
	i32 171, ; 46
	i32 146, ; 47
	i32 325, ; 48
	i32 264, ; 49
	i32 300, ; 50
	i32 290, ; 51
	i32 41, ; 52
	i32 90, ; 53
	i32 82, ; 54
	i32 67, ; 55
	i32 205, ; 56
	i32 63, ; 57
	i32 87, ; 58
	i32 263, ; 59
	i32 107, ; 60
	i32 344, ; 61
	i32 311, ; 62
	i32 103, ; 63
	i32 216, ; 64
	i32 36, ; 65
	i32 260, ; 66
	i32 366, ; 67
	i32 186, ; 68
	i32 313, ; 69
	i32 267, ; 70
	i32 228, ; 71
	i32 176, ; 72
	i32 120, ; 73
	i32 298, ; 74
	i32 198, ; 75
	i32 143, ; 76
	i32 142, ; 77
	i32 334, ; 78
	i32 54, ; 79
	i32 36, ; 80
	i32 142, ; 81
	i32 257, ; 82
	i32 268, ; 83
	i32 238, ; 84
	i32 192, ; 85
	i32 282, ; 86
	i32 9, ; 87
	i32 15, ; 88
	i32 310, ; 89
	i32 52, ; 90
	i32 293, ; 91
	i32 137, ; 92
	i32 102, ; 93
	i32 212, ; 94
	i32 275, ; 95
	i32 378, ; 96
	i32 320, ; 97
	i32 117, ; 98
	i32 258, ; 99
	i32 164, ; 100
	i32 365, ; 101
	i32 167, ; 102
	i32 68, ; 103
	i32 219, ; 104
	i32 235, ; 105
	i32 340, ; 106
	i32 381, ; 107
	i32 81, ; 108
	i32 209, ; 109
	i32 206, ; 110
	i32 378, ; 111
	i32 102, ; 112
	i32 315, ; 113
	i32 118, ; 114
	i32 243, ; 115
	i32 188, ; 116
	i32 345, ; 117
	i32 327, ; 118
	i32 212, ; 119
	i32 79, ; 120
	i32 326, ; 121
	i32 115, ; 122
	i32 122, ; 123
	i32 49, ; 124
	i32 0, ; 125
	i32 376, ; 126
	i32 232, ; 127
	i32 380, ; 128
	i32 203, ; 129
	i32 129, ; 130
	i32 291, ; 131
	i32 261, ; 132
	i32 83, ; 133
	i32 111, ; 134
	i32 76, ; 135
	i32 337, ; 136
	i32 267, ; 137
	i32 384, ; 138
	i32 240, ; 139
	i32 230, ; 140
	i32 54, ; 141
	i32 238, ; 142
	i32 317, ; 143
	i32 217, ; 144
	i32 70, ; 145
	i32 316, ; 146
	i32 84, ; 147
	i32 173, ; 148
	i32 360, ; 149
	i32 117, ; 150
	i32 252, ; 151
	i32 218, ; 152
	i32 157, ; 153
	i32 217, ; 154
	i32 255, ; 155
	i32 168, ; 156
	i32 309, ; 157
	i32 283, ; 158
	i32 221, ; 159
	i32 33, ; 160
	i32 228, ; 161
	i32 123, ; 162
	i32 73, ; 163
	i32 63, ; 164
	i32 162, ; 165
	i32 114, ; 166
	i32 341, ; 167
	i32 89, ; 168
	i32 226, ; 169
	i32 371, ; 170
	i32 194, ; 171
	i32 106, ; 172
	i32 19, ; 173
	i32 147, ; 174
	i32 119, ; 175
	i32 59, ; 176
	i32 277, ; 177
	i32 18, ; 178
	i32 53, ; 179
	i32 93, ; 180
	i32 366, ; 181
	i32 193, ; 182
	i32 56, ; 183
	i32 189, ; 184
	i32 130, ; 185
	i32 195, ; 186
	i32 178, ; 187
	i32 153, ; 188
	i32 42, ; 189
	i32 181, ; 190
	i32 93, ; 191
	i32 244, ; 192
	i32 321, ; 193
	i32 201, ; 194
	i32 51, ; 195
	i32 163, ; 196
	i32 187, ; 197
	i32 14, ; 198
	i32 295, ; 199
	i32 258, ; 200
	i32 316, ; 201
	i32 37, ; 202
	i32 68, ; 203
	i32 110, ; 204
	i32 356, ; 205
	i32 364, ; 206
	i32 259, ; 207
	i32 100, ; 208
	i32 100, ; 209
	i32 12, ; 210
	i32 12, ; 211
	i32 302, ; 212
	i32 26, ; 213
	i32 129, ; 214
	i32 244, ; 215
	i32 77, ; 216
	i32 294, ; 217
	i32 110, ; 218
	i32 373, ; 219
	i32 320, ; 220
	i32 318, ; 221
	i32 107, ; 222
	i32 3, ; 223
	i32 27, ; 224
	i32 273, ; 225
	i32 158, ; 226
	i32 184, ; 227
	i32 364, ; 228
	i32 253, ; 229
	i32 22, ; 230
	i32 367, ; 231
	i32 50, ; 232
	i32 44, ; 233
	i32 127, ; 234
	i32 262, ; 235
	i32 60, ; 236
	i32 120, ; 237
	i32 323, ; 238
	i32 286, ; 239
	i32 272, ; 240
	i32 4, ; 241
	i32 292, ; 242
	i32 312, ; 243
	i32 39, ; 244
	i32 125, ; 245
	i32 211, ; 246
	i32 312, ; 247
	i32 361, ; 248
	i32 138, ; 249
	i32 150, ; 250
	i32 86, ; 251
	i32 91, ; 252
	i32 344, ; 253
	i32 296, ; 254
	i32 385, ; 255
	i32 293, ; 256
	i32 183, ; 257
	i32 345, ; 258
	i32 349, ; 259
	i32 268, ; 260
	i32 279, ; 261
	i32 213, ; 262
	i32 324, ; 263
	i32 224, ; 264
	i32 329, ; 265
	i32 294, ; 266
	i32 181, ; 267
	i32 134, ; 268
	i32 235, ; 269
	i32 237, ; 270
	i32 97, ; 271
	i32 4, ; 272
	i32 357, ; 273
	i32 106, ; 274
	i32 34, ; 275
	i32 155, ; 276
	i32 159, ; 277
	i32 200, ; 278
	i32 177, ; 279
	i32 156, ; 280
	i32 83, ; 281
	i32 288, ; 282
	i32 382, ; 283
	i32 202, ; 284
	i32 248, ; 285
	i32 144, ; 286
	i32 206, ; 287
	i32 88, ; 288
	i32 20, ; 289
	i32 289, ; 290
	i32 247, ; 291
	i32 52, ; 292
	i32 191, ; 293
	i32 257, ; 294
	i32 200, ; 295
	i32 188, ; 296
	i32 233, ; 297
	i32 62, ; 298
	i32 179, ; 299
	i32 55, ; 300
	i32 372, ; 301
	i32 241, ; 302
	i32 5, ; 303
	i32 98, ; 304
	i32 256, ; 305
	i32 210, ; 306
	i32 18, ; 307
	i32 375, ; 308
	i32 156, ; 309
	i32 85, ; 310
	i32 252, ; 311
	i32 30, ; 312
	i32 46, ; 313
	i32 65, ; 314
	i32 67, ; 315
	i32 173, ; 316
	i32 240, ; 317
	i32 297, ; 318
	i32 2, ; 319
	i32 332, ; 320
	i32 352, ; 321
	i32 192, ; 322
	i32 48, ; 323
	i32 25, ; 324
	i32 213, ; 325
	i32 264, ; 326
	i32 239, ; 327
	i32 185, ; 328
	i32 363, ; 329
	i32 207, ; 330
	i32 166, ; 331
	i32 109, ; 332
	i32 13, ; 333
	i32 291, ; 334
	i32 64, ; 335
	i32 28, ; 336
	i32 24, ; 337
	i32 354, ; 338
	i32 94, ; 339
	i32 169, ; 340
	i32 13, ; 341
	i32 336, ; 342
	i32 231, ; 343
	i32 30, ; 344
	i32 104, ; 345
	i32 233, ; 346
	i32 15, ; 347
	i32 127, ; 348
	i32 369, ; 349
	i32 274, ; 350
	i32 306, ; 351
	i32 92, ; 352
	i32 295, ; 353
	i32 249, ; 354
	i32 10, ; 355
	i32 87, ; 356
	i32 285, ; 357
	i32 174, ; 358
	i32 318, ; 359
	i32 72, ; 360
	i32 169, ; 361
	i32 208, ; 362
	i32 2, ; 363
	i32 305, ; 364
	i32 6, ; 365
	i32 359, ; 366
	i32 45, ; 367
	i32 28, ; 368
	i32 182, ; 369
	i32 333, ; 370
	i32 236, ; 371
	i32 204, ; 372
	i32 159, ; 373
	i32 308, ; 374
	i32 113, ; 375
	i32 369, ; 376
	i32 122, ; 377
	i32 323, ; 378
	i32 263, ; 379
	i32 343, ; 380
	i32 160, ; 381
	i32 367, ; 382
	i32 191, ; 383
	i32 132, ; 384
	i32 328, ; 385
	i32 58, ; 386
	i32 139, ; 387
	i32 84, ; 388
	i32 31, ; 389
	i32 275, ; 390
	i32 11, ; 391
	i32 203, ; 392
	i32 339, ; 393
	i32 325, ; 394
	i32 172, ; 395
	i32 272, ; 396
	i32 151, ; 397
	i32 95, ; 398
	i32 285, ; 399
	i32 61, ; 400
	i32 229, ; 401
	i32 242, ; 402
	i32 158, ; 403
	i32 372, ; 404
	i32 234, ; 405
	i32 65, ; 406
	i32 383, ; 407
	i32 89, ; 408
	i32 80, ; 409
	i32 195, ; 410
	i32 48, ; 411
	i32 227, ; 412
	i32 251, ; 413
	i32 144, ; 414
	i32 341, ; 415
	i32 377, ; 416
	i32 357, ; 417
	i32 334, ; 418
	i32 279, ; 419
	i32 75, ; 420
	i32 92, ; 421
	i32 331, ; 422
	i32 136, ; 423
	i32 91, ; 424
	i32 317, ; 425
	i32 337, ; 426
	i32 276, ; 427
	i32 216, ; 428
	i32 196, ; 429
	i32 339, ; 430
	i32 113, ; 431
	i32 43, ; 432
	i32 160, ; 433
	i32 5, ; 434
	i32 197, ; 435
	i32 205, ; 436
	i32 104, ; 437
	i32 234, ; 438
	i32 1, ; 439
	i32 371, ; 440
	i32 71, ; 441
	i32 61, ; 442
	i32 40, ; 443
	i32 236, ; 444
	i32 265, ; 445
	i32 174, ; 446
	i32 154, ; 447
	i32 57, ; 448
	i32 246, ; 449
	i32 35, ; 450
	i32 222, ; 451
	i32 229, ; 452
	i32 262, ; 453
	i32 22, ; 454
	i32 164, ; 455
	i32 232, ; 456
	i32 329, ; 457
	i32 189, ; 458
	i32 350, ; 459
	i32 327, ; 460
	i32 365, ; 461
	i32 346, ; 462
	i32 322, ; 463
	i32 141, ; 464
	i32 353, ; 465
	i32 224, ; 466
	i32 90, ; 467
	i32 381, ; 468
	i32 383, ; 469
	i32 148, ; 470
	i32 278, ; 471
	i32 243, ; 472
	i32 163, ; 473
	i32 307, ; 474
	i32 0, ; 475
	i32 7, ; 476
	i32 170, ; 477
	i32 32, ; 478
	i32 380, ; 479
	i32 108, ; 480
	i32 250, ; 481
	i32 288, ; 482
	i32 351, ; 483
	i32 322, ; 484
	i32 221, ; 485
	i32 260, ; 486
	i32 315, ; 487
	i32 168, ; 488
	i32 289, ; 489
	i32 141, ; 490
	i32 60, ; 491
	i32 145, ; 492
	i32 368, ; 493
	i32 82, ; 494
	i32 75, ; 495
	i32 131, ; 496
	i32 26, ; 497
	i32 8, ; 498
	i32 94, ; 499
	i32 319, ; 500
	i32 138, ; 501
	i32 254, ; 502
	i32 114, ; 503
	i32 210, ; 504
	i32 10, ; 505
	i32 375, ; 506
	i32 105, ; 507
	i32 175, ; 508
	i32 251, ; 509
	i32 20, ; 510
	i32 287, ; 511
	i32 301, ; 512
	i32 385, ; 513
	i32 281, ; 514
	i32 180, ; 515
	i32 34, ; 516
	i32 384, ; 517
	i32 269, ; 518
	i32 47, ; 519
	i32 31, ; 520
	i32 270, ; 521
	i32 199, ; 522
	i32 58, ; 523
	i32 135, ; 524
	i32 115, ; 525
	i32 324, ; 526
	i32 179, ; 527
	i32 377, ; 528
	i32 199, ; 529
	i32 185, ; 530
	i32 184, ; 531
	i32 335, ; 532
	i32 56, ; 533
	i32 225, ; 534
	i32 7, ; 535
	i32 78, ; 536
	i32 245, ; 537
	i32 182, ; 538
	i32 280, ; 539
	i32 338, ; 540
	i32 359, ; 541
	i32 112, ; 542
	i32 215, ; 543
	i32 284, ; 544
	i32 249, ; 545
	i32 103, ; 546
	i32 201, ; 547
	i32 196, ; 548
	i32 171, ; 549
	i32 116, ; 550
	i32 347, ; 551
	i32 198, ; 552
	i32 319, ; 553
	i32 379, ; 554
	i32 274, ; 555
	i32 77, ; 556
	i32 330, ; 557
	i32 86, ; 558
	i32 332, ; 559
	i32 266, ; 560
	i32 368, ; 561
	i32 309, ; 562
	i32 161, ; 563
	i32 3, ; 564
	i32 280, ; 565
	i32 25, ; 566
	i32 259, ; 567
	i32 33, ; 568
	i32 118, ; 569
	i32 38, ; 570
	i32 17, ; 571
	i32 53, ; 572
	i32 333, ; 573
	i32 250, ; 574
	i32 246, ; 575
	i32 21, ; 576
	i32 253, ; 577
	i32 124, ; 578
	i32 155, ; 579
	i32 287, ; 580
	i32 211, ; 581
	i32 132, ; 582
	i32 269, ; 583
	i32 149, ; 584
	i32 255, ; 585
	i32 121, ; 586
	i32 29, ; 587
	i32 133, ; 588
	i32 101, ; 589
	i32 135, ; 590
	i32 307, ; 591
	i32 154, ; 592
	i32 98, ; 593
	i32 126, ; 594
	i32 256, ; 595
	i32 70, ; 596
	i32 361, ; 597
	i32 73, ; 598
	i32 362, ; 599
	i32 292, ; 600
	i32 370, ; 601
	i32 310, ; 602
	i32 137, ; 603
	i32 241, ; 604
	i32 175, ; 605
	i32 125, ; 606
	i32 72, ; 607
	i32 340, ; 608
	i32 112, ; 609
	i32 302, ; 610
	i32 194, ; 611
	i32 219, ; 612
	i32 153, ; 613
	i32 354, ; 614
	i32 353, ; 615
	i32 370, ; 616
	i32 330, ; 617
	i32 119, ; 618
	i32 278, ; 619
	i32 374, ; 620
	i32 214, ; 621
	i32 338, ; 622
	i32 128, ; 623
	i32 215, ; 624
	i32 134, ; 625
	i32 220, ; 626
	i32 78, ; 627
	i32 47, ; 628
	i32 281, ; 629
	i32 74, ; 630
	i32 64, ; 631
	i32 99, ; 632
	i32 85, ; 633
	i32 355, ; 634
	i32 44, ; 635
	i32 62, ; 636
	i32 186, ; 637
	i32 308, ; 638
	i32 360, ; 639
	i32 218, ; 640
	i32 38, ; 641
	i32 41, ; 642
	i32 271, ; 643
	i32 336, ; 644
	i32 161, ; 645
	i32 99, ; 646
	i32 276, ; 647
	i32 220, ; 648
	i32 136, ; 649
	i32 21, ; 650
	i32 66, ; 651
	i32 342, ; 652
	i32 126, ; 653
	i32 76, ; 654
	i32 300, ; 655
	i32 165, ; 656
	i32 157, ; 657
	i32 6, ; 658
	i32 50, ; 659
	i32 314, ; 660
	i32 343, ; 661
	i32 145, ; 662
	i32 374, ; 663
	i32 140, ; 664
	i32 101, ; 665
	i32 226, ; 666
	i32 124, ; 667
	i32 121, ; 668
	i32 376, ; 669
	i32 143, ; 670
	i32 40, ; 671
	i32 1, ; 672
	i32 69, ; 673
	i32 223, ; 674
	i32 42, ; 675
	i32 362, ; 676
	i32 209, ; 677
	i32 165, ; 678
	i32 74, ; 679
	i32 356, ; 680
	i32 166, ; 681
	i32 222, ; 682
	i32 237, ; 683
	i32 128, ; 684
	i32 286, ; 685
	i32 335, ; 686
	i32 69, ; 687
	i32 170, ; 688
	i32 299, ; 689
	i32 273, ; 690
	i32 176, ; 691
	i32 231, ; 692
	i32 306, ; 693
	i32 152, ; 694
	i32 46, ; 695
	i32 109, ; 696
	i32 204, ; 697
	i32 49, ; 698
	i32 97, ; 699
	i32 32, ; 700
	i32 193, ; 701
	i32 355, ; 702
	i32 24, ; 703
	i32 167, ; 704
	i32 23, ; 705
	i32 208, ; 706
	i32 139, ; 707
	i32 79, ; 708
	i32 363, ; 709
	i32 55, ; 710
	i32 299, ; 711
	i32 304, ; 712
	i32 11, ; 713
	i32 261, ; 714
	i32 303, ; 715
	i32 290, ; 716
	i32 17, ; 717
	i32 140, ; 718
	i32 14, ; 719
	i32 16, ; 720
	i32 123, ; 721
	i32 358, ; 722
	i32 88, ; 723
	i32 150, ; 724
	i32 23, ; 725
	i32 348, ; 726
	i32 35, ; 727
	i32 80, ; 728
	i32 348, ; 729
	i32 382, ; 730
	i32 328, ; 731
	i32 148, ; 732
	i32 81, ; 733
	i32 346, ; 734
	i32 214, ; 735
	i32 254, ; 736
	i32 358, ; 737
	i32 43, ; 738
	i32 239, ; 739
	i32 27, ; 740
	i32 301, ; 741
	i32 298, ; 742
	i32 108, ; 743
	i32 242, ; 744
	i32 111, ; 745
	i32 349, ; 746
	i32 8, ; 747
	i32 331, ; 748
	i32 45, ; 749
	i32 342, ; 750
	i32 187, ; 751
	i32 162, ; 752
	i32 149, ; 753
	i32 373, ; 754
	i32 183, ; 755
	i32 266, ; 756
	i32 303, ; 757
	i32 39, ; 758
	i32 16, ; 759
	i32 247, ; 760
	i32 147, ; 761
	i32 9, ; 762
	i32 284, ; 763
	i32 305, ; 764
	i32 131, ; 765
	i32 352, ; 766
	i32 351, ; 767
	i32 347, ; 768
	i32 321, ; 769
	i32 248, ; 770
	i32 95 ; 771
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
