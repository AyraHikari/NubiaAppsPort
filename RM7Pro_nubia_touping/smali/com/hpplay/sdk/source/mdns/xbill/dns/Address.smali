.class public final Lcom/hpplay/sdk/source/mdns/xbill/dns/Address;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IPv4:I = 0x1

.field public static final IPv6:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method private static addrFromRecord(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;)Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 242
    instance-of v0, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;

    if-eqz v0, :cond_0

    .line 243
    check-cast p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 248
    :goto_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 245
    :cond_0
    check-cast p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/AAAARecord;

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/AAAARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method public static addressLength(I)I
    .locals 2

    .prologue
    .line 301
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 302
    const/4 v0, 0x4

    .line 304
    :goto_0
    return v0

    .line 303
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 304
    const/16 v0, 0x10

    goto :goto_0

    .line 306
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static familyOf(Ljava/net/InetAddress;)I
    .locals 2

    .prologue
    .line 291
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 292
    const/4 v0, 0x1

    .line 294
    :goto_0
    return v0

    .line 293
    :cond_0
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    .line 294
    const/4 v0, 0x2

    goto :goto_0

    .line 296
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getByAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 3

    .prologue
    .line 253
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 254
    if-eqz v0, :cond_0

    .line 255
    invoke-static {p0, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    .line 257
    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 258
    if-eqz v0, :cond_1

    .line 259
    invoke-static {p0, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0

    .line 261
    :cond_1
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getByAddress(Ljava/lang/String;I)Ljava/net/InetAddress;
    .locals 3

    .prologue
    .line 267
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    invoke-static {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v0

    .line 271
    if-eqz v0, :cond_1

    .line 272
    invoke-static {p0, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 274
    :cond_1
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getHostName(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 280
    invoke-static {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/ReverseMap;->fromAddress(Ljava/net/InetAddress;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    .line 281
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;

    const/16 v2, 0xc

    invoke-direct {v1, v0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)V

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->run()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    .line 282
    if-nez v0, :cond_0

    .line 283
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "unknown address"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/PTRRecord;

    .line 286
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/PTRRecord;->getTarget()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static lookupHostName(Ljava/lang/String;Z)[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 6

    .prologue
    .line 210
    :try_start_0
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;

    const/4 v0, 0x1

    invoke-direct {v1, p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;-><init>(Ljava/lang/String;I)V

    .line 211
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->run()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    .line 213
    if-nez v0, :cond_2

    .line 214
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->getResult()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 215
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;

    const/16 v1, 0x1c

    invoke-direct {v0, p0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->run()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-object v0

    .line 221
    :cond_1
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "unknown host"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "invalid name"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_2
    if-eqz p1, :cond_0

    .line 225
    :try_start_1
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;

    const/16 v2, 0x1c

    invoke-direct {v1, p0, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Lookup;->run()[Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v2

    .line 226
    if-eqz v2, :cond_0

    .line 229
    array-length v1, v0

    array-length v3, v2

    add-int/2addr v1, v3

    new-array v1, v1, [Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    .line 230
    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    const/4 v3, 0x0

    array-length v0, v0

    array-length v4, v2

    invoke-static {v2, v3, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 232
    goto :goto_0
.end method

.method private static parseV4(Ljava/lang/String;)[B
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 21
    const/4 v0, 0x4

    new-array v5, v0, [B

    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    move v6, v1

    move v0, v1

    move v2, v1

    move v3, v1

    .line 27
    :goto_0
    if-ge v6, v7, :cond_7

    .line 28
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 29
    const/16 v9, 0x30

    if-lt v8, v9, :cond_2

    const/16 v9, 0x39

    if-gt v8, v9, :cond_2

    .line 30
    if-ne v0, v10, :cond_0

    move-object v0, v4

    .line 68
    :goto_1
    return-object v0

    .line 34
    :cond_0
    if-lez v0, :cond_1

    if-nez v2, :cond_1

    move-object v0, v4

    .line 35
    goto :goto_1

    .line 38
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 39
    mul-int/lit8 v2, v2, 0xa

    .line 40
    add-int/lit8 v8, v8, -0x30

    add-int/2addr v2, v8

    .line 41
    const/16 v8, 0xff

    if-le v2, v8, :cond_6

    move-object v0, v4

    .line 42
    goto :goto_1

    .line 45
    :cond_2
    const/16 v9, 0x2e

    if-eq v8, v9, :cond_3

    move-object v0, v4

    .line 46
    goto :goto_1

    .line 49
    :cond_3
    if-ne v3, v10, :cond_4

    move-object v0, v4

    .line 50
    goto :goto_1

    .line 53
    :cond_4
    if-nez v0, :cond_5

    move-object v0, v4

    .line 54
    goto :goto_1

    .line 56
    :cond_5
    add-int/lit8 v0, v3, 0x1

    int-to-byte v2, v2

    aput-byte v2, v5, v3

    move v2, v1

    move v3, v0

    move v0, v1

    .line 27
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 62
    :cond_7
    if-eq v3, v10, :cond_8

    move-object v0, v4

    .line 63
    goto :goto_1

    .line 64
    :cond_8
    if-nez v0, :cond_9

    move-object v0, v4

    .line 65
    goto :goto_1

    .line 67
    :cond_9
    int-to-byte v0, v2

    aput-byte v0, v5, v3

    move-object v0, v5

    .line 68
    goto :goto_1
.end method

.method private static parseV6(Ljava/lang/String;)[B
    .locals 13

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/16 v12, 0x10

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 73
    .line 74
    new-array v5, v12, [B

    .line 75
    const-string v0, ":"

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 77
    array-length v0, v9

    add-int/lit8 v6, v0, -0x1

    .line 78
    aget-object v0, v9, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    .line 79
    sub-int v0, v6, v2

    if-lez v0, :cond_0

    aget-object v0, v9, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v4

    .line 168
    :goto_0
    return-object v0

    :cond_1
    move v0, v1

    .line 86
    :goto_1
    aget-object v7, v9, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_13

    .line 87
    sub-int v7, v6, v0

    if-lez v7, :cond_2

    add-int/lit8 v7, v6, -0x1

    aget-object v7, v9, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move-object v0, v4

    .line 88
    goto :goto_0

    .line 91
    :cond_3
    add-int/lit8 v6, v6, -0x1

    move v8, v6

    .line 94
    :goto_2
    sub-int v6, v8, v0

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x8

    if-le v6, v7, :cond_4

    move-object v0, v4

    .line 95
    goto :goto_0

    :cond_4
    move v7, v0

    move v0, v2

    .line 102
    :goto_3
    if-gt v7, v8, :cond_a

    .line 103
    aget-object v6, v9, v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6

    .line 104
    if-ltz v3, :cond_5

    move-object v0, v4

    .line 105
    goto :goto_0

    :cond_5
    move v3, v0

    .line 102
    :goto_4
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_3

    .line 109
    :cond_6
    aget-object v6, v9, v7

    const/16 v10, 0x2e

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_c

    .line 110
    if-ge v7, v8, :cond_7

    move-object v0, v4

    .line 111
    goto :goto_0

    .line 114
    :cond_7
    const/4 v6, 0x6

    if-le v7, v6, :cond_8

    move-object v0, v4

    .line 115
    goto :goto_0

    .line 118
    :cond_8
    aget-object v6, v9, v7

    invoke-static {v6, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v7

    .line 119
    if-nez v7, :cond_9

    move-object v0, v4

    .line 120
    goto :goto_0

    :cond_9
    move v1, v2

    .line 126
    :goto_5
    const/4 v6, 0x4

    if-lt v1, v6, :cond_b

    .line 156
    :cond_a
    if-ge v0, v12, :cond_11

    if-gez v3, :cond_11

    move-object v0, v4

    .line 157
    goto :goto_0

    .line 130
    :cond_b
    add-int/lit8 v6, v0, 0x1

    aget-byte v8, v7, v1

    aput-byte v8, v5, v0

    .line 131
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v6

    goto :goto_5

    :cond_c
    move v6, v2

    .line 136
    :goto_6
    :try_start_0
    aget-object v10, v9, v7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v6, v10, :cond_e

    .line 137
    aget-object v10, v9, v7

    invoke-virtual {v10, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 138
    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    if-gez v10, :cond_d

    move-object v0, v4

    .line 139
    goto/16 :goto_0

    .line 136
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 143
    :cond_e
    aget-object v6, v9, v7

    const/16 v10, 0x10

    invoke-static {v6, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 144
    const v10, 0xffff

    if-gt v6, v10, :cond_f

    if-gez v6, :cond_10

    :cond_f
    move-object v0, v4

    .line 145
    goto/16 :goto_0

    .line 148
    :cond_10
    add-int/lit8 v10, v0, 0x1

    ushr-int/lit8 v11, v6, 0x8

    int-to-byte v11, v11

    aput-byte v11, v5, v0

    .line 149
    add-int/lit8 v0, v10, 0x1

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 150
    :catch_0
    move-exception v0

    move-object v0, v4

    .line 151
    goto/16 :goto_0

    .line 159
    :cond_11
    if-ltz v3, :cond_12

    .line 160
    rsub-int/lit8 v1, v0, 0x10

    .line 161
    add-int v4, v3, v1

    sub-int/2addr v0, v3

    invoke-static {v5, v3, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v3

    .line 163
    :goto_7
    add-int v4, v3, v1

    if-ge v0, v4, :cond_12

    .line 164
    aput-byte v2, v5, v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_12
    move-object v0, v5

    .line 168
    goto/16 :goto_0

    :cond_13
    move v8, v6

    goto/16 :goto_2

    :cond_14
    move v0, v2

    goto/16 :goto_1
.end method

.method public static toArray(Ljava/lang/String;)[I
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Address;->toArray(Ljava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method public static toArray(Ljava/lang/String;I)[I
    .locals 4

    .prologue
    .line 174
    invoke-static {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object v2

    .line 175
    if-nez v2, :cond_0

    .line 176
    const/4 v0, 0x0

    .line 184
    :goto_0
    return-object v0

    .line 178
    :cond_0
    array-length v0, v2

    new-array v1, v0, [I

    .line 180
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 181
    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v0

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 184
    goto :goto_0
.end method

.method public static toByteArray(Ljava/lang/String;I)[B
    .locals 2

    .prologue
    .line 193
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 194
    invoke-static {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Address;->parseV4(Ljava/lang/String;)[B

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    .line 195
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 196
    invoke-static {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Address;->parseV6(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 198
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toDottedQuad([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static truncate(Ljava/net/InetAddress;I)Ljava/net/InetAddress;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 311
    invoke-static {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Address;->familyOf(Ljava/net/InetAddress;)I

    move-result v0

    .line 312
    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Address;->addressLength(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    .line 313
    if-ltz p1, :cond_3

    if-gt p1, v0, :cond_3

    .line 314
    if-ne p1, v0, :cond_0

    .line 334
    :goto_0
    return-object p0

    .line 317
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 320
    div-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x1

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 321
    aput-byte v1, v2, v0

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 324
    :cond_1
    rem-int/lit8 v3, p1, 0x8

    move v0, v1

    .line 327
    :goto_2
    if-ge v0, v3, :cond_2

    .line 328
    const/4 v4, 0x1

    rsub-int/lit8 v5, v0, 0x7

    shl-int/2addr v4, v5

    or-int/2addr v1, v4

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 331
    :cond_2
    div-int/lit8 v0, p1, 0x8

    div-int/lit8 v3, p1, 0x8

    aget-byte v3, v2, v3

    and-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    .line 334
    :try_start_0
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid mask length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
