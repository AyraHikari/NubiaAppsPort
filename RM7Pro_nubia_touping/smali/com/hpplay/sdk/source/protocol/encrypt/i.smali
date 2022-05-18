.class public Lcom/hpplay/sdk/source/protocol/encrypt/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0x10

    iput v0, p0, Lcom/hpplay/sdk/source/protocol/encrypt/i;->a:I

    return-void
.end method

.method public static a([BI[B)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 36
    move v1, v0

    .line 38
    :goto_0
    const/16 v2, 0xf

    if-ge v0, v2, :cond_0

    .line 39
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aget-byte v3, p2, v0

    xor-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    add-int/lit8 v0, v1, -0x1

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
