.class public Lcom/hpplay/sdk/source/protocol/encrypt/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final c:[I


# instance fields
.field final a:I

.field final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hpplay/sdk/source/protocol/encrypt/f;->c:[I

    return-void

    :array_0
    .array-data 4
        0x5
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xfc
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0x10

    iput v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/f;->a:I

    .line 33
    const/16 v0, 0x20

    iput v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/f;->b:I

    return-void
.end method

.method public static a([BI[BIJ[B)I
    .locals 8

    .prologue
    .line 39
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 41
    const/4 v1, 0x0

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/hpplay/sdk/source/protocol/encrypt/f;->b([BI[BIJ[B)I

    .line 42
    invoke-static {p0, p1, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/i;->a([BI[B)I

    move-result v0

    return v0
.end method

.method static a([I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/16 v4, 0x10

    .line 60
    move v1, v0

    move v2, v0

    .line 62
    :goto_0
    if-ge v1, v4, :cond_0

    .line 64
    aget v3, p0, v1

    add-int/2addr v2, v3

    .line 65
    and-int/lit16 v3, v2, 0xff

    aput v3, p0, v1

    .line 66
    ushr-int/lit8 v2, v2, 0x8

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_0
    aget v1, p0, v4

    add-int/2addr v1, v2

    .line 70
    and-int/lit8 v2, v1, 0x3

    aput v2, p0, v4

    .line 71
    ushr-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x5

    .line 73
    :goto_1
    if-ge v0, v4, :cond_1

    .line 75
    aget v2, p0, v0

    add-int/2addr v1, v2

    .line 76
    and-int/lit16 v2, v1, 0xff

    aput v2, p0, v0

    .line 77
    ushr-int/lit8 v1, v1, 0x8

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    :cond_1
    aget v0, p0, v4

    add-int/2addr v0, v1

    .line 81
    aput v0, p0, v4

    .line 82
    return-void
.end method

.method static a([I[I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 48
    move v1, v0

    .line 50
    :goto_0
    const/16 v2, 0x11

    if-ge v1, v2, :cond_0

    .line 52
    aget v2, p0, v1

    aget v3, p1, v1

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 53
    and-int/lit16 v2, v0, 0xff

    aput v2, p0, v1

    .line 54
    ushr-int/lit8 v0, v0, 0x8

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method

.method public static b([BI[BIJ[B)I
    .locals 6

    .prologue
    .line 125
    const/16 v0, 0x11

    new-array v1, v0, [I

    .line 126
    const/16 v0, 0x11

    new-array v2, v0, [I

    .line 127
    const/16 v0, 0x11

    new-array v3, v0, [I

    .line 129
    const/4 v0, 0x0

    const/4 v4, 0x0

    aget-byte v4, p6, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v0

    .line 130
    const/4 v0, 0x1

    const/4 v4, 0x1

    aget-byte v4, p6, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v0

    .line 131
    const/4 v0, 0x2

    const/4 v4, 0x2

    aget-byte v4, p6, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v0

    .line 132
    const/4 v0, 0x3

    const/4 v4, 0x3

    aget-byte v4, p6, v4

    and-int/lit8 v4, v4, 0xf

    aput v4, v1, v0

    .line 133
    const/4 v0, 0x4

    const/4 v4, 0x4

    aget-byte v4, p6, v4

    and-int/lit16 v4, v4, 0xfc

    aput v4, v1, v0

    .line 134
    const/4 v0, 0x5

    const/4 v4, 0x5

    aget-byte v4, p6, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v0

    .line 135
    const/4 v0, 0x6

    const/4 v4, 0x6

    aget-byte v4, p6, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v0

    .line 136
    const/4 v0, 0x7

    const/4 v4, 0x7

    aget-byte v4, p6, v4

    and-int/lit8 v4, v4, 0xf

    aput v4, v1, v0

    .line 137
    const/16 v0, 0x8

    const/16 v4, 0x8

    aget-byte v4, p6, v4

    and-int/lit16 v4, v4, 0xfc

    aput v4, v1, v0

    .line 138
    const/16 v0, 0x9

    const/16 v4, 0x9

    aget-byte v4, p6, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v0

    .line 139
    const/16 v0, 0xa

    const/16 v4, 0xa

    aget-byte v4, p6, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v0

    .line 140
    const/16 v0, 0xb

    const/16 v4, 0xb

    aget-byte v4, p6, v4

    and-int/lit8 v4, v4, 0xf

    aput v4, v1, v0

    .line 141
    const/16 v0, 0xc

    const/16 v4, 0xc

    aget-byte v4, p6, v4

    and-int/lit16 v4, v4, 0xfc

    aput v4, v1, v0

    .line 142
    const/16 v0, 0xd

    const/16 v4, 0xd

    aget-byte v4, p6, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v0

    .line 143
    const/16 v0, 0xe

    const/16 v4, 0xe

    aget-byte v4, p6, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v0

    .line 144
    const/16 v0, 0xf

    const/16 v4, 0xf

    aget-byte v4, p6, v4

    and-int/lit8 v4, v4, 0xf

    aput v4, v1, v0

    .line 145
    const/16 v0, 0x10

    const/4 v4, 0x0

    aput v4, v1, v0

    .line 147
    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0x11

    if-ge v0, v4, :cond_1

    .line 148
    const/4 v4, 0x0

    aput v4, v2, v0

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    const/4 v4, 0x1

    aput v4, v3, v0

    .line 159
    add-int/2addr p3, v0

    .line 160
    int-to-long v4, v0

    sub-long/2addr p4, v4

    .line 161
    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/protocol/encrypt/f;->a([I[I)V

    .line 162
    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/f;->b([I[I)V

    .line 150
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v0, p4, v4

    if-lez v0, :cond_3

    .line 152
    const/4 v0, 0x0

    :goto_1
    const/16 v4, 0x11

    if-ge v0, v4, :cond_2

    .line 153
    const/4 v4, 0x0

    aput v4, v3, v0

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 155
    :cond_2
    const/4 v0, 0x0

    :goto_2
    const/16 v4, 0x10

    if-ge v0, v4, :cond_0

    int-to-long v4, v0

    cmp-long v4, v4, p4

    if-gez v4, :cond_0

    .line 156
    add-int v4, p3, v0

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v0

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 165
    :cond_3
    invoke-static {v2}, Lcom/hpplay/sdk/source/protocol/encrypt/f;->b([I)V

    .line 167
    const/4 v0, 0x0

    :goto_3
    const/16 v1, 0x10

    if-ge v0, v1, :cond_4

    .line 168
    add-int/lit8 v1, v0, 0x10

    aget-byte v1, p6, v1

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v0

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 170
    :cond_4
    const/16 v0, 0x10

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 171
    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/protocol/encrypt/f;->a([I[I)V

    .line 173
    const/4 v0, 0x0

    :goto_4
    const/16 v1, 0x10

    if-ge v0, v1, :cond_5

    .line 174
    add-int v1, v0, p1

    aget v3, v2, v0

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 176
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method static b([I)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0x11

    .line 86
    new-array v2, v6, [I

    move v1, v0

    .line 88
    :goto_0
    if-ge v1, v6, :cond_0

    .line 89
    aget v3, p0, v1

    aput v3, v2, v1

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_0
    sget-object v1, Lcom/hpplay/sdk/source/protocol/encrypt/f;->c:[I

    invoke-static {p0, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/f;->a([I[I)V

    .line 93
    const/16 v1, 0x10

    aget v1, p0, v1

    ushr-int/lit8 v1, v1, 0x7

    neg-int v1, v1

    .line 95
    :goto_1
    if-ge v0, v6, :cond_1

    .line 96
    aget v3, p0, v0

    aget v4, v2, v0

    aget v5, p0, v0

    xor-int/2addr v4, v5

    and-int/2addr v4, v1

    xor-int/2addr v3, v4

    aput v3, p0, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    :cond_1
    return-void
.end method

.method static b([I[I)V
    .locals 8

    .prologue
    const/16 v7, 0x11

    const/4 v0, 0x0

    .line 101
    new-array v4, v7, [I

    move v3, v0

    .line 103
    :goto_0
    if-ge v3, v7, :cond_2

    move v1, v0

    move v2, v0

    .line 107
    :goto_1
    if-gt v1, v3, :cond_0

    .line 108
    aget v5, p0, v1

    sub-int v6, v3, v1

    aget v6, p1, v6

    mul-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 110
    :cond_0
    add-int/lit8 v1, v3, 0x1

    :goto_2
    if-ge v1, v7, :cond_1

    .line 111
    aget v5, p0, v1

    mul-int/lit16 v5, v5, 0x140

    add-int/lit8 v6, v3, 0x11

    sub-int/2addr v6, v1

    aget v6, p1, v6

    mul-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 113
    :cond_1
    aput v2, v4, v3

    .line 103
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 116
    :cond_2
    :goto_3
    if-ge v0, v7, :cond_3

    .line 117
    aget v1, v4, v0

    aput v1, p0, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 119
    :cond_3
    invoke-static {p0}, Lcom/hpplay/sdk/source/protocol/encrypt/f;->a([I)V

    .line 120
    return-void
.end method
