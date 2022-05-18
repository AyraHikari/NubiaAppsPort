.class public Lcom/hpplay/cybergarage/net/HostInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IPV4_BITMASK:I = 0x1

.field public static final IPV6_BITMASK:I = 0x10

.field public static final LOCAL_BITMASK:I = 0x100

.field private static final TAG:Ljava/lang/String; = "hpplay-HostInterface"

.field public static USE_LOOPBACK_ADDR:Z

.field public static USE_ONLY_IPV4_ADDR:Z

.field public static USE_ONLY_IPV6_ADDR:Z

.field private static ifAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    sput-boolean v1, Lcom/hpplay/cybergarage/net/HostInterface;->USE_LOOPBACK_ADDR:Z

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lcom/hpplay/cybergarage/net/HostInterface;->USE_ONLY_IPV4_ADDR:Z

    .line 48
    sput-boolean v1, Lcom/hpplay/cybergarage/net/HostInterface;->USE_ONLY_IPV6_ADDR:Z

    .line 54
    const-string v0, ""

    sput-object v0, Lcom/hpplay/cybergarage/net/HostInterface;->ifAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getHostAddress(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 167
    invoke-static {}, Lcom/hpplay/cybergarage/net/HostInterface;->hasAssignedInterface()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 168
    invoke-static {}, Lcom/hpplay/cybergarage/net/HostInterface;->getInterface()Ljava/lang/String;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    .line 170
    :cond_0
    const/4 v1, 0x0

    .line 172
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 173
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 174
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 175
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 176
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 178
    invoke-static {v0}, Lcom/hpplay/cybergarage/net/HostInterface;->isUsableAddress(Ljava/net/InetAddress;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 180
    if-ge v1, p0, :cond_3

    .line 181
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 182
    goto :goto_1

    .line 184
    :cond_3
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 193
    :cond_4
    const-string v0, ""

    goto :goto_0
.end method

.method public static final getHostURL(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 275
    .line 276
    invoke-static {p0}, Lcom/hpplay/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 278
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 280
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    return-object v0
.end method

.method public static final getIPv4Address()Ljava/lang/String;
    .locals 5

    .prologue
    .line 251
    invoke-static {}, Lcom/hpplay/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v2

    .line 252
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 253
    invoke-static {v1}, Lcom/hpplay/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-static {v0}, Lcom/hpplay/cybergarage/net/HostInterface;->isIPv4Address(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 257
    :goto_1
    return-object v0

    .line 252
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 257
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public static final getIPv6Address()Ljava/lang/String;
    .locals 5

    .prologue
    .line 261
    invoke-static {}, Lcom/hpplay/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v2

    .line 262
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 263
    invoke-static {v1}, Lcom/hpplay/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-static {v0}, Lcom/hpplay/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 267
    :goto_1
    return-object v0

    .line 262
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 267
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public static final getInetAddress(I[Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 127
    if-eqz p1, :cond_5

    .line 128
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move v0, v1

    .line 129
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 132
    :try_start_0
    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 136
    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    move-object v2, v0

    .line 147
    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 148
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 149
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 150
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 151
    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 153
    and-int/lit16 v5, p0, 0x100

    if-nez v5, :cond_4

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_3

    .line 156
    :cond_4
    and-int/lit8 v5, p0, 0x1

    if-eqz v5, :cond_6

    instance-of v5, v0, Ljava/net/Inet4Address;

    if-eqz v5, :cond_6

    .line 157
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 142
    :cond_5
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 145
    goto :goto_2

    .line 143
    :catch_0
    move-exception v0

    .line 144
    const/4 v0, 0x0

    .line 163
    :goto_4
    return-object v0

    .line 158
    :cond_6
    and-int/lit8 v5, p0, 0x10

    if-eqz v5, :cond_3

    instance-of v5, v0, Ljava/net/InetAddress;

    if-eqz v5, :cond_3

    .line 159
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 163
    :cond_7
    new-array v0, v1, [Ljava/net/InetAddress;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    check-cast v0, [Ljava/net/InetAddress;

    goto :goto_4

    .line 133
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static final getInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/hpplay/cybergarage/net/HostInterface;->ifAddress:Ljava/lang/String;

    return-object v0
.end method

.method public static final getNHostAddresses()I
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 94
    invoke-static {}, Lcom/hpplay/cybergarage/net/HostInterface;->hasAssignedInterface()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 114
    :goto_0
    return v0

    .line 97
    :cond_0
    const/4 v1, 0x0

    .line 99
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 100
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 102
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 103
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 105
    invoke-static {v0}, Lcom/hpplay/cybergarage/net/HostInterface;->isUsableAddress(Ljava/net/InetAddress;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    add-int/lit8 v1, v1, 0x1

    .line 108
    goto :goto_1

    :cond_3
    move v0, v1

    .line 112
    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 111
    const-string v2, "hpplay-HostInterface"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/hpplay/cybergarage/util/UPnPLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static final hasAssignedInterface()Z
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/hpplay/cybergarage/net/HostInterface;->ifAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final hasIPv4Addresses()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 227
    invoke-static {}, Lcom/hpplay/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v3

    move v2, v1

    .line 228
    :goto_0
    if-ge v2, v3, :cond_1

    .line 229
    invoke-static {v2}, Lcom/hpplay/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v4

    .line 230
    invoke-static {v4}, Lcom/hpplay/cybergarage/net/HostInterface;->isIPv4Address(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v0, :cond_0

    .line 233
    :goto_1
    return v0

    .line 228
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 233
    goto :goto_1
.end method

.method public static final hasIPv6Addresses()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 237
    invoke-static {}, Lcom/hpplay/cybergarage/net/HostInterface;->getNHostAddresses()I

    move-result v3

    move v2, v1

    .line 238
    :goto_0
    if-ge v2, v3, :cond_1

    .line 239
    invoke-static {v2}, Lcom/hpplay/cybergarage/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v4

    .line 240
    invoke-static {v4}, Lcom/hpplay/cybergarage/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v0, :cond_0

    .line 243
    :goto_1
    return v0

    .line 238
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 243
    goto :goto_1
.end method

.method public static final isIPv4Address(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 213
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 214
    instance-of v1, v1, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 215
    const/4 v0, 0x1

    .line 219
    :cond_0
    :goto_0
    return v0

    .line 217
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final isIPv6Address(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 202
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 203
    instance-of v1, v1, Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 204
    const/4 v0, 0x1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 206
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static final isUsableAddress(Ljava/net/InetAddress;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 78
    sget-boolean v2, Lcom/hpplay/cybergarage/net/HostInterface;->USE_LOOPBACK_ADDR:Z

    if-nez v2, :cond_1

    .line 79
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    sget-boolean v2, Lcom/hpplay/cybergarage/net/HostInterface;->USE_ONLY_IPV4_ADDR:Z

    if-ne v2, v1, :cond_2

    .line 83
    instance-of v2, p0, Ljava/net/Inet6Address;

    if-nez v2, :cond_0

    .line 86
    :cond_2
    sget-boolean v2, Lcom/hpplay/cybergarage/net/HostInterface;->USE_ONLY_IPV6_ADDR:Z

    if-ne v2, v1, :cond_3

    .line 87
    instance-of v2, p0, Ljava/net/Inet4Address;

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 90
    goto :goto_0
.end method

.method public static final setInterface(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    sput-object p0, Lcom/hpplay/cybergarage/net/HostInterface;->ifAddress:Ljava/lang/String;

    .line 61
    return-void
.end method
