.class public Lorg/javia/arity/UnitTest;
.super Ljava/lang/Object;
.source "UnitTest.java"


# static fields
.field static allOk:Z

.field static checkCounter:I

.field private static final profileCases:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "(100.5 + 20009.999)*(7+4+3)/(5/2)^3!)*2"

    const-string v1, "fun1(x)=(x+2)*(x+3)"

    const-string v2, "otherFun(x)=(fun1(x-1)*x+1)*(fun1(2-x)+10)"

    const-string v3, "log(x+30.5, 3)^.7*sin(x+.5)"

    .line 462
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/javia/arity/UnitTest;->profileCases:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 629
    sput-boolean v0, Lorg/javia/arity/UnitTest;->allOk:Z

    const/4 v0, 0x0

    .line 630
    sput v0, Lorg/javia/arity/UnitTest;->checkCounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static check(DD)V
    .locals 3

    .line 606
    sget v0, Lorg/javia/arity/UnitTest;->checkCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/javia/arity/UnitTest;->checkCounter:I

    .line 607
    invoke-static {p0, p1, p2, p3}, Lorg/javia/arity/UnitTest;->equal(DD)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 608
    sput-boolean v0, Lorg/javia/arity/UnitTest;->allOk:Z

    .line 609
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed check #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/javia/arity/UnitTest;->checkCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, " got "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V
    .locals 4

    .line 614
    sget v0, Lorg/javia/arity/UnitTest;->checkCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/javia/arity/UnitTest;->checkCounter:I

    .line 615
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->equal(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->im:D

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->equal(DD)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 616
    sput-boolean v0, Lorg/javia/arity/UnitTest;->allOk:Z

    .line 617
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed check #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/javia/arity/UnitTest;->checkCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " got "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static check(Z)V
    .locals 1

    .line 622
    sget v0, Lorg/javia/arity/UnitTest;->checkCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/javia/arity/UnitTest;->checkCounter:I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 624
    sput-boolean p0, Lorg/javia/arity/UnitTest;->allOk:Z

    :cond_0
    return-void
.end method

.method static equal(DD)Z
    .locals 2

    cmpl-double v0, p0, p2

    if-eqz v0, :cond_2

    .line 600
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sub-double/2addr p0, p2

    div-double p2, p0, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    const-wide v0, 0x3cd203af9ee75616L    # 1.0E-15

    cmpg-double p2, p2, v0

    if-ltz p2, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, v0

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static equal(DLorg/javia/arity/Complex;)Z
    .locals 4

    .line 594
    iget-wide v0, p2, Lorg/javia/arity/Complex;->re:D

    invoke-static {p0, p1, v0, v1}, Lorg/javia/arity/UnitTest;->equal(DD)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    iget-wide v2, p2, Lorg/javia/arity/Complex;->im:D

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->equal(DD)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-wide p0, p2, Lorg/javia/arity/Complex;->im:D

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static equal(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)Z
    .locals 4

    .line 590
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->equal(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide p0, p1, Lorg/javia/arity/Complex;->im:D

    invoke-static {v0, v1, p0, p1}, Lorg/javia/arity/UnitTest;->equal(DD)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;,
            Lorg/javia/arity/ArityException;
        }
    .end annotation

    .line 391
    array-length v0, p0

    if-nez v0, :cond_0

    .line 393
    invoke-static {}, Lorg/javia/arity/UnitTest;->runUnitTests()V

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 395
    aget-object v2, p0, v1

    const-string v3, "-profile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 397
    invoke-static {}, Lorg/javia/arity/UnitTest;->profile()V

    goto :goto_2

    .line 399
    :cond_1
    new-instance v2, Lorg/javia/arity/Symbols;

    invoke-direct {v2}, Lorg/javia/arity/Symbols;-><init>()V

    move v3, v1

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_2

    .line 401
    aget-object v4, p0, v3

    invoke-virtual {v2, v4}, Lorg/javia/arity/Symbols;->compileWithName(Ljava/lang/String;)Lorg/javia/arity/FunctionAndName;

    move-result-object v4

    .line 402
    invoke-virtual {v2, v4}, Lorg/javia/arity/Symbols;->define(Lorg/javia/arity/FunctionAndName;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 404
    :cond_2
    aget-object p0, p0, v4

    invoke-static {v2, p0}, Lorg/javia/arity/UnitTest;->profile(Lorg/javia/arity/Symbols;Ljava/lang/String;)V

    goto :goto_2

    .line 407
    :cond_3
    new-instance v2, Lorg/javia/arity/Symbols;

    invoke-direct {v2}, Lorg/javia/arity/Symbols;-><init>()V

    :goto_1
    if-ge v1, v0, :cond_4

    .line 409
    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Lorg/javia/arity/Symbols;->compileWithName(Ljava/lang/String;)Lorg/javia/arity/FunctionAndName;

    move-result-object v3

    .line 410
    invoke-virtual {v2, v3}, Lorg/javia/arity/Symbols;->define(Lorg/javia/arity/FunctionAndName;)V

    .line 411
    iget-object v3, v3, Lorg/javia/arity/FunctionAndName;->function:Lorg/javia/arity/Function;

    .line 412
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method private static profile()V
    .locals 4

    .line 471
    sget-object v0, Lorg/javia/arity/UnitTest;->profileCases:[Ljava/lang/String;

    .line 472
    new-instance v1, Lorg/javia/arity/Symbols;

    invoke-direct {v1}, Lorg/javia/arity/Symbols;-><init>()V

    const/4 v2, 0x0

    .line 474
    :goto_0
    :try_start_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 475
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Lorg/javia/arity/Symbols;->compileWithName(Ljava/lang/String;)Lorg/javia/arity/FunctionAndName;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/javia/arity/Symbols;->define(Lorg/javia/arity/FunctionAndName;)V

    .line 476
    aget-object v3, v0, v2

    invoke-static {v1, v3}, Lorg/javia/arity/UnitTest;->profile(Lorg/javia/arity/Symbols;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/javia/arity/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 479
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static profile(Lorg/javia/arity/Symbols;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;,
            Lorg/javia/arity/ArityException;
        }
    .end annotation

    .line 418
    invoke-virtual {p0, p1}, Lorg/javia/arity/Symbols;->compile(Ljava/lang/String;)Lorg/javia/arity/Function;

    move-result-object v0

    .line 419
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 421
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 423
    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 433
    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/16 v6, 0x3e8

    if-ge v5, v6, :cond_0

    .line 436
    invoke-virtual {p0, p1}, Lorg/javia/arity/Symbols;->compile(Ljava/lang/String;)Lorg/javia/arity/Function;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 438
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 439
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "compilation time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, v2

    invoke-virtual {v6, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " us"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v0}, Lorg/javia/arity/Function;->arity()I

    move-result p0

    new-array p0, p0, [D

    .line 452
    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_1
    const p1, 0x186a0

    if-ge v4, p1, :cond_1

    .line 455
    invoke-virtual {v0, p0}, Lorg/javia/arity/Function;->eval([D)D

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 457
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v1

    .line 459
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execution time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x64

    cmp-long v2, p0, v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double p0, p0

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr p0, v3

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " us"

    :goto_2
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ns"

    goto :goto_2

    :goto_3
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method static runUnitTests()V
    .locals 16

    const/4 v0, 0x0

    .line 484
    sput v0, Lorg/javia/arity/UnitTest;->checkCounter:I

    const/4 v1, 0x5

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 486
    invoke-static {v2, v3, v1}, Lorg/javia/arity/Util;->doubleToString(DI)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-Infinity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lorg/javia/arity/UnitTest;->check(Z)V

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 487
    invoke-static {v2, v3, v1}, Lorg/javia/arity/Util;->doubleToString(DI)Ljava/lang/String;

    move-result-object v1

    const-string v4, "NaN"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 489
    new-instance v1, Lorg/javia/arity/Complex;

    invoke-direct {v1}, Lorg/javia/arity/Complex;-><init>()V

    .line 490
    new-instance v4, Lorg/javia/arity/Complex;

    invoke-direct {v4}, Lorg/javia/arity/Complex;-><init>()V

    .line 491
    new-instance v5, Lorg/javia/arity/Complex;

    invoke-direct {v5}, Lorg/javia/arity/Complex;-><init>()V

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/16 v8, 0x0

    .line 493
    invoke-virtual {v1, v8, v9, v6, v7}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v10

    const/16 v11, 0xa

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lorg/javia/arity/Util;->complexToString(Lorg/javia/arity/Complex;II)Ljava/lang/String;

    move-result-object v10

    const-string v13, "-i"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Lorg/javia/arity/UnitTest;->check(Z)V

    const-wide v13, 0x4000fbe76c8b4396L    # 2.123

    .line 494
    invoke-virtual {v1, v13, v14, v8, v9}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v10

    const/4 v13, 0x3

    invoke-static {v10, v13, v0}, Lorg/javia/arity/Util;->complexToString(Lorg/javia/arity/Complex;II)Ljava/lang/String;

    move-result-object v10

    const-string v14, "2.1"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Lorg/javia/arity/UnitTest;->check(Z)V

    const-wide v14, 0x3ff00000000001c2L    # 1.0000000000001

    .line 495
    invoke-virtual {v1, v8, v9, v14, v15}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v10

    const/16 v14, 0x14

    invoke-static {v10, v14, v13}, Lorg/javia/arity/Util;->complexToString(Lorg/javia/arity/Complex;II)Ljava/lang/String;

    move-result-object v10

    const-string v14, "i"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Lorg/javia/arity/UnitTest;->check(Z)V

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 496
    invoke-virtual {v1, v14, v15, v6, v7}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v10

    invoke-static {v10, v11, v12}, Lorg/javia/arity/Util;->complexToString(Lorg/javia/arity/Complex;II)Ljava/lang/String;

    move-result-object v10

    const-string v13, "1-i"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 497
    invoke-virtual {v1, v14, v15, v14, v15}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v10

    invoke-static {v10, v11, v12}, Lorg/javia/arity/Util;->complexToString(Lorg/javia/arity/Complex;II)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1+i"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Lorg/javia/arity/UnitTest;->check(Z)V

    const-wide v10, 0x3ff1eb851eb851ecL    # 1.12

    .line 498
    invoke-virtual {v1, v10, v11, v10, v11}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v10

    const/16 v11, 0x9

    invoke-static {v10, v11, v0}, Lorg/javia/arity/Util;->complexToString(Lorg/javia/arity/Complex;II)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1.12+1.1i"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Lorg/javia/arity/UnitTest;->check(Z)V

    const-wide v10, 0x3ff1f9a6b50b0f28L    # 1.12345

    .line 499
    invoke-virtual {v1, v10, v11, v6, v7}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v10

    const/4 v11, 0x7

    invoke-static {v10, v11, v0}, Lorg/javia/arity/Util;->complexToString(Lorg/javia/arity/Complex;II)Ljava/lang/String;

    move-result-object v0

    const-string v10, "1.123-i"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 501
    invoke-virtual {v1, v6, v7, v8, v9}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v4, v8, v9, v14, v15}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/javia/arity/Complex;->pow(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v0

    const-wide v10, 0x3fa620227b598efaL    # 0.04321391826377226

    invoke-virtual {v5, v10, v11, v8, v9}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v10

    invoke-static {v0, v10}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 502
    invoke-virtual {v1, v6, v7, v8, v9}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v4, v14, v15, v14, v15}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/javia/arity/Complex;->pow(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v0

    const-wide v10, -0x4059dfdd84a67106L    # -0.04321391826377226

    invoke-virtual {v5, v10, v11, v8, v9}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 504
    invoke-virtual {v1, v6, v7, v8, v9}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->abs()D

    move-result-wide v10

    invoke-static {v10, v11, v14, v15}, Lorg/javia/arity/UnitTest;->check(DD)V

    const-wide v10, 0x401d8e64b8d4ddadL    # 7.3890560989306495

    .line 505
    invoke-virtual {v1, v10, v11, v8, v9}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    move-result-object v0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-virtual {v4, v12, v13, v8, v9}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 506
    invoke-virtual {v1, v6, v7, v8, v9}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    move-result-object v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-virtual {v4, v8, v9, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 508
    invoke-virtual {v1, v12, v13, v8, v9}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->exp()Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v4, v10, v11, v8, v9}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 509
    invoke-virtual {v1, v8, v9, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->exp()Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v4, v6, v7, v8, v9}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 511
    invoke-static {v14, v15}, Lorg/javia/arity/MoreMath;->lgamma(D)D

    move-result-wide v2

    invoke-static {v2, v3, v8, v9}, Lorg/javia/arity/UnitTest;->check(DD)V

    .line 512
    invoke-virtual {v1, v14, v15, v8, v9}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->lgamma()Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v4, v8, v9, v8, v9}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 514
    invoke-virtual {v1, v8, v9, v8, v9}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->factorial()Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v4, v14, v15, v8, v9}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 515
    invoke-virtual {v1, v14, v15, v8, v9}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->factorial()Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v4, v14, v15, v8, v9}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 516
    invoke-virtual {v1, v8, v9, v14, v15}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->factorial()Lorg/javia/arity/Complex;

    move-result-object v0

    const-wide v2, 0x3fdfdf7d1bddb102L    # 0.49801566811835596

    const-wide v10, -0x403c2a9aa17621dcL    # -0.1549498283018106

    invoke-virtual {v4, v2, v3, v10, v11}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    .line 517
    invoke-virtual {v1, v2, v3, v14, v15}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->factorial()Lorg/javia/arity/Complex;

    move-result-object v0

    const-wide v10, -0x403a0b3593673371L    # -0.17153291990834815

    const-wide v12, 0x3fd4e517e5914ed7L    # 0.32648274821006623

    invoke-virtual {v4, v10, v11, v12, v13}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    .line 518
    invoke-virtual {v1, v10, v11, v8, v9}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->factorial()Lorg/javia/arity/Complex;

    move-result-object v0

    const-wide/high16 v12, 0x4038000000000000L    # 24.0

    invoke-virtual {v4, v12, v13, v8, v9}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    .line 519
    invoke-virtual {v1, v10, v11, v12, v13}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->factorial()Lorg/javia/arity/Complex;

    move-result-object v0

    const-wide v10, 0x3f906d4886f77388L    # 0.016041882741649555

    const-wide v12, -0x3fdd222761c5d807L    # -9.433293289755953

    invoke-virtual {v4, v10, v11, v12, v13}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 521
    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1, v4, v5}, Lorg/javia/arity/UnitTest;->check(DD)V

    const-wide v0, -0x406147ae147ae148L    # -0.03

    .line 522
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v0, v1, v4, v5}, Lorg/javia/arity/UnitTest;->check(DD)V

    const-wide v0, -0x406147ae147ae148L    # -0.03

    .line 523
    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->intLog10(D)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1, v8, v9}, Lorg/javia/arity/UnitTest;->check(DD)V

    const-wide v0, 0x3f9eb851eb851eb8L    # 0.03

    .line 524
    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->intLog10(D)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->check(DD)V

    const/4 v0, 0x3

    .line 525
    invoke-static {v0}, Lorg/javia/arity/MoreMath;->intExp10(I)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->check(DD)V

    const/4 v0, -0x1

    .line 526
    invoke-static {v0}, Lorg/javia/arity/MoreMath;->intExp10(I)D

    move-result-wide v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->check(DD)V

    const-wide v0, 0x3ff3c28f5c28f5c3L    # 1.235

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    .line 528
    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/Util;->shortApprox(DD)D

    move-result-wide v0

    const-wide v2, 0x3ff3d70a3d70a3d7L    # 1.24

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->check(DD)V

    const-wide v0, 0x3ff3c28f5c28f5c3L    # 1.235

    const-wide v2, 0x3fd999999999999aL    # 0.4

    .line 529
    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/Util;->shortApprox(DD)D

    move-result-wide v0

    const-wide v2, 0x3ff3333333333334L    # 1.2000000000000002

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->check(DD)V

    const-wide v0, -0x400c3d70a3d70a3dL    # -1.235

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    .line 530
    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/Util;->shortApprox(DD)D

    move-result-wide v0

    const-wide v2, -0x400c28f5c28f5c29L    # -1.24

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->check(DD)V

    const-wide v0, -0x400c3d70a3d70a3dL    # -1.235

    const-wide v2, 0x3fd999999999999aL    # 0.4

    .line 531
    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/Util;->shortApprox(DD)D

    move-result-wide v0

    const-wide v2, -0x400cccccccccccccL    # -1.2000000000000002

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->check(DD)V

    .line 533
    invoke-static {}, Lorg/javia/arity/TestFormat;->testFormat()Z

    move-result v0

    invoke-static {v0}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 535
    invoke-static {}, Lorg/javia/arity/TestEval;->testEval()Z

    move-result v0

    invoke-static {v0}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 537
    invoke-static {}, Lorg/javia/arity/UnitTest;->testRecursiveEval()Z

    move-result v0

    invoke-static {v0}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 539
    invoke-static {}, Lorg/javia/arity/UnitTest;->testFrame()Z

    move-result v0

    invoke-static {v0}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 541
    invoke-static {}, Lorg/javia/arity/TestFormat;->testSizeCases()Z

    move-result v0

    invoke-static {v0}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 543
    sget-boolean v0, Lorg/javia/arity/UnitTest;->allOk:Z

    if-nez v0, :cond_0

    .line 544
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\n*** Some tests FAILED ***\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 545
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 547
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\n*** All tests passed OK ***\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static testFrame()Z
    .locals 11

    const/4 v0, 0x0

    .line 554
    :try_start_0
    new-instance v1, Lorg/javia/arity/Symbols;

    invoke-direct {v1}, Lorg/javia/arity/Symbols;-><init>()V

    const-string v2, "a"

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 555
    invoke-virtual {v1, v2, v3, v4}, Lorg/javia/arity/Symbols;->define(Ljava/lang/String;D)V

    const-string v2, "a"

    .line 556
    invoke-virtual {v1, v2}, Lorg/javia/arity/Symbols;->eval(Ljava/lang/String;)D

    move-result-wide v5

    cmpl-double v2, v5, v3

    const/4 v5, 0x1

    if-nez v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v0

    .line 558
    :goto_0
    invoke-virtual {v1}, Lorg/javia/arity/Symbols;->pushFrame()V

    if-eqz v2, :cond_1

    const-string v2, "a"

    .line 559
    invoke-virtual {v1, v2}, Lorg/javia/arity/Symbols;->eval(Ljava/lang/String;)D

    move-result-wide v6

    cmpl-double v2, v6, v3

    if-nez v2, :cond_1

    move v2, v5

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    const-string v6, "a"

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .line 560
    invoke-virtual {v1, v6, v7, v8}, Lorg/javia/arity/Symbols;->define(Ljava/lang/String;D)V

    if-eqz v2, :cond_2

    const-string v2, "a"

    .line 561
    invoke-virtual {v1, v2}, Lorg/javia/arity/Symbols;->eval(Ljava/lang/String;)D

    move-result-wide v9

    cmpl-double v2, v9, v7

    if-nez v2, :cond_2

    move v2, v5

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    const-string v6, "a"

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    .line 562
    invoke-virtual {v1, v6, v7, v8}, Lorg/javia/arity/Symbols;->define(Ljava/lang/String;D)V

    if-eqz v2, :cond_3

    const-string v2, "a"

    .line 563
    invoke-virtual {v1, v2}, Lorg/javia/arity/Symbols;->eval(Ljava/lang/String;)D

    move-result-wide v9

    cmpl-double v2, v9, v7

    if-nez v2, :cond_3

    move v2, v5

    goto :goto_3

    :cond_3
    move v2, v0

    .line 565
    :goto_3
    invoke-virtual {v1}, Lorg/javia/arity/Symbols;->popFrame()V

    if-eqz v2, :cond_4

    const-string v2, "a"

    .line 566
    invoke-virtual {v1, v2}, Lorg/javia/arity/Symbols;->eval(Ljava/lang/String;)D

    move-result-wide v1

    cmpl-double v1, v1, v3

    if-nez v1, :cond_4

    move v1, v5

    goto :goto_4

    :cond_4
    move v1, v0

    .line 570
    :goto_4
    new-instance v2, Lorg/javia/arity/Symbols;

    invoke-direct {v2}, Lorg/javia/arity/Symbols;-><init>()V

    .line 571
    invoke-virtual {v2}, Lorg/javia/arity/Symbols;->pushFrame()V

    const-string v3, "base"

    .line 572
    invoke-static {v3, v0}, Lorg/javia/arity/Symbol;->makeArg(Ljava/lang/String;I)Lorg/javia/arity/Symbol;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/javia/arity/Symbols;->add(Lorg/javia/arity/Symbol;)V

    const-string v3, "x"

    .line 573
    invoke-static {v3, v5}, Lorg/javia/arity/Symbol;->makeArg(Ljava/lang/String;I)Lorg/javia/arity/Symbol;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/javia/arity/Symbols;->add(Lorg/javia/arity/Symbol;)V

    const/16 v3, 0x27

    if-eqz v1, :cond_5

    const-string v1, "x"

    .line 574
    invoke-virtual {v2, v1}, Lorg/javia/arity/Symbols;->lookupConst(Ljava/lang/String;)Lorg/javia/arity/Symbol;

    move-result-object v1

    iget-byte v1, v1, Lorg/javia/arity/Symbol;->op:B

    if-ne v1, v3, :cond_5

    move v1, v5

    goto :goto_5

    :cond_5
    move v1, v0

    .line 575
    :goto_5
    invoke-virtual {v2}, Lorg/javia/arity/Symbols;->pushFrame()V

    const/16 v4, 0x26

    if-eqz v1, :cond_6

    const-string v1, "base"

    .line 576
    invoke-virtual {v2, v1}, Lorg/javia/arity/Symbols;->lookupConst(Ljava/lang/String;)Lorg/javia/arity/Symbol;

    move-result-object v1

    iget-byte v1, v1, Lorg/javia/arity/Symbol;->op:B

    if-ne v1, v4, :cond_6

    move v1, v5

    goto :goto_6

    :cond_6
    move v1, v0

    :goto_6
    if-eqz v1, :cond_7

    const-string v1, "x"

    .line 577
    invoke-virtual {v2, v1}, Lorg/javia/arity/Symbols;->lookupConst(Ljava/lang/String;)Lorg/javia/arity/Symbol;

    move-result-object v1

    iget-byte v1, v1, Lorg/javia/arity/Symbol;->op:B

    if-ne v1, v3, :cond_7

    move v1, v5

    goto :goto_7

    :cond_7
    move v1, v0

    .line 578
    :goto_7
    invoke-virtual {v2}, Lorg/javia/arity/Symbols;->popFrame()V

    if-eqz v1, :cond_8

    const-string v1, "base"

    .line 579
    invoke-virtual {v2, v1}, Lorg/javia/arity/Symbols;->lookupConst(Ljava/lang/String;)Lorg/javia/arity/Symbol;

    move-result-object v1

    iget-byte v1, v1, Lorg/javia/arity/Symbol;->op:B

    if-ne v1, v4, :cond_8

    move v1, v5

    goto :goto_8

    :cond_8
    move v1, v0

    :goto_8
    if-eqz v1, :cond_9

    const-string v1, "x"

    .line 580
    invoke-virtual {v2, v1}, Lorg/javia/arity/Symbols;->lookupConst(Ljava/lang/String;)Lorg/javia/arity/Symbol;

    move-result-object v1

    iget-byte v1, v1, Lorg/javia/arity/Symbol;->op:B

    if-ne v1, v3, :cond_9

    move v1, v5

    goto :goto_9

    :cond_9
    move v1, v0

    .line 581
    :goto_9
    invoke-virtual {v2}, Lorg/javia/arity/Symbols;->popFrame()V

    if-eqz v1, :cond_a

    const-string v1, "x"

    .line 582
    invoke-virtual {v2, v1}, Lorg/javia/arity/Symbols;->lookupConst(Ljava/lang/String;)Lorg/javia/arity/Symbol;

    move-result-object v1

    iget-byte v1, v1, Lorg/javia/arity/Symbol;->op:B
    :try_end_0
    .catch Lorg/javia/arity/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v4, :cond_a

    move v0, v5

    :cond_a
    return v0

    :catch_0
    return v0
.end method

.method static testRecursiveEval()Z
    .locals 10

    .line 633
    new-instance v0, Lorg/javia/arity/Symbols;

    invoke-direct {v0}, Lorg/javia/arity/Symbols;-><init>()V

    const-string v1, "myfun"

    .line 634
    new-instance v2, Lorg/javia/arity/MyFun;

    invoke-direct {v2}, Lorg/javia/arity/MyFun;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/Symbols;->define(Ljava/lang/String;Lorg/javia/arity/Function;)V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "1+myfun(x)"

    .line 636
    invoke-virtual {v0, v2}, Lorg/javia/arity/Symbols;->compile(Ljava/lang/String;)Lorg/javia/arity/Function;

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 637
    invoke-virtual {v0, v2, v3}, Lorg/javia/arity/Function;->eval(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v4, v5}, Lorg/javia/arity/Function;->eval(D)D

    move-result-wide v8

    cmpl-double v4, v8, v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v6, v7}, Lorg/javia/arity/Function;->eval(D)D

    move-result-wide v4

    cmpl-double v2, v4, v2

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-virtual {v0, v2, v3}, Lorg/javia/arity/Function;->eval(D)D

    move-result-wide v2
    :try_end_0
    .catch Lorg/javia/arity/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    .line 643
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 644
    sput-boolean v1, Lorg/javia/arity/UnitTest;->allOk:Z

    return v1
.end method
