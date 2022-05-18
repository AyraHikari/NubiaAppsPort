.class public final Lcom/hpplay/sdk/source/mdns/xbill/dns/ReverseMap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static inaddr4:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field private static inaddr6:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "in-addr.arpa."

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromConstantString(Ljava/lang/String;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ReverseMap;->inaddr4:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 12
    const-string v0, "ip6.arpa."

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromConstantString(Ljava/lang/String;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/ReverseMap;->inaddr6:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static fromAddress(Ljava/net/InetAddress;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ReverseMap;->fromAddress([B)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    return-object v0
.end method

.method public static fromAddress([B)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 18
    array-length v0, p0

    if-eq v0, v5, :cond_0

    array-length v0, p0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "array must contain 4 or 16 elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 22
    array-length v0, p0

    if-ne v0, v5, :cond_2

    .line 23
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_6

    .line 24
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 25
    if-lez v0, :cond_1

    .line 26
    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 30
    :cond_2
    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 32
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_6

    .line 33
    const/4 v0, 0x0

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x4

    aput v4, v3, v0

    .line 34
    const/4 v0, 0x1

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    and-int/lit8 v4, v4, 0xf

    aput v4, v3, v0

    .line 36
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_5

    .line 37
    aget v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    if-gtz v1, :cond_3

    if-lez v0, :cond_4

    .line 39
    :cond_3
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 32
    :cond_5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 46
    :cond_6
    :try_start_0
    array-length v0, p0

    if-ne v0, v5, :cond_7

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/ReverseMap;->inaddr4:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromString(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/ReverseMap;->inaddr6:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromString(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_3

    .line 47
    :catch_0
    move-exception v0

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "name cannot be invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
