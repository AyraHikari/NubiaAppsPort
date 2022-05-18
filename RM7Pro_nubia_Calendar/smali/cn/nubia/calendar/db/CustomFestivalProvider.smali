.class public Lcn/nubia/calendar/db/CustomFestivalProvider;
.super Landroid/content/ContentProvider;
.source "CustomFestivalProvider.java"


# static fields
.field private static final EVE_DAY:I = 0x1d

.field private static final EVE_FLOG:Ljava/lang/String; = "1230"

.field private static final EVE_MONTH:I = 0xc

.field private static final FESTIVAL_INFO:Ljava/lang/String; = "festival_info"


# instance fields
.field private mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "festival_info"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 61
    .local v1, "time":Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 62
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 63
    iget-object v2, p0, Lcn/nubia/calendar/db/CustomFestivalProvider;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lcn/nubia/calendar/db/CustomFestivalProvider;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-virtual {v2, v1}, Lcn/nubia/calendar/util/ChineseCalendar;->setGregorian(Landroid/text/format/Time;)V

    .line 65
    iget-object v2, p0, Lcn/nubia/calendar/db/CustomFestivalProvider;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-virtual {v2}, Lcn/nubia/calendar/util/ChineseCalendar;->computeChineseFields()I

    .line 66
    sget-object v2, Lcn/nubia/calendar/util/Constants;->chineseFestivalMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ws"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/calendar/db/CustomFestivalProvider;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    .line 67
    invoke-virtual {v4}, Lcn/nubia/calendar/util/ChineseCalendar;->formateGregorianDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    const-string v2, "FS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ws"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/calendar/db/CustomFestivalProvider;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    .line 71
    invoke-virtual {v4}, Lcn/nubia/calendar/util/ChineseCalendar;->formateGregorianDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v1    # "time":Landroid/text/format/Time;
    :cond_0
    :goto_0
    return-object v0

    .line 72
    .restart local v1    # "time":Landroid/text/format/Time;
    :cond_1
    sget-object v2, Lcn/nubia/calendar/util/Constants;->chineseFestivalMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zh"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/calendar/db/CustomFestivalProvider;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    .line 74
    invoke-virtual {v4}, Lcn/nubia/calendar/util/ChineseCalendar;->formateChineseDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    const-string v2, "FS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zh"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/calendar/db/CustomFestivalProvider;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    .line 78
    invoke-virtual {v4}, Lcn/nubia/calendar/util/ChineseCalendar;->formateChineseDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_2
    iget-object v2, p0, Lcn/nubia/calendar/db/CustomFestivalProvider;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-virtual {v2}, Lcn/nubia/calendar/util/ChineseCalendar;->getChineseMonth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcn/nubia/calendar/db/CustomFestivalProvider;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    iget-object v3, p0, Lcn/nubia/calendar/db/CustomFestivalProvider;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    .line 81
    invoke-virtual {v3}, Lcn/nubia/calendar/util/ChineseCalendar;->getChineseYear()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/calendar/db/CustomFestivalProvider;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    .line 82
    invoke-virtual {v4}, Lcn/nubia/calendar/util/ChineseCalendar;->getChineseMonth()I

    move-result v4

    .line 80
    invoke-virtual {v2, v3, v4}, Lcn/nubia/calendar/util/ChineseCalendar;->daysInChineseMonth(II)I

    move-result v2

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_3

    .line 83
    const-string v2, "FS"

    const-string v3, "zh1230"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_3
    const-string v2, "FS"

    const-string v3, "-1"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [Ljava/lang/String;

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Landroid/content/ContentValues;

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcn/nubia/calendar/db/CustomFestivalProvider;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-virtual {p0}, Lcn/nubia/calendar/db/CustomFestivalProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/calendar/util/ChineseCalendar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/calendar/db/CustomFestivalProvider;->mChineseCalendar:Lcn/nubia/calendar/util/ChineseCalendar;

    .line 42
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # [Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # [Ljava/lang/String;
    .param p5, "arg4"    # Ljava/lang/String;

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Landroid/content/ContentValues;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # [Ljava/lang/String;

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method
