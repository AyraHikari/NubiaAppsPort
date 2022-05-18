.class public Lcom/zte/mifavor/widget/GregorianLunarDateView;
.super Landroid/widget/LinearLayout;
.source "GregorianLunarDateView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WrongConstant"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;,
        Lcom/zte/mifavor/widget/GregorianLunarDateView$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DAY_SPAN_GREGORIAN:I = 0x1f

.field private static final DAY_SPAN_LUNAR:I = 0x1e

.field private static final DAY_START:I = 0x1

.field private static final DAY_START_GREGORIAN:I = 0x1

.field private static final DAY_START_LUNAR:I = 0x1

.field private static final DAY_STOP:I = 0x1e

.field private static final DAY_STOP_GREGORIAN:I = 0x1f

.field private static final DAY_STOP_LUNAR:I = 0x1e

.field private static final MONTH_SPAN_GREGORIAN:I = 0xc

.field private static final MONTH_SPAN_LUNAR_LEAP:I = 0xd

.field private static final MONTH_SPAN_LUNAR_NORMAL:I = 0xc

.field private static final MONTH_START:I = 0x1

.field private static final MONTH_START_GREGORIAN:I = 0x1

.field private static final MONTH_START_LUNAR:I = 0x1

.field private static final MONTH_START_LUNAR_LEAP:I = 0x1

.field private static final MONTH_START_LUNAR_NORMAL:I = 0x1

.field private static final MONTH_START_LUNAR_NOYEAR:I = 0x1

.field private static final MONTH_STOP_GREGORIAN:I = 0xc

.field private static final MONTH_STOP_LUNAR_LEAP:I = 0xd

.field private static final MONTH_STOP_LUNAR_NORMAL:I = 0xc

.field private static final MONTH_STOP_LUNAR_NOYEAR:I = 0x18

.field private static final YEAR_START:I = 0x76c

.field private static final YEAR_STOP:I = 0x834

.field private static force:Z


# instance fields
.field private currDisplayMonthsLunar:[Ljava/lang/String;

.field private displayDaysGregorian:[Ljava/lang/String;

.field private displayDaysLunar:[Ljava/lang/String;

.field private displayMonthsGregorian:[Ljava/lang/String;

.field private displayMonthsLunar:[Ljava/lang/String;

.field private displayMonthsLunarNoYear:[Ljava/lang/String;

.field private displayYearsGregorian:[Ljava/lang/String;

.field private displayYearsLunar:[Ljava/lang/String;

.field private mActiveTextSize:I

.field private mBottoSwitchLine:Landroid/view/View;

.field private mContentView:Landroid/view/View;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mDateTextSize:I

.field private mEvenWhellPaintColor:I

.field private mInactiveTextSize:I

.field private mIsGregorian:Z

.field private final mLunarChoice:Landroid/widget/RelativeLayout;

.field private mOnDateChangedListener:Lcom/zte/mifavor/widget/GregorianLunarDateView$OnDateChangedListener;

.field private mSelectorWhellPaintColor:I

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mStateMachineEvent:Z

.field private mSwitch:Lcom/zte/mifavor/widget/SwitchZTE;

.field private mTopSwitchLine:Landroid/view/View;

.field private mTransparentPaintColor:I

.field private mUPdownWhellPaintColor:I

.field private max_year:I

.field private min_year:I

.field private picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private picker_day_input:Landroid/widget/EditText;

.field private picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private picker_month_input:Landroid/widget/EditText;

.field private picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

.field private picker_year_input:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x76c

    .line 68
    iput p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    const/16 p2, 0x834

    .line 69
    iput p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->max_year:I

    const/4 p2, 0x0

    .line 76
    iput-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSwitch:Lcom/zte/mifavor/widget/SwitchZTE;

    .line 77
    iput-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mTopSwitchLine:Landroid/view/View;

    .line 78
    iput-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mBottoSwitchLine:Landroid/view/View;

    const/4 p3, 0x1

    .line 92
    iput-boolean p3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mIsGregorian:Z

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mStateMachineEvent:Z

    const v1, 0x8ed3

    .line 96
    iput v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSelectorWhellPaintColor:I

    const/high16 v1, -0x76000000

    .line 97
    iput v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mUPdownWhellPaintColor:I

    const/high16 v1, 0x42000000    # 32.0f

    .line 98
    iput v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mEvenWhellPaintColor:I

    const v1, 0xffffff

    .line 99
    iput v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mTransparentPaintColor:I

    const/16 v1, 0x14

    .line 100
    iput v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mActiveTextSize:I

    const/16 v1, 0x10

    .line 101
    iput v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mInactiveTextSize:I

    const/16 v1, 0xc

    .line 102
    iput v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mDateTextSize:I

    .line 115
    sget v1, Lcom/zte/extres/R$layout;->view_gregorian_lunar_date:I

    invoke-static {p1, v1, p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mContentView:Landroid/view/View;

    .line 117
    new-instance v1, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;-><init>(Lcom/zte/mifavor/widget/GregorianLunarDateView;)V

    .line 156
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    .line 157
    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 158
    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, p3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    .line 159
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 158
    invoke-virtual {p0, v2, v3, v4, p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->init(IIILcom/zte/mifavor/widget/GregorianLunarDateView$OnDateChangedListener;)V

    .line 161
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    .line 162
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 163
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "font_scale"

    iget p2, p2, Landroid/content/res/Configuration;->fontScale:F

    .line 162
    invoke-static {v2, v3, p2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 165
    iget-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mContentView:Landroid/view/View;

    sget v2, Lcom/zte/extres/R$id;->picker_year:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/zte/mifavor/widget/NumberPickerZTE;

    iput-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 166
    iget-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mActiveTextSize:I

    invoke-virtual {p2, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 167
    iget-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mInactiveTextSize:I

    invoke-virtual {p2, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 168
    iget-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p2, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnValueChangedListener(Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 169
    iget-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v2, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual {p2, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year_input:Landroid/widget/EditText;

    .line 171
    iget-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mContentView:Landroid/view/View;

    sget v2, Lcom/zte/extres/R$id;->picker_month:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/zte/mifavor/widget/NumberPickerZTE;

    iput-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 172
    iget-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mActiveTextSize:I

    invoke-virtual {p2, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 173
    iget-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mInactiveTextSize:I

    invoke-virtual {p2, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 174
    iget-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p2, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnValueChangedListener(Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 175
    iget-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v2, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual {p2, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month_input:Landroid/widget/EditText;

    .line 177
    iget-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mContentView:Landroid/view/View;

    sget v2, Lcom/zte/extres/R$id;->picker_day:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/zte/mifavor/widget/NumberPickerZTE;

    iput-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    .line 178
    iget-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mActiveTextSize:I

    invoke-virtual {p2, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setInputSize(I)V

    .line 179
    iget-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mInactiveTextSize:I

    invoke-virtual {p2, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 180
    iget-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p2, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setOnValueChangedListener(Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 181
    iget-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    sget v1, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual {p2, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day_input:Landroid/widget/EditText;

    .line 183
    sget p2, Lcom/zte/extres/R$id;->pickers:I

    invoke-virtual {p0, p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSpinners:Landroid/widget/LinearLayout;

    .line 185
    invoke-direct {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->reorderSpinners()V

    .line 187
    sget p2, Lcom/zte/extres/R$id;->switch1:I

    invoke-virtual {p0, p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/zte/mifavor/widget/SwitchZTE;

    iput-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSwitch:Lcom/zte/mifavor/widget/SwitchZTE;

    .line 188
    sget p2, Lcom/zte/extres/R$id;->topswitch_line:I

    invoke-virtual {p0, p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mTopSwitchLine:Landroid/view/View;

    .line 189
    sget p2, Lcom/zte/extres/R$id;->bottomswitch_line:I

    invoke-virtual {p0, p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mBottoSwitchLine:Landroid/view/View;

    .line 190
    sget p2, Lcom/zte/extres/R$id;->lunar_choice:I

    invoke-virtual {p0, p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mLunarChoice:Landroid/widget/RelativeLayout;

    .line 193
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "zh"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 194
    iget-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSwitch:Lcom/zte/mifavor/widget/SwitchZTE;

    new-instance p3, Lcom/zte/mifavor/widget/GregorianLunarDateView$2;

    invoke-direct {p3, p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView$2;-><init>(Lcom/zte/mifavor/widget/GregorianLunarDateView;)V

    invoke-virtual {p2, p3}, Lcom/zte/mifavor/widget/SwitchZTE;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 204
    iget-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSwitch:Lcom/zte/mifavor/widget/SwitchZTE;

    invoke-virtual {p2, v0}, Lcom/zte/mifavor/widget/SwitchZTE;->setChecked(Z)V

    goto :goto_0

    .line 206
    :cond_0
    iget-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mLunarChoice:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 207
    iget-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mTopSwitchLine:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mBottoSwitchLine:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 209
    invoke-virtual {p0, p3}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setGregorian(Z)V

    .line 212
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/zte/extres/R$color;->mfv_common_date_time_txt_fc:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSelectorWhellPaintColor:I

    .line 213
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/zte/extres/R$color;->mfv_common_pop_secondary_txt:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mUPdownWhellPaintColor:I

    .line 214
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/zte/extres/R$color;->mfv_common_tf_txt_watermark:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mEvenWhellPaintColor:I

    .line 215
    iget p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSelectorWhellPaintColor:I

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setColor(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/GregorianLunarDateView;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Ljava/util/Calendar;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/zte/mifavor/widget/GregorianLunarDateView;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/zte/mifavor/widget/GregorianLunarDateView;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$1200(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mStateMachineEvent:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mLunarChoice:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mIsGregorian:Z

    return p0
.end method

.method static synthetic access$300(Lcom/zte/mifavor/widget/GregorianLunarDateView;II)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->passiveUpdateMonthAndDayNoYear(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/mifavor/widget/GregorianLunarDateView;IIZ)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->passiveUpdateMonthAndDay(IIZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    return-object p0
.end method

.method static synthetic access$600(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    return-object p0
.end method

.method static synthetic access$700(Lcom/zte/mifavor/widget/GregorianLunarDateView;)[Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysLunar:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/zte/mifavor/widget/GregorianLunarDateView;Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p5}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setValuesForPickerView(Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/zte/mifavor/widget/GregorianLunarDateView;IIIIZ)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p5}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->passiveUpdateDay(IIIIZ)V

    return-void
.end method

.method private adjustCalendarByLimit(Ljava/util/Calendar;IIZ)Ljava/util/Calendar;
    .locals 3

    const/4 p0, 0x1

    .line 261
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    if-eqz p4, :cond_1

    const/4 p4, 0x5

    const/4 v2, 0x2

    if-ge v0, p2, :cond_0

    .line 264
    invoke-virtual {p1, p0, p2}, Ljava/util/Calendar;->set(II)V

    .line 265
    invoke-virtual {p1, v2, p0}, Ljava/util/Calendar;->set(II)V

    .line 266
    invoke-virtual {p1, p4, p0}, Ljava/util/Calendar;->set(II)V

    :cond_0
    if-le v0, p3, :cond_3

    .line 269
    invoke-virtual {p1, p0, p3}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xb

    .line 270
    invoke-virtual {p1, v2, p0}, Ljava/util/Calendar;->set(II)V

    .line 271
    invoke-static {p3, v1}, Lcom/zte/mifavor/widget/Util;->getSumOfDayInMonthForGregorianByMonth(II)I

    move-result p0

    .line 272
    invoke-virtual {p1, p4, p0}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_1
    sub-int p1, v0, p2

    .line 275
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p4

    if-ge p1, p4, :cond_2

    .line 276
    new-instance p1, Lcom/zte/mifavor/widget/ChineseCalendar;

    invoke-direct {p1, p0, p2, p0, p0}, Lcom/zte/mifavor/widget/ChineseCalendar;-><init>(ZIII)V

    goto :goto_0

    .line 278
    :cond_2
    invoke-static {p3, v1}, Lcom/zte/mifavor/widget/Util;->getSumOfDayInMonthForLunarByMonthLunar(II)I

    move-result p1

    .line 279
    new-instance p2, Lcom/zte/mifavor/widget/ChineseCalendar;

    invoke-direct {p2, p0, p3, v1, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;-><init>(ZIII)V

    move-object p1, p2

    :cond_3
    :goto_0
    return-object p1
.end method

.method private checkCalendarAvailable(Ljava/util/Calendar;IIZ)Z
    .locals 0

    const/4 p0, 0x1

    if-eqz p4, :cond_0

    .line 824
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    goto :goto_0

    .line 826
    :cond_0
    new-instance p4, Lcom/zte/mifavor/widget/ChineseCalendar;

    invoke-direct {p4, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;-><init>(Ljava/util/Calendar;)V

    const/16 p1, 0x321

    .line 827
    invoke-virtual {p4, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result p1

    :goto_0
    if-gt p2, p1, :cond_1

    if-gt p1, p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private initValuesForD(Lcom/zte/mifavor/widget/ChineseCalendar;Z)V
    .locals 12

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    const/4 p2, 0x1

    .line 494
    invoke-virtual {p1, p2}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/Util;->getSumOfDayInMonthForGregorianByMonth(II)I

    move-result v4

    const/4 p2, 0x5

    .line 495
    invoke-virtual {p1, p2}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v2

    .line 496
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v5, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysGregorian:[Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setValuesForPickerView(Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v9, 0x1

    const/16 p2, 0x321

    .line 499
    invoke-virtual {p1, p2}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result p2

    const/16 v0, 0x322

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v0

    invoke-static {p2, v0}, Lcom/zte/mifavor/widget/Util;->getSumOfDayInMonthForLunarByMonthLunar(II)I

    move-result v10

    const/16 p2, 0x323

    .line 500
    invoke-virtual {p1, p2}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v8

    .line 501
    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v11, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysLunar:[Ljava/lang/String;

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setValuesForPickerView(Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private initValuesForM(Lcom/zte/mifavor/widget/ChineseCalendar;Z)V
    .locals 7

    const/16 v0, 0xc

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    .line 472
    invoke-virtual {p1, p2}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 473
    iget-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayMonthsGregorian:[Ljava/lang/String;

    :goto_0
    move v3, p1

    move-object v6, p2

    move v5, v0

    goto :goto_1

    :cond_0
    const/16 p2, 0x321

    .line 475
    invoke-virtual {p1, p2}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result p2

    invoke-static {p2}, Lcom/zte/mifavor/widget/Util;->getMonthLeapByYear(I)I

    move-result p2

    const/16 v1, 0x322

    if-nez p2, :cond_1

    .line 479
    invoke-virtual {p1, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result p1

    .line 480
    iget-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayMonthsLunar:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/16 v0, 0xd

    .line 484
    invoke-virtual {p1, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result p1

    invoke-static {p1, p2}, Lcom/zte/mifavor/widget/Util;->convertMonthLunarToMonthSway(II)I

    move-result p1

    .line 485
    invoke-static {p2}, Lcom/zte/mifavor/widget/Util;->getLunarMonthsNamesWithLeap(I)[Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :goto_1
    const/4 v4, 0x1

    .line 488
    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setValuesForPickerView(Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V

    return-void
.end method

.method private initValuesForY(Lcom/zte/mifavor/widget/ChineseCalendar;Z)V
    .locals 6

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 453
    invoke-virtual {p1, p2}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v2

    .line 454
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    iget v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->max_year:I

    iget-object v5, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayYearsGregorian:[Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setValuesForPickerView(Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x321

    .line 456
    invoke-virtual {p1, p2}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v2

    .line 457
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    iget v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->max_year:I

    iget-object v5, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayYearsLunar:[Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setValuesForPickerView(Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V

    .line 459
    :goto_0
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setWrapSelectorWheel(Z)V

    return-void
.end method

.method private notifyDateChanged()V
    .locals 4

    .line 560
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mOnDateChangedListener:Lcom/zte/mifavor/widget/GregorianLunarDateView$OnDateChangedListener;

    if-eqz v0, :cond_1

    .line 561
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mIsGregorian:Z

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getYearValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mOnDateChangedListener:Lcom/zte/mifavor/widget/GregorianLunarDateView$OnDateChangedListener;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getMonth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/zte/mifavor/widget/GregorianLunarDateView$OnDateChangedListener;->onDateChanged(Lcom/zte/mifavor/widget/GregorianLunarDateView;III)V

    goto :goto_0

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mOnDateChangedListener:Lcom/zte/mifavor/widget/GregorianLunarDateView$OnDateChangedListener;

    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/zte/mifavor/widget/GregorianLunarDateView$OnDateChangedListener;->onDateChanged(Lcom/zte/mifavor/widget/GregorianLunarDateView;III)V

    :cond_1
    :goto_0
    return-void
.end method

.method private passiveUpdateDay(IIIIZ)V
    .locals 7

    .line 781
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v0

    .line 783
    invoke-static {p1, p3, p5}, Lcom/zte/mifavor/widget/Util;->getSumOfDayInMonth(IIZ)I

    move-result p1

    .line 784
    invoke-static {p2, p4, p5}, Lcom/zte/mifavor/widget/Util;->getSumOfDayInMonth(IIZ)I

    move-result v5

    if-ne p1, v5, :cond_0

    return-void

    :cond_0
    if-gt v0, v5, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v5

    .line 790
    :goto_0
    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v4, 0x1

    if-eqz p5, :cond_2

    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysGregorian:[Ljava/lang/String;

    :goto_1
    move-object v6, p1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysLunar:[Ljava/lang/String;

    goto :goto_1

    :goto_2
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setValuesForPickerView(Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V

    return-void
.end method

.method private passiveUpdateMonthAndDay(IIZ)V
    .locals 9

    .line 640
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v0

    .line 641
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v1

    if-eqz p3, :cond_2

    const/4 p3, 0x1

    .line 646
    invoke-static {p1, v0, p3}, Lcom/zte/mifavor/widget/Util;->getSumOfDayInMonth(IIZ)I

    move-result p1

    .line 647
    invoke-static {p2, v0, p3}, Lcom/zte/mifavor/widget/Util;->getSumOfDayInMonth(IIZ)I

    move-result v6

    if-ne p1, v6, :cond_0

    return-void

    :cond_0
    if-gt v1, v6, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v6

    .line 653
    :goto_0
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysGregorian:[Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setValuesForPickerView(Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V

    return-void

    .line 658
    :cond_2
    invoke-static {p2}, Lcom/zte/mifavor/widget/Util;->getMonthLeapByYear(I)I

    move-result p3

    .line 659
    invoke-static {p1}, Lcom/zte/mifavor/widget/Util;->getMonthLeapByYear(I)I

    move-result v2

    if-ne p3, v2, :cond_5

    .line 665
    invoke-static {v0, v2}, Lcom/zte/mifavor/widget/Util;->convertMonthSwayToMonthLunar(II)I

    move-result v2

    .line 666
    invoke-static {v0, p3}, Lcom/zte/mifavor/widget/Util;->convertMonthSwayToMonthLunar(II)I

    move-result p3

    .line 667
    invoke-static {p1, v2}, Lcom/zte/mifavor/widget/Util;->getSumOfDayInMonthForLunarByMonthLunar(II)I

    move-result p1

    .line 668
    invoke-static {p2, p3}, Lcom/zte/mifavor/widget/Util;->getSumOfDayInMonthForLunarByMonthLunar(II)I

    move-result v6

    if-ne p1, v6, :cond_3

    return-void

    :cond_3
    if-gt v1, v6, :cond_4

    move v4, v1

    goto :goto_1

    :cond_4
    move v4, v6

    .line 674
    :goto_1
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysLunar:[Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setValuesForPickerView(Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V

    return-void

    .line 678
    :cond_5
    invoke-static {p3}, Lcom/zte/mifavor/widget/Util;->getLunarMonthsNamesWithLeap(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->currDisplayMonthsLunar:[Ljava/lang/String;

    .line 680
    invoke-static {v0, v2}, Lcom/zte/mifavor/widget/Util;->convertMonthSwayToMonthLunar(II)I

    move-result v2

    .line 681
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 682
    invoke-static {v2, p3}, Lcom/zte/mifavor/widget/Util;->convertMonthLunarToMonthSway(II)I

    move-result v2

    .line 683
    iget-object v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v6, 0x1

    if-nez p3, :cond_6

    const/16 p3, 0xc

    :goto_2
    move v7, p3

    goto :goto_3

    :cond_6
    const/16 p3, 0xd

    goto :goto_2

    :goto_3
    iget-object v8, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->currDisplayMonthsLunar:[Ljava/lang/String;

    move-object v3, p0

    move v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setValuesForPickerView(Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 695
    invoke-static {p1, v0, p3}, Lcom/zte/mifavor/widget/Util;->getSumOfDayInMonth(IIZ)I

    move-result p1

    .line 696
    invoke-static {p2, v2, p3}, Lcom/zte/mifavor/widget/Util;->getSumOfDayInMonth(IIZ)I

    move-result v7

    if-ne p1, v7, :cond_7

    return-void

    :cond_7
    if-gt v1, v7, :cond_8

    move v5, v1

    goto :goto_4

    :cond_8
    move v5, v7

    .line 701
    :goto_4
    iget-object v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v6, 0x1

    iget-object v8, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysLunar:[Ljava/lang/String;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setValuesForPickerView(Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V

    return-void
.end method

.method private passiveUpdateMonthAndDayNoYear(II)V
    .locals 9

    .line 709
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v0

    .line 710
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v1

    .line 713
    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2, p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isNoYear(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 714
    invoke-static {p1}, Lcom/zte/mifavor/widget/Util;->getMonthLeapByYear(I)I

    move-result v2

    if-nez v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    move v5, v2

    goto :goto_1

    .line 718
    :cond_0
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v0, v3, :cond_1

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 720
    :cond_1
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_2

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    :cond_2
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, -0x3

    goto :goto_0

    .line 726
    :goto_1
    iget-object v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v6, 0x1

    const/16 v7, 0x18

    iget-object v8, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayMonthsLunarNoYear:[Ljava/lang/String;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setValuesForPickerView(Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V

    .line 727
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v5, 0x1

    const/16 v6, 0x1e

    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysLunar:[Ljava/lang/String;

    move-object v2, p0

    move v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setValuesForPickerView(Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V

    .line 729
    sget v2, Lcom/zte/extres/R$id;->week:I

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x4

    .line 730
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 733
    :cond_3
    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isNoYear(I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 734
    invoke-static {p2}, Lcom/zte/mifavor/widget/Util;->getMonthLeapByYear(I)I

    move-result p1

    if-nez p1, :cond_5

    const/16 p1, 0xc

    .line 741
    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_4

    .line 742
    div-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 744
    :cond_4
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 746
    :goto_2
    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayMonthsLunar:[Ljava/lang/String;

    move v7, p1

    move-object v8, v2

    goto :goto_4

    :cond_5
    const/16 v2, 0xd

    .line 750
    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_7

    .line 751
    div-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v0, v3, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 757
    :cond_7
    div-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v0, v3, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v0, v0, 0x2

    .line 763
    :goto_3
    invoke-static {p1}, Lcom/zte/mifavor/widget/Util;->getLunarMonthsNamesWithLeap(I)[Ljava/lang/String;

    move-result-object p1

    move-object v8, p1

    move v7, v2

    :goto_4
    const/4 v6, 0x1

    .line 765
    iget-object v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-object v3, p0

    move v5, v0

    invoke-direct/range {v3 .. v8}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setValuesForPickerView(Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 767
    invoke-static {p2, v0, p1}, Lcom/zte/mifavor/widget/Util;->getSumOfDayInMonth(IIZ)I

    move-result v6

    const/16 p2, 0x1e

    if-eq p2, v6, :cond_a

    if-gt v1, v6, :cond_9

    move v4, v1

    goto :goto_5

    :cond_9
    move v4, v6

    .line 770
    :goto_5
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysLunar:[Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setValuesForPickerView(Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V

    .line 773
    :cond_a
    sget p2, Lcom/zte/extres/R$id;->week:I

    invoke-virtual {p0, p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 774
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method private reorderSpinners()V
    .locals 5

    .line 611
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 616
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v0

    .line 617
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 619
    aget-char v3, v0, v2

    const/16 v4, 0x4d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x64

    if-eq v3, v4, :cond_1

    const/16 v4, 0x79

    if-ne v3, v4, :cond_0

    .line 629
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 630
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-direct {p0, v3, v1, v2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setImeOptions(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V

    goto :goto_1

    .line 633
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 621
    :cond_1
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 622
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-direct {p0, v3, v1, v2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setImeOptions(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V

    goto :goto_1

    .line 625
    :cond_2
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 626
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-direct {p0, v3, v1, v2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setImeOptions(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private setDisplayData(Z)V
    .locals 5

    const/16 v0, 0xc

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 351
    iget p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->max_year:I

    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayYearsGregorian:[Ljava/lang/String;

    move p1, v1

    .line 352
    :goto_0
    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->max_year:I

    iget v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge p1, v2, :cond_0

    .line 353
    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayYearsGregorian:[Ljava/lang/String;

    iget v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    add-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 358
    :cond_0
    new-instance p1, Ljava/text/DateFormatSymbols;

    invoke-direct {p1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayMonthsGregorian:[Ljava/lang/String;

    .line 359
    invoke-direct {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->usingNumericMonths()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 360
    new-array p1, v0, [Ljava/lang/String;

    iput-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayMonthsGregorian:[Ljava/lang/String;

    move p1, v1

    :goto_1
    if-ge p1, v0, :cond_1

    .line 362
    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayMonthsGregorian:[Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, p1

    move p1, v3

    goto :goto_1

    :cond_1
    const/16 p1, 0x1f

    .line 369
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysGregorian:[Ljava/lang/String;

    :goto_2
    if-ge v1, p1, :cond_5

    .line 371
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysGregorian:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_2

    .line 377
    :cond_2
    iget p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->max_year:I

    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayYearsLunar:[Ljava/lang/String;

    move p1, v1

    .line 378
    :goto_3
    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->max_year:I

    iget v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge p1, v2, :cond_3

    .line 381
    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayYearsLunar:[Ljava/lang/String;

    iget v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    add-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 386
    :cond_3
    new-array p1, v0, [Ljava/lang/String;

    iput-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayMonthsLunar:[Ljava/lang/String;

    move p1, v1

    :goto_4
    if-ge p1, v0, :cond_4

    .line 388
    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayMonthsLunar:[Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Lcom/zte/mifavor/widget/Util;->getLunarNameOfMonth(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, p1

    move p1, v3

    goto :goto_4

    :cond_4
    const/16 p1, 0x1e

    .line 394
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysLunar:[Ljava/lang/String;

    :goto_5
    if-ge v1, p1, :cond_5

    .line 396
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysLunar:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Lcom/zte/mifavor/widget/Util;->getLunarNameOfDay(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_5

    :cond_5
    return-void
.end method

.method private setDisplayValuesForAll(Lcom/zte/mifavor/widget/ChineseCalendar;Z)V
    .locals 0

    .line 342
    invoke-direct {p0, p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setDisplayData(Z)V

    .line 343
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->initValuesForY(Lcom/zte/mifavor/widget/ChineseCalendar;Z)V

    .line 344
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->initValuesForM(Lcom/zte/mifavor/widget/ChineseCalendar;Z)V

    .line 345
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->initValuesForD(Lcom/zte/mifavor/widget/ChineseCalendar;Z)V

    return-void
.end method

.method public static setForce(Z)V
    .locals 0

    .line 220
    sput-boolean p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->force:Z

    return-void
.end method

.method private setImeOptions(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V
    .locals 0

    add-int/lit8 p2, p2, -0x1

    if-ge p3, p2, :cond_0

    const/4 p0, 0x5

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    .line 600
    :goto_0
    sget p2, Lcom/zte/extres/R$id;->numberpicker_input:I

    invoke-virtual {p1, p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 601
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

.method private setValuesForPickerView(Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V
    .locals 2

    if-eqz p5, :cond_3

    .line 509
    array-length p0, p5

    if-eqz p0, :cond_2

    sub-int p0, p4, p3

    add-int/lit8 p0, p0, 0x1

    .line 513
    array-length v0, p5

    if-lt v0, p0, :cond_1

    .line 517
    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMinValue()I

    move-result v0

    .line 518
    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMaxValue()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 520
    invoke-virtual {p1, p3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMinValue(I)V

    if-le p0, v1, :cond_0

    .line 523
    invoke-virtual {p1, p5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 524
    invoke-virtual {p1, p4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    goto :goto_0

    .line 526
    :cond_0
    invoke-virtual {p1, p4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 527
    invoke-virtual {p1, p5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 529
    :goto_0
    invoke-virtual {p1, p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setValue(I)V

    return-void

    .line 514
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "newDisplayedVales\'s length should not be less than newSpan."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 510
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "newDisplayedVales\'s length should not be 0."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 508
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "newDisplayedVales should not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private updateInputState()V
    .locals 3

    .line 577
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    .line 580
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year_input:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year_input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 582
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 583
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month_input:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month_input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 585
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 586
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day_input:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 587
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day_input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 588
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private usingNumericMonths()Z
    .locals 1

    .line 224
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayMonthsGregorian:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getCalendarData()Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;
    .locals 4

    .line 869
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v0

    .line 870
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v1

    .line 871
    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v2

    .line 872
    new-instance v3, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;

    iget-boolean p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mIsGregorian:Z

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;-><init>(IIIZ)V

    return-object v3
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 896
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getIsGregorian()Z
    .locals 0

    .line 865
    iget-boolean p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mIsGregorian:Z

    return p0
.end method

.method public getMonth()I
    .locals 1

    .line 892
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public getNumberPickerDay()Landroid/view/View;
    .locals 0

    .line 841
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    return-object p0
.end method

.method public getNumberPickerMonth()Landroid/view/View;
    .locals 0

    .line 837
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    return-object p0
.end method

.method public getNumberPickerYear()Landroid/view/View;
    .locals 0

    .line 833
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    return-object p0
.end method

.method public getPickerDayOfMonth()I
    .locals 0

    .line 884
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result p0

    return p0
.end method

.method public getPickerMonth()I
    .locals 0

    .line 880
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result p0

    return p0
.end method

.method public getPickerYear()I
    .locals 0

    .line 876
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result p0

    return p0
.end method

.method public getYear()I
    .locals 1

    .line 888
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public init(IIILcom/zte/mifavor/widget/GregorianLunarDateView$OnDateChangedListener;)V
    .locals 0

    .line 554
    iput-object p4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mOnDateChangedListener:Lcom/zte/mifavor/widget/GregorianLunarDateView$OnDateChangedListener;

    return-void
.end method

.method public initConfigs(Ljava/util/Calendar;Z)V
    .locals 2

    .line 236
    iget v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    iget v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->max_year:I

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->checkCalendarAvailable(Ljava/util/Calendar;IIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    iget v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->max_year:I

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->adjustCalendarByLimit(Ljava/util/Calendar;IIZ)Ljava/util/Calendar;

    move-result-object p1

    .line 240
    :cond_0
    iput-boolean p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mIsGregorian:Z

    .line 242
    instance-of p2, p1, Lcom/zte/mifavor/widget/ChineseCalendar;

    if-eqz p2, :cond_1

    .line 243
    check-cast p1, Lcom/zte/mifavor/widget/ChineseCalendar;

    goto :goto_0

    .line 245
    :cond_1
    new-instance p2, Lcom/zte/mifavor/widget/ChineseCalendar;

    invoke-direct {p2, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;-><init>(Ljava/util/Calendar;)V

    move-object p1, p2

    .line 248
    :goto_0
    iget-boolean p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mIsGregorian:Z

    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setDisplayValuesForAll(Lcom/zte/mifavor/widget/ChineseCalendar;Z)V

    .line 250
    iget-boolean p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mIsGregorian:Z

    if-nez p2, :cond_2

    .line 251
    iget-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result p2

    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v0

    invoke-static {p2, v0}, Lcom/zte/mifavor/widget/Util;->convertMonthSwayToMonthLunarByYear(II)I

    move-result p2

    .line 252
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->computeGregorianFields(III)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    goto :goto_1

    .line 254
    :cond_2
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 255
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    const/4 p2, 0x2

    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, p2, v1}, Ljava/util/Calendar;->set(II)V

    .line 256
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    const/4 p2, 0x5

    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Ljava/util/Calendar;->set(II)V

    :goto_1
    return-void
.end method

.method public setColor(I)V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, v1, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 287
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, v1, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    .line 288
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mUPdownWhellPaintColor:I

    invoke-virtual {v0, p0, p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(II)V

    return-void
.end method

.method public setColor(III)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(III)V

    .line 293
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(III)V

    .line 294
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setColor(III)V

    return-void
.end method

.method public setDisplayDayLunar(I)V
    .locals 4

    .line 445
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysLunar:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysLunar:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Lcom/zte/mifavor/widget/Util;->getLunarNameOfDay(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDisplayMonthsAndDaysLunarNoYear(Ljava/util/Calendar;)V
    .locals 7

    const/16 v0, 0x18

    .line 411
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayMonthsLunarNoYear:[Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 413
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayMonthsLunarNoYear:[Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v4}, Lcom/zte/mifavor/widget/Util;->getLunarNameOfMonthNoYear(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    move v2, v4

    goto :goto_0

    .line 415
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->max_year:I

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->checkCalendarAvailable(Ljava/util/Calendar;IIZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    iget v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->max_year:I

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->adjustCalendarByLimit(Ljava/util/Calendar;IIZ)Ljava/util/Calendar;

    move-result-object p1

    .line 418
    :cond_1
    new-instance v0, Lcom/zte/mifavor/widget/ChineseCalendar;

    invoke-direct {v0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;-><init>(Ljava/util/Calendar;)V

    const/16 p1, 0x321

    .line 420
    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result p1

    invoke-static {p1}, Lcom/zte/mifavor/widget/Util;->getMonthLeapByYear(I)I

    move-result p1

    const/16 v1, 0x322

    if-nez p1, :cond_2

    .line 423
    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x1

    :goto_1
    move v3, p1

    goto :goto_2

    .line 426
    :cond_2
    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v1

    invoke-static {v1, p1}, Lcom/zte/mifavor/widget/Util;->convertMonthLunarToMonthSway(II)I

    move-result v1

    .line 427
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v1, v2, :cond_3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 p1, v1, -0x1

    goto :goto_1

    .line 429
    :cond_3
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    if-ne v1, p1, :cond_4

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 p1, v1, -0x2

    goto :goto_1

    :cond_4
    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 p1, v1, -0x3

    goto :goto_1

    .line 435
    :goto_2
    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v4, 0x1

    const/16 v5, 0x18

    iget-object v6, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayMonthsLunarNoYear:[Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setValuesForPickerView(Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V

    const/16 p1, 0x323

    .line 437
    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/ChineseCalendar;->get(I)I

    move-result v3

    .line 438
    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/16 v5, 0x1e

    iget-object v6, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayDaysLunar:[Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setValuesForPickerView(Lcom/zte/mifavor/widget/NumberPickerZTE;III[Ljava/lang/String;)V

    .line 440
    sget p1, Lcom/zte/extres/R$id;->week:I

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 p1, 0x4

    .line 441
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setDisplayMonthsLunar(I)V
    .locals 4

    .line 404
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayMonthsLunar:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->displayMonthsLunar:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Lcom/zte/mifavor/widget/Util;->getLunarNameOfMonth(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setForceUpdate(Z)V
    .locals 0

    .line 323
    invoke-static {p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setForce(Z)V

    return-void
.end method

.method public setGregorian(Z)V
    .locals 2

    .line 796
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mIsGregorian:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 800
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 801
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->updateView(Z)V

    :cond_1
    return-void
.end method

.method public setMaxYear(I)V
    .locals 0

    .line 311
    iput p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->max_year:I

    return-void
.end method

.method public setMinYear(I)V
    .locals 0

    .line 316
    iput p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    return-void
.end method

.method public setNumberPickerDayVisibility(I)V
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p0, v0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setNumberPickerVisibility(Lcom/zte/mifavor/widget/NumberPickerZTE;I)V

    return-void
.end method

.method public setNumberPickerMonthVisibility(I)V
    .locals 1

    .line 849
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p0, v0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setNumberPickerVisibility(Lcom/zte/mifavor/widget/NumberPickerZTE;I)V

    return-void
.end method

.method public setNumberPickerVisibility(Lcom/zte/mifavor/widget/NumberPickerZTE;I)V
    .locals 0

    .line 857
    invoke-virtual {p1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getVisibility()I

    move-result p0

    if-ne p0, p2, :cond_0

    return-void

    :cond_0
    const/16 p0, 0x8

    if-eq p2, p0, :cond_1

    if-eqz p2, :cond_1

    const/4 p0, 0x4

    if-ne p2, p0, :cond_2

    .line 860
    :cond_1
    invoke-virtual {p1, p2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setNumberPickerYearVisibility(I)V
    .locals 1

    .line 845
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {p0, v0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setNumberPickerVisibility(Lcom/zte/mifavor/widget/NumberPickerZTE;I)V

    return-void
.end method

.method public setSwitchShown(Z)V
    .locals 4

    .line 298
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    .line 299
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mLunarChoice:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mTopSwitchLine:Landroid/view/View;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mBottoSwitchLine:Landroid/view/View;

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 303
    :cond_3
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mLunarChoice:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 304
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mTopSwitchLine:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mBottoSwitchLine:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public setWeekLayouParams(II)V
    .locals 3

    .line 906
    sget v0, Lcom/zte/extres/R$id;->week:I

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 907
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 908
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 909
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setWeekVisibility(Z)V
    .locals 1

    .line 900
    sget v0, Lcom/zte/extres/R$id;->week:I

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 901
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 902
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->updateWeek(Ljava/util/Calendar;)V

    return-void
.end method

.method public updateCurrentDate(III)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 230
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 231
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 232
    iget-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->updateWeek(Ljava/util/Calendar;)V

    return-void
.end method

.method public updateView(Z)V
    .locals 4

    .line 808
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getCalendarData()Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/ChineseCalendar;

    .line 809
    iget v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->max_year:I

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->checkCalendarAvailable(Ljava/util/Calendar;IIZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 810
    iget v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->min_year:I

    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->max_year:I

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->adjustCalendarByLimit(Ljava/util/Calendar;IIZ)Ljava/util/Calendar;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/ChineseCalendar;

    .line 812
    :cond_0
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mIsGregorian:Z

    const/4 v1, 0x1

    .line 813
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mStateMachineEvent:Z

    .line 814
    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mSwitch:Lcom/zte/mifavor/widget/SwitchZTE;

    iget-boolean v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mIsGregorian:Z

    xor-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/zte/mifavor/widget/SwitchZTE;->setChecked(Z)V

    const/4 v1, 0x0

    .line 815
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView;->mStateMachineEvent:Z

    .line 817
    invoke-virtual {p0, v0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->initConfigs(Ljava/util/Calendar;Z)V

    .line 818
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->updateWeek(Ljava/util/Calendar;)V

    return-void
.end method

.method public updateWeek(Ljava/util/Calendar;)V
    .locals 3

    .line 913
    sget v0, Lcom/zte/extres/R$id;->week:I

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 914
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 915
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 916
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/4 p1, 0x2

    .line 915
    invoke-static {p0, v1, v2, p1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    .line 918
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
