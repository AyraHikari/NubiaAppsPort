.class public Lcom/hpplay/sdk/source/mdns/ServiceName;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
.source "SourceFile"


# static fields
.field private static final PROTOCOLS:[[B

.field private static final SUB_SERVICE_INDICATOR:[B

.field private static final serialVersionUID:J = 0x2edeb8d647L


# instance fields
.field private application:Ljava/lang/String;

.field private domain:Ljava/lang/String;

.field private fullSubType:Ljava/lang/String;

.field private fullType:Ljava/lang/String;

.field private instance:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private final serviceRRName:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field private final serviceTypeName:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field private subType:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x5

    const/4 v0, 0x0

    .line 22
    new-array v1, v4, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/hpplay/sdk/source/mdns/ServiceName;->SUB_SERVICE_INDICATOR:[B

    .line 25
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 26
    const/4 v1, 0x3

    new-array v1, v1, [[B

    new-array v2, v4, [B

    fill-array-data v2, :array_1

    aput-object v2, v1, v0

    new-array v2, v4, [B

    fill-array-data v2, :array_2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const/4 v4, 0x6

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    aput-object v4, v1, v2

    .line 27
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v4, v1, v0

    .line 28
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    const-class v0, Lcom/hpplay/sdk/source/mdns/ServiceName;

    const-string v1, "ServiceName.protocol"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 32
    const/4 v2, 0x0

    .line 34
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 39
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [B

    .line 40
    const/4 v5, 0x0

    array-length v6, v0

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 41
    const/4 v5, 0x0

    const/4 v6, 0x1

    array-length v7, v0

    invoke-static {v0, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    :goto_2
    :try_start_2
    invoke-static {}, Ljava/util/logging/Logger;->getAnonymousLogger()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find Protocols file \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    if-eqz v1, :cond_1

    .line 49
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 55
    :cond_1
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [[B

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    sput-object v0, Lcom/hpplay/sdk/source/mdns/ServiceName;->PROTOCOLS:[[B

    .line 56
    return-void

    .line 47
    :cond_2
    if-eqz v1, :cond_1

    .line 49
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 50
    :catch_1
    move-exception v0

    goto :goto_3

    .line 47
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_3

    .line 49
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 52
    :cond_3
    :goto_5
    throw v0

    .line 50
    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_5

    .line 47
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 44
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 22
    nop

    :array_0
    .array-data 1
        0x4t
        0x5ft
        0x73t
        0x75t
        0x62t
    .end array-data

    .line 26
    nop

    :array_1
    .array-data 1
        0x4t
        0x5ft
        0x74t
        0x63t
        0x70t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x4t
        0x5ft
        0x75t
        0x64t
        0x70t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x5t
        0x5ft
        0x73t
        0x63t
        0x74t
        0x70t
    .end array-data
.end method

.method constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 12

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;I)V

    .line 92
    const/4 v1, 0x0

    .line 94
    :try_start_0
    const-class v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 95
    const-string v2, "name"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 96
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 106
    :goto_0
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->labels()I

    move-result v7

    .line 107
    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->length()S

    move-result v0

    new-array v0, v0, [B

    .line 110
    const/4 v2, 0x0

    .line 111
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_0

    .line 112
    invoke-virtual {p1, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->getLabel(I)[B

    move-result-object v3

    .line 113
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-byte v5, v3, v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3, v4, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    const/4 v4, 0x0

    aget-byte v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 98
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 104
    goto :goto_0

    .line 100
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 104
    goto :goto_0

    .line 102
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 118
    :cond_0
    new-array v8, v7, [S

    .line 120
    const/4 v6, 0x0

    .line 121
    const/4 v5, 0x0

    .line 122
    const/4 v4, -0x1

    .line 123
    const/4 v1, -0x1

    .line 124
    const/4 v3, -0x1

    .line 125
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v7, :cond_3

    .line 126
    aput-short v6, v8, v2

    .line 127
    aget-short v6, v8, v2

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    .line 128
    aget-short v9, v8, v2

    add-int/2addr v6, v9

    add-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    .line 130
    aget-short v9, v8, v2

    aget-byte v9, v0, v9

    if-lez v9, :cond_15

    aget-short v9, v8, v2

    add-int/lit8 v9, v9, 0x1

    aget-byte v9, v0, v9

    const/16 v10, 0x5f

    if-ne v9, v10, :cond_15

    .line 131
    if-gez v3, :cond_1

    move v3, v2

    .line 134
    :cond_1
    if-gez v1, :cond_2

    sget-object v4, Lcom/hpplay/sdk/source/mdns/ServiceName;->SUB_SERVICE_INDICATOR:[B

    aget-short v9, v8, v2

    invoke-static {v4, v0, v9}, Lcom/hpplay/sdk/source/mdns/ServiceName;->arrayEquals([B[BS)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 138
    :cond_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v2

    move v11, v1

    move v1, v3

    move v3, v11

    .line 125
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v11, v1

    move v1, v3

    move v3, v11

    goto :goto_2

    .line 142
    :cond_3
    if-lez v5, :cond_14

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    if-lez v3, :cond_6

    .line 145
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_5

    .line 146
    aget-short v6, v8, v2

    aget-byte v6, v0, v6

    .line 147
    if-lez v6, :cond_4

    .line 148
    new-instance v7, Ljava/lang/String;

    aget-short v9, v8, v2

    add-int/lit8 v9, v9, 0x1

    invoke-direct {v7, v0, v9, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 151
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v2, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->instance:Ljava/lang/String;

    .line 152
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 154
    :cond_6
    :goto_5
    if-gt v3, v4, :cond_a

    .line 155
    aget-short v2, v8, v3

    aget-byte v2, v0, v2

    .line 156
    if-lez v2, :cond_7

    .line 157
    new-instance v6, Ljava/lang/String;

    aget-short v7, v8, v3

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v6, v0, v7, v2}, Ljava/lang/String;-><init>([BII)V

    .line 158
    if-ge v3, v1, :cond_8

    .line 159
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :goto_6
    const/16 v2, 0x2e

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 160
    :cond_8
    if-ne v3, v1, :cond_9

    .line 161
    const/4 v2, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v2, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->subType:Ljava/lang/String;

    .line 162
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->fullSubType:Ljava/lang/String;

    goto :goto_6

    .line 164
    :cond_9
    if-ne v3, v4, :cond_d

    .line 165
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    sget-object v2, Lcom/hpplay/sdk/source/mdns/ServiceName;->PROTOCOLS:[[B

    array-length v7, v2

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v7, :cond_a

    aget-object v9, v2, v1

    .line 167
    aget-short v10, v8, v3

    invoke-static {v9, v0, v10}, Lcom/hpplay/sdk/source/mdns/ServiceName;->arrayEquals([B[BS)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 168
    iput-object v6, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->protocol:Ljava/lang/String;

    .line 179
    :cond_a
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->fullSubType:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 180
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->fullSubType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->type:Ljava/lang/String;

    .line 181
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->fullType:Ljava/lang/String;

    .line 182
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->protocol:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 183
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->fullSubType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->protocol:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->application:Ljava/lang/String;

    .line 195
    :goto_8
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 196
    add-int/lit8 v1, v4, 0x1

    :goto_9
    array-length v2, v8

    if-ge v1, v2, :cond_11

    .line 197
    aget-short v2, v8, v1

    aget-byte v2, v0, v2

    .line 198
    if-lez v2, :cond_b

    .line 199
    new-instance v3, Ljava/lang/String;

    aget-short v4, v8, v1

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v0, v4, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 166
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 174
    :cond_d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 185
    :cond_e
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->type:Ljava/lang/String;

    iput-object v1, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->application:Ljava/lang/String;

    goto :goto_8

    .line 188
    :cond_f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->fullType:Ljava/lang/String;

    iput-object v1, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->type:Ljava/lang/String;

    .line 189
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->protocol:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 190
    const/4 v1, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->protocol:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->application:Ljava/lang/String;

    goto :goto_8

    .line 192
    :cond_10
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->type:Ljava/lang/String;

    iput-object v1, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->application:Ljava/lang/String;

    goto :goto_8

    .line 202
    :cond_11
    const/4 v0, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->domain:Ljava/lang/String;

    .line 203
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 204
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->domain:Ljava/lang/String;

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->domain:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->serviceTypeName:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 205
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->instance:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->instance:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13

    .line 206
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->instance:Ljava/lang/String;

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->serviceTypeName:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct {v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;-><init>(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->serviceRRName:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 213
    :goto_b
    return-void

    .line 204
    :cond_12
    const-string v0, ""

    goto :goto_a

    .line 208
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->serviceRRName:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    goto :goto_b

    .line 211
    :cond_14
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not an IETF RFC 2782 or IETF RFC 6763 compliant service name."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    move v11, v3

    move v3, v1

    move v1, v11

    goto/16 :goto_3
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/ServiceName;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct {v0, p1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;-><init>(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/ServiceName;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    .line 86
    return-void
.end method

.method private static final arrayEquals([B[BS)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 216
    aget-byte v2, p1, p2

    int-to-short v3, v2

    .line 217
    aget-byte v2, p0, v0

    if-ne v3, v2, :cond_0

    array-length v2, p1

    add-int v4, p2, v3

    if-le v2, v4, :cond_0

    move v2, v1

    .line 218
    :goto_0
    if-ge v2, v3, :cond_2

    .line 219
    aget-byte v4, p0, v2

    add-int v5, p2, v2

    aget-byte v5, p1, v5

    if-eq v4, v5, :cond_1

    .line 225
    :cond_0
    :goto_1
    return v0

    .line 218
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 223
    goto :goto_1
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const-wide v8, 0x412e848000000000L    # 1000000.0

    .line 308
    new-instance v2, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    array-length v0, p0

    if-lez v0, :cond_0

    aget-object v0, p0, v1

    :goto_0
    invoke-direct {v2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;-><init>(Ljava/lang/String;)V

    .line 313
    new-instance v0, Lcom/hpplay/sdk/source/mdns/ServiceName;

    invoke-direct {v0, v2}, Lcom/hpplay/sdk/source/mdns/ServiceName;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    .line 314
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service Name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 315
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Instance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/hpplay/sdk/source/mdns/ServiceName;->instance:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 316
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Full Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/hpplay/sdk/source/mdns/ServiceName;->fullType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 317
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sub Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/hpplay/sdk/source/mdns/ServiceName;->subType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 318
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/hpplay/sdk/source/mdns/ServiceName;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 319
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Application: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/hpplay/sdk/source/mdns/ServiceName;->application:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 320
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Protocol: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/hpplay/sdk/source/mdns/ServiceName;->protocol:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 321
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Domain: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/hpplay/sdk/source/mdns/ServiceName;->domain:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 323
    const v3, 0x186a0

    .line 324
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move v0, v1

    .line 325
    :goto_1
    if-ge v0, v3, :cond_1

    .line 326
    new-instance v1, Lcom/hpplay/sdk/source/mdns/ServiceName;

    invoke-direct {v1, v2}, Lcom/hpplay/sdk/source/mdns/ServiceName;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 308
    :cond_0
    const-string v0, "Steve Posick\'s Work MacBook Pro._test._sub._syncmate._tcp.local."

    goto/16 :goto_0

    .line 328
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v4

    .line 329
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    long-to-double v6, v0

    div-double/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " milliseconds to parse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " service names at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-long v6, v3

    div-long v6, v0, v6

    long-to-double v6, v6

    div-double/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " millis / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-long v6, v3

    div-long/2addr v0, v6

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " nanoseconds each name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 330
    return-void
.end method


# virtual methods
.method public getApplication()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->application:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getFullSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->fullSubType:Ljava/lang/String;

    return-object v0
.end method

.method public getFullType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->fullType:Ljava/lang/String;

    return-object v0
.end method

.method public getInstance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->instance:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceRRName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->serviceRRName:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    return-object v0
.end method

.method public getServiceTypeName()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->serviceTypeName:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/ServiceName;->type:Ljava/lang/String;

    return-object v0
.end method
