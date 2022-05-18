.class public Lorg/javia/arity/Symbols;
.super Ljava/lang/Object;
.source "Symbols.java"


# static fields
.field private static final builtin:[Lorg/javia/arity/Symbol;

.field private static final defines:[Ljava/lang/String;

.field private static shell:Lorg/javia/arity/Symbol;


# instance fields
.field private final compiler:Lorg/javia/arity/Compiler;

.field private delta:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/javia/arity/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field private frames:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/util/HashSet<",
            "Lorg/javia/arity/Symbol;",
            ">;>;"
        }
    .end annotation
.end field

.field private symbols:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 59
    new-instance v0, Lorg/javia/arity/Symbol;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DZ)V

    sput-object v0, Lorg/javia/arity/Symbols;->shell:Lorg/javia/arity/Symbol;

    .line 66
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 68
    sget-object v2, Lorg/javia/arity/VM;->builtins:[B

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v2, v4

    .line 69
    sget-object v6, Lorg/javia/arity/VM;->opcodeName:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-static {v6, v5}, Lorg/javia/arity/Symbol;->makeVmOp(Ljava/lang/String;I)Lorg/javia/arity/Symbol;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "x"

    const-string v3, "y"

    const-string v4, "z"

    .line 72
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 73
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 74
    aget-object v3, v2, v1

    invoke-static {v3, v1}, Lorg/javia/arity/Symbol;->makeArg(Ljava/lang/String;I)Lorg/javia/arity/Symbol;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_1

    .line 77
    :cond_1
    new-instance v1, Lorg/javia/arity/Symbol;

    const-string v2, "pi"

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DZ)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 78
    new-instance v1, Lorg/javia/arity/Symbol;

    const-string v2, "\u03c0"

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DZ)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 79
    new-instance v1, Lorg/javia/arity/Symbol;

    const-string v2, "e"

    const-wide v3, 0x4005bf0a8b145769L    # Math.E

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DZ)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 82
    new-instance v1, Lorg/javia/arity/Symbol;

    const-string v2, "Infinity"

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DZ)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 83
    new-instance v1, Lorg/javia/arity/Symbol;

    const-string v2, "infinity"

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DZ)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 84
    new-instance v1, Lorg/javia/arity/Symbol;

    const-string v2, "Inf"

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DZ)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 85
    new-instance v1, Lorg/javia/arity/Symbol;

    const-string v2, "inf"

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DZ)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 86
    new-instance v1, Lorg/javia/arity/Symbol;

    const-string v2, "\u221e"

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DZ)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 87
    new-instance v1, Lorg/javia/arity/Symbol;

    const-string v2, "NaN"

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DZ)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 88
    new-instance v1, Lorg/javia/arity/Symbol;

    const-string v2, "nan"

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DZ)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 90
    new-instance v1, Lorg/javia/arity/Symbol;

    const-string v7, "i"

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/4 v12, 0x1

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DDZ)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 91
    new-instance v1, Lorg/javia/arity/Symbol;

    const-string v14, "j"

    const-wide/16 v15, 0x0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const/16 v19, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v19}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DDZ)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 93
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 94
    new-array v1, v1, [Lorg/javia/arity/Symbol;

    sput-object v1, Lorg/javia/arity/Symbols;->builtin:[Lorg/javia/arity/Symbol;

    .line 95
    sget-object v1, Lorg/javia/arity/Symbols;->builtin:[Lorg/javia/arity/Symbol;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    const-string v2, "log(x)=ln(x)*0.43429448190325182765"

    const-string v3, "log10(x)=log(x)"

    const-string v4, "lg(x)=log(x)"

    const-string v5, "log2(x)=ln(x)*1.4426950408889634074"

    const-string v6, "lb(x)=log2(x)"

    const-string v7, "log(base,x)=ln(x)/ln(base)"

    const-string v8, "gamma(x)=(x-1)!"

    const-string v9, "deg=0.017453292519943295"

    const-string v10, "indeg=57.29577951308232"

    const-string v11, "sind(x)=sin(x deg)"

    const-string v12, "cosd(x)=cos(x deg)"

    const-string v13, "tand(x)=tan(x deg)"

    const-string v14, "asind(x)=asin(x) indeg"

    const-string v15, "acosd(x)=acos(x) indeg"

    const-string v16, "atand(x)=atan(x) indeg"

    const-string v17, "tg(x)=tan(x)"

    const-string v18, "tgd(x)=tand(x)"

    .line 279
    filled-new-array/range {v2 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/javia/arity/Symbols;->defines:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lorg/javia/arity/Compiler;

    invoke-direct {v0}, Lorg/javia/arity/Compiler;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/Symbols;->compiler:Lorg/javia/arity/Compiler;

    .line 61
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/Symbols;->symbols:Ljava/util/Hashtable;

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/HashSet;

    .line 63
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/Symbols;->frames:Ljava/util/Stack;

    const/4 v0, 0x0

    move v1, v0

    .line 102
    :goto_0
    sget-object v2, Lorg/javia/arity/Symbols;->builtin:[Lorg/javia/arity/Symbol;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 103
    sget-object v2, Lorg/javia/arity/Symbols;->builtin:[Lorg/javia/arity/Symbol;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lorg/javia/arity/Symbols;->add(Lorg/javia/arity/Symbol;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_0
    :goto_1
    :try_start_0
    sget-object v1, Lorg/javia/arity/Symbols;->defines:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 111
    sget-object v1, Lorg/javia/arity/Symbols;->defines:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lorg/javia/arity/Symbols;->compileWithName(Ljava/lang/String;)Lorg/javia/arity/FunctionAndName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/javia/arity/Symbols;->define(Lorg/javia/arity/FunctionAndName;)V
    :try_end_0
    .catch Lorg/javia/arity/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :catch_0
    move-exception p0

    .line 114
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isDefinition(Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0x3d

    .line 125
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method add(Lorg/javia/arity/Symbol;)V
    .locals 2

    .line 312
    iget-object v0, p0, Lorg/javia/arity/Symbols;->symbols:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/javia/arity/Symbol;

    if-eqz v0, :cond_0

    .line 313
    iget-boolean v1, v0, Lorg/javia/arity/Symbol;->isConst:Z

    if-eqz v1, :cond_0

    .line 314
    iget-object p0, p0, Lorg/javia/arity/Symbols;->symbols:Ljava/util/Hashtable;

    invoke-virtual {p0, v0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 317
    :cond_0
    iget-object v1, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/HashSet;

    if-nez v1, :cond_1

    .line 318
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/HashSet;

    .line 320
    :cond_1
    iget-object v1, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 321
    iget-object p0, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/HashSet;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lorg/javia/arity/Symbol;->newEmpty(Lorg/javia/arity/Symbol;)Lorg/javia/arity/Symbol;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method addArguments([Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 306
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 307
    aget-object v1, p1, v0

    invoke-static {v1, v0}, Lorg/javia/arity/Symbol;->makeArg(Ljava/lang/String;I)Lorg/javia/arity/Symbol;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/javia/arity/Symbols;->add(Lorg/javia/arity/Symbol;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized compile(Ljava/lang/String;)Lorg/javia/arity/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    monitor-enter p0

    .line 176
    :try_start_0
    iget-object v0, p0, Lorg/javia/arity/Symbols;->compiler:Lorg/javia/arity/Compiler;

    invoke-virtual {v0, p0, p1}, Lorg/javia/arity/Compiler;->compile(Lorg/javia/arity/Symbols;Ljava/lang/String;)Lorg/javia/arity/Function;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized compileWithName(Ljava/lang/String;)Lorg/javia/arity/FunctionAndName;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lorg/javia/arity/Symbols;->compiler:Lorg/javia/arity/Compiler;

    invoke-virtual {v0, p0, p1}, Lorg/javia/arity/Compiler;->compileWithName(Lorg/javia/arity/Symbols;Ljava/lang/String;)Lorg/javia/arity/FunctionAndName;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized define(Ljava/lang/String;D)V
    .locals 8

    monitor-enter p0

    .line 209
    :try_start_0
    new-instance v7, Lorg/javia/arity/Symbol;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DDZ)V

    invoke-virtual {p0, v7}, Lorg/javia/arity/Symbols;->add(Lorg/javia/arity/Symbol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 208
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized define(Ljava/lang/String;Lorg/javia/arity/Complex;)V
    .locals 8

    monitor-enter p0

    .line 213
    :try_start_0
    new-instance v7, Lorg/javia/arity/Symbol;

    iget-wide v2, p2, Lorg/javia/arity/Complex;->re:D

    iget-wide v4, p2, Lorg/javia/arity/Complex;->im:D

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DDZ)V

    invoke-virtual {p0, v7}, Lorg/javia/arity/Symbols;->add(Lorg/javia/arity/Symbol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 212
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized define(Ljava/lang/String;Lorg/javia/arity/Function;)V
    .locals 2

    monitor-enter p0

    .line 185
    :try_start_0
    instance-of v0, p2, Lorg/javia/arity/Constant;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p2}, Lorg/javia/arity/Function;->eval()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/javia/arity/Symbols;->define(Ljava/lang/String;D)V

    goto :goto_0

    .line 188
    :cond_0
    new-instance v0, Lorg/javia/arity/Symbol;

    invoke-direct {v0, p1, p2}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;Lorg/javia/arity/Function;)V

    invoke-virtual {p0, v0}, Lorg/javia/arity/Symbols;->add(Lorg/javia/arity/Symbol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 184
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized define(Lorg/javia/arity/FunctionAndName;)V
    .locals 1

    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p1, Lorg/javia/arity/FunctionAndName;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p1, Lorg/javia/arity/FunctionAndName;->name:Ljava/lang/String;

    iget-object p1, p1, Lorg/javia/arity/FunctionAndName;->function:Lorg/javia/arity/Function;

    invoke-virtual {p0, v0, p1}, Lorg/javia/arity/Symbols;->define(Ljava/lang/String;Lorg/javia/arity/Function;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 196
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized eval(Ljava/lang/String;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v0, p0, Lorg/javia/arity/Symbols;->compiler:Lorg/javia/arity/Compiler;

    invoke-virtual {v0, p0, p1}, Lorg/javia/arity/Compiler;->compileSimple(Lorg/javia/arity/Symbols;Ljava/lang/String;)Lorg/javia/arity/Function;

    move-result-object p1

    invoke-virtual {p1}, Lorg/javia/arity/Function;->eval()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized evalComplex(Ljava/lang/String;)Lorg/javia/arity/Complex;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    monitor-enter p0

    .line 142
    :try_start_0
    iget-object v0, p0, Lorg/javia/arity/Symbols;->compiler:Lorg/javia/arity/Compiler;

    invoke-virtual {v0, p0, p1}, Lorg/javia/arity/Compiler;->compileSimple(Lorg/javia/arity/Symbols;Ljava/lang/String;)Lorg/javia/arity/Function;

    move-result-object p1

    invoke-virtual {p1}, Lorg/javia/arity/Function;->evalComplex()Lorg/javia/arity/Complex;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAllSymbols()[Lorg/javia/arity/Symbol;
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/javia/arity/Symbols;->symbols:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    .line 259
    new-array v0, v0, [Lorg/javia/arity/Symbol;

    .line 260
    iget-object p0, p0, Lorg/javia/arity/Symbols;->symbols:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getDictionary()[Ljava/lang/String;
    .locals 4

    .line 268
    invoke-virtual {p0}, Lorg/javia/arity/Symbols;->getAllSymbols()[Lorg/javia/arity/Symbol;

    move-result-object p0

    .line 269
    array-length v0, p0

    .line 270
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 272
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lorg/javia/arity/Symbol;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getTopFrame()[Lorg/javia/arity/Symbol;
    .locals 2

    .line 251
    iget-object v0, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Lorg/javia/arity/Symbol;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/HashSet;

    new-array v0, v1, [Lorg/javia/arity/Symbol;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/javia/arity/Symbol;

    :goto_0
    return-object p0
.end method

.method declared-synchronized lookup(Ljava/lang/String;I)Lorg/javia/arity/Symbol;
    .locals 2

    monitor-enter p0

    .line 326
    :try_start_0
    iget-object v0, p0, Lorg/javia/arity/Symbols;->symbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/javia/arity/Symbols;->shell:Lorg/javia/arity/Symbol;

    invoke-virtual {v1, p1, p2}, Lorg/javia/arity/Symbol;->setKey(Ljava/lang/String;I)Lorg/javia/arity/Symbol;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/javia/arity/Symbol;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method lookupConst(Ljava/lang/String;)Lorg/javia/arity/Symbol;
    .locals 1

    const/4 v0, -0x3

    .line 330
    invoke-virtual {p0, p1, v0}, Lorg/javia/arity/Symbols;->lookup(Ljava/lang/String;I)Lorg/javia/arity/Symbol;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized popFrame()V
    .locals 3

    monitor-enter p0

    .line 234
    :try_start_0
    iget-object v0, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/javia/arity/Symbol;

    .line 236
    invoke-virtual {v1}, Lorg/javia/arity/Symbol;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, p0, Lorg/javia/arity/Symbols;->symbols:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 239
    :cond_0
    iget-object v2, p0, Lorg/javia/arity/Symbols;->symbols:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lorg/javia/arity/Symbols;->frames:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/HashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 233
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pushFrame()V
    .locals 2

    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v0, p0, Lorg/javia/arity/Symbols;->frames:Ljava/util/Stack;

    iget-object v1, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/HashSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 222
    monitor-exit p0

    throw v0
.end method
