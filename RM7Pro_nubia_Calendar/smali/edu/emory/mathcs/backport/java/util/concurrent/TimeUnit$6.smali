.class Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$6;
.super Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
.source "TimeUnit.java"


# static fields
.field private static final serialVersionUID:J = -0x5959eb8d5fbec9d2L


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public convert(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "d"    # J
    .param p3, "u"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    .prologue
    .line 116
    invoke-virtual {p3, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v0

    return-wide v0
.end method

.method excessNanos(JJ)I
    .locals 1
    .param p1, "d"    # J
    .param p3, "m"    # J

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public toDays(J)J
    .locals 3
    .param p1, "d"    # J

    .prologue
    .line 115
    const-wide/16 v0, 0x18

    div-long v0, p1, v0

    return-wide v0
.end method

.method public toHours(J)J
    .locals 1
    .param p1, "d"    # J

    .prologue
    .line 114
    return-wide p1
.end method

.method public toMicros(J)J
    .locals 7
    .param p1, "d"    # J

    .prologue
    .line 110
    const-wide v2, 0xd693a400L

    const-wide v4, 0x98b5bf2cL

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$6;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMillis(J)J
    .locals 7
    .param p1, "d"    # J

    .prologue
    .line 111
    const-wide/32 v2, 0x36ee80

    const-wide v4, 0x25485f2c3efL

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$6;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toMinutes(J)J
    .locals 7
    .param p1, "d"    # J

    .prologue
    .line 113
    const-wide/16 v2, 0x3c

    const-wide v4, 0x222222222222222L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$6;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toNanos(J)J
    .locals 7
    .param p1, "d"    # J

    .prologue
    .line 109
    const-wide v2, 0x34630b8a000L

    const-wide/32 v4, 0x2717ff

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$6;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public toSeconds(J)J
    .locals 7
    .param p1, "d"    # J

    .prologue
    .line 112
    const-wide/16 v2, 0xe10

    const-wide v4, 0x91a2b3c4d5e6fL

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit$6;->x(JJJ)J

    move-result-wide v0

    return-wide v0
.end method
