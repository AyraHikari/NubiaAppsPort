.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/base16;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Base16:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static fromString(Ljava/lang/String;)[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 33
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move v0, v1

    .line 36
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 37
    aget-byte v4, v3, v0

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 38
    aget-byte v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 36
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 43
    array-length v3, v0

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 44
    const/4 v0, 0x0

    .line 60
    :goto_1
    return-object v0

    .line 46
    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 47
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 49
    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 50
    const-string v4, "0123456789ABCDEF"

    aget-byte v5, v0, v1

    int-to-char v5, v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    int-to-byte v4, v4

    .line 51
    const-string v5, "0123456789ABCDEF"

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, v0, v6

    int-to-char v6, v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    int-to-byte v5, v5

    .line 54
    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v5

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 60
    :cond_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_1

    .line 55
    :catch_0
    move-exception v4

    goto :goto_3
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 19
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 21
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 22
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    .line 23
    shr-int/lit8 v3, v2, 0x4

    int-to-byte v3, v3

    .line 24
    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    .line 25
    const-string v4, "0123456789ABCDEF"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 26
    const-string v3, "0123456789ABCDEF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
