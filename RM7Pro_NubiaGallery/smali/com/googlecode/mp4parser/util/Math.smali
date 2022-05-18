.class public Lcom/googlecode/mp4parser/util/Math;
.super Ljava/lang/Object;
.source "Math.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gcd(II)I
    .locals 1

    :goto_0
    move v0, p1

    move p1, p0

    move p0, v0

    if-lez p0, :cond_0

    .line 16
    rem-int/2addr p1, p0

    goto :goto_0

    :cond_0
    return p1
.end method

.method public static gcd(JJ)J
    .locals 4

    :goto_0
    move-wide v2, p0

    move-wide p0, p2

    move-wide p2, v2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 7
    rem-long/2addr p2, p0

    goto :goto_0

    :cond_0
    return-wide p2
.end method

.method public static lcm(II)I
    .locals 1

    .line 27
    invoke-static {p0, p1}, Lcom/googlecode/mp4parser/util/Math;->gcd(II)I

    move-result v0

    div-int/2addr p1, v0

    mul-int/2addr p0, p1

    return p0
.end method

.method public static lcm(JJ)J
    .locals 2

    .line 23
    invoke-static {p0, p1, p2, p3}, Lcom/googlecode/mp4parser/util/Math;->gcd(JJ)J

    move-result-wide v0

    div-long/2addr p2, v0

    mul-long/2addr p0, p2

    return-wide p0
.end method
