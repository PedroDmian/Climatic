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

@assembly_image_cache = dso_local local_unnamed_addr global [245 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [484 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 215
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 235
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39109920, ; 6: Newtonsoft.Json.dll => 0x254c520 => 180
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 8: System.Threading.Thread => 0x28aa24d => 143
	i32 66541672, ; 9: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 68219467, ; 10: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 82292897, ; 11: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 117431740, ; 12: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 122350210, ; 13: System.Threading.Channels.dll => 0x74aea82 => 137
	i32 130860927, ; 14: Climatic.dll => 0x7ccc77f => 0
	i32 142721839, ; 15: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 16: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 17: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 18: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 193
	i32 176265551, ; 19: System.ServiceProcess => 0xa81994f => 132
	i32 184328833, ; 20: System.ValueTuple.dll => 0xafca281 => 149
	i32 205061960, ; 21: System.ComponentModel => 0xc38ff48 => 18
	i32 220171995, ; 22: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 23: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 211
	i32 230752869, ; 24: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 25: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 26: System.Globalization => 0xdd133ce => 42
	i32 246213220, ; 27: Climatic => 0xeacea64 => 0
	i32 246610117, ; 28: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 29: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 196
	i32 276479776, ; 30: System.Threading.Timer.dll => 0x107abf20 => 145
	i32 280482487, ; 31: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 210
	i32 291076382, ; 32: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 33: System.Net.Ping.dll => 0x11d123fd => 69
	i32 318968648, ; 34: Xamarin.AndroidX.Activity.dll => 0x13031348 => 184
	i32 321597661, ; 35: System.Numerics => 0x132b30dd => 83
	i32 342366114, ; 36: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 212
	i32 360082299, ; 37: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 38: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 39: System.Transactions.Local => 0x1658bf94 => 147
	i32 375677976, ; 40: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 41: System.Threading.Thread.dll => 0x16a510e1 => 143
	i32 385762202, ; 42: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 43: System.Threading.ThreadPool.dll => 0x1766c1f7 => 144
	i32 395744057, ; 44: _Microsoft.Android.Resource.Designer => 0x17969339 => 241
	i32 403441872, ; 45: WindowsBase => 0x180c08d0 => 163
	i32 441335492, ; 46: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 197
	i32 442565967, ; 47: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 48: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 209
	i32 451504562, ; 49: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 50: System.Web.HttpUtility.dll => 0x1b317bfd => 150
	i32 459347974, ; 51: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 52: mscorlib => 0x1bc4415d => 164
	i32 469710990, ; 53: System.dll => 0x1bff388e => 162
	i32 476646585, ; 54: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 210
	i32 486930444, ; 55: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 219
	i32 498788369, ; 56: System.ObjectModel => 0x1dbae811 => 84
	i32 513247710, ; 57: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 179
	i32 526420162, ; 58: System.Transactions.dll => 0x1f6088c2 => 148
	i32 530272170, ; 59: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 540030774, ; 60: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 61: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 62: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 63: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 577335427, ; 64: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 601371474, ; 65: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 66: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 67: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 68: Xamarin.AndroidX.CustomView => 0x2568904f => 202
	i32 639843206, ; 69: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 208
	i32 643868501, ; 70: System.Net => 0x2660a755 => 81
	i32 662205335, ; 71: System.Text.Encodings.Web.dll => 0x27787397 => 182
	i32 663517072, ; 72: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 230
	i32 666292255, ; 73: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 190
	i32 672442732, ; 74: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 75: System.Net.Security => 0x28bdabca => 73
	i32 690569205, ; 76: System.Xml.Linq.dll => 0x29293ff5 => 153
	i32 691348768, ; 77: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 238
	i32 693804605, ; 78: System.Windows => 0x295a9e3d => 152
	i32 699345723, ; 79: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 80: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 236
	i32 700358131, ; 81: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 722857257, ; 82: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 83: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 84: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 759454413, ; 85: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 86: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 87: System.IO.Compression => 0x2e394f87 => 46
	i32 790371945, ; 88: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 203
	i32 804715423, ; 89: System.Data.Common => 0x2ff6fb9f => 22
	i32 823281589, ; 90: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 91: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 92: System.Xml.XPath.dll => 0x31a103c6 => 158
	i32 834051424, ; 93: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 94: Xamarin.AndroidX.Print => 0x3246f6cd => 220
	i32 873119928, ; 95: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 96: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 97: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 98: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 99: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 928116545, ; 100: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 235
	i32 952186615, ; 101: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 955402788, ; 102: Newtonsoft.Json => 0x38f24a24 => 180
	i32 967690846, ; 103: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 212
	i32 975236339, ; 104: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 105: System.Xml.XDocument => 0x3a2aaa1d => 156
	i32 986514023, ; 106: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 107: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 108: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 109: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 999186168, ; 110: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 178
	i32 1001831731, ; 111: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 112: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 224
	i32 1019214401, ; 113: System.Drawing => 0x3cbffa41 => 36
	i32 1031528504, ; 114: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 234
	i32 1035644815, ; 115: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 188
	i32 1036536393, ; 116: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 117: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 118: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 216
	i32 1082857460, ; 119: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 120: Xamarin.Kotlin.StdLib => 0x409e66d8 => 237
	i32 1098259244, ; 121: System => 0x41761b2c => 162
	i32 1106973742, ; 122: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 174
	i32 1170634674, ; 123: System.Web.dll => 0x45c677b2 => 151
	i32 1173126369, ; 124: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 176
	i32 1175144683, ; 125: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 229
	i32 1204270330, ; 126: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 190
	i32 1208641965, ; 127: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 128: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1246548578, ; 129: Xamarin.AndroidX.Collection.Jvm.dll => 0x4a4cd262 => 194
	i32 1253011324, ; 130: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1264511973, ; 131: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 225
	i32 1264890200, ; 132: Xamarin.KotlinX.Coroutines.Core.dll => 0x4b64b158 => 239
	i32 1267360935, ; 133: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 228
	i32 1275534314, ; 134: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 238
	i32 1278448581, ; 135: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 187
	i32 1293217323, ; 136: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 205
	i32 1309188875, ; 137: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1324164729, ; 138: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 139: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 140: System.IO => 0x514d38cd => 57
	i32 1376866003, ; 141: Xamarin.AndroidX.SavedState => 0x52114ed3 => 224
	i32 1379779777, ; 142: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 143: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 144: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 198
	i32 1408764838, ; 145: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 146: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 147: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1434145427, ; 148: System.Runtime.Handles => 0x557b5293 => 104
	i32 1437822042, ; 149: Sdp.dll => 0x55b36c5a => 171
	i32 1439761251, ; 150: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 151: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 152: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1455877031, ; 153: Sdp => 0x56c6eba7 => 171
	i32 1457743152, ; 154: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 155: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461234159, ; 156: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 157: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 158: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 159: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 189
	i32 1470490898, ; 160: Microsoft.Extensions.Primitives => 0x57a5e912 => 179
	i32 1479771757, ; 161: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 162: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 163: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1521091094, ; 164: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 178
	i32 1536373174, ; 165: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 166: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 136
	i32 1543355203, ; 167: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 168: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1565862583, ; 169: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 170: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 139
	i32 1573704789, ; 171: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 172: System.Threading.Overlapped => 0x5e2d7514 => 138
	i32 1582372066, ; 173: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 204
	i32 1592978981, ; 174: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 175: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 234
	i32 1601112923, ; 176: System.Xml.Serialization => 0x5f6f0b5b => 155
	i32 1604827217, ; 177: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 178: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 179: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 218
	i32 1622358360, ; 180: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 181: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 232
	i32 1632842087, ; 182: Microsoft.Extensions.Configuration.Json => 0x61533167 => 175
	i32 1635184631, ; 183: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 208
	i32 1636350590, ; 184: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 201
	i32 1639515021, ; 185: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 186: System.Text.RegularExpressions => 0x61c036ca => 136
	i32 1641389582, ; 187: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 188: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 189: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 226
	i32 1658251792, ; 190: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 233
	i32 1670060433, ; 191: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 196
	i32 1675553242, ; 192: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 193: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 194: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 195: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 196: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 197: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1701541528, ; 198: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1726116996, ; 199: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 200: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 201: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 192
	i32 1744735666, ; 202: System.Transactions.Local.dll => 0x67fe8db2 => 147
	i32 1746115085, ; 203: System.IO.Pipelines.dll => 0x68139a0d => 181
	i32 1746316138, ; 204: Mono.Android.Export => 0x6816ab6a => 167
	i32 1750313021, ; 205: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 206: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 207: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 208: System.Reflection.Extensions => 0x6942234e => 93
	i32 1776026572, ; 209: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 210: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 211: Mono.Android.Runtime.dll => 0x6a216153 => 168
	i32 1788241197, ; 212: Xamarin.AndroidX.Fragment => 0x6a96652d => 209
	i32 1808609942, ; 213: Xamarin.AndroidX.Loader => 0x6bcd3296 => 218
	i32 1813058853, ; 214: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 237
	i32 1813201214, ; 215: Xamarin.Google.Android.Material => 0x6c13413e => 233
	i32 1818787751, ; 216: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 217: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 218: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1858542181, ; 219: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 220: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1879696579, ; 221: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 222: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 191
	i32 1888955245, ; 223: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 224: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 225: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 226: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 227: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 228: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 229: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1968388702, ; 230: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 172
	i32 2011961780, ; 231: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 232: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 216
	i32 2045470958, ; 233: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 234: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 213
	i32 2060060697, ; 235: System.Windows.dll => 0x7aca0819 => 152
	i32 2070888862, ; 236: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2072397586, ; 237: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 177
	i32 2079903147, ; 238: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 239: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 240: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 241: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 242: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 160
	i32 2146852085, ; 243: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2193016926, ; 244: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 245: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 240
	i32 2201231467, ; 246: System.Net.Http => 0x8334206b => 64
	i32 2217644978, ; 247: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 229
	i32 2222056684, ; 248: System.Threading.Tasks.Parallel => 0x8471e4ec => 141
	i32 2244775296, ; 249: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 219
	i32 2252106437, ; 250: System.Xml.Serialization.dll => 0x863c6ac5 => 155
	i32 2256313426, ; 251: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 252: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 253: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 173
	i32 2279755925, ; 254: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 222
	i32 2293034957, ; 255: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 256: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 257: System.Net.Mail => 0x88ffe49e => 66
	i32 2305521784, ; 258: System.Private.CoreLib.dll => 0x896b7878 => 170
	i32 2315684594, ; 259: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 185
	i32 2320631194, ; 260: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 141
	i32 2340441535, ; 261: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 262: System.ValueTuple => 0x8bbaa2cd => 149
	i32 2353062107, ; 263: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 264: System.Xml.ReaderWriter.dll => 0x8d24e767 => 154
	i32 2371007202, ; 265: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 172
	i32 2378619854, ; 266: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 267: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2401565422, ; 268: System.Web.HttpUtility => 0x8f24faee => 150
	i32 2403452196, ; 269: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 207
	i32 2421380589, ; 270: System.Threading.Tasks.Dataflow => 0x905355ed => 139
	i32 2435356389, ; 271: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 272: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 273: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 274: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 275: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 276: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 197
	i32 2471841756, ; 277: netstandard.dll => 0x93554fdc => 165
	i32 2475788418, ; 278: Java.Interop.dll => 0x93918882 => 166
	i32 2483903535, ; 279: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 280: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 281: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 282: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 283: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 215
	i32 2538310050, ; 284: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2562349572, ; 285: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 286: System.Text.Encodings.Web => 0x9930ee42 => 182
	i32 2581819634, ; 287: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 228
	i32 2585220780, ; 288: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 289: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 290: System.Threading.ThreadPool => 0x9a5a3337 => 144
	i32 2592341985, ; 291: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 176
	i32 2605712449, ; 292: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 240
	i32 2617129537, ; 293: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 294: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 295: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 201
	i32 2624644809, ; 296: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 206
	i32 2627185994, ; 297: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 298: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2663698177, ; 299: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 300: System.Xml.XDocument.dll => 0x9ecf752a => 156
	i32 2665622720, ; 301: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2671474046, ; 302: Xamarin.KotlinX.Coroutines.Core => 0x9f3b757e => 239
	i32 2676780864, ; 303: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 304: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 305: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 306: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 226
	i32 2715334215, ; 307: System.Threading.Tasks.dll => 0xa1d8b647 => 142
	i32 2717744543, ; 308: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 309: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 310: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 311: Xamarin.AndroidX.Activity => 0xa2e0939b => 184
	i32 2735172069, ; 312: System.Threading.Channels => 0xa30769e5 => 137
	i32 2737747696, ; 313: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 189
	i32 2740948882, ; 314: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 315: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2765824710, ; 316: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 317: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 236
	i32 2778768386, ; 318: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 231
	i32 2779977773, ; 319: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 223
	i32 2803228030, ; 320: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 157
	i32 2810250172, ; 321: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 198
	i32 2819470561, ; 322: System.Xml.dll => 0xa80db4e1 => 161
	i32 2821205001, ; 323: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 324: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 223
	i32 2824502124, ; 325: System.Xml.XmlDocument => 0xa85a7b6c => 159
	i32 2849599387, ; 326: System.Threading.Overlapped.dll => 0xa9d96f9b => 138
	i32 2853208004, ; 327: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 231
	i32 2855708567, ; 328: Xamarin.AndroidX.Transition => 0xaa36a797 => 227
	i32 2861098320, ; 329: Mono.Android.Export.dll => 0xaa88e550 => 167
	i32 2875220617, ; 330: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2887636118, ; 331: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 332: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 333: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 334: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 335: mscorlib.dll => 0xad2a79b6 => 164
	i32 2909740682, ; 336: System.Private.CoreLib => 0xad6f1e8a => 170
	i32 2911054922, ; 337: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 177
	i32 2916838712, ; 338: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 232
	i32 2919462931, ; 339: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 340: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 186
	i32 2936416060, ; 341: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 342: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 343: System.Xml.XPath.XDocument => 0xaf624531 => 157
	i32 2959614098, ; 344: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 345: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 346: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 347: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 205
	i32 2996846495, ; 348: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 214
	i32 3016983068, ; 349: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 225
	i32 3023353419, ; 350: WindowsBase.dll => 0xb434b64b => 163
	i32 3024354802, ; 351: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 211
	i32 3038032645, ; 352: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 241
	i32 3059408633, ; 353: Mono.Android.Runtime => 0xb65adef9 => 168
	i32 3059793426, ; 354: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 355: System.Threading.Tasks => 0xb755818f => 142
	i32 3090735792, ; 356: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 357: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 358: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 359: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 360: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 361: System.Threading.Tasks.Extensions => 0xba4127cb => 140
	i32 3132293585, ; 362: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 363: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3159123045, ; 364: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 365: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3192346100, ; 366: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 367: System.Web => 0xbe592c0c => 151
	i32 3204380047, ; 368: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 369: System.Xml.XmlDocument.dll => 0xbf506931 => 159
	i32 3211777861, ; 370: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 204
	i32 3220365878, ; 371: System.Threading => 0xbff2e236 => 146
	i32 3226221578, ; 372: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 373: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 374: Xamarin.AndroidX.CardView => 0xc235e84d => 192
	i32 3265493905, ; 375: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 376: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 140
	i32 3277815716, ; 377: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 378: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 379: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 380: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 381: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 382: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3316684772, ; 383: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 384: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 202
	i32 3317144872, ; 385: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 386: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 191
	i32 3345895724, ; 387: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 221
	i32 3358260929, ; 388: System.Text.Json => 0xc82afec1 => 183
	i32 3362522851, ; 389: Xamarin.AndroidX.Core => 0xc86c06e3 => 199
	i32 3366347497, ; 390: Java.Interop => 0xc8a662e9 => 166
	i32 3374999561, ; 391: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 222
	i32 3395150330, ; 392: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 393: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 394: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 203
	i32 3429136800, ; 395: System.Xml => 0xcc6479a0 => 161
	i32 3430777524, ; 396: netstandard => 0xcc7d82b4 => 165
	i32 3441283291, ; 397: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 206
	i32 3445260447, ; 398: System.Formats.Tar => 0xcd5a809f => 39
	i32 3471940407, ; 399: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 400: Mono.Android => 0xcf3163e6 => 169
	i32 3485117614, ; 401: System.Text.Json.dll => 0xcfbaacae => 183
	i32 3486566296, ; 402: System.Transactions => 0xcfd0c798 => 148
	i32 3493954962, ; 403: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 195
	i32 3509114376, ; 404: System.Xml.Linq => 0xd128d608 => 153
	i32 3515174580, ; 405: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 406: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 407: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 408: System.Threading.Timer => 0xd432d20b => 145
	i32 3570554715, ; 409: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3598340787, ; 410: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 411: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 412: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 413: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 220
	i32 3633644679, ; 414: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 186
	i32 3638274909, ; 415: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 416: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 213
	i32 3645089577, ; 417: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 418: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 173
	i32 3660523487, ; 419: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 420: Mono.Android.dll => 0xdae8aa5e => 169
	i32 3684561358, ; 421: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 195
	i32 3700866549, ; 422: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 423: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 200
	i32 3716563718, ; 424: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 425: Xamarin.AndroidX.Annotation => 0xdda814c6 => 185
	i32 3722202641, ; 426: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 175
	i32 3732100267, ; 427: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 428: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 429: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 430: System.Xml.XPath => 0xdf9a7f42 => 158
	i32 3758424670, ; 431: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 174
	i32 3786282454, ; 432: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 193
	i32 3792276235, ; 433: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3802395368, ; 434: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 435: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 436: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 437: System.Numerics.dll => 0xe4436460 => 83
	i32 3844307129, ; 438: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 439: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 440: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 441: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 442: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 443: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 444: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 227
	i32 3888767677, ; 445: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 221
	i32 3896106733, ; 446: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 447: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 199
	i32 3901907137, ; 448: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3910130544, ; 449: Xamarin.AndroidX.Collection.Jvm => 0xe90fdb70 => 194
	i32 3920810846, ; 450: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 451: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 230
	i32 3928044579, ; 452: System.Xml.ReaderWriter => 0xea213423 => 154
	i32 3930554604, ; 453: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3945713374, ; 454: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 455: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 456: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 188
	i32 3959773229, ; 457: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 214
	i32 4003436829, ; 458: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 459: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 187
	i32 4023392905, ; 460: System.IO.Pipelines => 0xefd01a89 => 181
	i32 4025784931, ; 461: System.Memory => 0xeff49a63 => 62
	i32 4054681211, ; 462: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 463: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 464: System.Threading.dll => 0xf2ce3c98 => 146
	i32 4099507663, ; 465: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 466: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 467: Xamarin.AndroidX.Emoji2 => 0xf479582c => 207
	i32 4127667938, ; 468: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 469: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 470: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4151237749, ; 471: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 472: System.Xml.XmlSerializer => 0xf7e95c85 => 160
	i32 4161255271, ; 473: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 474: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 475: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 476: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 217
	i32 4185676441, ; 477: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 478: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 479: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 480: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 200
	i32 4260525087, ; 481: System.Buffers => 0xfdf2741f => 7
	i32 4274976490, ; 482: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959 ; 483: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 217
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [484 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 215, ; 3
	i32 235, ; 4
	i32 48, ; 5
	i32 180, ; 6
	i32 80, ; 7
	i32 143, ; 8
	i32 30, ; 9
	i32 124, ; 10
	i32 102, ; 11
	i32 107, ; 12
	i32 137, ; 13
	i32 0, ; 14
	i32 77, ; 15
	i32 124, ; 16
	i32 13, ; 17
	i32 193, ; 18
	i32 132, ; 19
	i32 149, ; 20
	i32 18, ; 21
	i32 26, ; 22
	i32 211, ; 23
	i32 1, ; 24
	i32 59, ; 25
	i32 42, ; 26
	i32 0, ; 27
	i32 91, ; 28
	i32 196, ; 29
	i32 145, ; 30
	i32 210, ; 31
	i32 54, ; 32
	i32 69, ; 33
	i32 184, ; 34
	i32 83, ; 35
	i32 212, ; 36
	i32 131, ; 37
	i32 55, ; 38
	i32 147, ; 39
	i32 74, ; 40
	i32 143, ; 41
	i32 62, ; 42
	i32 144, ; 43
	i32 241, ; 44
	i32 163, ; 45
	i32 197, ; 46
	i32 12, ; 47
	i32 209, ; 48
	i32 125, ; 49
	i32 150, ; 50
	i32 113, ; 51
	i32 164, ; 52
	i32 162, ; 53
	i32 210, ; 54
	i32 219, ; 55
	i32 84, ; 56
	i32 179, ; 57
	i32 148, ; 58
	i32 60, ; 59
	i32 51, ; 60
	i32 103, ; 61
	i32 114, ; 62
	i32 40, ; 63
	i32 120, ; 64
	i32 52, ; 65
	i32 44, ; 66
	i32 119, ; 67
	i32 202, ; 68
	i32 208, ; 69
	i32 81, ; 70
	i32 182, ; 71
	i32 230, ; 72
	i32 190, ; 73
	i32 8, ; 74
	i32 73, ; 75
	i32 153, ; 76
	i32 238, ; 77
	i32 152, ; 78
	i32 92, ; 79
	i32 236, ; 80
	i32 45, ; 81
	i32 109, ; 82
	i32 129, ; 83
	i32 25, ; 84
	i32 72, ; 85
	i32 55, ; 86
	i32 46, ; 87
	i32 203, ; 88
	i32 22, ; 89
	i32 86, ; 90
	i32 43, ; 91
	i32 158, ; 92
	i32 71, ; 93
	i32 220, ; 94
	i32 3, ; 95
	i32 42, ; 96
	i32 63, ; 97
	i32 16, ; 98
	i32 53, ; 99
	i32 235, ; 100
	i32 105, ; 101
	i32 180, ; 102
	i32 212, ; 103
	i32 34, ; 104
	i32 156, ; 105
	i32 85, ; 106
	i32 32, ; 107
	i32 12, ; 108
	i32 51, ; 109
	i32 178, ; 110
	i32 56, ; 111
	i32 224, ; 112
	i32 36, ; 113
	i32 234, ; 114
	i32 188, ; 115
	i32 35, ; 116
	i32 58, ; 117
	i32 216, ; 118
	i32 17, ; 119
	i32 237, ; 120
	i32 162, ; 121
	i32 174, ; 122
	i32 151, ; 123
	i32 176, ; 124
	i32 229, ; 125
	i32 190, ; 126
	i32 29, ; 127
	i32 52, ; 128
	i32 194, ; 129
	i32 5, ; 130
	i32 225, ; 131
	i32 239, ; 132
	i32 228, ; 133
	i32 238, ; 134
	i32 187, ; 135
	i32 205, ; 136
	i32 85, ; 137
	i32 61, ; 138
	i32 112, ; 139
	i32 57, ; 140
	i32 224, ; 141
	i32 99, ; 142
	i32 19, ; 143
	i32 198, ; 144
	i32 111, ; 145
	i32 101, ; 146
	i32 102, ; 147
	i32 104, ; 148
	i32 171, ; 149
	i32 71, ; 150
	i32 38, ; 151
	i32 32, ; 152
	i32 171, ; 153
	i32 103, ; 154
	i32 73, ; 155
	i32 9, ; 156
	i32 123, ; 157
	i32 46, ; 158
	i32 189, ; 159
	i32 179, ; 160
	i32 9, ; 161
	i32 43, ; 162
	i32 4, ; 163
	i32 178, ; 164
	i32 31, ; 165
	i32 136, ; 166
	i32 92, ; 167
	i32 93, ; 168
	i32 49, ; 169
	i32 139, ; 170
	i32 112, ; 171
	i32 138, ; 172
	i32 204, ; 173
	i32 115, ; 174
	i32 234, ; 175
	i32 155, ; 176
	i32 76, ; 177
	i32 79, ; 178
	i32 218, ; 179
	i32 37, ; 180
	i32 232, ; 181
	i32 175, ; 182
	i32 208, ; 183
	i32 201, ; 184
	i32 64, ; 185
	i32 136, ; 186
	i32 15, ; 187
	i32 116, ; 188
	i32 226, ; 189
	i32 233, ; 190
	i32 196, ; 191
	i32 48, ; 192
	i32 70, ; 193
	i32 80, ; 194
	i32 126, ; 195
	i32 94, ; 196
	i32 121, ; 197
	i32 26, ; 198
	i32 97, ; 199
	i32 28, ; 200
	i32 192, ; 201
	i32 147, ; 202
	i32 181, ; 203
	i32 167, ; 204
	i32 4, ; 205
	i32 98, ; 206
	i32 33, ; 207
	i32 93, ; 208
	i32 21, ; 209
	i32 41, ; 210
	i32 168, ; 211
	i32 209, ; 212
	i32 218, ; 213
	i32 237, ; 214
	i32 233, ; 215
	i32 2, ; 216
	i32 134, ; 217
	i32 111, ; 218
	i32 58, ; 219
	i32 95, ; 220
	i32 39, ; 221
	i32 191, ; 222
	i32 25, ; 223
	i32 94, ; 224
	i32 89, ; 225
	i32 99, ; 226
	i32 10, ; 227
	i32 87, ; 228
	i32 100, ; 229
	i32 172, ; 230
	i32 7, ; 231
	i32 216, ; 232
	i32 88, ; 233
	i32 213, ; 234
	i32 152, ; 235
	i32 33, ; 236
	i32 177, ; 237
	i32 116, ; 238
	i32 82, ; 239
	i32 20, ; 240
	i32 11, ; 241
	i32 160, ; 242
	i32 3, ; 243
	i32 84, ; 244
	i32 240, ; 245
	i32 64, ; 246
	i32 229, ; 247
	i32 141, ; 248
	i32 219, ; 249
	i32 155, ; 250
	i32 41, ; 251
	i32 117, ; 252
	i32 173, ; 253
	i32 222, ; 254
	i32 131, ; 255
	i32 75, ; 256
	i32 66, ; 257
	i32 170, ; 258
	i32 185, ; 259
	i32 141, ; 260
	i32 106, ; 261
	i32 149, ; 262
	i32 70, ; 263
	i32 154, ; 264
	i32 172, ; 265
	i32 121, ; 266
	i32 127, ; 267
	i32 150, ; 268
	i32 207, ; 269
	i32 139, ; 270
	i32 20, ; 271
	i32 14, ; 272
	i32 135, ; 273
	i32 75, ; 274
	i32 59, ; 275
	i32 197, ; 276
	i32 165, ; 277
	i32 166, ; 278
	i32 15, ; 279
	i32 74, ; 280
	i32 6, ; 281
	i32 23, ; 282
	i32 215, ; 283
	i32 91, ; 284
	i32 1, ; 285
	i32 182, ; 286
	i32 228, ; 287
	i32 134, ; 288
	i32 69, ; 289
	i32 144, ; 290
	i32 176, ; 291
	i32 240, ; 292
	i32 88, ; 293
	i32 96, ; 294
	i32 201, ; 295
	i32 206, ; 296
	i32 31, ; 297
	i32 45, ; 298
	i32 109, ; 299
	i32 156, ; 300
	i32 35, ; 301
	i32 239, ; 302
	i32 22, ; 303
	i32 114, ; 304
	i32 57, ; 305
	i32 226, ; 306
	i32 142, ; 307
	i32 118, ; 308
	i32 120, ; 309
	i32 110, ; 310
	i32 184, ; 311
	i32 137, ; 312
	i32 189, ; 313
	i32 54, ; 314
	i32 105, ; 315
	i32 133, ; 316
	i32 236, ; 317
	i32 231, ; 318
	i32 223, ; 319
	i32 157, ; 320
	i32 198, ; 321
	i32 161, ; 322
	i32 132, ; 323
	i32 223, ; 324
	i32 159, ; 325
	i32 138, ; 326
	i32 231, ; 327
	i32 227, ; 328
	i32 167, ; 329
	i32 40, ; 330
	i32 81, ; 331
	i32 56, ; 332
	i32 37, ; 333
	i32 97, ; 334
	i32 164, ; 335
	i32 170, ; 336
	i32 177, ; 337
	i32 232, ; 338
	i32 82, ; 339
	i32 186, ; 340
	i32 98, ; 341
	i32 30, ; 342
	i32 157, ; 343
	i32 18, ; 344
	i32 127, ; 345
	i32 119, ; 346
	i32 205, ; 347
	i32 214, ; 348
	i32 225, ; 349
	i32 163, ; 350
	i32 211, ; 351
	i32 241, ; 352
	i32 168, ; 353
	i32 16, ; 354
	i32 142, ; 355
	i32 125, ; 356
	i32 118, ; 357
	i32 38, ; 358
	i32 115, ; 359
	i32 47, ; 360
	i32 140, ; 361
	i32 117, ; 362
	i32 34, ; 363
	i32 95, ; 364
	i32 53, ; 365
	i32 129, ; 366
	i32 151, ; 367
	i32 24, ; 368
	i32 159, ; 369
	i32 204, ; 370
	i32 146, ; 371
	i32 104, ; 372
	i32 89, ; 373
	i32 192, ; 374
	i32 60, ; 375
	i32 140, ; 376
	i32 100, ; 377
	i32 5, ; 378
	i32 13, ; 379
	i32 122, ; 380
	i32 135, ; 381
	i32 28, ; 382
	i32 72, ; 383
	i32 202, ; 384
	i32 24, ; 385
	i32 191, ; 386
	i32 221, ; 387
	i32 183, ; 388
	i32 199, ; 389
	i32 166, ; 390
	i32 222, ; 391
	i32 101, ; 392
	i32 123, ; 393
	i32 203, ; 394
	i32 161, ; 395
	i32 165, ; 396
	i32 206, ; 397
	i32 39, ; 398
	i32 17, ; 399
	i32 169, ; 400
	i32 183, ; 401
	i32 148, ; 402
	i32 195, ; 403
	i32 153, ; 404
	i32 130, ; 405
	i32 19, ; 406
	i32 65, ; 407
	i32 145, ; 408
	i32 47, ; 409
	i32 79, ; 410
	i32 61, ; 411
	i32 106, ; 412
	i32 220, ; 413
	i32 186, ; 414
	i32 49, ; 415
	i32 213, ; 416
	i32 14, ; 417
	i32 173, ; 418
	i32 68, ; 419
	i32 169, ; 420
	i32 195, ; 421
	i32 78, ; 422
	i32 200, ; 423
	i32 108, ; 424
	i32 185, ; 425
	i32 175, ; 426
	i32 67, ; 427
	i32 63, ; 428
	i32 27, ; 429
	i32 158, ; 430
	i32 174, ; 431
	i32 193, ; 432
	i32 10, ; 433
	i32 11, ; 434
	i32 78, ; 435
	i32 126, ; 436
	i32 83, ; 437
	i32 66, ; 438
	i32 107, ; 439
	i32 65, ; 440
	i32 128, ; 441
	i32 122, ; 442
	i32 77, ; 443
	i32 227, ; 444
	i32 221, ; 445
	i32 8, ; 446
	i32 199, ; 447
	i32 2, ; 448
	i32 194, ; 449
	i32 44, ; 450
	i32 230, ; 451
	i32 154, ; 452
	i32 128, ; 453
	i32 23, ; 454
	i32 133, ; 455
	i32 188, ; 456
	i32 214, ; 457
	i32 29, ; 458
	i32 187, ; 459
	i32 181, ; 460
	i32 62, ; 461
	i32 90, ; 462
	i32 87, ; 463
	i32 146, ; 464
	i32 36, ; 465
	i32 86, ; 466
	i32 207, ; 467
	i32 50, ; 468
	i32 6, ; 469
	i32 90, ; 470
	i32 21, ; 471
	i32 160, ; 472
	i32 96, ; 473
	i32 50, ; 474
	i32 113, ; 475
	i32 217, ; 476
	i32 130, ; 477
	i32 76, ; 478
	i32 27, ; 479
	i32 200, ; 480
	i32 7, ; 481
	i32 110, ; 482
	i32 217 ; 483
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
