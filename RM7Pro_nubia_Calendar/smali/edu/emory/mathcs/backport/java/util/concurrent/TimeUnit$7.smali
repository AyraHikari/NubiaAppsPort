.class Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$7;
.super Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
.source "TimeUnit.java"


# static fields
.field private static final serialVersionUID:J = 0x7e008bf93c5d6e8L


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public convert(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "d"    # J
    .param p3, "u"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    .prologue
    .line 128
    invoke-virtual {p3, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    return-wide v0
.end method

.method excessNanos(JJ)I
    .locals 1
    .param p1, "d"    # J
    .param p3, "m"    # J

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public toDays(J)J
    .locals 1
    .param p1, "d"    # J

    .prologue
    .line 127
    return-wide p1
.end method

.method public toHours(J)J
    .locals 7
    .param p1, "d"    # J

    .prologue
    .line 126
    const-wide/16 v2, 0x18

    const-wide v4, 0x555555555555555L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$7;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMicros(J)J
    .locals 7
    .param p1, "d"    # J

    .prologue
    .line 122
    const-wide v2, 0x141dd76000L

    const-wide/32 v4, 0x65ce7f7

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$7;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMillis(J)J
    .locals 7
    .param p1, "d"    # J

    .prologue
    .line 123
    const-wide/32 v2, 0x5265c00

    const-wide v4, 0x18daea1d7fL

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$7;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMinutes(J)J
    .locals 7
    .param p1, "d"    # J

    .prologue
    .line 125
    const-wide/16 v2, 0x5a0

    const-wide v4, 0x16c16c16c16c16L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$7;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toNanos(J)J
    .locals 7
    .param p1, "d"    # J

    .prologue
    .line 121
    const-wide v2, 0x4e94914f0000L

    const-wide/32 v4, 0x1a0ff

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$7;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toSeconds(J)J
    .locals 7
    .param p1, "d"    # J

    .prologue
    .line 124
    const-wide/32 v2, 0x15180

    const-wide v4, 0x611722833944L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$7;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method
