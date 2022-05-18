.class Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$4;
.super Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
.source "TimeUnit.java"


# static fields
.field private static final serialVersionUID:J = 0x32925fdde88c056L


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public convert(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "d"    # J
    .param p3, "u"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    .prologue
    .line 92
    invoke-virtual {p3, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method excessNanos(JJ)I
    .locals 1
    .param p1, "d"    # J
    .param p3, "m"    # J

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public toDays(J)J
    .locals 3
    .param p1, "d"    # J

    .prologue
    .line 91
    const-wide/32 v0, 0x15180

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toHours(J)J
    .locals 3
    .param p1, "d"    # J

    .prologue
    .line 90
    const-wide/16 v0, 0xe10

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toMicros(J)J
    .locals 7
    .param p1, "d"    # J

    .prologue
    .line 86
    const-wide/32 v2, 0xf4240

    const-wide v4, 0x8637bd05af6L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$4;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMillis(J)J
    .locals 7
    .param p1, "d"    # J

    .prologue
    .line 87
    const-wide/16 v2, 0x3e8

    const-wide v4, 0x20c49ba5e353f7L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$4;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMinutes(J)J
    .locals 3
    .param p1, "d"    # J

    .prologue
    .line 89
    const-wide/16 v0, 0x3c

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toNanos(J)J
    .locals 7
    .param p1, "d"    # J

    .prologue
    .line 85
    const-wide/32 v2, 0x3b9aca00

    const-wide v4, 0x225c17d04L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$4;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toSeconds(J)J
    .locals 1
    .param p1, "d"    # J

    .prologue
    .line 88
    return-wide p1
.end method
