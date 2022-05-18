.class public Lcom/hpplay/sdk/source/protocol/encrypt/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/protocol/encrypt/a$a;,
        Lcom/hpplay/sdk/source/protocol/encrypt/a$b;
    }
.end annotation


# static fields
.field public static final a:I = 0x20

.field public static final b:I = 0x8

.field public static final c:I = 0xc


# instance fields
.field private d:[I


# direct methods
.method public constructor <init>([B[BI)V
    .locals 8

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xc

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/a;->d:[I

    .line 72
    array-length v0, p1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 73
    new-instance v0, Lcom/hpplay/sdk/source/protocol/encrypt/a$a;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/protocol/encrypt/a$a;-><init>(Lcom/hpplay/sdk/source/protocol/encrypt/a;)V

    throw v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/a;->d:[I

    const v1, 0x61707865

    aput v1, v0, v3

    .line 77
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/a;->d:[I

    const/4 v1, 0x1

    const v2, 0x3320646e

    aput v2, v0, v1

    .line 78
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/a;->d:[I

    const/4 v1, 0x2

    const v2, 0x79622d32

    aput v2, v0, v1

    .line 79
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/a;->d:[I

    const/4 v1, 0x3

    const v2, 0x6b206574

    aput v2, v0, v1

    .line 80
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/a;->d:[I

    invoke-static {p1, v3}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a([BI)I

    move-result v1

    aput v1, v0, v4

    .line 81
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/a;->d:[I

    const/4 v1, 0x5

    invoke-static {p1, v4}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a([BI)I

    move-result v2

    aput v2, v0, v1

    .line 82
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/a;->d:[I

    const/4 v1, 0x6

    invoke-static {p1, v5}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a([BI)I

    move-result v2

    aput v2, v0, v1

    .line 83
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/a;->d:[I

    const/4 v1, 0x7

    invoke-static {p1, v6}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a([BI)I

    move-result v2

    aput v2, v0, v1

    .line 84
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/a;->d:[I

    const/16 v1, 0x10

    invoke-static {p1, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a([BI)I

    move-result v1

    aput v1, v0, v5

    .line 85
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/a;->d:[I

    const/16 v1, 0x9

    const/16 v2, 0x14

    invoke-static {p1, v2}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a([BI)I

    move-result v2

    aput v2, v0, v1

    .line 86
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/a;->d:[I

    const/16 v1, 0xa

    const/16 v2, 0x18

    invoke-static {p1, v2}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a([BI)I

    move-result v2

    aput v2, v0, v1

    .line 87
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/a;->d:[I

    const/16 v1, 0xb

    const/16 v2, 0x1c

    invoke-static {p1, v2}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a([BI)I

    move-result v2

    aput v2, v0, v1

    .line 89
    array-length v0, p2

    if-ne v0, v5, :cond_1

    .line 90
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/a;->d:[I

    aput v3, v0, v6

    .line 91
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/a;->d:[I

    aput v3, v0, v7

    .line 92
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/a;->d:[I

    const/16 v1, 0xe

    invoke-static {p2, v3}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a([BI)I

    move-result v2

    aput v2, v0, v1

    .line 93
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/a;->d:[I

    const/16 v1, 0xf

    invoke-static {p2, v4}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a([BI)I

    move-result v2

    aput v2, v0, v1

    .line 103
    :goto_0
    return-void

    .line 95
    :cond_1
    array-length v0, p2

    if-ne v0, v6, :cond_2

    .line 96
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/a;->d:[I

    aput p3, v0, v6

    .line 97
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/a;->d:[I

    invoke-static {p2, v3}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a([BI)I

    move-result v1

    aput v1, v0, v7

    .line 98
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/a;->d:[I

    const/16 v1, 0xe

    invoke-static {p2, v4}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a([BI)I

    move-result v2

    aput v2, v0, v1

    .line 99
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/a;->d:[I

    const/16 v1, 0xf

    invoke-static {p2, v5}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a([BI)I

    move-result v2

    aput v2, v0, v1

    goto :goto_0

    .line 101
    :cond_2
    new-instance v0, Lcom/hpplay/sdk/source/protocol/encrypt/a$b;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/protocol/encrypt/a$b;-><init>(Lcom/hpplay/sdk/source/protocol/encrypt/a;)V

    throw v0
.end method

.method protected static a(II)I
    .locals 2

    .prologue
    .line 46
    shl-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method protected static a([BI)I
    .locals 2

    .prologue
    .line 35
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method protected static a(I[BI)V
    .locals 2

    .prologue
    .line 39
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 40
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 43
    return-void
.end method

.method protected static a([IIIII)V
    .locals 2

    .prologue
    .line 50
    aget v0, p0, p1

    aget v1, p0, p2

    add-int/2addr v0, v1

    aput v0, p0, p1

    .line 51
    aget v0, p0, p4

    aget v1, p0, p1

    xor-int/2addr v0, v1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a(II)I

    move-result v0

    aput v0, p0, p4

    .line 52
    aget v0, p0, p3

    aget v1, p0, p4

    add-int/2addr v0, v1

    aput v0, p0, p3

    .line 53
    aget v0, p0, p2

    aget v1, p0, p3

    xor-int/2addr v0, v1

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a(II)I

    move-result v0

    aput v0, p0, p2

    .line 54
    aget v0, p0, p1

    aget v1, p0, p2

    add-int/2addr v0, v1

    aput v0, p0, p1

    .line 55
    aget v0, p0, p4

    aget v1, p0, p1

    xor-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a(II)I

    move-result v0

    aput v0, p0, p4

    .line 56
    aget v0, p0, p3

    aget v1, p0, p4

    add-int/2addr v0, v1

    aput v0, p0, p3

    .line 57
    aget v0, p0, p2

    aget v1, p0, p3

    xor-int/2addr v0, v1

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a(II)I

    move-result v0

    aput v0, p0, p2

    .line 58
    return-void
.end method


# virtual methods
.method public a([B[BI)V
    .locals 10

    .prologue
    .line 106
    const/16 v0, 0x10

    new-array v5, v0, [I

    .line 107
    const/16 v0, 0x40

    new-array v6, v0, [B

    .line 108
    const/4 v1, 0x0

    const/4 v0, 0x0

    move v3, v0

    move v4, v1

    move v2, p3

    .line 110
    :goto_0
    if-lez v2, :cond_7

    .line 111
    const/16 v0, 0x10

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/a;->d:[I

    aget v0, v0, v1

    aput v0, v5, v1

    move v0, v1

    goto :goto_1

    .line 112
    :cond_0
    const/16 v0, 0x14

    :goto_2
    if-lez v0, :cond_1

    .line 113
    const/4 v1, 0x0

    const/4 v7, 0x4

    const/16 v8, 0x8

    const/16 v9, 0xc

    invoke-static {v5, v1, v7, v8, v9}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a([IIIII)V

    .line 114
    const/4 v1, 0x1

    const/4 v7, 0x5

    const/16 v8, 0x9

    const/16 v9, 0xd

    invoke-static {v5, v1, v7, v8, v9}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a([IIIII)V

    .line 115
    const/4 v1, 0x2

    const/4 v7, 0x6

    const/16 v8, 0xa

    const/16 v9, 0xe

    invoke-static {v5, v1, v7, v8, v9}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a([IIIII)V

    .line 116
    const/4 v1, 0x3

    const/4 v7, 0x7

    const/16 v8, 0xb

    const/16 v9, 0xf

    invoke-static {v5, v1, v7, v8, v9}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a([IIIII)V

    .line 117
    const/4 v1, 0x0

    const/4 v7, 0x5

    const/16 v8, 0xa

    const/16 v9, 0xf

    invoke-static {v5, v1, v7, v8, v9}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a([IIIII)V

    .line 118
    const/4 v1, 0x1

    const/4 v7, 0x6

    const/16 v8, 0xb

    const/16 v9, 0xc

    invoke-static {v5, v1, v7, v8, v9}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a([IIIII)V

    .line 119
    const/4 v1, 0x2

    const/4 v7, 0x7

    const/16 v8, 0x8

    const/16 v9, 0xd

    invoke-static {v5, v1, v7, v8, v9}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a([IIIII)V

    .line 120
    const/4 v1, 0x3

    const/4 v7, 0x4

    const/16 v8, 0x9

    const/16 v9, 0xe

    invoke-static {v5, v1, v7, v8, v9}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a([IIIII)V

    .line 112
    add-int/lit8 v0, v0, -0x2

    goto :goto_2

    .line 122
    :cond_1
    const/16 v0, 0x10

    :goto_3
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    aget v0, v5, v1

    iget-object v7, p0, Lcom/hpplay/sdk/source/protocol/encrypt/a;->d:[I

    aget v7, v7, v1

    add-int/2addr v0, v7

    aput v0, v5, v1

    move v0, v1

    goto :goto_3

    .line 123
    :cond_2
    const/16 v0, 0x10

    :goto_4
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_3

    aget v0, v5, v1

    mul-int/lit8 v7, v1, 0x4

    invoke-static {v0, v6, v7}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a(I[BI)V

    move v0, v1

    goto :goto_4

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/a;->d:[I

    const/16 v1, 0xc

    aget v7, v0, v1

    add-int/lit8 v7, v7, 0x1

    aput v7, v0, v1

    .line 127
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/a;->d:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    if-gtz v0, :cond_4

    .line 128
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/a;->d:[I

    const/16 v1, 0xd

    aget v7, v0, v1

    add-int/lit8 v7, v7, 0x1

    aput v7, v0, v1

    .line 130
    :cond_4
    const/16 v0, 0x40

    if-gt v2, v0, :cond_5

    move v0, v2

    .line 131
    :goto_5
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_7

    .line 132
    add-int v0, v1, v4

    add-int v2, v1, v3

    aget-byte v2, p2, v2

    aget-byte v5, v6, v1

    xor-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    move v0, v1

    goto :goto_5

    .line 136
    :cond_5
    const/16 v0, 0x40

    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_6

    .line 137
    add-int v0, v1, v4

    add-int v7, v1, v3

    aget-byte v7, p2, v7

    aget-byte v8, v6, v1

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p1, v0

    move v0, v1

    goto :goto_6

    .line 139
    :cond_6
    add-int/lit8 v2, v2, -0x40

    .line 140
    add-int/lit8 v0, v3, 0x40

    .line 141
    add-int/lit8 v1, v4, 0x40

    move v3, v0

    move v4, v1

    goto/16 :goto_0

    .line 143
    :cond_7
    return-void
.end method

.method public b([B[BI)V
    .locals 0

    .prologue
    .line 146
    invoke-virtual {p0, p1, p2, p3}, Lcom/hpplay/sdk/source/protocol/encrypt/a;->a([B[BI)V

    .line 147
    return-void
.end method
