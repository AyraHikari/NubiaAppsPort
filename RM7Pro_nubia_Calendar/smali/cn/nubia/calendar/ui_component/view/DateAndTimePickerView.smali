.class public Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;
.super Landroid/widget/FrameLayout;
.source "DateAndTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$SaveState;,
        Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$OnTimeChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_YEAR:I = 0x7f5

.field private static final DEFAULT_START_YEAR:I = 0x7b2

.field private static final HOURS_IN_HALF_DAY:I = 0xc


# instance fields
.field public isLunarMode:Z

.field private mAmPmView:Lcn/nubia/calendar/ui_component/view/WheelView;

.field protected mCurrentLocale:Ljava/util/Locale;

.field private mHourView:Lcn/nubia/calendar/ui_component/view/WheelView;

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIs_CN:Z

.field private mMaxMonthDay:I

.field private mMinuteView:Lcn/nubia/calendar/ui_component/view/WheelView;

.field private mMonthDay:I

.field private mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

.field private mOnTimeChangeListener:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$OnTimeChangeListener;

.field private mYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->isLunarMode:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v7, 0x17

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-boolean v5, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->isLunarMode:Z

    .line 75
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mIs24HourView:Z

    .line 76
    const-string v3, "layout_inflater"

    .line 77
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 78
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030036

    invoke-virtual {v2, v3, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 79
    invoke-virtual {p0, v5}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->setBackgroundColor(I)V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 81
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "currentLanguage":Ljava/lang/String;
    const-string v3, "zh"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    iput-boolean v6, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mIs_CN:Z

    .line 86
    :goto_0
    const v3, 0x7f1100cc

    invoke-virtual {p0, v3}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/ui_component/view/WheelView;

    iput-object v3, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    .line 87
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    invoke-virtual {v3, v6}, Lcn/nubia/calendar/ui_component/view/WheelView;->setMinValue(I)V

    .line 88
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    new-instance v4, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$1;

    invoke-direct {v4, p0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$1;-><init>(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;)V

    .line 89
    invoke-virtual {v3, v4}, Lcn/nubia/calendar/ui_component/view/WheelView;->setOnValueChangedListener(Lcn/nubia/calendar/ui_component/view/WheelView$OnValueChangeListener;)V

    .line 121
    const/16 v3, 0x18

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "01"

    aput-object v3, v0, v5

    const-string v3, "02"

    aput-object v3, v0, v6

    const/4 v3, 0x2

    const-string v4, "03"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "04"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "05"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "06"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "07"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "08"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "09"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "10"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "11"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "12"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "01"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string v4, "02"

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-string v4, "03"

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const-string v4, "04"

    aput-object v4, v0, v3

    const/16 v3, 0x10

    const-string v4, "05"

    aput-object v4, v0, v3

    const/16 v3, 0x11

    const-string v4, "06"

    aput-object v4, v0, v3

    const/16 v3, 0x12

    const-string v4, "07"

    aput-object v4, v0, v3

    const/16 v3, 0x13

    const-string v4, "08"

    aput-object v4, v0, v3

    const/16 v3, 0x14

    const-string v4, "09"

    aput-object v4, v0, v3

    const/16 v3, 0x15

    const-string v4, "10"

    aput-object v4, v0, v3

    const/16 v3, 0x16

    const-string v4, "11"

    aput-object v4, v0, v3

    const-string v3, "12"

    aput-object v3, v0, v7

    .line 124
    .local v0, "arr":[Ljava/lang/String;
    const v3, 0x7f1100cd

    invoke-virtual {p0, v3}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/ui_component/view/WheelView;

    iput-object v3, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mHourView:Lcn/nubia/calendar/ui_component/view/WheelView;

    .line 125
    iget-boolean v3, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mIs24HourView:Z

    if-nez v3, :cond_1

    .line 126
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mHourView:Lcn/nubia/calendar/ui_component/view/WheelView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/ui_component/view/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 127
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mHourView:Lcn/nubia/calendar/ui_component/view/WheelView;

    invoke-virtual {v3, v6}, Lcn/nubia/calendar/ui_component/view/WheelView;->setMinValue(I)V

    .line 128
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mHourView:Lcn/nubia/calendar/ui_component/view/WheelView;

    array-length v4, v0

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/ui_component/view/WheelView;->setMaxValue(I)V

    .line 129
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mHourView:Lcn/nubia/calendar/ui_component/view/WheelView;

    invoke-virtual {v3, v0}, Lcn/nubia/calendar/ui_component/view/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 134
    :goto_1
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mHourView:Lcn/nubia/calendar/ui_component/view/WheelView;

    invoke-static {}, Lcn/nubia/calendar/ui_component/view/WheelView;->getTwoDigitFormatter()Lcn/nubia/calendar/ui_component/view/WheelView$Formatter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/ui_component/view/WheelView;->setFormatter(Lcn/nubia/calendar/ui_component/view/WheelView$Formatter;)V

    .line 135
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mHourView:Lcn/nubia/calendar/ui_component/view/WheelView;

    new-instance v4, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$2;

    invoke-direct {v4, p0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$2;-><init>(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;)V

    .line 136
    invoke-virtual {v3, v4}, Lcn/nubia/calendar/ui_component/view/WheelView;->setOnValueChangedListener(Lcn/nubia/calendar/ui_component/view/WheelView$OnValueChangeListener;)V

    .line 147
    const v3, 0x7f1100ce

    invoke-virtual {p0, v3}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/calendar/ui_component/view/WheelView;

    iput-object v3, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMinuteView:Lcn/nubia/calendar/ui_component/view/WheelView;

    .line 148
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMinuteView:Lcn/nubia/calendar/ui_component/view/WheelView;

    invoke-virtual {v3, v5}, Lcn/nubia/calendar/ui_component/view/WheelView;->setMinValue(I)V

    .line 149
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMinuteView:Lcn/nubia/calendar/ui_component/view/WheelView;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/ui_component/view/WheelView;->setMaxValue(I)V

    .line 150
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMinuteView:Lcn/nubia/calendar/ui_component/view/WheelView;

    invoke-static {}, Lcn/nubia/calendar/ui_component/view/WheelView;->getTwoDigitFormatter()Lcn/nubia/calendar/ui_component/view/WheelView$Formatter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/ui_component/view/WheelView;->setFormatter(Lcn/nubia/calendar/ui_component/view/WheelView$Formatter;)V

    .line 151
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMinuteView:Lcn/nubia/calendar/ui_component/view/WheelView;

    new-instance v4, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$3;

    invoke-direct {v4, p0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$3;-><init>(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;)V

    .line 152
    invoke-virtual {v3, v4}, Lcn/nubia/calendar/ui_component/view/WheelView;->setOnValueChangedListener(Lcn/nubia/calendar/ui_component/view/WheelView$OnValueChangeListener;)V

    .line 159
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->setCurrentLocale(Ljava/util/Locale;)V

    .line 161
    return-void

    .line 85
    .end local v0    # "arr":[Ljava/lang/String;
    :cond_0
    iput-boolean v5, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mIs_CN:Z

    goto/16 :goto_0

    .line 131
    .restart local v0    # "arr":[Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mHourView:Lcn/nubia/calendar/ui_component/view/WheelView;

    invoke-virtual {v3, v5}, Lcn/nubia/calendar/ui_component/view/WheelView;->setMinValue(I)V

    .line 132
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mHourView:Lcn/nubia/calendar/ui_component/view/WheelView;

    invoke-virtual {v3, v7}, Lcn/nubia/calendar/ui_component/view/WheelView;->setMaxValue(I)V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->isLunarMode:Z

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;)Lcn/nubia/calendar/ui_component/view/WheelView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    .prologue
    .line 31
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mYear:I

    return v0
.end method

.method static synthetic access$1000(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;)Lcn/nubia/calendar/ui_component/view/WheelView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mHourView:Lcn/nubia/calendar/ui_component/view/WheelView;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mYear:I

    return p1
.end method

.method static synthetic access$108(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;)I
    .locals 2
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    .prologue
    .line 31
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mYear:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mYear:I

    return v0
.end method

.method static synthetic access$110(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;)I
    .locals 2
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    .prologue
    .line 31
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mYear:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mYear:I

    return v0
.end method

.method static synthetic access$1100(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    .prologue
    .line 31
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$202(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMaxMonthDay:I

    return p1
.end method

.method static synthetic access$302(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDay:I

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    .prologue
    .line 31
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->adjustLunYear()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mIs_CN:Z

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;II)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->adjustSolYear(II)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;II)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->adjustUSYear(II)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mIs24HourView:Z

    return v0
.end method

.method static synthetic access$902(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mIsAm:Z

    return p1
.end method

.method private adjustLunYear()V
    .locals 3

    .prologue
    .line 228
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mYear:I

    invoke-static {v1}, Lcn/nubia/commonui/widget/LunarUtil;->timePickerLunMonthDay(I)[Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "mStrArr_lunar":[Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/ui_component/view/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/ui_component/view/WheelView;->setMinValue(I)V

    .line 231
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/ui_component/view/WheelView;->setMaxValue(I)V

    .line 232
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    invoke-virtual {v1, v0}, Lcn/nubia/calendar/ui_component/view/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 233
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMaxMonthDay:I

    .line 234
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDay:I

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMaxMonthDay:I

    if-le v1, v2, :cond_0

    .line 235
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMaxMonthDay:I

    iput v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDay:I

    .line 236
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDay:I

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/ui_component/view/WheelView;->setValue(I)V

    .line 237
    return-void
.end method

.method private adjustSolYear(II)V
    .locals 4
    .param p1, "newVal"    # I
    .param p2, "oldVal"    # I

    .prologue
    const/4 v3, 0x0

    .line 240
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mYear:I

    invoke-static {v1}, Lcn/nubia/commonui/widget/LunarUtil;->timePickerSolMonthDay(I)[Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "mStrArr_solar":[Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/ui_component/view/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    invoke-virtual {v1, v3}, Lcn/nubia/calendar/ui_component/view/WheelView;->setMinValue(I)V

    .line 243
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/ui_component/view/WheelView;->setMaxValue(I)V

    .line 244
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    invoke-virtual {v1, v0}, Lcn/nubia/calendar/ui_component/view/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 245
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMaxMonthDay:I

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    invoke-virtual {v2}, Lcn/nubia/calendar/ui_component/view/WheelView;->getMaxValue()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 246
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMaxMonthDay:I

    if-ne p2, v1, :cond_0

    .line 247
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    invoke-virtual {v1}, Lcn/nubia/calendar/ui_component/view/WheelView;->getMaxValue()I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMaxMonthDay:I

    .line 248
    iput v3, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDay:I

    .line 249
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDay:I

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/ui_component/view/WheelView;->setValue(I)V

    .line 262
    :goto_0
    return-void

    .line 250
    :cond_0
    if-nez p2, :cond_1

    .line 251
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    invoke-virtual {v1}, Lcn/nubia/calendar/ui_component/view/WheelView;->getMaxValue()I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMaxMonthDay:I

    .line 252
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMaxMonthDay:I

    iput v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDay:I

    .line 253
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDay:I

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/ui_component/view/WheelView;->setValue(I)V

    goto :goto_0

    .line 255
    :cond_1
    iput p1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDay:I

    .line 256
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDay:I

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/ui_component/view/WheelView;->setValue(I)V

    goto :goto_0

    .line 259
    :cond_2
    iput p1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDay:I

    .line 260
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDay:I

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/ui_component/view/WheelView;->setValue(I)V

    goto :goto_0
.end method

.method private adjustUSYear(II)V
    .locals 4
    .param p1, "newVal"    # I
    .param p2, "oldVal"    # I

    .prologue
    const/4 v3, 0x0

    .line 265
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mYear:I

    invoke-static {v1}, Lcn/nubia/commonui/widget/LunarUtil;->timePickerUSMonthDay(I)[Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "mStrArr_us":[Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/ui_component/view/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    invoke-virtual {v1, v3}, Lcn/nubia/calendar/ui_component/view/WheelView;->setMinValue(I)V

    .line 268
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/ui_component/view/WheelView;->setMaxValue(I)V

    .line 269
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    invoke-virtual {v1, v0}, Lcn/nubia/calendar/ui_component/view/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 271
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMaxMonthDay:I

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    invoke-virtual {v2}, Lcn/nubia/calendar/ui_component/view/WheelView;->getMaxValue()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 272
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMaxMonthDay:I

    if-ne p2, v1, :cond_0

    .line 273
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    invoke-virtual {v1}, Lcn/nubia/calendar/ui_component/view/WheelView;->getMaxValue()I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMaxMonthDay:I

    .line 274
    iput v3, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDay:I

    .line 275
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDay:I

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/ui_component/view/WheelView;->setValue(I)V

    .line 288
    :goto_0
    return-void

    .line 276
    :cond_0
    if-nez p2, :cond_1

    .line 277
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    invoke-virtual {v1}, Lcn/nubia/calendar/ui_component/view/WheelView;->getMaxValue()I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMaxMonthDay:I

    .line 278
    iget v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMaxMonthDay:I

    iput v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDay:I

    .line 279
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDay:I

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/ui_component/view/WheelView;->setValue(I)V

    goto :goto_0

    .line 281
    :cond_1
    iput p1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDay:I

    .line 282
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDay:I

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/ui_component/view/WheelView;->setValue(I)V

    goto :goto_0

    .line 285
    :cond_2
    iput p1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDay:I

    .line 286
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDay:I

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/ui_component/view/WheelView;->setValue(I)V

    goto :goto_0
.end method

.method public static getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 382
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 383
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 384
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 385
    return-object v0
.end method

.method private onTimeChanged()V
    .locals 6

    .prologue
    .line 177
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mOnTimeChangeListener:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$OnTimeChangeListener;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mOnTimeChangeListener:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$OnTimeChangeListener;

    iget v2, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mYear:I

    iget v3, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDay:I

    .line 179
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getCurrentHour()I

    move-result v4

    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getCurrentMinute()I

    move-result v5

    move-object v1, p0

    .line 178
    invoke-interface/range {v0 .. v5}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$OnTimeChangeListener;->onTimeChanged(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;IIII)V

    .line 181
    :cond_0
    return-void
.end method


# virtual methods
.method public final getCurrentHour()I
    .locals 2

    .prologue
    .line 299
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mHourView:Lcn/nubia/calendar/ui_component/view/WheelView;

    invoke-virtual {v1}, Lcn/nubia/calendar/ui_component/view/WheelView;->getValue()I

    move-result v0

    .line 300
    .local v0, "currentHour":I
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    .end local v0    # "currentHour":I
    :goto_0
    return v0

    .line 302
    .restart local v0    # "currentHour":I
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 303
    rem-int/lit8 v0, v0, 0xc

    goto :goto_0

    .line 305
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v0, v1, 0xc

    goto :goto_0
.end method

.method public final getCurrentMinute()I
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMinuteView:Lcn/nubia/calendar/ui_component/view/WheelView;

    invoke-virtual {v0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getValue()I

    move-result v0

    return v0
.end method

.method public getCurrentYear()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mYear:I

    return v0
.end method

.method public getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    return-object v0
.end method

.method public getmIs24HourView()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mIs24HourView:Z

    return v0
.end method

.method public getmIsAm()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mIsAm:Z

    return v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mIs24HourView:Z

    return v0
.end method

.method public noticeTimeChange()V
    .locals 1

    .prologue
    .line 318
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->onTimeChanged()V

    .line 319
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mHourView:Lcn/nubia/calendar/ui_component/view/WheelView;

    invoke-virtual {v0}, Lcn/nubia/calendar/ui_component/view/WheelView;->invalidate()V

    .line 320
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMinuteView:Lcn/nubia/calendar/ui_component/view/WheelView;

    invoke-virtual {v0}, Lcn/nubia/calendar/ui_component/view/WheelView;->invalidate()V

    .line 321
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMonthDayView:Lcn/nubia/calendar/ui_component/view/WheelView;

    invoke-virtual {v0}, Lcn/nubia/calendar/ui_component/view/WheelView;->invalidate()V

    .line 322
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 369
    move-object v0, p1

    check-cast v0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$SaveState;

    .line 370
    .local v0, "ss":Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$SaveState;
    invoke-virtual {v0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$SaveState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 371
    iget v1, v0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$SaveState;->mHour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->setCurrentHour(Ljava/lang/Integer;)V

    .line 372
    iget v1, v0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$SaveState;->mMinute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 373
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 377
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 378
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$SaveState;

    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getCurrentHour()I

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getCurrentMinute()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$SaveState;-><init>(Landroid/os/Parcelable;II)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    const/16 v2, 0xc

    .line 334
    if-nez p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getCurrentHour()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 350
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 340
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v2, :cond_2

    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mIsAm:Z

    .line 349
    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mHourView:Lcn/nubia/calendar/ui_component/view/WheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/ui_component/view/WheelView;->setValue(I)V

    goto :goto_0

    .line 343
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mIsAm:Z

    .line 344
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 345
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1
.end method

.method public setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 170
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 173
    :cond_0
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mCurrentLocale:Ljava/util/Locale;

    goto :goto_0
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentMinute"    # Ljava/lang/Integer;

    .prologue
    .line 354
    if-nez p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getCurrentMinute()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMinuteView:Lcn/nubia/calendar/ui_component/view/WheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/ui_component/view/WheelView;->setValue(I)V

    goto :goto_0
.end method

.method public setCurrentYear(I)V
    .locals 0
    .param p1, "year"    # I

    .prologue
    .line 295
    iput p1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mYear:I

    .line 296
    return-void
.end method

.method public final setOnTimeChangedListener(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$OnTimeChangeListener;)V
    .locals 0
    .param p1, "onTimeChangeListener"    # Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$OnTimeChangeListener;

    .prologue
    .line 364
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mOnTimeChangeListener:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$OnTimeChangeListener;

    .line 365
    return-void
.end method

.method public update(I)V
    .locals 1
    .param p1, "year"    # I

    .prologue
    .line 219
    iput p1, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mYear:I

    .line 220
    iget-boolean v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->isLunarMode:Z

    if-eqz v0, :cond_0

    .line 221
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mYear:I

    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->timePickerLunMonthDay(I)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMaxMonthDay:I

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    iget v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mYear:I

    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->timePickerSolMonthDay(I)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->mMaxMonthDay:I

    goto :goto_0
.end method
