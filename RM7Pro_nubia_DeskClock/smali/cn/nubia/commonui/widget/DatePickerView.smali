.class public Lcn/nubia/commonui/widget/DatePickerView;
.super Landroid/widget/FrameLayout;
.source "DatePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/widget/DatePickerView$SavedState;,
        Lcn/nubia/commonui/widget/DatePickerView$OnDateChangeListener;
    }
.end annotation


# static fields
.field public static DEFAULT_END_YEAR:I

.field public static DEFAULT_START_YEAR:I


# instance fields
.field public hasLeapMonth:Z

.field public isLeapMonth:Z

.field public isLunarMode:Z

.field public leapMonth:I

.field private mDay:I

.field private mDayLabel:Landroid/widget/TextView;

.field private mDayView:Lcn/nubia/commonui/widget/WheelView;

.field private mIsCN:Z

.field private mIs_JA_KO:Z

.field private mMaxDayOfMonth:I

.field private mMaxMonthOfYear:I

.field private mMonth:I

.field private mMonthLabel:Landroid/widget/TextView;

.field private mMonthView:Lcn/nubia/commonui/widget/WheelView;

.field private mOnDateChangeListener:Lcn/nubia/commonui/widget/DatePickerView$OnDateChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mYear:I

.field private mYearLabel:Landroid/widget/TextView;

.field private mYearView:Lcn/nubia/commonui/widget/WheelView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x7b2

    sput v0, Lcn/nubia/commonui/widget/DatePickerView;->DEFAULT_START_YEAR:I

    .line 30
    const/16 v0, 0x7f5

    sput v0, Lcn/nubia/commonui/widget/DatePickerView;->DEFAULT_END_YEAR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput-boolean v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->isLunarMode:Z

    .line 33
    iput-boolean v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->hasLeapMonth:Z

    .line 34
    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->leapMonth:I

    .line 35
    iput-boolean v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->isLeapMonth:Z

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v12, 0xc

    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-boolean v9, p0, Lcn/nubia/commonui/widget/DatePickerView;->isLunarMode:Z

    .line 33
    iput-boolean v9, p0, Lcn/nubia/commonui/widget/DatePickerView;->hasLeapMonth:Z

    .line 34
    iput v9, p0, Lcn/nubia/commonui/widget/DatePickerView;->leapMonth:I

    .line 35
    iput-boolean v9, p0, Lcn/nubia/commonui/widget/DatePickerView;->isLeapMonth:Z

    .line 70
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mPaint:Landroid/graphics/Paint;

    .line 71
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcn/nubia/commonui/R$color;->nubia_wheelview_middle_zone_color:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 73
    .local v5, "middleZoneColor":I
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    const-string v7, "layout_inflater"

    .line 75
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 76
    .local v4, "inflater":Landroid/view/LayoutInflater;
    sget v7, Lcn/nubia/commonui/R$layout;->nubia_date_picker:I

    invoke-virtual {v4, v7, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 77
    invoke-virtual {p0, v9}, Lcn/nubia/commonui/widget/DatePickerView;->setBackgroundColor(I)V

    .line 78
    sget v7, Lcn/nubia/commonui/R$id;->nubia_year_label:I

    invoke-virtual {p0, v7}, Lcn/nubia/commonui/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYearLabel:Landroid/widget/TextView;

    .line 79
    sget v7, Lcn/nubia/commonui/R$id;->nubia_month_label:I

    invoke-virtual {p0, v7}, Lcn/nubia/commonui/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthLabel:Landroid/widget/TextView;

    .line 80
    sget v7, Lcn/nubia/commonui/R$id;->nubia_day_label:I

    invoke-virtual {p0, v7}, Lcn/nubia/commonui/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayLabel:Landroid/widget/TextView;

    .line 82
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "currentLanguage":Ljava/lang/String;
    const-string v7, "zh"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 84
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYearLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iput-boolean v10, p0, Lcn/nubia/commonui/widget/DatePickerView;->mIsCN:Z

    .line 92
    :goto_0
    const-string v7, "ja"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "ko"

    .line 93
    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 94
    :cond_0
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYearLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iput-boolean v10, p0, Lcn/nubia/commonui/widget/DatePickerView;->mIs_JA_KO:Z

    .line 102
    :goto_1
    iget-boolean v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mIsCN:Z

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mIs_JA_KO:Z

    if-eqz v7, :cond_4

    .line 103
    :cond_1
    sget v7, Lcn/nubia/commonui/R$id;->nubia_day_spinner:I

    invoke-virtual {p0, v7}, Lcn/nubia/commonui/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcn/nubia/commonui/widget/WheelView;

    iput-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayView:Lcn/nubia/commonui/widget/WheelView;

    .line 104
    sget v7, Lcn/nubia/commonui/R$id;->nubia_month_spinner:I

    invoke-virtual {p0, v7}, Lcn/nubia/commonui/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcn/nubia/commonui/widget/WheelView;

    iput-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    .line 105
    sget v7, Lcn/nubia/commonui/R$id;->nubia_year_spinner:I

    invoke-virtual {p0, v7}, Lcn/nubia/commonui/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcn/nubia/commonui/widget/WheelView;

    iput-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYearView:Lcn/nubia/commonui/widget/WheelView;

    .line 112
    :goto_2
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYearView:Lcn/nubia/commonui/widget/WheelView;

    sget v8, Lcn/nubia/commonui/widget/DatePickerView;->DEFAULT_START_YEAR:I

    invoke-virtual {v7, v8}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 113
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYearView:Lcn/nubia/commonui/widget/WheelView;

    sget v8, Lcn/nubia/commonui/widget/DatePickerView;->DEFAULT_END_YEAR:I

    invoke-virtual {v7, v8}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 114
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYearView:Lcn/nubia/commonui/widget/WheelView;

    new-instance v8, Lcn/nubia/commonui/widget/DatePickerView$1;

    invoke-direct {v8, p0}, Lcn/nubia/commonui/widget/DatePickerView$1;-><init>(Lcn/nubia/commonui/widget/DatePickerView;)V

    invoke-virtual {v7, v8}, Lcn/nubia/commonui/widget/WheelView;->setOnValueChangedListener(Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;)V

    .line 133
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    invoke-static {}, Lcn/nubia/commonui/widget/WheelView;->getTwoDigitFormatter()Lcn/nubia/commonui/widget/WheelView$Formatter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcn/nubia/commonui/widget/WheelView;->setFormatter(Lcn/nubia/commonui/widget/WheelView$Formatter;)V

    .line 134
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 135
    .local v2, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v6

    .line 137
    .local v6, "months":[Ljava/lang/String;
    aget-object v7, v6, v9

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 138
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    array-length v7, v6

    if-ge v3, v7, :cond_5

    .line 139
    add-int/lit8 v7, v3, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 89
    .end local v2    # "dfs":Ljava/text/DateFormatSymbols;
    .end local v3    # "i":I
    .end local v6    # "months":[Ljava/lang/String;
    :cond_2
    iput-boolean v9, p0, Lcn/nubia/commonui/widget/DatePickerView;->mIsCN:Z

    goto/16 :goto_0

    .line 99
    :cond_3
    iput-boolean v9, p0, Lcn/nubia/commonui/widget/DatePickerView;->mIs_JA_KO:Z

    goto :goto_1

    .line 107
    :cond_4
    sget v7, Lcn/nubia/commonui/R$id;->nubia_day_spinner:I

    invoke-virtual {p0, v7}, Lcn/nubia/commonui/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcn/nubia/commonui/widget/WheelView;

    iput-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYearView:Lcn/nubia/commonui/widget/WheelView;

    .line 108
    sget v7, Lcn/nubia/commonui/R$id;->nubia_month_spinner:I

    invoke-virtual {p0, v7}, Lcn/nubia/commonui/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcn/nubia/commonui/widget/WheelView;

    iput-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayView:Lcn/nubia/commonui/widget/WheelView;

    .line 109
    sget v7, Lcn/nubia/commonui/R$id;->nubia_year_spinner:I

    invoke-virtual {p0, v7}, Lcn/nubia/commonui/widget/DatePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcn/nubia/commonui/widget/WheelView;

    iput-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    goto :goto_2

    .line 141
    .restart local v2    # "dfs":Ljava/text/DateFormatSymbols;
    .restart local v3    # "i":I
    .restart local v6    # "months":[Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v7, v10}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 142
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v7, v12}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 149
    .end local v3    # "i":I
    :goto_4
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    new-instance v8, Lcn/nubia/commonui/widget/DatePickerView$2;

    invoke-direct {v8, p0}, Lcn/nubia/commonui/widget/DatePickerView$2;-><init>(Lcn/nubia/commonui/widget/DatePickerView;)V

    invoke-virtual {v7, v8}, Lcn/nubia/commonui/widget/WheelView;->setOnValueChangedListener(Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;)V

    .line 167
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayView:Lcn/nubia/commonui/widget/WheelView;

    invoke-static {}, Lcn/nubia/commonui/widget/WheelView;->getTwoDigitFormatter()Lcn/nubia/commonui/widget/WheelView$Formatter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcn/nubia/commonui/widget/WheelView;->setFormatter(Lcn/nubia/commonui/widget/WheelView$Formatter;)V

    .line 168
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayView:Lcn/nubia/commonui/widget/WheelView;

    new-instance v8, Lcn/nubia/commonui/widget/DatePickerView$3;

    invoke-direct {v8, p0}, Lcn/nubia/commonui/widget/DatePickerView$3;-><init>(Lcn/nubia/commonui/widget/DatePickerView;)V

    invoke-virtual {v7, v8}, Lcn/nubia/commonui/widget/WheelView;->setOnValueChangedListener(Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;)V

    .line 177
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 178
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x5

    .line 179
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x0

    .line 178
    invoke-virtual {p0, v7, v8, v9, v10}, Lcn/nubia/commonui/widget/DatePickerView;->update(IIILcn/nubia/commonui/widget/DatePickerView$OnDateChangeListener;)V

    .line 180
    return-void

    .line 144
    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_6
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v7, v10}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 145
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v7, v12}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 146
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    sget-object v8, Lcn/nubia/commonui/widget/LunarUtil;->MONTHS_SHORT:[Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    goto :goto_4
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput-boolean v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->isLunarMode:Z

    .line 33
    iput-boolean v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->hasLeapMonth:Z

    .line 34
    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->leapMonth:I

    .line 35
    iput-boolean v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->isLeapMonth:Z

    .line 66
    return-void
.end method

.method static synthetic access$002(Lcn/nubia/commonui/widget/DatePickerView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerView;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYear:I

    return p1
.end method

.method static synthetic access$102(Lcn/nubia/commonui/widget/DatePickerView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerView;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    return p1
.end method

.method static synthetic access$202(Lcn/nubia/commonui/widget/DatePickerView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerView;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDay:I

    return p1
.end method

.method private static getCurrentYear()I
    .locals 2

    .prologue
    .line 193
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final adjustDayDisplayerValues()V
    .locals 6

    .prologue
    .line 230
    iget-object v4, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v4}, Lcn/nubia/commonui/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "values":[Ljava/lang/String;
    iget v4, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYear:I

    invoke-static {v4}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonth(I)I

    move-result v2

    .line 232
    .local v2, "leapMonth":I
    const/4 v0, 0x0

    .line 233
    .local v0, "days":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 235
    .local v1, "isCurMonthLeap":Z
    iget v4, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    aget-object v4, v3, v4

    sget-object v5, Lcn/nubia/commonui/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 236
    const/4 v1, 0x1

    .line 237
    iget v4, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYear:I

    iget v5, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    invoke-static {v4, v5, v1}, Lcn/nubia/commonui/widget/LunarUtil;->solarDayTolunarDay(IIZ)[Ljava/lang/String;

    move-result-object v0

    .line 248
    :goto_0
    array-length v4, v0

    iput v4, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMaxDayOfMonth:I

    .line 249
    iget-object v4, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayView:Lcn/nubia/commonui/widget/WheelView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 250
    iget-object v4, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayView:Lcn/nubia/commonui/widget/WheelView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 251
    iget-object v4, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayView:Lcn/nubia/commonui/widget/WheelView;

    iget v5, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMaxDayOfMonth:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 252
    iget-object v4, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v4, v0}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 254
    iget v4, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDay:I

    iget v5, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMaxDayOfMonth:I

    add-int/lit8 v5, v5, -0x1

    if-le v4, v5, :cond_0

    .line 255
    iget v4, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMaxDayOfMonth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDay:I

    .line 256
    :cond_0
    iget-object v4, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayView:Lcn/nubia/commonui/widget/WheelView;

    iget v5, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDay:I

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    .line 257
    return-void

    .line 238
    :cond_1
    if-lez v2, :cond_2

    iget v4, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    add-int/lit8 v5, v2, 0x1

    if-lt v4, v5, :cond_2

    .line 239
    iget v4, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYear:I

    iget v5, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    invoke-static {v4, v5, v1}, Lcn/nubia/commonui/widget/LunarUtil;->solarDayTolunarDay(IIZ)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 240
    :cond_2
    if-lez v2, :cond_3

    iget v4, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    if-ge v4, v2, :cond_3

    .line 241
    iget v4, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYear:I

    iget v5, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    add-int/lit8 v5, v5, 0x1

    .line 242
    invoke-static {v4, v5, v1}, Lcn/nubia/commonui/widget/LunarUtil;->solarDayTolunarDay(IIZ)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_3
    iget v4, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYear:I

    iget v5, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    add-int/lit8 v5, v5, 0x1

    .line 245
    invoke-static {v4, v5, v1}, Lcn/nubia/commonui/widget/LunarUtil;->solarDayTolunarDay(IIZ)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final adjustMaxDay()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 205
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 206
    .local v0, "cal":Ljava/util/Calendar;
    iget v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYear:I

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 207
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 208
    const/4 v1, 0x2

    iget v2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 209
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMaxDayOfMonth:I

    .line 210
    iget v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDay:I

    iget v2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMaxDayOfMonth:I

    if-le v1, v2, :cond_0

    .line 211
    iget v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMaxDayOfMonth:I

    iput v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDay:I

    .line 213
    :cond_0
    return-void
.end method

.method public final adjustMonthDisplayerValues()V
    .locals 4

    .prologue
    .line 216
    iget v2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYear:I

    invoke-static {v2}, Lcn/nubia/commonui/widget/LunarUtil;->solarMonthTolunarMonth(I)[Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "months":[Ljava/lang/String;
    array-length v2, v1

    iput v2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMaxMonthOfYear:I

    .line 218
    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 219
    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 220
    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 221
    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v2, v1}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 222
    iget v2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    iget v3, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMaxMonthOfYear:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_0

    .line 223
    iget v2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMaxMonthOfYear:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    .line 225
    :cond_0
    iget v2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYear:I

    invoke-static {v2}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonth(I)I

    move-result v0

    .line 226
    .local v0, "leapMonth":I
    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    iget v3, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    .line 227
    return-void
.end method

.method public final getDayOfMonth()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDay:I

    return v0
.end method

.method public final getDayWheelView()Lcn/nubia/commonui/widget/WheelView;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayView:Lcn/nubia/commonui/widget/WheelView;

    return-object v0
.end method

.method public final getMonth()I
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v0

    return v0
.end method

.method public final getMonthWheelView()Lcn/nubia/commonui/widget/WheelView;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    return-object v0
.end method

.method public final getYear()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYear:I

    return v0
.end method

.method public final getYearWheelView()Lcn/nubia/commonui/widget/WheelView;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYearView:Lcn/nubia/commonui/widget/WheelView;

    return-object v0
.end method

.method public final notifyDateChanged()V
    .locals 4

    .prologue
    .line 260
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mOnDateChangeListener:Lcn/nubia/commonui/widget/DatePickerView$OnDateChangeListener;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mOnDateChangeListener:Lcn/nubia/commonui/widget/DatePickerView$OnDateChangeListener;

    iget v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYear:I

    iget v2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    iget v3, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDay:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcn/nubia/commonui/widget/DatePickerView$OnDateChangeListener;->onDateChanged(Lcn/nubia/commonui/widget/DatePickerView;III)V

    .line 263
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYearView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->invalidate()V

    .line 264
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->invalidate()V

    .line 265
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->invalidate()V

    .line 267
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 199
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->getMiddleTop()I

    move-result v7

    .line 200
    .local v7, "top":I
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->getMiddleBottom()I

    move-result v6

    .line 201
    .local v6, "bottom":I
    const/4 v1, 0x0

    int-to-float v2, v7

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerView;->getRight()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcn/nubia/commonui/widget/DatePickerView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 202
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 353
    move-object v0, p1

    check-cast v0, Lcn/nubia/commonui/widget/DatePickerView$SavedState;

    .line 354
    .local v0, "ss":Lcn/nubia/commonui/widget/DatePickerView$SavedState;
    invoke-virtual {v0}, Lcn/nubia/commonui/widget/DatePickerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 355
    iget v1, v0, Lcn/nubia/commonui/widget/DatePickerView$SavedState;->sYear:I

    iput v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYear:I

    .line 356
    iget v1, v0, Lcn/nubia/commonui/widget/DatePickerView$SavedState;->sMonth:I

    iput v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    .line 357
    iget v1, v0, Lcn/nubia/commonui/widget/DatePickerView$SavedState;->sDay:I

    iput v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDay:I

    .line 358
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerView;->updateSpinners()V

    .line 359
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 347
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 348
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcn/nubia/commonui/widget/DatePickerView$SavedState;

    iget v2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYear:I

    iget v3, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    iget v4, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDay:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcn/nubia/commonui/widget/DatePickerView$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-object v1
.end method

.method public setDayLabelVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 386
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 387
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 392
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayLabel:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final update(IIILcn/nubia/commonui/widget/DatePickerView$OnDateChangeListener;)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangeListener"    # Lcn/nubia/commonui/widget/DatePickerView$OnDateChangeListener;

    .prologue
    .line 271
    iput p1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYear:I

    .line 272
    iput p2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    .line 273
    iput p3, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDay:I

    .line 274
    iput-object p4, p0, Lcn/nubia/commonui/widget/DatePickerView;->mOnDateChangeListener:Lcn/nubia/commonui/widget/DatePickerView$OnDateChangeListener;

    .line 275
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerView;->updateSpinners()V

    .line 276
    return-void
.end method

.method public final updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 183
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYear:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDay:I

    if-eq v0, p3, :cond_1

    .line 184
    :cond_0
    iput p1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYear:I

    .line 185
    iput p2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    .line 186
    iput p3, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDay:I

    .line 187
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerView;->updateSpinners()V

    .line 188
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerView;->notifyDateChanged()V

    .line 190
    :cond_1
    return-void
.end method

.method public final updateDaySpinners()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 324
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->isLunarMode:Z

    if-ne v1, v3, :cond_1

    .line 325
    iget-object v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMaxDayOfMonth:I

    .line 326
    iget v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDay:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDay:I

    .line 328
    iget v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDay:I

    iget v2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMaxDayOfMonth:I

    if-le v1, v2, :cond_0

    .line 329
    iget v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMaxDayOfMonth:I

    iput v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDay:I

    .line 332
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayView:Lcn/nubia/commonui/widget/WheelView;

    iget v2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDay:I

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    .line 343
    :goto_0
    return-void

    .line 334
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 335
    .local v0, "cal":Ljava/util/Calendar;
    iget v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYear:I

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 336
    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 337
    const/4 v1, 0x2

    iget v2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 338
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMaxDayOfMonth:I

    .line 339
    iget-object v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 340
    iget-object v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayView:Lcn/nubia/commonui/widget/WheelView;

    iget v2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMaxDayOfMonth:I

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 341
    iget-object v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDayView:Lcn/nubia/commonui/widget/WheelView;

    iget v2, p0, Lcn/nubia/commonui/widget/DatePickerView;->mDay:I

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    goto :goto_0
.end method

.method public final updateSpinners()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    const/4 v2, 0x1

    .line 282
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 283
    iput-boolean v2, p0, Lcn/nubia/commonui/widget/DatePickerView;->isLeapMonth:Z

    .line 284
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    add-int/lit8 v0, v0, -0x14

    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    .line 287
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYearView:Lcn/nubia/commonui/widget/WheelView;

    iget v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYear:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    .line 288
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerView;->updateDaySpinners()V

    .line 290
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->isLunarMode:Z

    if-ne v0, v2, :cond_5

    .line 291
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mYear:I

    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonth(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->leapMonth:I

    .line 293
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->leapMonth:I

    if-lez v0, :cond_4

    .line 294
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->isLeapMonth:Z

    if-eqz v0, :cond_3

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->isLeapMonth:Z

    .line 303
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMaxMonthOfYear:I

    .line 305
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    iget v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMaxMonthOfYear:I

    if-le v0, v1, :cond_2

    .line 306
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMaxMonthOfYear:I

    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    .line 309
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    iget v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    .line 321
    :goto_1
    return-void

    .line 296
    :cond_3
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    iget v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->leapMonth:I

    if-gt v0, v1, :cond_1

    .line 297
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    goto :goto_0

    .line 300
    :cond_4
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    goto :goto_0

    .line 311
    :cond_5
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 312
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 314
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    if-lt v0, v3, :cond_6

    .line 315
    iput v3, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    .line 318
    :cond_6
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonthView:Lcn/nubia/commonui/widget/WheelView;

    iget v1, p0, Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    goto :goto_1
.end method
