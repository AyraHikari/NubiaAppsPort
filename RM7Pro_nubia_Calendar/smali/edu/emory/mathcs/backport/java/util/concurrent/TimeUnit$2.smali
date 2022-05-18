.class Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$2;
.super Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
.source "TimeUnit.java"


# static fields
.field private static final serialVersionUID:J = 0x1e55e6730a791664L


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public convert(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "d"    # J
    .param p3, "u"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    .prologue
    .line 68
    invoke-virtual {p3, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    return-wide v0
.end method

.method excessNanos(JJ)I
    .locals 5
    .param p1, "d"    # J
    .param p3, "m"    # J

    .prologue
    .line 69
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p3

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toDays(J)J
    .locals 3
    .param p1, "d"    # J

    .prologue
    .line 67
    const-wide v0, 0x141dd76000L

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toHours(J)J
    .locals 3
    .param p1, "d"    # J

    .prologue
    .line 66
    const-wide v0, 0xd693a400L

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toMicros(J)J
    .locals 1
    .param p1, "d"    # J

    .prologue
    .line 62
    return-wide p1
.end method

.method public toMillis(J)J
    .locals 3
    .param p1, "d"    # J

    .prologue
    .line 63
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toMinutes(J)J
    .locals 3
    .param p1, "d"    # J

    .prologue
    .line 65
    const-wide/32 v0, 0x3938700

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toNanos(J)J
    .locals 7
    .param p1, "d"    # J

    .prologue
    .line 61
    const-wide/16 v2, 0x3e8

    const-wide v4, 0x20c49ba5e353f7L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$2;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toSeconds(J)J
    .locals 3
    .param p1, "d"    # J

    .prologue
    .line 64
    const-wide/32 v0, 0xf4240

    div-long v0, p1, v0

    return-wide v0
.end method
