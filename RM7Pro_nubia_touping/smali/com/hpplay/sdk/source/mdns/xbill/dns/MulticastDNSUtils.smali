.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY_RECORDS:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-class v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;

    const-string v1, "mdns_verbose"

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mdns/utils/Misc;->getLogger(Ljava/lang/Class;Z)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->logger:Ljava/util/logging/Logger;

    .line 22
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    sput-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->EMPTY_RECORDS:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static answersAll(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Z
    .locals 14

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getOpcode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 61
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 38
    :pswitch_1
    new-array v2, v1, [I

    aput v0, v2, v0

    invoke-static {p0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->extractRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v5

    .line 39
    new-array v2, v1, [I

    aput v0, v2, v0

    invoke-static {p1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->extractRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v6

    .line 40
    array-length v2, v5

    new-array v7, v2, [Z

    .line 41
    array-length v8, v5

    move v3, v0

    move v4, v0

    :goto_1
    if-ge v3, v8, :cond_4

    aget-object v9, v5, v3

    .line 42
    aput-boolean v0, v7, v4

    .line 43
    array-length v10, v6

    move v2, v0

    :goto_2
    if-ge v2, v10, :cond_2

    aget-object v11, v6, v2

    .line 44
    invoke-virtual {v9}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v12

    invoke-virtual {v11}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 45
    invoke-virtual {v11}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getType()I

    move-result v12

    const/16 v13, 0xff

    if-eq v12, v13, :cond_1

    invoke-virtual {v9}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getType()I

    move-result v12

    invoke-virtual {v11}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getType()I

    move-result v11

    if-ne v12, v11, :cond_3

    .line 46
    :cond_1
    aput-boolean v1, v7, v4

    .line 50
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 41
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 43
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 53
    :cond_4
    array-length v3, v7

    move v2, v0

    :goto_3
    if-ge v2, v3, :cond_5

    aget-boolean v4, v7, v2

    .line 54
    if-eqz v4, :cond_0

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move v0, v1

    .line 58
    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static answersAny(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Z
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v2

    .line 74
    invoke-virtual {v2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getFlag(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getOpcode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 83
    :pswitch_1
    if-eqz p0, :cond_0

    .line 86
    new-array v2, v1, [I

    aput v0, v2, v0

    invoke-static {p0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->extractRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v4

    .line 87
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {p1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->extractRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v5

    .line 88
    array-length v6, v4

    move v3, v0

    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v7, v4, v3

    .line 89
    array-length v8, v5

    move v2, v0

    :goto_2
    if-ge v2, v8, :cond_4

    aget-object v9, v5, v2

    .line 90
    invoke-virtual {v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v10

    invoke-virtual {v9}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 91
    invoke-virtual {v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getType()I

    move-result v10

    const/16 v11, 0xff

    if-eq v10, v11, :cond_2

    invoke-virtual {v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getType()I

    move-result v10

    invoke-virtual {v9}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->getType()I

    move-result v9

    if-ne v10, v9, :cond_3

    :cond_2
    move v0, v1

    .line 92
    goto :goto_0

    .line 89
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 88
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 78
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 87
    :array_0
    .array-data 4
        0x1
        0x3
        0x2
    .end array-data
.end method

.method public static clone(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->cloneRecord()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    return-object v0
.end method

.method public static varargs extractRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 106
    sget-object v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->EMPTY_RECORDS:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 108
    array-length v4, p1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget v0, p1, v2

    .line 109
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getSectionArray(I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v5

    .line 110
    if-eqz v5, :cond_1

    array-length v0, v5

    if-lez v0, :cond_1

    .line 111
    array-length v0, v1

    array-length v6, v5

    add-int/2addr v0, v6

    .line 112
    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 113
    array-length v6, v1

    invoke-static {v1, v3, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    array-length v1, v1

    array-length v6, v5

    invoke-static {v5, v3, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 119
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public static final extractRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 123
    if-nez p0, :cond_0

    .line 124
    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 139
    :goto_0
    return-object v0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->size()I

    move-result v1

    new-array v3, v1, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 129
    array-length v1, v3

    if-lez v1, :cond_1

    .line 131
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->rrs(Z)Ljava/util/Iterator;

    move-result-object v4

    .line 132
    if-eqz v4, :cond_1

    move v1, v0

    .line 133
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    add-int/lit8 v2, v1, 0x1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_1

    :cond_1
    move-object v0, v3

    .line 139
    goto :goto_0
.end method

.method public static final extractRecords([Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 143
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_2

    .line 144
    :cond_0
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->EMPTY_RECORDS:[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 161
    :cond_1
    return-object v0

    .line 148
    :cond_2
    array-length v3, p0

    move v0, v2

    move v1, v2

    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v4, p0, v0

    .line 149
    invoke-virtual {v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;->size()I

    move-result v4

    add-int/2addr v1, v4

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_3
    new-array v0, v1, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 154
    array-length v6, p0

    move v5, v2

    move v1, v2

    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v3, p0, v5

    .line 155
    invoke-static {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->extractRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/RRset;)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v7

    .line 156
    array-length v8, v7

    move v3, v1

    move v1, v2

    :goto_2
    if-ge v1, v8, :cond_4

    aget-object v9, v7, v1

    .line 157
    add-int/lit8 v4, v3, 0x1

    aput-object v9, v0, v3

    .line 156
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_2

    .line 154
    :cond_4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v3

    goto :goto_1
.end method

.method public static getHostName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 165
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v0

    const-string v1, "HOSTNAME"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 167
    :cond_0
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v0

    const-string v1, "COMPUTERNAME"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 172
    :cond_2
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_3

    const-string v2, "unknown"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 176
    :cond_3
    invoke-virtual {v1}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 182
    :cond_4
    :goto_0
    return-object v0

    .line 178
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getLocalAddresses()[Ljava/net/InetAddress;
    .locals 4

    .prologue
    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 191
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 194
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3

    if-nez v3, :cond_0

    .line 198
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    .line 200
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 208
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/net/InetAddress;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    check-cast v0, [Ljava/net/InetAddress;

    return-object v0
.end method

.method public static getMachineName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 212
    const/4 v1, 0x0

    .line 215
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 217
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 218
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 220
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3

    if-nez v3, :cond_0

    .line 224
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 226
    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 229
    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 230
    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 234
    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 239
    :cond_2
    return-object v1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public static getTargetFromRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 6

    .prologue
    .line 243
    instance-of v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SingleNameBase;

    if-eqz v0, :cond_0

    .line 244
    check-cast p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SingleNameBase;

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SingleNameBase;->getSingleName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    .line 247
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getTarget"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_1

    .line 249
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 250
    instance-of v1, v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    if-eqz v1, :cond_1

    .line 251
    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    sget-object v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-class v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getTargetFromRecord"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No target specified in record "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static messagesEqual(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 270
    if-ne p0, p1, :cond_1

    .line 294
    :cond_0
    :goto_0
    return v1

    .line 272
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v1, v2

    .line 273
    goto :goto_0

    .line 276
    :cond_3
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v0

    .line 277
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v3

    .line 279
    if-ne v0, v3, :cond_5

    move v0, v2

    .line 294
    :goto_1
    if-eqz v0, :cond_4

    new-array v0, v6, [I

    fill-array-data v0, :array_0

    invoke-static {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->extractRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    new-array v3, v6, [I

    fill-array-data v3, :array_1

    invoke-static {p0, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/MulticastDNSUtils;->extractRecords(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;[I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 281
    :cond_5
    if-eqz v0, :cond_6

    if-nez v3, :cond_7

    :cond_6
    move v0, v2

    .line 282
    goto :goto_1

    .line 284
    :cond_7
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getFlags()[Z

    move-result-object v4

    .line 285
    invoke-virtual {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getFlags()[Z

    move-result-object v5

    .line 286
    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v4

    if-nez v4, :cond_8

    move v1, v2

    .line 287
    goto :goto_0

    .line 290
    :cond_8
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getOpcode()I

    move-result v4

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getOpcode()I

    move-result v5

    if-ne v4, v5, :cond_9

    .line 291
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getRcode()I

    move-result v0

    invoke-virtual {v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->getRcode()I

    move-result v3

    if-ne v0, v3, :cond_9

    move v0, v1

    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_1

    .line 294
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public static newQueryResponse([Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 299
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;-><init>()V

    .line 300
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v2

    .line 302
    invoke-virtual {v2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setRcode(I)V

    .line 303
    invoke-virtual {v2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setOpcode(I)V

    .line 304
    invoke-virtual {v2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setFlag(I)V

    .line 306
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 307
    aget-object v2, p0, v0

    invoke-virtual {v1, v2, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_0
    return-object v1
.end method

.method public static setDClassForRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V
    .locals 0

    .prologue
    .line 314
    iput p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->dclass:I

    .line 315
    return-void
.end method

.method public static setTLLForRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;J)V
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p0, p1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->setTTL(J)V

    .line 319
    return-void
.end method

.method public static splitMessage(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;
    .locals 14

    .prologue
    const/4 v2, 0x0

    const/4 v13, 0x1

    const/4 v4, 0x0

    .line 322
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 324
    const-string v0, "mdns_max_records_per_message"

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->intValue(Ljava/lang/String;)I

    move-result v0

    .line 325
    if-le v0, v13, :cond_4

    .line 326
    const/16 v0, 0xa

    move v1, v0

    .line 330
    :goto_0
    const/4 v0, 0x4

    new-array v8, v0, [I

    fill-array-data v8, :array_0

    array-length v9, v8

    move v5, v4

    move-object v0, v2

    :goto_1
    if-ge v5, v9, :cond_3

    aget v10, v8, v5

    .line 331
    invoke-virtual {p0, v10}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getSectionArray(I)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v11

    move v3, v4

    .line 332
    :goto_2
    array-length v6, v11

    if-ge v3, v6, :cond_2

    .line 333
    if-nez v0, :cond_1

    .line 334
    new-instance v6, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-direct {v6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;-><init>()V

    .line 335
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->getHeader()Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;

    .line 337
    invoke-virtual {v0, v4, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setCount(II)V

    .line 338
    invoke-virtual {v0, v13, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setCount(II)V

    .line 339
    const/4 v12, 0x2

    invoke-virtual {v0, v12, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setCount(II)V

    .line 340
    const/4 v12, 0x3

    invoke-virtual {v0, v12, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;->setCount(II)V

    .line 341
    invoke-virtual {v6, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->setHeader(Lcom/hpplay/sdk/source/mdns/xbill/dns/Header;)V

    .line 342
    aget-object v0, v11, v3

    invoke-virtual {v6, v0, v10}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V

    move-object v0, v6

    .line 348
    :goto_3
    if-eqz v3, :cond_0

    rem-int v6, v3, v1

    if-nez v6, :cond_0

    .line 349
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    .line 332
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 344
    :cond_1
    aget-object v6, v11, v3

    invoke-virtual {v0, v6, v10}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;->addRecord(Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;I)V

    goto :goto_3

    .line 330
    :cond_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1

    .line 355
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    check-cast v0, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    return-object v0

    :cond_4
    move v1, v0

    goto :goto_0

    .line 330
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method
