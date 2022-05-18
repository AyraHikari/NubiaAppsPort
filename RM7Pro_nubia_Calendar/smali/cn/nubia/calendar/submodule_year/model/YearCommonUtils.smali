.class public Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;
.super Ljava/lang/Object;
.source "YearCommonUtils.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;->mContext:Landroid/content/Context;

    .line 13
    return-void
.end method

.method private setNextViewItem(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v2, 0x1

    .line 127
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 128
    .local v0, "iMonthViewCurrentYear":I
    const/16 v1, 0x7f6

    if-ge v0, v1, :cond_0

    .line 129
    add-int/lit8 v0, v0, 0x1

    .line 131
    :cond_0
    invoke-virtual {p1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 132
    return-object p1
.end method

.method private setPrevViewItem(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v2, 0x1

    .line 118
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 119
    .local v0, "iMonthViewCurrentYear":I
    const/16 v1, 0x7b2

    if-le v0, v1, :cond_0

    .line 120
    add-int/lit8 v0, v0, -0x1

    .line 122
    :cond_0
    invoke-virtual {p1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 123
    return-object p1
.end method


# virtual methods
.method public LeftPad_Tow_Zero(I)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # I

    .prologue
    .line 87
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "format":Ljava/text/DecimalFormat;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public dp2px(F)I
    .locals 3
    .param p1, "dipValue"    # F

    .prologue
    .line 58
    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 59
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public getDaysInMonth(II)I
    .locals 2
    .param p1, "month"    # I
    .param p2, "year"    # I

    .prologue
    .line 16
    packed-switch p1, :pswitch_data_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :pswitch_0
    const/16 v0, 0x1f

    .line 31
    :goto_0
    return v0

    .line 29
    :pswitch_1
    const/16 v0, 0x1e

    goto :goto_0

    .line 31
    :pswitch_2
    rem-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_0

    rem-int/lit8 v0, p2, 0x64

    if-nez v0, :cond_1

    :cond_0
    rem-int/lit16 v0, p2, 0x190

    if-nez v0, :cond_2

    :cond_1
    const/16 v0, 0x1d

    goto :goto_0

    :cond_2
    const/16 v0, 0x1c

    goto :goto_0

    .line 16
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDaysOfCurrentMonth(Landroid/text/format/Time;)I
    .locals 2
    .param p1, "argTime"    # Landroid/text/format/Time;

    .prologue
    .line 136
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 137
    .local v0, "time":Landroid/text/format/Time;
    iget v1, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 138
    const/4 v1, 0x0

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    .line 139
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 140
    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    return v1
.end method

.method public getSelectCalendar(I)Ljava/util/Calendar;
    .locals 3
    .param p1, "mPageNumber"    # I

    .prologue
    const/16 v2, 0x22

    .line 104
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 105
    .local v0, "calendar":Ljava/util/Calendar;
    if-le p1, v2, :cond_0

    .line 106
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, p1, -0x22

    if-ge v1, v2, :cond_1

    .line 107
    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;->setNextViewItem(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "i":I
    :cond_0
    if-ge p1, v2, :cond_1

    .line 110
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    rsub-int/lit8 v2, p1, 0x22

    if-ge v1, v2, :cond_1

    .line 111
    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;->setPrevViewItem(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 114
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public getSelectCalendar2(I)Ljava/util/Calendar;
    .locals 3
    .param p1, "mPageNumber"    # I

    .prologue
    .line 92
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 93
    .local v0, "calendar":Ljava/util/Calendar;
    add-int/lit16 v1, p1, 0x7b2

    .line 94
    .local v1, "year":I
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 95
    return-object v0
.end method

.method public px2dp(F)I
    .locals 3
    .param p1, "pxValue"    # F

    .prologue
    .line 46
    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 47
    .local v0, "scale":F
    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public px2sp(F)I
    .locals 3
    .param p1, "pxValue"    # F

    .prologue
    .line 70
    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 71
    .local v0, "fontScale":F
    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public sp2px(F)I
    .locals 3
    .param p1, "spValue"    # F

    .prologue
    .line 82
    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 83
    .local v0, "fontScale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method
