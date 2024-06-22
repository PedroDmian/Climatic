; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [235 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [464 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 205
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 225
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 8: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 68219467, ; 9: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 82292897, ; 10: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 117431740, ; 11: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 122350210, ; 12: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 130860927, ; 13: Climatic.dll => 0x7ccc77f => 0
	i32 142721839, ; 14: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 15: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 16: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 17: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 183
	i32 176265551, ; 18: System.ServiceProcess => 0xa81994f => 132
	i32 184328833, ; 19: System.ValueTuple.dll => 0xafca281 => 151
	i32 205061960, ; 20: System.ComponentModel => 0xc38ff48 => 18
	i32 220171995, ; 21: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 22: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 201
	i32 230752869, ; 23: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 24: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 25: System.Globalization => 0xdd133ce => 42
	i32 246213220, ; 26: Climatic => 0xeacea64 => 0
	i32 246610117, ; 27: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 28: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 186
	i32 276479776, ; 29: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 280482487, ; 30: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 200
	i32 291076382, ; 31: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 32: System.Net.Ping.dll => 0x11d123fd => 69
	i32 318968648, ; 33: Xamarin.AndroidX.Activity.dll => 0x13031348 => 174
	i32 321597661, ; 34: System.Numerics => 0x132b30dd => 83
	i32 342366114, ; 35: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 202
	i32 360082299, ; 36: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 37: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 38: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 39: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 40: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 41: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 42: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 43: _Microsoft.Android.Resource.Designer => 0x17969339 => 231
	i32 403441872, ; 44: WindowsBase => 0x180c08d0 => 165
	i32 441335492, ; 45: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 187
	i32 442565967, ; 46: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 47: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 199
	i32 451504562, ; 48: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 49: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 50: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 51: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 52: System.dll => 0x1bff388e => 164
	i32 476646585, ; 53: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 200
	i32 486930444, ; 54: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 209
	i32 498788369, ; 55: System.ObjectModel => 0x1dbae811 => 84
	i32 526420162, ; 56: System.Transactions.dll => 0x1f6088c2 => 150
	i32 530272170, ; 57: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 540030774, ; 58: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 59: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 60: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 61: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 577335427, ; 62: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 601371474, ; 63: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 64: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 65: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 66: Xamarin.AndroidX.CustomView => 0x2568904f => 192
	i32 639843206, ; 67: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 198
	i32 643868501, ; 68: System.Net => 0x2660a755 => 81
	i32 662205335, ; 69: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 70: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 220
	i32 666292255, ; 71: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 180
	i32 672442732, ; 72: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 73: System.Net.Security => 0x28bdabca => 73
	i32 690569205, ; 74: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 75: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 228
	i32 693804605, ; 76: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 77: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 78: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 226
	i32 700358131, ; 79: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 722857257, ; 80: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 81: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 82: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 759454413, ; 83: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 84: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 85: System.IO.Compression => 0x2e394f87 => 46
	i32 790371945, ; 86: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 193
	i32 804715423, ; 87: System.Data.Common => 0x2ff6fb9f => 22
	i32 823281589, ; 88: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 89: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 90: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 91: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 92: Xamarin.AndroidX.Print => 0x3246f6cd => 210
	i32 873119928, ; 93: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 94: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 95: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 96: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 97: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 928116545, ; 98: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 225
	i32 952186615, ; 99: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 967690846, ; 100: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 202
	i32 975236339, ; 101: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 102: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 103: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 104: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 105: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 106: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 107: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 108: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 214
	i32 1019214401, ; 109: System.Drawing => 0x3cbffa41 => 36
	i32 1031528504, ; 110: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 224
	i32 1035644815, ; 111: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 178
	i32 1036536393, ; 112: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 113: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 114: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 206
	i32 1082857460, ; 115: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 116: Xamarin.Kotlin.StdLib => 0x409e66d8 => 227
	i32 1098259244, ; 117: System => 0x41761b2c => 164
	i32 1170634674, ; 118: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 119: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 219
	i32 1204270330, ; 120: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 180
	i32 1208641965, ; 121: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 122: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1246548578, ; 123: Xamarin.AndroidX.Collection.Jvm.dll => 0x4a4cd262 => 184
	i32 1253011324, ; 124: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1264511973, ; 125: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 215
	i32 1264890200, ; 126: Xamarin.KotlinX.Coroutines.Core.dll => 0x4b64b158 => 229
	i32 1267360935, ; 127: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 218
	i32 1275534314, ; 128: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 228
	i32 1278448581, ; 129: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 177
	i32 1293217323, ; 130: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 195
	i32 1309188875, ; 131: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1324164729, ; 132: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 133: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 134: System.IO => 0x514d38cd => 57
	i32 1376866003, ; 135: Xamarin.AndroidX.SavedState => 0x52114ed3 => 214
	i32 1379779777, ; 136: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 137: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 138: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 188
	i32 1408764838, ; 139: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 140: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 141: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1434145427, ; 142: System.Runtime.Handles => 0x557b5293 => 104
	i32 1437822042, ; 143: Sdp.dll => 0x55b36c5a => 173
	i32 1439761251, ; 144: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 145: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 146: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1455877031, ; 147: Sdp => 0x56c6eba7 => 173
	i32 1457743152, ; 148: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 149: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461234159, ; 150: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 151: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 152: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 153: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 179
	i32 1479771757, ; 154: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 155: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 156: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1536373174, ; 157: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 158: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 159: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 160: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1565862583, ; 161: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 162: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 163: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 164: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 165: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 194
	i32 1592978981, ; 166: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 167: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 224
	i32 1601112923, ; 168: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 169: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 170: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 171: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 208
	i32 1622358360, ; 172: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 173: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 222
	i32 1635184631, ; 174: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 198
	i32 1636350590, ; 175: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 191
	i32 1639515021, ; 176: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 177: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 178: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 179: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 180: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 216
	i32 1658251792, ; 181: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 223
	i32 1670060433, ; 182: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 186
	i32 1675553242, ; 183: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 184: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 185: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 186: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 187: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 188: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1701541528, ; 189: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1726116996, ; 190: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 191: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 192: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 182
	i32 1744735666, ; 193: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 194: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 195: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 196: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 197: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 198: System.Reflection.Extensions => 0x6942234e => 93
	i32 1776026572, ; 199: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 200: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 201: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1788241197, ; 202: Xamarin.AndroidX.Fragment => 0x6a96652d => 199
	i32 1808609942, ; 203: Xamarin.AndroidX.Loader => 0x6bcd3296 => 208
	i32 1813058853, ; 204: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 227
	i32 1813201214, ; 205: Xamarin.Google.Android.Material => 0x6c13413e => 223
	i32 1818787751, ; 206: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 207: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 208: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1858542181, ; 209: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 210: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1879696579, ; 211: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 212: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 181
	i32 1888955245, ; 213: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 214: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 215: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 216: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 217: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 218: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 219: System.Resources.Writer => 0x74a1c5bb => 100
	i32 2011961780, ; 220: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 221: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 206
	i32 2045470958, ; 222: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 223: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 203
	i32 2060060697, ; 224: System.Windows.dll => 0x7aca0819 => 154
	i32 2070888862, ; 225: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 226: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 227: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 228: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 229: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 230: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 231: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2193016926, ; 232: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 233: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 230
	i32 2201231467, ; 234: System.Net.Http => 0x8334206b => 64
	i32 2217644978, ; 235: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 219
	i32 2222056684, ; 236: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 237: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 209
	i32 2252106437, ; 238: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 239: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 240: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2279755925, ; 241: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 212
	i32 2293034957, ; 242: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 243: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 244: System.Net.Mail => 0x88ffe49e => 66
	i32 2305521784, ; 245: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 246: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 175
	i32 2320631194, ; 247: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 248: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 249: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 250: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 251: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2378619854, ; 252: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 253: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2401565422, ; 254: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 255: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 197
	i32 2421380589, ; 256: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2435356389, ; 257: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 258: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 259: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 260: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 261: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 262: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 187
	i32 2471841756, ; 263: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 264: Java.Interop.dll => 0x93918882 => 168
	i32 2483903535, ; 265: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 266: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 267: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 268: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 269: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 205
	i32 2538310050, ; 270: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2562349572, ; 271: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 272: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581819634, ; 273: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 218
	i32 2585220780, ; 274: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 275: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 276: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2605712449, ; 277: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 230
	i32 2617129537, ; 278: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 279: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 280: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 191
	i32 2624644809, ; 281: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 196
	i32 2627185994, ; 282: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 283: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2663698177, ; 284: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 285: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 286: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2671474046, ; 287: Xamarin.KotlinX.Coroutines.Core => 0x9f3b757e => 229
	i32 2676780864, ; 288: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 289: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 290: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 291: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 216
	i32 2715334215, ; 292: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 293: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 294: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 295: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 296: Xamarin.AndroidX.Activity => 0xa2e0939b => 174
	i32 2735172069, ; 297: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 298: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 179
	i32 2740948882, ; 299: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 300: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2765824710, ; 301: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 302: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 226
	i32 2778768386, ; 303: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 221
	i32 2779977773, ; 304: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 213
	i32 2803228030, ; 305: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2810250172, ; 306: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 188
	i32 2819470561, ; 307: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 308: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 309: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 213
	i32 2824502124, ; 310: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2849599387, ; 311: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 312: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 221
	i32 2855708567, ; 313: Xamarin.AndroidX.Transition => 0xaa36a797 => 217
	i32 2861098320, ; 314: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2875220617, ; 315: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2887636118, ; 316: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 317: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 318: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 319: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 320: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 321: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 322: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 222
	i32 2919462931, ; 323: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 324: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 176
	i32 2936416060, ; 325: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 326: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 327: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 328: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 329: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 330: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 331: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 195
	i32 2996846495, ; 332: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 204
	i32 3016983068, ; 333: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 215
	i32 3023353419, ; 334: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 335: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 201
	i32 3038032645, ; 336: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 231
	i32 3059408633, ; 337: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 338: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 339: System.Threading.Tasks => 0xb755818f => 144
	i32 3090735792, ; 340: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 341: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 342: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 343: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 344: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 345: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 346: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 347: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3159123045, ; 348: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 349: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3192346100, ; 350: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 351: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 352: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 353: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 354: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 194
	i32 3220365878, ; 355: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 356: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 357: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 358: Xamarin.AndroidX.CardView => 0xc235e84d => 182
	i32 3265493905, ; 359: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 360: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 361: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 362: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 363: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 364: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 365: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 366: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3316684772, ; 367: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 368: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 192
	i32 3317144872, ; 369: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 370: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 181
	i32 3345895724, ; 371: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 211
	i32 3358260929, ; 372: System.Text.Json => 0xc82afec1 => 137
	i32 3362522851, ; 373: Xamarin.AndroidX.Core => 0xc86c06e3 => 189
	i32 3366347497, ; 374: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 375: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 212
	i32 3395150330, ; 376: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 377: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 378: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 193
	i32 3429136800, ; 379: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 380: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 381: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 196
	i32 3445260447, ; 382: System.Formats.Tar => 0xcd5a809f => 39
	i32 3471940407, ; 383: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 384: Mono.Android => 0xcf3163e6 => 171
	i32 3485117614, ; 385: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 386: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 387: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 185
	i32 3509114376, ; 388: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 389: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 390: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 391: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 392: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 393: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3598340787, ; 394: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 395: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 396: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 397: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 210
	i32 3633644679, ; 398: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 176
	i32 3638274909, ; 399: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 400: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 203
	i32 3645089577, ; 401: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3660523487, ; 402: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 403: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3684561358, ; 404: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 185
	i32 3700866549, ; 405: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 406: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 190
	i32 3716563718, ; 407: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 408: Xamarin.AndroidX.Annotation => 0xdda814c6 => 175
	i32 3732100267, ; 409: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 410: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 411: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 412: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3786282454, ; 413: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 183
	i32 3792276235, ; 414: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3802395368, ; 415: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 416: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 417: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 418: System.Numerics.dll => 0xe4436460 => 83
	i32 3844307129, ; 419: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 420: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 421: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 422: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 423: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 424: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 425: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 217
	i32 3888767677, ; 426: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 211
	i32 3896106733, ; 427: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 428: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 189
	i32 3901907137, ; 429: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3910130544, ; 430: Xamarin.AndroidX.Collection.Jvm => 0xe90fdb70 => 184
	i32 3920810846, ; 431: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 432: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 220
	i32 3928044579, ; 433: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 434: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3945713374, ; 435: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 436: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 437: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 178
	i32 3959773229, ; 438: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 204
	i32 4003436829, ; 439: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 440: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 177
	i32 4025784931, ; 441: System.Memory => 0xeff49a63 => 62
	i32 4054681211, ; 442: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 443: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 444: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4099507663, ; 445: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 446: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 447: Xamarin.AndroidX.Emoji2 => 0xf479582c => 197
	i32 4127667938, ; 448: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 449: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 450: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4151237749, ; 451: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 452: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 453: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 454: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 455: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 456: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 207
	i32 4185676441, ; 457: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 458: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 459: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 460: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 190
	i32 4260525087, ; 461: System.Buffers => 0xfdf2741f => 7
	i32 4274976490, ; 462: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959 ; 463: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 207
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [464 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 205, ; 3
	i32 225, ; 4
	i32 48, ; 5
	i32 80, ; 6
	i32 145, ; 7
	i32 30, ; 8
	i32 124, ; 9
	i32 102, ; 10
	i32 107, ; 11
	i32 139, ; 12
	i32 0, ; 13
	i32 77, ; 14
	i32 124, ; 15
	i32 13, ; 16
	i32 183, ; 17
	i32 132, ; 18
	i32 151, ; 19
	i32 18, ; 20
	i32 26, ; 21
	i32 201, ; 22
	i32 1, ; 23
	i32 59, ; 24
	i32 42, ; 25
	i32 0, ; 26
	i32 91, ; 27
	i32 186, ; 28
	i32 147, ; 29
	i32 200, ; 30
	i32 54, ; 31
	i32 69, ; 32
	i32 174, ; 33
	i32 83, ; 34
	i32 202, ; 35
	i32 131, ; 36
	i32 55, ; 37
	i32 149, ; 38
	i32 74, ; 39
	i32 145, ; 40
	i32 62, ; 41
	i32 146, ; 42
	i32 231, ; 43
	i32 165, ; 44
	i32 187, ; 45
	i32 12, ; 46
	i32 199, ; 47
	i32 125, ; 48
	i32 152, ; 49
	i32 113, ; 50
	i32 166, ; 51
	i32 164, ; 52
	i32 200, ; 53
	i32 209, ; 54
	i32 84, ; 55
	i32 150, ; 56
	i32 60, ; 57
	i32 51, ; 58
	i32 103, ; 59
	i32 114, ; 60
	i32 40, ; 61
	i32 120, ; 62
	i32 52, ; 63
	i32 44, ; 64
	i32 119, ; 65
	i32 192, ; 66
	i32 198, ; 67
	i32 81, ; 68
	i32 136, ; 69
	i32 220, ; 70
	i32 180, ; 71
	i32 8, ; 72
	i32 73, ; 73
	i32 155, ; 74
	i32 228, ; 75
	i32 154, ; 76
	i32 92, ; 77
	i32 226, ; 78
	i32 45, ; 79
	i32 109, ; 80
	i32 129, ; 81
	i32 25, ; 82
	i32 72, ; 83
	i32 55, ; 84
	i32 46, ; 85
	i32 193, ; 86
	i32 22, ; 87
	i32 86, ; 88
	i32 43, ; 89
	i32 160, ; 90
	i32 71, ; 91
	i32 210, ; 92
	i32 3, ; 93
	i32 42, ; 94
	i32 63, ; 95
	i32 16, ; 96
	i32 53, ; 97
	i32 225, ; 98
	i32 105, ; 99
	i32 202, ; 100
	i32 34, ; 101
	i32 158, ; 102
	i32 85, ; 103
	i32 32, ; 104
	i32 12, ; 105
	i32 51, ; 106
	i32 56, ; 107
	i32 214, ; 108
	i32 36, ; 109
	i32 224, ; 110
	i32 178, ; 111
	i32 35, ; 112
	i32 58, ; 113
	i32 206, ; 114
	i32 17, ; 115
	i32 227, ; 116
	i32 164, ; 117
	i32 153, ; 118
	i32 219, ; 119
	i32 180, ; 120
	i32 29, ; 121
	i32 52, ; 122
	i32 184, ; 123
	i32 5, ; 124
	i32 215, ; 125
	i32 229, ; 126
	i32 218, ; 127
	i32 228, ; 128
	i32 177, ; 129
	i32 195, ; 130
	i32 85, ; 131
	i32 61, ; 132
	i32 112, ; 133
	i32 57, ; 134
	i32 214, ; 135
	i32 99, ; 136
	i32 19, ; 137
	i32 188, ; 138
	i32 111, ; 139
	i32 101, ; 140
	i32 102, ; 141
	i32 104, ; 142
	i32 173, ; 143
	i32 71, ; 144
	i32 38, ; 145
	i32 32, ; 146
	i32 173, ; 147
	i32 103, ; 148
	i32 73, ; 149
	i32 9, ; 150
	i32 123, ; 151
	i32 46, ; 152
	i32 179, ; 153
	i32 9, ; 154
	i32 43, ; 155
	i32 4, ; 156
	i32 31, ; 157
	i32 138, ; 158
	i32 92, ; 159
	i32 93, ; 160
	i32 49, ; 161
	i32 141, ; 162
	i32 112, ; 163
	i32 140, ; 164
	i32 194, ; 165
	i32 115, ; 166
	i32 224, ; 167
	i32 157, ; 168
	i32 76, ; 169
	i32 79, ; 170
	i32 208, ; 171
	i32 37, ; 172
	i32 222, ; 173
	i32 198, ; 174
	i32 191, ; 175
	i32 64, ; 176
	i32 138, ; 177
	i32 15, ; 178
	i32 116, ; 179
	i32 216, ; 180
	i32 223, ; 181
	i32 186, ; 182
	i32 48, ; 183
	i32 70, ; 184
	i32 80, ; 185
	i32 126, ; 186
	i32 94, ; 187
	i32 121, ; 188
	i32 26, ; 189
	i32 97, ; 190
	i32 28, ; 191
	i32 182, ; 192
	i32 149, ; 193
	i32 169, ; 194
	i32 4, ; 195
	i32 98, ; 196
	i32 33, ; 197
	i32 93, ; 198
	i32 21, ; 199
	i32 41, ; 200
	i32 170, ; 201
	i32 199, ; 202
	i32 208, ; 203
	i32 227, ; 204
	i32 223, ; 205
	i32 2, ; 206
	i32 134, ; 207
	i32 111, ; 208
	i32 58, ; 209
	i32 95, ; 210
	i32 39, ; 211
	i32 181, ; 212
	i32 25, ; 213
	i32 94, ; 214
	i32 89, ; 215
	i32 99, ; 216
	i32 10, ; 217
	i32 87, ; 218
	i32 100, ; 219
	i32 7, ; 220
	i32 206, ; 221
	i32 88, ; 222
	i32 203, ; 223
	i32 154, ; 224
	i32 33, ; 225
	i32 116, ; 226
	i32 82, ; 227
	i32 20, ; 228
	i32 11, ; 229
	i32 162, ; 230
	i32 3, ; 231
	i32 84, ; 232
	i32 230, ; 233
	i32 64, ; 234
	i32 219, ; 235
	i32 143, ; 236
	i32 209, ; 237
	i32 157, ; 238
	i32 41, ; 239
	i32 117, ; 240
	i32 212, ; 241
	i32 131, ; 242
	i32 75, ; 243
	i32 66, ; 244
	i32 172, ; 245
	i32 175, ; 246
	i32 143, ; 247
	i32 106, ; 248
	i32 151, ; 249
	i32 70, ; 250
	i32 156, ; 251
	i32 121, ; 252
	i32 127, ; 253
	i32 152, ; 254
	i32 197, ; 255
	i32 141, ; 256
	i32 20, ; 257
	i32 14, ; 258
	i32 135, ; 259
	i32 75, ; 260
	i32 59, ; 261
	i32 187, ; 262
	i32 167, ; 263
	i32 168, ; 264
	i32 15, ; 265
	i32 74, ; 266
	i32 6, ; 267
	i32 23, ; 268
	i32 205, ; 269
	i32 91, ; 270
	i32 1, ; 271
	i32 136, ; 272
	i32 218, ; 273
	i32 134, ; 274
	i32 69, ; 275
	i32 146, ; 276
	i32 230, ; 277
	i32 88, ; 278
	i32 96, ; 279
	i32 191, ; 280
	i32 196, ; 281
	i32 31, ; 282
	i32 45, ; 283
	i32 109, ; 284
	i32 158, ; 285
	i32 35, ; 286
	i32 229, ; 287
	i32 22, ; 288
	i32 114, ; 289
	i32 57, ; 290
	i32 216, ; 291
	i32 144, ; 292
	i32 118, ; 293
	i32 120, ; 294
	i32 110, ; 295
	i32 174, ; 296
	i32 139, ; 297
	i32 179, ; 298
	i32 54, ; 299
	i32 105, ; 300
	i32 133, ; 301
	i32 226, ; 302
	i32 221, ; 303
	i32 213, ; 304
	i32 159, ; 305
	i32 188, ; 306
	i32 163, ; 307
	i32 132, ; 308
	i32 213, ; 309
	i32 161, ; 310
	i32 140, ; 311
	i32 221, ; 312
	i32 217, ; 313
	i32 169, ; 314
	i32 40, ; 315
	i32 81, ; 316
	i32 56, ; 317
	i32 37, ; 318
	i32 97, ; 319
	i32 166, ; 320
	i32 172, ; 321
	i32 222, ; 322
	i32 82, ; 323
	i32 176, ; 324
	i32 98, ; 325
	i32 30, ; 326
	i32 159, ; 327
	i32 18, ; 328
	i32 127, ; 329
	i32 119, ; 330
	i32 195, ; 331
	i32 204, ; 332
	i32 215, ; 333
	i32 165, ; 334
	i32 201, ; 335
	i32 231, ; 336
	i32 170, ; 337
	i32 16, ; 338
	i32 144, ; 339
	i32 125, ; 340
	i32 118, ; 341
	i32 38, ; 342
	i32 115, ; 343
	i32 47, ; 344
	i32 142, ; 345
	i32 117, ; 346
	i32 34, ; 347
	i32 95, ; 348
	i32 53, ; 349
	i32 129, ; 350
	i32 153, ; 351
	i32 24, ; 352
	i32 161, ; 353
	i32 194, ; 354
	i32 148, ; 355
	i32 104, ; 356
	i32 89, ; 357
	i32 182, ; 358
	i32 60, ; 359
	i32 142, ; 360
	i32 100, ; 361
	i32 5, ; 362
	i32 13, ; 363
	i32 122, ; 364
	i32 135, ; 365
	i32 28, ; 366
	i32 72, ; 367
	i32 192, ; 368
	i32 24, ; 369
	i32 181, ; 370
	i32 211, ; 371
	i32 137, ; 372
	i32 189, ; 373
	i32 168, ; 374
	i32 212, ; 375
	i32 101, ; 376
	i32 123, ; 377
	i32 193, ; 378
	i32 163, ; 379
	i32 167, ; 380
	i32 196, ; 381
	i32 39, ; 382
	i32 17, ; 383
	i32 171, ; 384
	i32 137, ; 385
	i32 150, ; 386
	i32 185, ; 387
	i32 155, ; 388
	i32 130, ; 389
	i32 19, ; 390
	i32 65, ; 391
	i32 147, ; 392
	i32 47, ; 393
	i32 79, ; 394
	i32 61, ; 395
	i32 106, ; 396
	i32 210, ; 397
	i32 176, ; 398
	i32 49, ; 399
	i32 203, ; 400
	i32 14, ; 401
	i32 68, ; 402
	i32 171, ; 403
	i32 185, ; 404
	i32 78, ; 405
	i32 190, ; 406
	i32 108, ; 407
	i32 175, ; 408
	i32 67, ; 409
	i32 63, ; 410
	i32 27, ; 411
	i32 160, ; 412
	i32 183, ; 413
	i32 10, ; 414
	i32 11, ; 415
	i32 78, ; 416
	i32 126, ; 417
	i32 83, ; 418
	i32 66, ; 419
	i32 107, ; 420
	i32 65, ; 421
	i32 128, ; 422
	i32 122, ; 423
	i32 77, ; 424
	i32 217, ; 425
	i32 211, ; 426
	i32 8, ; 427
	i32 189, ; 428
	i32 2, ; 429
	i32 184, ; 430
	i32 44, ; 431
	i32 220, ; 432
	i32 156, ; 433
	i32 128, ; 434
	i32 23, ; 435
	i32 133, ; 436
	i32 178, ; 437
	i32 204, ; 438
	i32 29, ; 439
	i32 177, ; 440
	i32 62, ; 441
	i32 90, ; 442
	i32 87, ; 443
	i32 148, ; 444
	i32 36, ; 445
	i32 86, ; 446
	i32 197, ; 447
	i32 50, ; 448
	i32 6, ; 449
	i32 90, ; 450
	i32 21, ; 451
	i32 162, ; 452
	i32 96, ; 453
	i32 50, ; 454
	i32 113, ; 455
	i32 207, ; 456
	i32 130, ; 457
	i32 76, ; 458
	i32 27, ; 459
	i32 190, ; 460
	i32 7, ; 461
	i32 110, ; 462
	i32 207 ; 463
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

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
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 0d97e20b84d8e87c3502469ee395805907905fe3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
