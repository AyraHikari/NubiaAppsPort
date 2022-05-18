.class public Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;
.super Landroid/widget/FrameLayout;
.source "NubiaLunarTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$SaveState;,
        Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$OnTimeChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_YEAR:I = 0x7f5

.field private static final DEFAULT_START_YEAR:I = 0x7b2

.field private static final HOURS_IN_HALF_DAY:I = 0xc


# instance fields
.field public isLunarMode:Z

.field private m12HourArray:[Ljava/lang/String;

.field protected mCurrentLocale:Ljava/util/Locale;

.field private mHourView:Lcn/nubia/commonui/widget/WheelView;

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsCN:Z

.field private mMaxMonthDay:I

.field private mMinuteView:Lcn/nubia/commonui/widget/WheelView;

.field private mMonthDay:I

.field private mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

.field private mOnTimeChangeListener:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$OnTimeChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-boolean v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->isLunarMode:Z

    .line 44
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "01"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "02"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "03"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "04"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "05"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "06"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "07"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "08"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "09"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "12"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "01"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "02"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "03"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "04"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "05"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "06"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "07"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "08"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "09"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "12"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->m12HourArray:[Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v8, 0x17

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-boolean v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->isLunarMode:Z

    .line 44
    const/16 v3, 0x18

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "01"

    aput-object v4, v3, v6

    const-string v4, "02"

    aput-object v4, v3, v7

    const/4 v4, 0x2

    const-string v5, "03"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "04"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "05"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "06"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "07"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "08"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "09"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "10"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "11"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "12"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "01"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "02"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "03"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, "04"

    aput-object v5, v3, v4

    const/16 v4, 0x10

    const-string v5, "05"

    aput-object v5, v3, v4

    const/16 v4, 0x11

    const-string v5, "06"

    aput-object v5, v3, v4

    const/16 v4, 0x12

    const-string v5, "07"

    aput-object v5, v3, v4

    const/16 v4, 0x13

    const-string v5, "08"

    aput-object v5, v3, v4

    const/16 v4, 0x14

    const-string v5, "09"

    aput-object v5, v3, v4

    const/16 v4, 0x15

    const-string v5, "10"

    aput-object v5, v3, v4

    const/16 v4, 0x16

    const-string v5, "11"

    aput-object v5, v3, v4

    const-string v4, "12"

    aput-object v4, v3, v8

    iput-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->m12HourArray:[Ljava/lang/String;

    .line 65
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mPaint:Landroid/graphics/Paint;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/commonui/R$color;->nubia_wheelview_middle_zone_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 68
    .local v2, "middleZoneColor":I
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mIs24HourView:Z

    .line 71
    const-string v3, "layout_inflater"

    .line 72
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 73
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcn/nubia/commonui/R$layout;->nubia_lunar_time_picker:I

    invoke-virtual {v1, v3, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 74
    invoke-virtual {p0, v6}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->setBackgroundColor(I)V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 77
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "currentLanguage":Ljava/lang/String;
    const-string v3, "zh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    iput-boolean v7, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mIsCN:Z

    .line 84
    :goto_0
    sget v3, Lcn/nubia/commonui/R$id;->nubia_month_day_spinner:I

    invoke-virtual {p0, v3}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/widget/WheelView;

    iput-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    .line 85
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v3, v7}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 86
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    new-instance v4, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$1;

    invoke-direct {v4, p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$1;-><init>(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;)V

    .line 87
    invoke-virtual {v3, v4}, Lcn/nubia/commonui/widget/WheelView;->setOnValueChangedListener(Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;)V

    .line 125
    sget v3, Lcn/nubia/commonui/R$id;->nubia_hour_spinner:I

    invoke-virtual {p0, v3}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/widget/WheelView;

    iput-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mHourView:Lcn/nubia/commonui/widget/WheelView;

    .line 127
    iget-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mIs24HourView:Z

    if-nez v3, :cond_1

    .line 128
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mHourView:Lcn/nubia/commonui/widget/WheelView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 129
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mHourView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v3, v7}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 130
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mHourView:Lcn/nubia/commonui/widget/WheelView;

    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->m12HourArray:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 131
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mHourView:Lcn/nubia/commonui/widget/WheelView;

    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->m12HourArray:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 137
    :goto_1
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mHourView:Lcn/nubia/commonui/widget/WheelView;

    invoke-static {}, Lcn/nubia/commonui/widget/WheelView;->getTwoDigitFormatter()Lcn/nubia/commonui/widget/WheelView$Formatter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/widget/WheelView;->setFormatter(Lcn/nubia/commonui/widget/WheelView$Formatter;)V

    .line 138
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mHourView:Lcn/nubia/commonui/widget/WheelView;

    new-instance v4, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$2;

    invoke-direct {v4, p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$2;-><init>(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;)V

    .line 139
    invoke-virtual {v3, v4}, Lcn/nubia/commonui/widget/WheelView;->setOnValueChangedListener(Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;)V

    .line 152
    sget v3, Lcn/nubia/commonui/R$id;->nubia_minute_spinner:I

    invoke-virtual {p0, v3}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/widget/WheelView;

    iput-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMinuteView:Lcn/nubia/commonui/widget/WheelView;

    .line 153
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMinuteView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v3, v6}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 154
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMinuteView:Lcn/nubia/commonui/widget/WheelView;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 155
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMinuteView:Lcn/nubia/commonui/widget/WheelView;

    invoke-static {}, Lcn/nubia/commonui/widget/WheelView;->getTwoDigitFormatter()Lcn/nubia/commonui/widget/WheelView$Formatter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/widget/WheelView;->setFormatter(Lcn/nubia/commonui/widget/WheelView$Formatter;)V

    .line 156
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMinuteView:Lcn/nubia/commonui/widget/WheelView;

    new-instance v4, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$3;

    invoke-direct {v4, p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$3;-><init>(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;)V

    .line 157
    invoke-virtual {v3, v4}, Lcn/nubia/commonui/widget/WheelView;->setOnValueChangedListener(Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;)V

    .line 166
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->setCurrentLocale(Ljava/util/Locale;)V

    .line 167
    return-void

    .line 81
    :cond_0
    iput-boolean v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mIsCN:Z

    goto/16 :goto_0

    .line 133
    :cond_1
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mHourView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v3, v6}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 134
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mHourView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v3, v8}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput-boolean v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->isLunarMode:Z

    .line 44
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "01"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "02"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "03"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "04"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "05"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "06"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "07"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "08"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "09"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "12"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "01"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "02"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "03"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "04"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "05"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "06"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "07"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "08"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "09"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "12"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->m12HourArray:[Ljava/lang/String;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;)Lcn/nubia/commonui/widget/WheelView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    .prologue
    .line 21
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mYear:I

    return v0
.end method

.method static synthetic access$1000(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;)Lcn/nubia/commonui/widget/WheelView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mHourView:Lcn/nubia/commonui/widget/WheelView;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mYear:I

    return p1
.end method

.method static synthetic access$108(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;)I
    .locals 2
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    .prologue
    .line 21
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mYear:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mYear:I

    return v0
.end method

.method static synthetic access$110(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;)I
    .locals 2
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    .prologue
    .line 21
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mYear:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mYear:I

    return v0
.end method

.method static synthetic access$1100(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    .prologue
    .line 21
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$202(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMaxMonthDay:I

    return p1
.end method

.method static synthetic access$302(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDay:I

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;II)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->adjustLunYear(II)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mIsCN:Z

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;II)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->adjustSolYear(II)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;II)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->adjustUSYear(II)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mIs24HourView:Z

    return v0
.end method

.method static synthetic access$902(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mIsAm:Z

    return p1
.end method

.method private adjustLunYear(II)V
    .locals 3
    .param p1, "newVal"    # I
    .param p2, "oldVal"    # I

    .prologue
    .line 240
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mYear:I

    invoke-static {v1}, Lcn/nubia/commonui/widget/LunarUtil;->timePickerLunMonthDay(I)[Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "mLunarStringArray":[Ljava/lang/String;
    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->updateTimePickerArray([Ljava/lang/String;)V

    .line 243
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMaxMonthDay:I

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/WheelView;->getMaxValue()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 244
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMaxMonthDay:I

    if-ne p2, v1, :cond_0

    .line 245
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/WheelView;->getMaxValue()I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMaxMonthDay:I

    .line 246
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDay:I

    .line 247
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDay:I

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    .line 260
    :goto_0
    return-void

    .line 248
    :cond_0
    if-nez p2, :cond_1

    .line 249
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/WheelView;->getMaxValue()I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMaxMonthDay:I

    .line 250
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMaxMonthDay:I

    iput v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDay:I

    .line 251
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDay:I

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    goto :goto_0

    .line 253
    :cond_1
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDay:I

    .line 254
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDay:I

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    goto :goto_0

    .line 257
    :cond_2
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDay:I

    .line 258
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDay:I

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    goto :goto_0
.end method

.method private adjustSolYear(II)V
    .locals 3
    .param p1, "newVal"    # I
    .param p2, "oldVal"    # I

    .prologue
    .line 263
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mYear:I

    invoke-static {v1}, Lcn/nubia/commonui/widget/LunarUtil;->timePickerSolMonthDay(I)[Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "mSolarStringArray":[Ljava/lang/String;
    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->updateTimePickerArray([Ljava/lang/String;)V

    .line 266
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMaxMonthDay:I

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/WheelView;->getMaxValue()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 267
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMaxMonthDay:I

    if-ne p2, v1, :cond_0

    .line 268
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/WheelView;->getMaxValue()I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMaxMonthDay:I

    .line 269
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDay:I

    .line 270
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDay:I

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    .line 284
    :goto_0
    return-void

    .line 271
    :cond_0
    if-nez p2, :cond_1

    .line 272
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/WheelView;->getMaxValue()I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMaxMonthDay:I

    .line 273
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMaxMonthDay:I

    iput v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDay:I

    .line 274
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDay:I

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    goto :goto_0

    .line 276
    :cond_1
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDay:I

    .line 277
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDay:I

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    goto :goto_0

    .line 280
    :cond_2
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDay:I

    .line 281
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDay:I

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    goto :goto_0
.end method

.method private adjustUSYear(II)V
    .locals 3
    .param p1, "newVal"    # I
    .param p2, "oldVal"    # I

    .prologue
    .line 287
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mYear:I

    invoke-static {v1}, Lcn/nubia/commonui/widget/LunarUtil;->timePickerUSMonthDay(I)[Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "mUSStringArray":[Ljava/lang/String;
    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->updateTimePickerArray([Ljava/lang/String;)V

    .line 290
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMaxMonthDay:I

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/WheelView;->getMaxValue()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 291
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMaxMonthDay:I

    if-ne p2, v1, :cond_0

    .line 292
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/WheelView;->getMaxValue()I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMaxMonthDay:I

    .line 293
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDay:I

    .line 294
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDay:I

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    .line 308
    :goto_0
    return-void

    .line 295
    :cond_0
    if-nez p2, :cond_1

    .line 296
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/WheelView;->getMaxValue()I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMaxMonthDay:I

    .line 297
    iget v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMaxMonthDay:I

    iput v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDay:I

    .line 298
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDay:I

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    goto :goto_0

    .line 300
    :cond_1
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDay:I

    .line 301
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDay:I

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    goto :goto_0

    .line 304
    :cond_2
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDay:I

    .line 305
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDay:I

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    goto :goto_0
.end method

.method public static getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 411
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 412
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/commonui/R$string;->nubia_time_am:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 413
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/commonui/R$string;->nubia_time_pm:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 414
    return-object v0
.end method

.method private onTimeChanged()V
    .locals 6

    .prologue
    .line 187
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mOnTimeChangeListener:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$OnTimeChangeListener;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mOnTimeChangeListener:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$OnTimeChangeListener;

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mYear:I

    iget v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDay:I

    .line 189
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getCurrentHour()I

    move-result v4

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getCurrentMinute()I

    move-result v5

    move-object v1, p0

    .line 188
    invoke-interface/range {v0 .. v5}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$OnTimeChangeListener;->onTimeChanged(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;IIII)V

    .line 191
    :cond_0
    return-void
.end method

.method private updateTimePickerArray([Ljava/lang/String;)V
    .locals 2
    .param p1, "array"    # [Ljava/lang/String;

    .prologue
    .line 311
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 313
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 314
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 315
    return-void
.end method


# virtual methods
.method public final getCurrentHour()I
    .locals 2

    .prologue
    .line 326
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mHourView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v0

    .line 328
    .local v0, "currentHour":I
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    .end local v0    # "currentHour":I
    :goto_0
    return v0

    .line 330
    .restart local v0    # "currentHour":I
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 331
    rem-int/lit8 v0, v0, 0xc

    goto :goto_0

    .line 333
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v0, v1, 0xc

    goto :goto_0
.end method

.method public final getCurrentMinute()I
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMinuteView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v0

    return v0
.end method

.method public getCurrentYear()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mYear:I

    return v0
.end method

.method public getMonthDayView()Lcn/nubia/commonui/widget/WheelView;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    return-object v0
.end method

.method public getmIs24HourView()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mIs24HourView:Z

    return v0
.end method

.method public getmIsAm()Z
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mIsAm:Z

    return v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 418
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mIs24HourView:Z

    return v0
.end method

.method public noticeTimeChange()V
    .locals 1

    .prologue
    .line 347
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->onTimeChanged()V

    .line 348
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mHourView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->invalidate()V

    .line 349
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMinuteView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->invalidate()V

    .line 350
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMonthDayView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->invalidate()V

    .line 351
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 172
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMinuteView:Lcn/nubia/commonui/widget/WheelView;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMinuteView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->getMiddleTop()I

    move-result v7

    .line 174
    .local v7, "top":I
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMinuteView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->getMiddleBottom()I

    move-result v6

    .line 175
    .local v6, "bottom":I
    const/4 v1, 0x0

    int-to-float v2, v7

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getRight()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 177
    .end local v6    # "bottom":I
    .end local v7    # "top":I
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 398
    move-object v0, p1

    check-cast v0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$SaveState;

    .line 399
    .local v0, "ss":Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$SaveState;
    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$SaveState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 400
    iget v1, v0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$SaveState;->mHour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->setCurrentHour(Ljava/lang/Integer;)V

    .line 401
    iget v1, v0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$SaveState;->mMinute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 402
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 406
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 407
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$SaveState;

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getCurrentHour()I

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getCurrentMinute()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$SaveState;-><init>(Landroid/os/Parcelable;II)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    const/16 v2, 0xc

    .line 363
    if-nez p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getCurrentHour()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 380
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 369
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v2, :cond_2

    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mIsAm:Z

    .line 379
    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mHourView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    goto :goto_0

    .line 372
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mIsAm:Z

    .line 373
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 374
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1
.end method

.method public setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 180
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 183
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mCurrentLocale:Ljava/util/Locale;

    goto :goto_0
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentMinute"    # Ljava/lang/Integer;

    .prologue
    .line 384
    if-nez p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getCurrentMinute()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 389
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMinuteView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    goto :goto_0
.end method

.method public setCurrentYear(I)V
    .locals 0
    .param p1, "year"    # I

    .prologue
    .line 322
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mYear:I

    .line 323
    return-void
.end method

.method public final setOnTimeChangedListener(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$OnTimeChangeListener;)V
    .locals 0
    .param p1, "onTimeChangeListener"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$OnTimeChangeListener;

    .prologue
    .line 393
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mOnTimeChangeListener:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$OnTimeChangeListener;

    .line 394
    return-void
.end method

.method public update(I)V
    .locals 1
    .param p1, "year"    # I

    .prologue
    .line 230
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mYear:I

    .line 231
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->isLunarMode:Z

    if-eqz v0, :cond_0

    .line 232
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mYear:I

    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->timePickerLunMonthDay(I)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMaxMonthDay:I

    .line 237
    :goto_0
    return-void

    .line 234
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mYear:I

    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->timePickerSolMonthDay(I)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->mMaxMonthDay:I

    goto :goto_0
.end method
