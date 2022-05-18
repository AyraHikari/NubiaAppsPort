.class Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$5;
.super Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
.source "TimeUnit.java"


# static fields
.field private static final serialVersionUID:J = 0x195c0e91632e6023L


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public convert(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "d"    # J
    .param p3, "u"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    .prologue
    .line 104
    invoke-virtual {p3, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method excessNanos(JJ)I
    .locals 1
    .param p1, "d"    # J
    .param p3, "m"    # J

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public toDays(J)J
    .locals 3
    .param p1, "d"    # J

    .prologue
    .line 103
    const-wide/16 v0, 0x5a0

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toHours(J)J
    .locals 3
    .param p1, "d"    # J

    .prologue
    .line 102
    const-wide/16 v0, 0x3c

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toMicros(J)J
    .locals 7
    .param p1, "d"    # J

    .prologue
    .line 98
    const-wide/32 v2, 0x3938700

    const-wide v4, 0x23ca98ce50L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$5;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMillis(J)J
    .locals 7
    .param p1, "d"    # J

    .prologue
    .line 99
    const-wide/32 v2, 0xea60

    const-wide v4, 0x8bcf64e5ec10L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$5;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMinutes(J)J
    .locals 1
    .param p1, "d"    # J

    .prologue
    .line 101
    return-wide p1
.end method

.method public toNanos(J)J
    .locals 7
    .param p1, "d"    # J

    .prologue
    .line 97
    const-wide v2, 0xdf8475800L

    const-wide/32 v4, 0x9299ff3

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$5;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toSeconds(J)J
    .locals 7
    .param p1, "d"    # J

    .prologue
    .line 100
    const-wide/16 v2, 0x3c

    const-wide v4, 0x222222222222222L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$5;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method
