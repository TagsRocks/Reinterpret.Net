.assembly extern mscorlib
{
  .publickeytoken = (7C EC 85 D7 BE A7 79 8E)
  .ver 2:0:5:0
}
.assembly UnsafeAs.Backport
{
	.hash algorithm 0x00008004
	.ver 1:0:0:0

	.custom instance void [mscorlib]System.Runtime.CompilerServices.InternalsVisibleToAttribute::.ctor(string) =
	{
		string( 'Reinterpret.Net' )
	}
}

.module UnsafeAs.Backport.dll

.imagebase           0x00400000
.file alignment      0x00000200
.stackreserve        0x00100000
.subsystem           0x0003       
.corflags            0x00020003  

.class private auto ansi abstract sealed beforefieldinit Reinterpret.Net.Unsafe
	extends [mscorlib]System.Object
{
	.method public hidebysig static !!T Read<T>(void* source) cil managed aggressiveinlining
  {
		.maxstack 1
		ldarg.0
		ldobj !!T
		ret
  } // end of method Unsafe::Read

  .method public hidebysig static !!T ReadUnaligned<T>(void* source) cil managed aggressiveinlining
  {
		.maxstack 1
		ldarg.0        
		unaligned. 0x1
		ldobj !!T
		ret
  } // end of method Unsafe::ReadUnaligned
  
  .method public hidebysig static !!T ReadUnaligned<T>(uint8& source) cil managed aggressiveinlining
  {
		.maxstack 1
		ldarg.0        
		unaligned. 0x1
		ldobj !!T
		ret
  } // end of method Unsafe::ReadUnaligned
  
  .method public hidebysig static void Write<T>(void* destination,
												 !!T 'value') cil managed aggressiveinlining
  {
		.maxstack 2
		ldarg.0
		ldarg.1
		stobj !!T
		ret
  } // end of method Unsafe::Write

  .method public hidebysig static void WriteUnaligned<T>(void* destination,
												 !!T 'value') cil managed aggressiveinlining
  {
		.maxstack 2
		ldarg.0
		ldarg.1
		unaligned. 0x01
		stobj !!T
		ret
  } // end of method Unsafe::WriteUnaligned

  .method public hidebysig static void WriteUnaligned<T>(uint8& destination,
												 !!T 'value') cil managed aggressiveinlining
  {
		.maxstack 2
		ldarg.0
		ldarg.1        
		unaligned. 0x01
		stobj !!T
		ret
  } // end of method Unsafe::WriteUnaligned

  .method public hidebysig static void Copy<T>(void* destination,
												!!T& source) cil managed aggressiveinlining
  {
		.maxstack 2
		ldarg.0
		ldarg.1
		ldobj !!T
		stobj !!T
		ret
  } // end of method Unsafe::Copy

  .method public hidebysig static void Copy<T>(!!T& destination,
												void* source) cil managed aggressiveinlining
  {
		.maxstack 2
		ldarg.0
		ldarg.1
		ldobj !!T
		stobj !!T
		ret
  } // end of method Unsafe::Copy

  .method public hidebysig static void* AsPointer<T>(!!T& 'value') cil managed aggressiveinlining
  {
		.maxstack 1
		ldarg.0
		conv.u
		ret
  } // end of method Unsafe::AsPointer

  .method public hidebysig static int32 SizeOf<T>() cil managed aggressiveinlining
  {
		.maxstack 1
		sizeof !!T
		ret
  } // end of method Unsafe::SizeOf

  .method public hidebysig static void CopyBlock(void* destination, void* source, uint32 byteCount) cil managed aggressiveinlining
  {
		.maxstack 3
		ldarg.0
		ldarg.1
		ldarg.2
		cpblk
		ret
  } // end of method Unsafe::CopyBlock

  .method public hidebysig static void CopyBlock(uint8& destination, uint8& source, uint32 byteCount) cil managed aggressiveinlining
  {
		.maxstack 3
		ldarg.0
		ldarg.1
		ldarg.2
		cpblk
		ret
  } // end of method Unsafe::CopyBlock

  .method public hidebysig static void CopyBlockUnaligned(void* destination, void* source, uint32 byteCount) cil managed aggressiveinlining
  {
		.maxstack 3
		ldarg.0
		ldarg.1
		ldarg.2
		unaligned. 0x1
		cpblk
		ret
  } // end of method Unsafe::CopyBlockUnaligned

  .method public hidebysig static void CopyBlockUnaligned(uint8& destination, uint8& source, uint32 byteCount) cil managed aggressiveinlining
  {
		.maxstack 3
		ldarg.0
		ldarg.1
		ldarg.2
		unaligned. 0x1
		cpblk
		ret
  } // end of method Unsafe::CopyBlockUnaligned

  .method public hidebysig static void InitBlock(void* startAddress, uint8 'value', uint32 byteCount) cil managed aggressiveinlining
  {
		.maxstack 3
		ldarg.0
		ldarg.1
		ldarg.2
		initblk
		ret
  } // end of method Unsafe::InitBlock

  .method public hidebysig static void InitBlock(uint8& startAddress, uint8 'value', uint32 byteCount) cil managed aggressiveinlining
  {
		.maxstack 3
		ldarg.0
		ldarg.1
		ldarg.2
		initblk
		ret
  } // end of method Unsafe::InitBlock

  .method public hidebysig static void InitBlockUnaligned(void* startAddress, uint8 'value', uint32 byteCount) cil managed aggressiveinlining
  {
		.maxstack 3
		ldarg.0
		ldarg.1
		ldarg.2
		unaligned. 0x1
		initblk
		ret
  } // end of method Unsafe::InitBlockUnaligned

  .method public hidebysig static void InitBlockUnaligned(uint8& startAddress, uint8 'value', uint32 byteCount) cil managed aggressiveinlining
  {
		.maxstack 3
		ldarg.0
		ldarg.1
		ldarg.2
		unaligned. 0x1
		initblk
		ret
  } // end of method Unsafe::InitBlockUnaligned

  .method public hidebysig static !!T As<class T>(object o) cil managed aggressiveinlining
  {
		.maxstack 1
		ldarg.0
		ret
  } // end of method Unsafe::As

  .method public hidebysig static !!T& AsRef<T>(void* source) cil managed aggressiveinlining
  {
// For .NET Core the roundtrip via a local is no longer needed see:
// https://github.com/dotnet/coreclr/issues/13341
// and
// https://github.com/dotnet/coreclr/pull/11218
#ifdef netcoreapp
		.maxstack 1
		ldarg.0
		ret
#else
		.locals (int32&)
		.maxstack 1
		ldarg.0
		// Roundtrip via a local to avoid type mismatch on return that the JIT inliner chokes on.
		stloc.0
		ldloc.0
		ret
#endif
  } // end of method Unsafe::AsRef

  .method public hidebysig static !!T& AsRef<T>(!!T& source) cil managed aggressiveinlining
  {
		.param [1]
		.maxstack 1
		ldarg.0
		ret
  } // end of method Unsafe::AsRef

  .method public hidebysig static !!TTo& As<TFrom, TTo>(!!TFrom& source) cil managed aggressiveinlining
  {
		.maxstack 1
		ldarg.0
		ret
  } // end of method Unsafe::As

  .method public hidebysig static !!T& Add<T>(!!T& source, int32 elementOffset) cil managed aggressiveinlining
  {
		.maxstack 3
		ldarg.0
		ldarg.1
		sizeof !!T
		conv.i
		mul
		add
		ret
  } // end of method Unsafe::Add

  .method public hidebysig static void* Add<T>(void* source, int32 elementOffset) cil managed aggressiveinlining
  {
		.maxstack 3
		ldarg.0
		ldarg.1
		sizeof !!T
		conv.i
		mul
		add
		ret
  } // end of method Unsafe::Add

  .method public hidebysig static !!T& Add<T>(!!T& source, native int elementOffset) cil managed aggressiveinlining
  {
		.maxstack 3
		ldarg.0
		ldarg.1
		sizeof !!T
		mul
		add
		ret
  } // end of method Unsafe::Add

  .method public hidebysig static !!T& AddByteOffset<T>(!!T& source, native int byteOffset) cil managed aggressiveinlining
  {
		.maxstack 2
		ldarg.0
		ldarg.1
		add
		ret
  } // end of method Unsafe::AddByteOffset

  .method public hidebysig static !!T& Subtract<T>(!!T& source, int32 elementOffset) cil managed aggressiveinlining
  {
		.maxstack 3
		ldarg.0
		ldarg.1
		sizeof !!T
		conv.i
		mul
		sub
		ret
  } // end of method Unsafe::Subtract

  .method public hidebysig static void* Subtract<T>(void* source, int32 elementOffset) cil managed aggressiveinlining
  {
		.maxstack 3
		ldarg.0
		ldarg.1
		sizeof !!T
		conv.i
		mul
		sub
		ret
  } // end of method Unsafe::Subtract

  .method public hidebysig static !!T& Subtract<T>(!!T& source, native int elementOffset) cil managed aggressiveinlining
  {
		.maxstack 3
		ldarg.0
		ldarg.1
		sizeof !!T
		mul
		sub
		ret
  } // end of method Unsafe::Subtract

  .method public hidebysig static !!T& SubtractByteOffset<T>(!!T& source, native int byteOffset) cil managed aggressiveinlining
  {
		.maxstack 2
		ldarg.0
		ldarg.1
		sub
		ret
  } // end of method Unsafe::SubtractByteOffset

  .method public hidebysig static native int ByteOffset<T>(!!T& origin, !!T& target) cil managed aggressiveinlining
  {
		.maxstack 2
		ldarg.1
		ldarg.0
		sub
		ret
  } // end of method Unsafe::ByteOffset

  .method public hidebysig static bool AreSame<T>(!!T& left, !!T& right) cil managed aggressiveinlining
  {
		.maxstack 2
		ldarg.0
		ldarg.1
		ceq
		ret 
  } // end of method Unsafe::AreSame
}// end of class System.Runtime.CompilerServices.Unsafe