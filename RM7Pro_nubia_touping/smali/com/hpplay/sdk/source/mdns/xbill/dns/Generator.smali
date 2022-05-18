.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private current:J

.field public final dclass:I

.field public end:J

.field public final namePattern:Ljava/lang/String;

.field public final origin:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field public final rdataPattern:Ljava/lang/String;

.field public start:J

.field public step:J

.field public final ttl:J

.field public final type:I


# direct methods
.method public constructor <init>(JJJLjava/lang/String;IIJLjava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 5

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-ltz v2, :cond_0

    cmp-long v2, p1, p3

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-gtz v2, :cond_1

    .line 22
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid range specification"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 23
    :cond_1
    invoke-static {p8}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->supportedType(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 24
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unsupported type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 26
    :cond_2
    invoke-static {p9}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass;->check(I)V

    .line 27
    iput-wide p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->start:J

    .line 28
    iput-wide p3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->end:J

    .line 29
    iput-wide p5, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->step:J

    .line 30
    iput-object p7, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->namePattern:Ljava/lang/String;

    .line 31
    iput p8, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->type:I

    .line 32
    iput p9, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->dclass:I

    .line 33
    iput-wide p10, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->ttl:J

    .line 34
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->rdataPattern:Ljava/lang/String;

    .line 35
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->origin:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 36
    iput-wide p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->current:J

    .line 37
    return-void
.end method

.method private substitute(Ljava/lang/String;J)Ljava/lang/String;
    .locals 18

    .prologue
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    .line 45
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    const/4 v0, 0x0

    :goto_0
    array-length v2, v14

    if-ge v0, v2, :cond_18

    .line 47
    aget-byte v2, v14, v0

    and-int/lit16 v2, v2, 0xff

    int-to-char v5, v2

    .line 48
    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v15, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 50
    const/4 v1, 0x0

    .line 46
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    const/16 v2, 0x5c

    if-ne v5, v2, :cond_2

    .line 54
    add-int/lit8 v1, v0, 0x1

    array-length v2, v14

    if-ne v1, v2, :cond_1

    .line 55
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "invalid escape character"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    const/4 v1, 0x1

    .line 57
    goto :goto_1

    .line 59
    :cond_2
    const/16 v2, 0x24

    if-ne v5, v2, :cond_17

    .line 60
    const/4 v4, 0x0

    .line 61
    const-wide/16 v2, 0x0

    .line 62
    const-wide/16 v8, 0x0

    .line 63
    const-wide/16 v10, 0xa

    .line 64
    const/4 v7, 0x0

    .line 65
    add-int/lit8 v6, v0, 0x1

    array-length v12, v14

    if-ge v6, v12, :cond_3

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, v14, v6

    const/16 v12, 0x24

    if-ne v6, v12, :cond_3

    .line 66
    add-int/lit8 v0, v0, 0x1

    aget-byte v2, v14, v0

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    .line 67
    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 70
    :cond_3
    add-int/lit8 v6, v0, 0x1

    array-length v12, v14

    if-ge v6, v12, :cond_12

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, v14, v6

    const/16 v12, 0x7b

    if-ne v6, v12, :cond_12

    .line 71
    add-int/lit8 v6, v0, 0x1

    add-int/lit8 v0, v6, 0x1

    array-length v12, v14

    if-ge v0, v12, :cond_1f

    add-int/lit8 v0, v6, 0x1

    aget-byte v0, v14, v0

    const/16 v12, 0x2d

    if-ne v0, v12, :cond_1f

    .line 72
    const/4 v0, 0x1

    .line 73
    add-int/lit8 v4, v6, 0x1

    move/from16 v16, v5

    move v5, v4

    move/from16 v4, v16

    .line 76
    :goto_2
    add-int/lit8 v6, v5, 0x1

    array-length v12, v14

    if-lt v6, v12, :cond_5

    .line 87
    :cond_4
    if-eqz v0, :cond_1e

    .line 88
    neg-long v12, v2

    .line 89
    :goto_3
    const/16 v0, 0x2c

    if-ne v4, v0, :cond_1d

    move-wide v2, v8

    move v0, v4

    move v4, v5

    .line 91
    :goto_4
    add-int/lit8 v5, v4, 0x1

    array-length v6, v14

    if-lt v5, v6, :cond_8

    move-wide v8, v2

    move/from16 v16, v0

    move v0, v4

    move/from16 v4, v16

    .line 102
    :goto_5
    const/16 v2, 0x2c

    if-ne v4, v2, :cond_1b

    .line 103
    add-int/lit8 v2, v0, 0x1

    array-length v3, v14

    if-ne v2, v3, :cond_c

    .line 104
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "invalid base"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_5
    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v14, v5

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    .line 79
    const/16 v6, 0x2c

    if-eq v4, v6, :cond_4

    const/16 v6, 0x7d

    if-eq v4, v6, :cond_4

    .line 81
    const/16 v6, 0x30

    if-lt v4, v6, :cond_6

    const/16 v6, 0x39

    if-le v4, v6, :cond_7

    .line 82
    :cond_6
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "invalid offset"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_7
    add-int/lit8 v4, v4, -0x30

    int-to-char v4, v4

    .line 84
    const-wide/16 v12, 0xa

    mul-long/2addr v2, v12

    .line 85
    int-to-long v12, v4

    add-long/2addr v2, v12

    .line 86
    goto :goto_2

    .line 93
    :cond_8
    add-int/lit8 v4, v4, 0x1

    aget-byte v0, v14, v4

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    .line 94
    const/16 v5, 0x2c

    if-eq v0, v5, :cond_1c

    const/16 v5, 0x7d

    if-ne v0, v5, :cond_9

    move-wide v8, v2

    move/from16 v16, v0

    move v0, v4

    move/from16 v4, v16

    .line 95
    goto :goto_5

    .line 96
    :cond_9
    const/16 v5, 0x30

    if-lt v0, v5, :cond_a

    const/16 v5, 0x39

    if-le v0, v5, :cond_b

    .line 97
    :cond_a
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "invalid width"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_b
    add-int/lit8 v0, v0, -0x30

    int-to-char v0, v0

    .line 99
    const-wide/16 v8, 0xa

    mul-long/2addr v2, v8

    .line 100
    int-to-long v8, v0

    add-long/2addr v2, v8

    .line 101
    goto :goto_4

    .line 105
    :cond_c
    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v14, v4

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    .line 106
    const/16 v2, 0x6f

    if-ne v0, v2, :cond_e

    .line 107
    const-wide/16 v2, 0x8

    move v0, v7

    .line 116
    :goto_6
    add-int/lit8 v5, v4, 0x1

    array-length v6, v14

    if-eq v5, v6, :cond_d

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v14, v5

    const/16 v6, 0x7d

    if-eq v5, v6, :cond_11

    .line 117
    :cond_d
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "invalid modifiers"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_e
    const/16 v2, 0x78

    if-ne v0, v2, :cond_f

    .line 109
    const-wide/16 v2, 0x10

    move v0, v7

    goto :goto_6

    .line 110
    :cond_f
    const/16 v2, 0x58

    if-ne v0, v2, :cond_10

    .line 111
    const-wide/16 v2, 0x10

    .line 112
    const/4 v0, 0x1

    goto :goto_6

    .line 113
    :cond_10
    const/16 v2, 0x64

    if-eq v0, v2, :cond_1a

    .line 114
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "invalid base"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_11
    add-int/lit8 v4, v4, 0x1

    move v7, v0

    move-wide v10, v2

    move-wide v2, v12

    move v0, v4

    .line 120
    :cond_12
    add-long v2, v2, p2

    .line 121
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_13

    .line 122
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "invalid offset expansion"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_13
    const-wide/16 v4, 0x8

    cmp-long v4, v10, v4

    if-nez v4, :cond_14

    .line 125
    invoke-static {v2, v3}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v2

    .line 130
    :goto_7
    if-eqz v7, :cond_19

    .line 131
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 132
    :goto_8
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-eqz v2, :cond_16

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v8, v2

    if-lez v2, :cond_16

    .line 133
    long-to-int v2, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    :goto_9
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_16

    .line 134
    const/16 v2, 0x30

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v3

    goto :goto_9

    .line 126
    :cond_14
    const-wide/16 v4, 0x10

    cmp-long v4, v10, v4

    if-nez v4, :cond_15

    .line 127
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 129
    :cond_15
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 137
    :cond_16
    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 139
    :cond_17
    invoke-virtual {v15, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 143
    :cond_18
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_19
    move-object v4, v2

    goto :goto_8

    :cond_1a
    move v0, v7

    move-wide v2, v10

    goto/16 :goto_6

    :cond_1b
    move-wide v2, v10

    move v4, v0

    move v0, v7

    goto/16 :goto_6

    :cond_1c
    move-wide v8, v2

    move/from16 v16, v0

    move v0, v4

    move/from16 v4, v16

    goto/16 :goto_5

    :cond_1d
    move v0, v5

    goto/16 :goto_5

    :cond_1e
    move-wide v12, v2

    goto/16 :goto_3

    :cond_1f
    move v0, v4

    move v4, v5

    move v5, v6

    goto/16 :goto_2
.end method

.method public static supportedType(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 15
    invoke-static {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->check(I)V

    .line 16
    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/16 v1, 0x27

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const/16 v1, 0x1c

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public nextRecord()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 8

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->current:J

    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->end:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 155
    :goto_0
    return-object v0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->namePattern:Ljava/lang/String;

    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->current:J

    invoke-direct {p0, v0, v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->substitute(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->origin:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->fromString(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v1

    .line 153
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->rdataPattern:Ljava/lang/String;

    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->current:J

    invoke-direct {p0, v0, v2, v3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->substitute(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    .line 154
    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->current:J

    iget-wide v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->step:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->current:J

    .line 155
    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->type:I

    iget v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->dclass:I

    iget-wide v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->ttl:J

    iget-object v7, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->origin:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-static/range {v1 .. v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->fromString(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJLjava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 162
    const-string v1, "$GENERATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->start:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->end:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->step:J

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->step:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    :cond_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->namePattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->ttl:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->dclass:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "noPrintIN"

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 170
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->dclass:I

    invoke-static {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DClass;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->type:I

    invoke-static {v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Generator;->rdataPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
