.class public Lcom/hpplay/sdk/source/d/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "utf-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/d/d;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/hpplay/sdk/source/d/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sget-object v2, Lcom/hpplay/sdk/source/d/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/d;->a([B[B)[B

    move-result-object v1

    sget-object v2, Lcom/hpplay/sdk/source/d/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object p0, v0

    goto :goto_0
.end method

.method private static a([B[B)[B
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 25
    .line 28
    array-length v3, p0

    move v0, v2

    .line 29
    :cond_0
    if-ge v0, v3, :cond_1

    .line 30
    array-length v4, p1

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-byte v5, p1, v1

    .line 31
    aget-byte v6, p0, v0

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p0, v0

    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    if-ge v0, v3, :cond_0

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :cond_1
    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-static {p0, p1}, Lcom/hpplay/sdk/source/d/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
