.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/base32;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/base32$Alphabet;
    }
.end annotation


# instance fields
.field private alphabet:Ljava/lang/String;

.field private lowercase:Z

.field private padding:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/base32;->alphabet:Ljava/lang/String;

    .line 19
    iput-boolean p2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/base32;->padding:Z

    .line 20
    iput-boolean p3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/base32;->lowercase:Z

    .line 21
    return-void
.end method

.method private static blockLenToPadding(I)I
    .locals 1

    .prologue
    .line 24
    packed-switch p0, :pswitch_data_0

    .line 36
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 26
    :pswitch_0
    const/4 v0, 0x6

    goto :goto_0

    .line 28
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 30
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 32
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 34
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static paddingToBlockLen(I)I
    .locals 1

    .prologue
    .line 41
    packed-switch p0, :pswitch_data_0

    .line 49
    :pswitch_0
    const/4 v0, -0x1

    .line 55
    :goto_0
    return v0

    .line 43
    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 45
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 51
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 53
    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    .line 55
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public fromString(Ljava/lang/String;)[B
    .locals 10

    .prologue
    .line 108
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 111
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 112
    aget-byte v2, v1, v0

    int-to-char v2, v2

    .line 113
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 114
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 115
    int-to-byte v2, v2

    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 111
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/base32;->padding:Z

    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 121
    const/4 v0, 0x0

    .line 173
    :goto_1
    return-object v0

    .line 124
    :cond_2
    :goto_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 125
    const/16 v0, 0x3d

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 129
    :cond_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 130
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 131
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 133
    const/4 v0, 0x0

    :goto_3
    array-length v1, v4

    div-int/lit8 v1, v1, 0x8

    if-ge v0, v1, :cond_9

    .line 134
    const/16 v1, 0x8

    new-array v6, v1, [S

    .line 135
    const/4 v1, 0x5

    new-array v7, v1, [I

    .line 136
    const/16 v2, 0x8

    .line 139
    const/4 v1, 0x0

    :goto_4
    const/16 v8, 0x8

    if-ge v1, v8, :cond_4

    .line 140
    mul-int/lit8 v8, v0, 0x8

    add-int/2addr v8, v1

    aget-byte v8, v4, v8

    int-to-char v8, v8

    .line 141
    const/16 v9, 0x3d

    if-ne v8, v9, :cond_5

    .line 153
    :cond_4
    invoke-static {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/base32;->paddingToBlockLen(I)I

    move-result v2

    .line 154
    if-gez v2, :cond_7

    .line 155
    const/4 v0, 0x0

    goto :goto_1

    .line 145
    :cond_5
    iget-object v8, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/base32;->alphabet:Ljava/lang/String;

    mul-int/lit8 v9, v0, 0x8

    add-int/2addr v9, v1

    aget-byte v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    int-to-short v8, v8

    aput-short v8, v6, v1

    .line 146
    aget-short v8, v6, v1

    if-gez v8, :cond_6

    .line 147
    const/4 v0, 0x0

    goto :goto_1

    .line 150
    :cond_6
    add-int/lit8 v2, v2, -0x1

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 158
    :cond_7
    const/4 v1, 0x0

    const/4 v8, 0x0

    aget-short v8, v6, v8

    shl-int/lit8 v8, v8, 0x3

    const/4 v9, 0x1

    aget-short v9, v6, v9

    shr-int/lit8 v9, v9, 0x2

    or-int/2addr v8, v9

    aput v8, v7, v1

    .line 159
    const/4 v1, 0x1

    const/4 v8, 0x1

    aget-short v8, v6, v8

    and-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x6

    const/4 v9, 0x2

    aget-short v9, v6, v9

    shl-int/lit8 v9, v9, 0x1

    or-int/2addr v8, v9

    const/4 v9, 0x3

    aget-short v9, v6, v9

    shr-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    aput v8, v7, v1

    .line 160
    const/4 v1, 0x2

    const/4 v8, 0x3

    aget-short v8, v6, v8

    and-int/lit8 v8, v8, 0xf

    shl-int/lit8 v8, v8, 0x4

    const/4 v9, 0x4

    aget-short v9, v6, v9

    shr-int/lit8 v9, v9, 0x1

    and-int/lit8 v9, v9, 0xf

    or-int/2addr v8, v9

    aput v8, v7, v1

    .line 161
    const/4 v1, 0x3

    const/4 v8, 0x4

    aget-short v8, v6, v8

    shl-int/lit8 v8, v8, 0x7

    const/4 v9, 0x5

    aget-short v9, v6, v9

    shl-int/lit8 v9, v9, 0x2

    or-int/2addr v8, v9

    const/4 v9, 0x6

    aget-short v9, v6, v9

    shr-int/lit8 v9, v9, 0x3

    or-int/2addr v8, v9

    aput v8, v7, v1

    .line 162
    const/4 v1, 0x4

    const/4 v8, 0x6

    aget-short v8, v6, v8

    and-int/lit8 v8, v8, 0x7

    shl-int/lit8 v8, v8, 0x5

    const/4 v9, 0x7

    aget-short v6, v6, v9

    or-int/2addr v6, v8

    aput v6, v7, v1

    .line 165
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_8

    .line 166
    :try_start_0
    aget v6, v7, v1

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 168
    :catch_0
    move-exception v1

    .line 133
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 173
    :cond_9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto/16 :goto_1
.end method

.method public toString([B)Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v4, 0x5

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 60
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v0, v1

    .line 62
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    if-ge v0, v2, :cond_5

    .line 63
    new-array v6, v4, [S

    .line 64
    const/16 v2, 0x8

    new-array v7, v2, [I

    move v3, v1

    move v2, v4

    .line 68
    :goto_1
    if-ge v3, v4, :cond_1

    .line 69
    mul-int/lit8 v8, v0, 0x5

    add-int/2addr v8, v3

    array-length v9, p1

    if-ge v8, v9, :cond_0

    .line 70
    mul-int/lit8 v8, v0, 0x5

    add-int/2addr v8, v3

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-short v8, v8

    aput-short v8, v6, v3

    .line 68
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 72
    :cond_0
    aput-short v1, v6, v3

    .line 73
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 77
    :cond_1
    invoke-static {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/base32;->blockLenToPadding(I)I

    move-result v8

    .line 78
    aget-short v2, v6, v1

    shr-int/lit8 v2, v2, 0x3

    and-int/lit8 v2, v2, 0x1f

    int-to-byte v2, v2

    aput v2, v7, v1

    .line 79
    aget-short v2, v6, v1

    and-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x2

    aget-short v3, v6, v10

    shr-int/lit8 v3, v3, 0x6

    and-int/lit8 v3, v3, 0x3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput v2, v7, v10

    .line 80
    aget-short v2, v6, v10

    shr-int/lit8 v2, v2, 0x1

    and-int/lit8 v2, v2, 0x1f

    int-to-byte v2, v2

    aput v2, v7, v12

    .line 81
    aget-short v2, v6, v10

    and-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x4

    aget-short v3, v6, v12

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput v2, v7, v11

    .line 82
    const/4 v2, 0x4

    aget-short v3, v6, v12

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x1

    aget-short v9, v6, v11

    shr-int/lit8 v9, v9, 0x7

    and-int/lit8 v9, v9, 0x1

    or-int/2addr v3, v9

    int-to-byte v3, v3

    aput v3, v7, v2

    .line 83
    aget-short v2, v6, v11

    shr-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x1f

    int-to-byte v2, v2

    aput v2, v7, v4

    .line 84
    const/4 v2, 0x6

    aget-short v3, v6, v11

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x3

    const/4 v9, 0x4

    aget-short v9, v6, v9

    shr-int/lit8 v9, v9, 0x5

    and-int/lit8 v9, v9, 0x7

    or-int/2addr v3, v9

    int-to-byte v3, v3

    aput v3, v7, v2

    .line 85
    const/4 v2, 0x7

    const/4 v3, 0x4

    aget-short v3, v6, v3

    and-int/lit8 v3, v3, 0x1f

    int-to-byte v3, v3

    aput v3, v7, v2

    move v2, v1

    .line 88
    :goto_3
    array-length v3, v7

    sub-int/2addr v3, v8

    if-ge v2, v3, :cond_3

    .line 89
    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/base32;->alphabet:Ljava/lang/String;

    aget v6, v7, v2

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 90
    iget-boolean v6, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/base32;->lowercase:Z

    if-eqz v6, :cond_2

    .line 91
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    .line 94
    :cond_2
    invoke-virtual {v5, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 97
    :cond_3
    iget-boolean v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/base32;->padding:Z

    if-eqz v2, :cond_4

    .line 98
    array-length v2, v7

    sub-int/2addr v2, v8

    :goto_4
    array-length v3, v7

    if-ge v2, v3, :cond_4

    .line 99
    const/16 v3, 0x3d

    invoke-virtual {v5, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 62
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 104
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
