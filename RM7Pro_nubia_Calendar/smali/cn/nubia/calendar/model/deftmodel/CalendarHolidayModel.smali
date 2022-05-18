.class public Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;
.super Lcn/nubia/deftmachanism/DeftModel;
.source "CalendarHolidayModel.java"


# static fields
.field public static final LastRequestCurrentYearChineseHoliday:Ljava/lang/String; = "lastrequestcurrenttimeChineseHolidat"

.field public static final LastRequestNextYearChineseHoliday:Ljava/lang/String; = "lastrequestnexttimeChineseHolidat"

.field public static final LastRequestTimeCurrentYearWeekendOnWorkList:Ljava/lang/String; = "lastrequestcurrenttimeWeekendOnWorkList"

.field public static final LastRequestTimeNextYearWeekendOnWorkList:Ljava/lang/String; = "lastrequestnexttimeWeekendOnWorkList"

.field private static final PREFIX:Ljava/lang/String; = "weekend"

.field private static final TAG:Ljava/lang/String; = "CalendarHolidayModel"


# instance fields
.field private final mChineseFestivalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mChineseHolidayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mWeekendOnWorkList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcn/nubia/deftmachanism/DeftModel;-><init>()V

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->mContext:Landroid/content/Context;

    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->mChineseFestivalMap:Ljava/util/HashMap;

    .line 291
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->mChineseHolidayMap:Ljava/util/HashMap;

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->mWeekendOnWorkList:Ljava/util/ArrayList;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->initHolidayMap(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;Landroid/content/Context;I)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->isNextYearWeekGet(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->mChineseHolidayMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;Landroid/content/Context;I)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->isCurrentYearHolidayGet(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->initWeekendWorkList(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->mWeekendOnWorkList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;Landroid/content/Context;I)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->isCurrentYearWeekGet(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;Landroid/content/Context;I)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->isHolidayDateFileExists(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;Landroid/content/Context;I)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->isNextYearHolidayGet(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;Landroid/content/Context;I)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->isWeekendWorkDateFileExists(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method private initHolidayMap(Landroid/content/Context;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "year"    # I

    .prologue
    .line 76
    invoke-static {p1, p2}, Lcn/nubia/calendar/model/HolidayDate;->read(Landroid/content/Context;I)Lcn/nubia/calendar/model/HolidayDate;

    move-result-object v1

    .line 78
    .local v1, "holidayDate":Lcn/nubia/calendar/model/HolidayDate;
    if-nez v1, :cond_1

    .line 88
    :cond_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {v1}, Lcn/nubia/calendar/model/HolidayDate;->getHolidayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 83
    .local v2, "holidayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 84
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 85
    .local v0, "date":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->mChineseHolidayMap:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ws"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0c0151

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private initWeekendWorkList(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "year"    # I

    .prologue
    .line 91
    invoke-static {p1, p2}, Lcn/nubia/calendar/model/WeekendWorkDate;->read(Landroid/content/Context;I)Lcn/nubia/calendar/model/WeekendWorkDate;

    move-result-object v1

    .line 92
    .local v1, "weekendWorkDate":Lcn/nubia/calendar/model/WeekendWorkDate;
    if-nez v1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->mWeekendOnWorkList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcn/nubia/calendar/model/WeekendWorkDate;->getWeekendWorkList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "Calendar error "

    const-string v3, " mWeekendOnWorkList add All ArrayIndexOutOfBoundsException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isCurrentYearHolidayGet(Landroid/content/Context;I)Z
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "year"    # I

    .prologue
    .line 104
    const/4 v7, 0x0

    .line 106
    .local v7, "flag":Z
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 107
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 108
    .local v5, "current_year":I
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/lit8 v4, v10, 0x1

    .line 109
    .local v4, "current_month":I
    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 110
    .local v1, "current_day":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 111
    .local v2, "currentTime":J
    const-string v10, "lastrequestcurrenttimeChineseHolidat"

    invoke-static {p1, v10}, Lcn/nubia/calendar/util/Utils_SharedPreferences;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 113
    .local v8, "lastRequeseCurrentYear":J
    const/4 v10, 0x1

    if-lt v4, v10, :cond_1

    const/16 v10, 0xa

    if-gt v4, v10, :cond_1

    .line 114
    sub-long v10, v2, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0xf731400

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    .line 115
    const/4 v7, 0x1

    .line 125
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "current_day":I
    .end local v2    # "currentTime":J
    .end local v4    # "current_month":I
    .end local v5    # "current_year":I
    .end local v8    # "lastRequeseCurrentYear":J
    :cond_0
    :goto_0
    return v7

    .line 118
    .restart local v0    # "calendar":Ljava/util/Calendar;
    .restart local v1    # "current_day":I
    .restart local v2    # "currentTime":J
    .restart local v4    # "current_month":I
    .restart local v5    # "current_year":I
    .restart local v8    # "lastRequeseCurrentYear":J
    :cond_1
    sub-long v10, v2, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    const-wide/32 v12, 0x5265c00

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    .line 119
    const/4 v7, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "current_day":I
    .end local v2    # "currentTime":J
    .end local v4    # "current_month":I
    .end local v5    # "current_year":I
    .end local v8    # "lastRequeseCurrentYear":J
    :catch_0
    move-exception v6

    .line 123
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isCurrentYearWeekGet(Landroid/content/Context;I)Z
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "year"    # I

    .prologue
    .line 154
    const/4 v7, 0x0

    .line 156
    .local v7, "flag":Z
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 157
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 158
    .local v5, "current_year":I
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/lit8 v4, v10, 0x1

    .line 159
    .local v4, "current_month":I
    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 160
    .local v1, "current_day":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 161
    .local v2, "currentTime":J
    const-string v10, "lastrequestcurrenttimeWeekendOnWorkList"

    invoke-static {p1, v10}, Lcn/nubia/calendar/util/Utils_SharedPreferences;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 163
    .local v8, "lastRequeseCurrentYear":J
    const/4 v10, 0x1

    if-lt v4, v10, :cond_1

    const/16 v10, 0xa

    if-gt v4, v10, :cond_1

    .line 164
    sub-long v10, v2, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0xf731400

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    .line 165
    const/4 v7, 0x1

    .line 175
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "current_day":I
    .end local v2    # "currentTime":J
    .end local v4    # "current_month":I
    .end local v5    # "current_year":I
    .end local v8    # "lastRequeseCurrentYear":J
    :cond_0
    :goto_0
    return v7

    .line 168
    .restart local v0    # "calendar":Ljava/util/Calendar;
    .restart local v1    # "current_day":I
    .restart local v2    # "currentTime":J
    .restart local v4    # "current_month":I
    .restart local v5    # "current_year":I
    .restart local v8    # "lastRequeseCurrentYear":J
    :cond_1
    sub-long v10, v2, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    const-wide/32 v12, 0x5265c00

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    .line 169
    const/4 v7, 0x1

    goto :goto_0

    .line 172
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "current_day":I
    .end local v2    # "currentTime":J
    .end local v4    # "current_month":I
    .end local v5    # "current_year":I
    .end local v8    # "lastRequeseCurrentYear":J
    :catch_0
    move-exception v6

    .line 173
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isHolidayDateFileExists(Landroid/content/Context;I)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "year"    # I

    .prologue
    .line 204
    const/4 v1, 0x0

    .line 206
    .local v1, "flag":Z
    :try_start_0
    invoke-static {p1, p2}, Lcn/nubia/calendar/model/HolidayDate;->read(Landroid/content/Context;I)Lcn/nubia/calendar/model/HolidayDate;

    move-result-object v2

    .line 207
    .local v2, "holidayDate":Lcn/nubia/calendar/model/HolidayDate;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v3, "holidayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 209
    invoke-virtual {v2}, Lcn/nubia/calendar/model/HolidayDate;->getHolidayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 211
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lez v4, :cond_1

    .line 212
    const/4 v1, 0x1

    .line 217
    .end local v2    # "holidayDate":Lcn/nubia/calendar/model/HolidayDate;
    .end local v3    # "holidayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return v1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isNextYearHolidayGet(Landroid/content/Context;I)Z
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "year"    # I

    .prologue
    .line 129
    const/4 v7, 0x0

    .line 131
    .local v7, "flag":Z
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 132
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 133
    .local v5, "current_year":I
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/lit8 v4, v10, 0x1

    .line 134
    .local v4, "current_month":I
    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 135
    .local v1, "current_day":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 136
    .local v2, "currentTime":J
    const-string v10, "lastrequestnexttimeChineseHolidat"

    invoke-static {p1, v10}, Lcn/nubia/calendar/util/Utils_SharedPreferences;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 138
    .local v8, "lastRequeseNextYear":J
    const/4 v10, 0x1

    if-lt v4, v10, :cond_1

    const/16 v10, 0xa

    if-gt v4, v10, :cond_1

    .line 139
    sub-long v10, v2, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0x19bfcc00

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    .line 140
    const/4 v7, 0x1

    .line 150
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "current_day":I
    .end local v2    # "currentTime":J
    .end local v4    # "current_month":I
    .end local v5    # "current_year":I
    .end local v8    # "lastRequeseNextYear":J
    :cond_0
    :goto_0
    return v7

    .line 143
    .restart local v0    # "calendar":Ljava/util/Calendar;
    .restart local v1    # "current_day":I
    .restart local v2    # "currentTime":J
    .restart local v4    # "current_month":I
    .restart local v5    # "current_year":I
    .restart local v8    # "lastRequeseNextYear":J
    :cond_1
    sub-long v10, v2, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    const-wide/32 v12, 0x5265c00

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    .line 144
    const/4 v7, 0x1

    goto :goto_0

    .line 147
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "current_day":I
    .end local v2    # "currentTime":J
    .end local v4    # "current_month":I
    .end local v5    # "current_year":I
    .end local v8    # "lastRequeseNextYear":J
    :catch_0
    move-exception v6

    .line 148
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isNextYearWeekGet(Landroid/content/Context;I)Z
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "year"    # I

    .prologue
    .line 179
    const/4 v7, 0x0

    .line 181
    .local v7, "flag":Z
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 182
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 183
    .local v5, "current_year":I
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/lit8 v4, v10, 0x1

    .line 184
    .local v4, "current_month":I
    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 185
    .local v1, "current_day":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 186
    .local v2, "currentTime":J
    const-string v10, "lastrequestnexttimeWeekendOnWorkList"

    invoke-static {p1, v10}, Lcn/nubia/calendar/util/Utils_SharedPreferences;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 188
    .local v8, "lastRequeseNextYear":J
    const/4 v10, 0x1

    if-lt v4, v10, :cond_1

    const/16 v10, 0xa

    if-gt v4, v10, :cond_1

    .line 189
    sub-long v10, v2, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0x19bfcc00

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    .line 190
    const/4 v7, 0x1

    .line 200
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "current_day":I
    .end local v2    # "currentTime":J
    .end local v4    # "current_month":I
    .end local v5    # "current_year":I
    .end local v8    # "lastRequeseNextYear":J
    :cond_0
    :goto_0
    return v7

    .line 193
    .restart local v0    # "calendar":Ljava/util/Calendar;
    .restart local v1    # "current_day":I
    .restart local v2    # "currentTime":J
    .restart local v4    # "current_month":I
    .restart local v5    # "current_year":I
    .restart local v8    # "lastRequeseNextYear":J
    :cond_1
    sub-long v10, v2, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    const-wide/32 v12, 0x5265c00

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    .line 194
    const/4 v7, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "current_day":I
    .end local v2    # "currentTime":J
    .end local v4    # "current_month":I
    .end local v5    # "current_year":I
    .end local v8    # "lastRequeseNextYear":J
    :catch_0
    move-exception v6

    .line 198
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isWeekendWorkDateFileExists(Landroid/content/Context;I)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "year"    # I

    .prologue
    .line 221
    const/4 v1, 0x0

    .line 223
    .local v1, "flag":Z
    :try_start_0
    invoke-static {p1, p2}, Lcn/nubia/calendar/model/WeekendWorkDate;->read(Landroid/content/Context;I)Lcn/nubia/calendar/model/WeekendWorkDate;

    move-result-object v3

    .line 224
    .local v3, "weekendWorkDate":Lcn/nubia/calendar/model/WeekendWorkDate;
    if-nez v3, :cond_0

    .line 225
    const/4 v4, 0x0

    .line 234
    .end local v3    # "weekendWorkDate":Lcn/nubia/calendar/model/WeekendWorkDate;
    :goto_0
    return v4

    .line 227
    .restart local v3    # "weekendWorkDate":Lcn/nubia/calendar/model/WeekendWorkDate;
    :cond_0
    invoke-virtual {v3}, Lcn/nubia/calendar/model/WeekendWorkDate;->getWeekendWorkList()Ljava/util/ArrayList;

    move-result-object v2

    .line 228
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lez v4, :cond_1

    .line 229
    const/4 v1, 0x1

    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "weekendWorkDate":Lcn/nubia/calendar/model/WeekendWorkDate;
    :cond_1
    :goto_1
    move v4, v1

    .line 234
    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public asyncLoad(Lcn/nubia/calendar/model/deftmodel/IHolidayDownload;)V
    .locals 4
    .param p1, "holidayDownload"    # Lcn/nubia/calendar/model/deftmodel/IHolidayDownload;

    .prologue
    .line 41
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 42
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 44
    .local v1, "year":I
    invoke-static {}, Lcn/nubia/calendar/util/TrackUtils;->isInternalVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;

    invoke-direct {v3, p0, v1, p1}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;-><init>(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;ILcn/nubia/calendar/model/deftmodel/IHolidayDownload;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 72
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public getChineseFestivalMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->mChineseFestivalMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    iput-object p1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public isWorkDayORHoliday(Landroid/content/Context;Landroid/text/format/Time;Ljava/lang/String;)I
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "time"    # Landroid/text/format/Time;
    .param p3, "mHomeTimeZone"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x9

    const/4 v6, -0x1

    .line 244
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, p3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 245
    .local v2, "mTime":Landroid/text/format/Time;
    invoke-virtual {v2, p2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 246
    iget v7, v2, Landroid/text/format/Time;->month:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Landroid/text/format/Time;->month:I

    .line 247
    if-eqz v2, :cond_0

    .line 248
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v2, Landroid/text/format/Time;->year:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 249
    .local v5, "year":Ljava/lang/String;
    const-string v3, ""

    .line 250
    .local v3, "month":Ljava/lang/String;
    const-string v0, ""

    .line 251
    .local v0, "day":Ljava/lang/String;
    iget v7, v2, Landroid/text/format/Time;->month:I

    if-gt v7, v9, :cond_1

    .line 252
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/text/format/Time;->month:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 256
    :goto_0
    iget v7, v2, Landroid/text/format/Time;->monthDay:I

    if-gt v7, v9, :cond_2

    .line 257
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    .line 262
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 263
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->mChineseHolidayMap:Ljava/util/HashMap;

    if-eqz v7, :cond_3

    .line 264
    iget-object v7, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->mChineseHolidayMap:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ws"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 265
    const/4 v6, 0x0

    .line 279
    .end local v0    # "day":Ljava/lang/String;
    .end local v3    # "month":Ljava/lang/String;
    .end local v4    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "year":Ljava/lang/String;
    :cond_0
    :goto_2
    return v6

    .line 254
    .restart local v0    # "day":Ljava/lang/String;
    .restart local v3    # "month":Ljava/lang/String;
    .restart local v5    # "year":Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/text/format/Time;->month:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 259
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 269
    .restart local v4    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_0
    iget-object v7, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->mWeekendOnWorkList:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 270
    iget-object v7, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->mWeekendOnWorkList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    .line 271
    const/4 v6, 0x1

    goto :goto_2

    .line 274
    :catch_0
    move-exception v1

    .line 275
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v7, "Calendar Error "

    const-string v8, "mWeekendOnWorkList contains ArrayIndexOutOfBoundsException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
