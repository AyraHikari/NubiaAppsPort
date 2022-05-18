.class public Lcn/nubia/SportsGameEvents/SportsUtils/SportsTimeOprate;
.super Ljava/lang/Object;
.source "SportsTimeOprate.java"


# static fields
.field public static final COUNTDOWNNUM:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCalendarTimeDataHHMM(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "timeString"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 95
    new-instance v2, Landroid/text/format/Time;

    invoke-static {p1}, Lcn/nubia/SportsGameEvents/SportsUtils/TimeZoneOprate;->getCurrentTimeZoneID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 96
    .local v2, "time":Landroid/text/format/Time;
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v2, Landroid/text/format/Time;->hour:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "hour":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v6, :cond_0

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v2, Landroid/text/format/Time;->minute:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "minite":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getDataString(III)Ljava/lang/String;
    .locals 7
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    const/4 v6, 0x1

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "showYear":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "showMonth":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "showDay":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "data":Ljava/lang/String;
    return-object v0
.end method

.method public static getDiffValueWorldCup(Landroid/content/Context;Landroid/text/format/Time;Ljava/lang/String;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # Landroid/text/format/Time;
    .param p2, "beginTime"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x3e8

    const-wide/16 v8, 0x64

    const/4 v6, 0x0

    .line 163
    invoke-static {p0}, Lcn/nubia/SportsGameEvents/SportsUtils/TimeZoneOprate;->getCurrentTimeZoneID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "timeZoneStringID":Ljava/lang/String;
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 166
    .local v2, "timeZone":Ljava/util/TimeZone;
    new-instance v1, Landroid/text/format/Time;

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 167
    .local v1, "timeStart":Landroid/text/format/Time;
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 168
    iput v6, v1, Landroid/text/format/Time;->hour:I

    .line 169
    iput v6, v1, Landroid/text/format/Time;->minute:I

    .line 170
    iput v6, v1, Landroid/text/format/Time;->second:I

    .line 172
    iput v6, p1, Landroid/text/format/Time;->hour:I

    .line 173
    iput v6, p1, Landroid/text/format/Time;->minute:I

    .line 174
    iput v6, p1, Landroid/text/format/Time;->second:I

    .line 176
    invoke-virtual {v1, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    div-long/2addr v4, v10

    div-long/2addr v4, v8

    invoke-virtual {p1, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    div-long/2addr v6, v10

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    long-to-int v4, v4

    div-int/lit16 v0, v4, 0x360

    .line 178
    .local v0, "diffValueWoldCupStart":I
    return v0
.end method

.method public static getPhoneTimeDataHHMM(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "timeString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 78
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 79
    .local v2, "time":Landroid/text/format/Time;
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v2, Landroid/text/format/Time;->hour:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "hour":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v6, :cond_0

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v2, Landroid/text/format/Time;->minute:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "minite":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getSelectCurrentDayListData(Landroid/text/format/Time;Ljava/util/List;Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p0, "time"    # Landroid/text/format/Time;
    .param p2, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/format/Time;",
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsSportsItem;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsSportsItem;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/bean/NuCmsSportsItem;>;"
    const/4 v8, 0x1

    .line 30
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v4, "showList":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/bean/NuCmsSportsItem;>;"
    if-eqz p1, :cond_3

    .line 32
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 33
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nubia/nucms/bean/NuCmsSportsItem;

    .line 34
    .local v1, "item":Lcom/nubia/nucms/bean/NuCmsSportsItem;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Landroid/text/format/Time;->month:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, "monthShow":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 36
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 38
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "monthDay":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v8, :cond_1

    .line 40
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Landroid/text/format/Time;->year:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, "startTimeTMD":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getMatchTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p2}, Lcn/nubia/SportsGameEvents/SportsUtils/SportsTimeOprate;->getTimeData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 44
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 48
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/nubia/nucms/bean/NuCmsSportsItem;
    .end local v2    # "monthDay":Ljava/lang/String;
    .end local v3    # "monthShow":Ljava/lang/String;
    .end local v5    # "startTimeTMD":Ljava/lang/String;
    :cond_3
    return-object v4
.end method

.method public static getTimeData(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-static {p1}, Lcn/nubia/SportsGameEvents/SportsUtils/TimeZoneOprate;->getCurrentTimeZoneID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 71
    .local v1, "timeZone":Ljava/util/TimeZone;
    new-instance v0, Landroid/text/format/Time;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "timeShow":Landroid/text/format/Time;
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 73
    iget v2, v0, Landroid/text/format/Time;->year:I

    iget v3, v0, Landroid/text/format/Time;->month:I

    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v2, v3, v4}, Lcn/nubia/SportsGameEvents/SportsUtils/SportsTimeOprate;->getDataString(III)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getWorldCupBeginTime(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;>;"
    const/4 v1, 0x0

    .line 116
    .local v1, "worldCupBeginTime":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 117
    invoke-static {p0}, Lcn/nubia/SportsGameEvents/SportsDB;->getSportsDBIntance(Landroid/content/Context;)Lcn/nubia/SportsGameEvents/SportsDB;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/SportsGameEvents/SportsDB;->getSwitchlist()Ljava/util/List;

    move-object v2, v1

    .line 128
    .end local v1    # "worldCupBeginTime":Ljava/lang/String;
    .local v2, "worldCupBeginTime":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 122
    .end local v2    # "worldCupBeginTime":Ljava/lang/String;
    .restart local v1    # "worldCupBeginTime":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 123
    const/4 v4, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;

    invoke-virtual {v3}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;->getId()I

    move-result v3

    if-ne v4, v3, :cond_2

    .line 124
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;

    invoke-virtual {v3}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;->getBeginTime()Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v2, v1

    .line 128
    .end local v1    # "worldCupBeginTime":Ljava/lang/String;
    .restart local v2    # "worldCupBeginTime":Ljava/lang/String;
    goto :goto_0

    .line 122
    .end local v2    # "worldCupBeginTime":Ljava/lang/String;
    .restart local v1    # "worldCupBeginTime":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getYEARMonthDay(Landroid/text/format/Time;)I
    .locals 7
    .param p0, "time"    # Landroid/text/format/Time;

    .prologue
    const/4 v6, 0x1

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Landroid/text/format/Time;->year:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "year":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Landroid/text/format/Time;->month:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "month":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 188
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "day":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    return v4
.end method

.method public static hasSportsInTimeDay(Landroid/content/Context;Landroid/text/format/Time;Ljava/util/List;)Z
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentTime"    # Landroid/text/format/Time;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/text/format/Time;",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 134
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;>;"
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-gtz v13, :cond_0

    .line 135
    invoke-static/range {p0 .. p0}, Lcn/nubia/SportsGameEvents/SportsDB;->getSportsDBIntance(Landroid/content/Context;)Lcn/nubia/SportsGameEvents/SportsDB;

    move-result-object v13

    invoke-virtual {v13}, Lcn/nubia/SportsGameEvents/SportsDB;->getSwitchlist()Ljava/util/List;

    .line 136
    const/4 v13, 0x1

    .line 158
    :goto_0
    return v13

    .line 139
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_2

    .line 140
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;

    .line 141
    .local v7, "item":Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;
    invoke-virtual {v7}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;->getBeginTime()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "beginTime":Ljava/lang/String;
    invoke-virtual {v7}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;->getEndTime()Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, "endTime":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcn/nubia/SportsGameEvents/SportsUtils/TimeZoneOprate;->getCurrentTimeZoneID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 144
    .local v12, "timeZoneIDString":Ljava/lang/String;
    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    .line 145
    .local v11, "timeZone":Ljava/util/TimeZone;
    new-instance v10, Landroid/text/format/Time;

    invoke-virtual {v11}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v13}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 146
    .local v10, "timeStart":Landroid/text/format/Time;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 147
    new-instance v9, Landroid/text/format/Time;

    invoke-virtual {v11}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v13}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 148
    .local v9, "timeEnd":Landroid/text/format/Time;
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 149
    invoke-static/range {p1 .. p1}, Lcn/nubia/SportsGameEvents/SportsUtils/SportsTimeOprate;->getYEARMonthDay(Landroid/text/format/Time;)I

    move-result v3

    .line 150
    .local v3, "currentInt":I
    invoke-static {v10}, Lcn/nubia/SportsGameEvents/SportsUtils/SportsTimeOprate;->getYEARMonthDay(Landroid/text/format/Time;)I

    move-result v8

    .line 151
    .local v8, "startInt":I
    invoke-static {v9}, Lcn/nubia/SportsGameEvents/SportsUtils/SportsTimeOprate;->getYEARMonthDay(Landroid/text/format/Time;)I

    move-result v4

    .line 153
    .local v4, "endInt":I
    if-lt v3, v8, :cond_1

    if-gt v3, v4, :cond_1

    .line 154
    const/4 v13, 0x1

    goto :goto_0

    .line 139
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 158
    .end local v2    # "beginTime":Ljava/lang/String;
    .end local v3    # "currentInt":I
    .end local v4    # "endInt":I
    .end local v5    # "endTime":Ljava/lang/String;
    .end local v7    # "item":Lcn/nubia/SportsGameEvents/SportsDefView/SportsBean/SportsServerSwitchBean;
    .end local v8    # "startInt":I
    .end local v9    # "timeEnd":Landroid/text/format/Time;
    .end local v10    # "timeStart":Landroid/text/format/Time;
    .end local v11    # "timeZone":Ljava/util/TimeZone;
    .end local v12    # "timeZoneIDString":Ljava/lang/String;
    :cond_2
    const/4 v13, 0x0

    goto :goto_0
.end method
