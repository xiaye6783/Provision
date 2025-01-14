version(DigitalMars)
{
    const string COMPILER_ID = "DigitalMars";
}
else version(GNU)
{
    const string COMPILER_ID = "GNU";
}
else version(LDC)
{
    const string COMPILER_ID = "LDC";
}
else version(SDC)
{
    const string COMPILER_ID = "SDC";
}
else
{
    const string COMPILER_ID = "";
}

/* Construct the string literal in pieces to prevent the source from
   getting matched.  Store it in a pointer rather than an array
   because some compilers will just produce instructions to fill the
   array rather than assigning a pointer to a static array.  */
string info_compiler = "INFO" ~ ":" ~ "compiler[" ~ COMPILER_ID ~ "]";

/* Identify known platforms by name.  */
version(linux)
{
    const string PLATFORM_ID = "Linux";
}
else version(Cygwin)
{
    const string PLATFORM_ID = "Cygwin";
}
else version(MinGW)
{
    const string PLATFORM_ID = "MinGW";
}
else version(OSX)
{
    const string PLATFORM_ID = "Darwin";
}
else version(Windows)
{
    const string PLATFORM_ID = "Windows";
}
else version(FreeBSD)
{
    const string PLATFORM_ID = "FreeBSD";
}
else version(NetBSD)
{
    const string PLATFORM_ID = "NetBSD";
}
else version(OpenBSD)
{
    const string PLATFORM_ID = "OpenBSD";
}
else version(NetBSD)
{
    const string PLATFORM_ID = "NetBSD";
}
else version(Solaris)
{
    const string PLATFORM_ID = "SunOS";
}
else version(AIX)
{
    const string PLATFORM_ID = "AIX";
}
else version(Haiku)
{
    const string PLATFORM_ID = "Haiku";
}
else version(AIX)
{
    const string PLATFORM_ID = "BeOS";
}
else version(AIX)
{
    const string PLATFORM_ID = "QNX";
}
else version(AIX)
{
    const string PLATFORM_ID = "Tru64";
}
else version(AIX)
{
    const string PLATFORM_ID = "RISCos";
}
else
{
    const string PLATFORM_ID = "";
}

/* For windows compilers MSVC and Intel we can determine
   the architecture of the compiler being used.  This is because
   the compilers do not have flags that can change the architecture,
   but rather depend on which compiler is being used
*/
version(IA64)
{
    const string ARCHITECTURE_ID = "IA64";
}
else version(X86_64)
{
    const string ARCHITECTURE_ID = "x64";
}
else version(X86)
{
    const string ARCHITECTURE_ID = "X86";
}
else version(ARM)
{
    const string ARCHITECTURE_ID = "ARM";
}
else version(MIPS32)
{
    const string ARCHITECTURE_ID = "MIPS";
}
else version(MIPS64)
{
    const string ARCHITECTURE_ID = "MIPS";
}
else version(SH)
{
    const string ARCHITECTURE_ID = "SHx";
}
else version(SH64)
{
    const string ARCHITECTURE_ID = "SHx";
}
else
{
    const string ARCHITECTURE_ID = "";
}

/* Construct the string literal in pieces to prevent the source from
   getting matched.  Store it in a pointer rather than an array
   because some compilers will just produce instructions to fill the
   array rather than assigning a pointer to a static array.  */
string info_platform = "INFO" ~ ":" ~ "platform[" ~ PLATFORM_ID ~ "]";
string info_arch = "INFO" ~ ":" ~ "arch[" ~ ARCHITECTURE_ID ~ "]";


/*--------------------------------------------------------------------------*/

int main(string[] args)
{
    int require = 0;
    require += info_compiler[args.length];
    require += info_platform[args.length];
    require += info_arch[args.length];
    return require;
}
