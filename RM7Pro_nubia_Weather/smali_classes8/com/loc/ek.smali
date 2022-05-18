.class public final Lcom/loc/ek;
.super Ljava/lang/Object;
.source "DateUtil.java"


# direct methods
.method private static a(J)J
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(JJI)J
    .locals 10

    const-wide/32 v8, 0x5265c00

    const-wide/32 v6, 0x4ef6d80

    if-lez p4, :cond_2

    sub-long v0, p0, p2

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    int-to-long v2, p4

    const-wide v4, 0x757b12c00L

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-static {p0, p1}, Lcom/loc/ek;->a(J)J

    move-result-wide v0

    sub-long v0, p0, v0

    invoke-static {p2, p3}, Lcom/loc/ek;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    sub-long v2, v0, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/16 v5, 0x17

    if-ne v4, v5, :cond_0

    cmp-long v5, v2, v6

    if-ltz v5, :cond_0

    sub-long/2addr v0, v8

    :cond_0
    if-nez v4, :cond_1

    cmp-long v2, v2, v6

    if-ltz v2, :cond_1

    add-long/2addr v0, v8

    :cond_1
    move-wide p0, v0

    :cond_2
    :goto_0
    return-wide p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
