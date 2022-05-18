.class public Lcom/hpplay/sdk/source/protocol/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/hpplay/sdk/source/protocol/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/hpplay/sdk/source/protocol/b/a;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method public static a(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 45
    if-nez p0, :cond_0

    .line 53
    :goto_0
    return-object v0

    .line 49
    :cond_0
    :try_start_0
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a([B)Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static b(Ljava/math/BigInteger;)[B
    .locals 3

    .prologue
    .line 76
    sget-boolean v0, Lcom/hpplay/sdk/source/protocol/b/a;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 77
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 78
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    if-nez v1, :cond_1

    .line 79
    const/4 v1, 0x1

    array-length v2, v0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 81
    :cond_1
    return-object v0
.end method
