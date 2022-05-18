.class public Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;
.super Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;
.source "DateAndTimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnClickListener;,
        Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;,
        Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$OnDateAndTimeSetListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_YEAR:I = 0x7f5

.field private static final DEFAULT_START_YEAR:I = 0x7b2

.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"


# instance fields
.field private isCurrentMonthLeap:Z

.field private final mCallBack:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$OnDateAndTimeSetListener;

.field private mCustomTitle:Landroid/widget/TextView;

.field private mFlag:Z

.field private mHour_int:I

.field private mInitialHourDay:I

.field private mInitialMinute:I

.field private mIs_CN:Z

.field private mLunarDay:I

.field private mLunarDayLabel:Ljava/lang/String;

.field private mLunarLabel:Landroid/widget/TextView;

.field private mLunarMonth:I

.field private mLunarMonthLabel:Ljava/lang/String;

.field private mLunarTime_layout:Landroid/view/View;

.field private mLunarWeekLabel:Ljava/lang/String;

.field private mLunarYear:I

.field private mLunarYearLabel:Ljava/lang/String;

.field private mMin_int:I

.field private mMonthDay_str:Ljava/lang/String;

.field private mNubiaSwitch:Lcn/nubia/calendar/ui_component/view/NubiaSwitch;

.field private mOnClickListener:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnClickListener;

.field private mOnTimeChangeListener:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;

.field private mRetDay:I

.field private mRetMonth:I

.field private mRetYear:I

.field private mSolarDay:I

.field private mSolarMonth:I

.field private mSolarYear:I

.field private mStrArr_lunar:[Ljava/lang/String;

.field private mStrArr_solar:[Ljava/lang/String;

.field private mStrArr_us:[Ljava/lang/String;

.field private mSwitch_enabled:Z

.field private final mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

.field private mWeekDay:Ljava/lang/String;

.field private mYYYY_int:I

.field private mYearMonthDay_str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$OnDateAndTimeSetListener;Ljava/lang/CharSequence;IIIII)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$OnDateAndTimeSetListener;
    .param p4, "dialogTitle"    # Ljava/lang/CharSequence;
    .param p5, "year"    # I
    .param p6, "monthOfYear"    # I
    .param p7, "dayOfMonth"    # I
    .param p8, "hourOfDay"    # I
    .param p9, "minute"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mSwitch_enabled:Z

    .line 58
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->isCurrentMonthLeap:Z

    .line 94
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 95
    .local v7, "themeContext":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 96
    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "currentLanguage":Ljava/lang/String;
    const-string v10, "zh"

    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 98
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mIs_CN:Z

    .line 101
    :goto_0
    iget-object v10, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mOnClickListener:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnClickListener;

    if-nez v10, :cond_0

    .line 102
    new-instance v10, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnClickListener;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnClickListener;-><init>(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$1;)V

    iput-object v10, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mOnClickListener:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnClickListener;

    .line 104
    :cond_0
    const/4 v10, -0x1

    const v11, 0x1040013

    invoke-virtual {v7, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v12, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mOnClickListener:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnClickListener;

    invoke-virtual {p0, v10, v11, v12}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 106
    const/4 v10, -0x2

    const/high16 v11, 0x1040000

    .line 107
    invoke-virtual {v7, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v12, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mOnClickListener:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnClickListener;

    .line 106
    invoke-virtual {p0, v10, v11, v12}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 108
    const-string v10, "layout_inflater"

    .line 109
    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 110
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v10, 0x7f030037

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 112
    .local v8, "view":Landroid/view/View;
    const v10, 0x7f1100cf

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mCustomTitle:Landroid/widget/TextView;

    .line 113
    invoke-virtual {p0, v8}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->setMyView(Landroid/view/View;)Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;

    .line 114
    move-object/from16 v0, p3

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mCallBack:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$OnDateAndTimeSetListener;

    .line 115
    const v10, 0x7f110011

    .line 116
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    iput-object v10, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    .line 117
    iget-object v10, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->setCurrentHour(Ljava/lang/Integer;)V

    .line 118
    iget-object v10, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 119
    iget-object v10, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mOnTimeChangeListener:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;

    if-nez v10, :cond_1

    .line 120
    new-instance v10, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;-><init>(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$1;)V

    iput-object v10, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mOnTimeChangeListener:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;

    .line 122
    :cond_1
    iget-object v10, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    iget-object v11, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mOnTimeChangeListener:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;

    invoke-virtual {v10, v11}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->setOnTimeChangedListener(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$OnTimeChangeListener;)V

    .line 123
    const v10, 0x7f1100d1

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarLabel:Landroid/widget/TextView;

    .line 124
    iget-object v10, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarLabel:Landroid/widget/TextView;

    const v11, 0x7f0c01a6

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 125
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 126
    .local v6, "resources":Landroid/content/res/Resources;
    const v10, 0x7f0a002c

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "lunarRes":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v5, v10

    iput-object v10, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarYearLabel:Ljava/lang/String;

    .line 129
    const/4 v10, 0x1

    aget-object v10, v5, v10

    iput-object v10, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarMonthLabel:Ljava/lang/String;

    .line 130
    const/4 v10, 0x2

    aget-object v10, v5, v10

    iput-object v10, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarDayLabel:Ljava/lang/String;

    .line 131
    const/4 v10, 0x4

    aget-object v10, v5, v10

    iput-object v10, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarWeekLabel:Ljava/lang/String;

    .line 133
    invoke-static {p1}, Lcn/nubia/commonui/widget/LunarUtil;->getTextRes(Landroid/content/Context;)V

    .line 134
    const v10, 0x7f1100d2

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcn/nubia/calendar/ui_component/view/NubiaSwitch;

    iput-object v10, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mNubiaSwitch:Lcn/nubia/calendar/ui_component/view/NubiaSwitch;

    .line 135
    const v10, 0x7f1100d0

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarTime_layout:Landroid/view/View;

    .line 136
    iget-boolean v10, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mIs_CN:Z

    if-nez v10, :cond_2

    .line 137
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->setLunarLayoutVisiable(Z)V

    .line 139
    :cond_2
    move/from16 v0, p8

    iput v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mHour_int:I

    .line 140
    move/from16 v0, p9

    iput v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMin_int:I

    .line 141
    add-int/lit8 p6, p6, 0x1

    .line 142
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v10, 0xa

    move/from16 v0, p6

    if-ge v0, v10, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p6

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 143
    :goto_1
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v10, 0xa

    move/from16 v0, p7

    if-ge v0, v10, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 144
    :goto_2
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 145
    .local v9, "yearMonthDay":Ljava/lang/String;
    move/from16 v0, p5

    move/from16 v1, p6

    move/from16 v2, p7

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->initData(III)V

    .line 146
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->initTitle()V

    .line 147
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->setupNubiaSwitch()V

    .line 148
    iget-object v10, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarTime_layout:Landroid/view/View;

    new-instance v11, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$1;

    invoke-direct {v11, p0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$1;-><init>(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)V

    .line 149
    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v10, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    iget v11, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-virtual {v10, v11}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->update(I)V

    .line 156
    return-void

    .line 100
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "lunarRes":[Ljava/lang/String;
    .end local v6    # "resources":Landroid/content/res/Resources;
    .end local v8    # "view":Landroid/view/View;
    .end local v9    # "yearMonthDay":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mIs_CN:Z

    goto/16 :goto_0

    .line 143
    .restart local v4    # "inflater":Landroid/view/LayoutInflater;
    .restart local v5    # "lunarRes":[Ljava/lang/String;
    .restart local v6    # "resources":Landroid/content/res/Resources;
    .restart local v8    # "view":Landroid/view/View;
    :cond_4
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_1

    .line 144
    :cond_5
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$OnDateAndTimeSetListener;Ljava/lang/CharSequence;IIIII)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$OnDateAndTimeSetListener;
    .param p3, "dialogTitle"    # Ljava/lang/CharSequence;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I
    .param p7, "hourOfDay"    # I
    .param p8, "minute"    # I

    .prologue
    .line 81
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;-><init>(Landroid/content/Context;ILcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$OnDateAndTimeSetListener;Ljava/lang/CharSequence;IIIII)V

    .line 83
    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mFlag:Z

    return v0
.end method

.method static synthetic access$1202(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mFlag:Z

    return p1
.end method

.method static synthetic access$1300(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mWeekDay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mWeekDay:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .prologue
    .line 27
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->setSolarTitle()V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_us:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_us:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .prologue
    .line 27
    iget v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mHour_int:I

    return v0
.end method

.method static synthetic access$1700(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .prologue
    .line 27
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->getAmPm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mCustomTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .prologue
    .line 27
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->updateLunar()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Lcn/nubia/calendar/ui_component/view/NubiaSwitch;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mNubiaSwitch:Lcn/nubia/calendar/ui_component/view/NubiaSwitch;

    return-object v0
.end method

.method static synthetic access$2000(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .prologue
    .line 27
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->updateSolar()V

    return-void
.end method

.method static synthetic access$2100(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .prologue
    .line 27
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->updateSolarTitle()V

    return-void
.end method

.method static synthetic access$2200(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .prologue
    .line 27
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->tryNotifyDateSet()V

    return-void
.end method

.method static synthetic access$302(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMin_int:I

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->adjustHourOfDay(I)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .prologue
    .line 27
    iget v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    return v0
.end method

.method static synthetic access$502(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    return p1
.end method

.method static synthetic access$600(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mSwitch_enabled:Z

    return v0
.end method

.method static synthetic access$602(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mSwitch_enabled:Z

    return p1
.end method

.method static synthetic access$700(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .prologue
    .line 27
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->updateLunarTitle()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mIs_CN:Z

    return v0
.end method

.method static synthetic access$900(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_solar:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_solar:[Ljava/lang/String;

    return-object p1
.end method

.method private adjustHourOfDay(I)V
    .locals 1
    .param p1, "hourOfDay"    # I

    .prologue
    .line 300
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getmIs24HourView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    const/16 v0, 0xc

    if-le p1, v0, :cond_0

    .line 302
    add-int/lit8 p1, p1, -0xc

    .line 303
    :cond_0
    if-nez p1, :cond_1

    .line 304
    const/16 p1, 0xc

    .line 306
    :cond_1
    iput p1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mHour_int:I

    .line 307
    return-void
.end method

.method private adjustYearLunToSol()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    .line 474
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_lunar:[Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v5}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v5

    .line 475
    invoke-virtual {v5}, Lcn/nubia/calendar/ui_component/view/WheelView;->getValue()I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    .line 476
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_lunar:[Ljava/lang/String;

    iget v6, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-static {v4, v5, v6}, Lcn/nubia/commonui/widget/LunarUtil;->daysToLunmmdd(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, "mmdd":Ljava/lang/String;
    const/4 v0, 0x0

    .line 479
    .local v0, "isLeapMonth":Z
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 480
    const/4 v0, 0x1

    .line 481
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 483
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, "ymd_lun":Ljava/lang/String;
    :try_start_0
    invoke-static {v3, v0}, Lcn/nubia/commonui/widget/LunarUtil;->lunarToSolar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "solarDate":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->resolveSolarDate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    .end local v2    # "solarDate":Ljava/lang/String;
    :goto_0
    iget v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    iget v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mSolarYear:I

    if-eq v4, v5, :cond_1

    .line 490
    iget v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mSolarYear:I

    iput v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    .line 492
    :cond_1
    return-void

    .line 487
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private adjustYearSolToLun()V
    .locals 6

    .prologue
    .line 409
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_solar:[Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v4}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v4

    .line 410
    invoke-virtual {v4}, Lcn/nubia/calendar/ui_component/view/WheelView;->getValue()I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    .line 411
    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-static {v3}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v3

    iput-boolean v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mFlag:Z

    .line 412
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_solar:[Ljava/lang/String;

    iget-boolean v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mFlag:Z

    invoke-static {v3, v4, v5}, Lcn/nubia/commonui/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, "mmdd":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, "ymd_str":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcn/nubia/commonui/widget/LunarUtil;->solarToLunar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "lunarDate":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->resolveLunarDate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    .end local v0    # "lunarDate":Ljava/lang/String;
    :goto_0
    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    iget v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarYear:I

    if-eq v3, v4, :cond_0

    .line 420
    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarYear:I

    iput v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    .line 422
    :cond_0
    return-void

    .line 417
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getAmPm()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 225
    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v2}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getmIs24HourView()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 226
    const-string v0, ""

    .line 235
    :cond_0
    :goto_0
    return-object v0

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0110

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "amUpper":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0111

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "pmUpper":Ljava/lang/String;
    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v2}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getmIsAm()Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 233
    iget-boolean v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mIs_CN:Z

    if-eqz v2, :cond_0

    sget-object v0, Lcn/nubia/commonui/widget/LunarUtil;->am:Ljava/lang/String;

    goto :goto_0

    .line 235
    :cond_2
    iget-boolean v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mIs_CN:Z

    if-eqz v2, :cond_3

    sget-object v1, Lcn/nubia/commonui/widget/LunarUtil;->pm:Ljava/lang/String;

    .end local v1    # "pmUpper":Ljava/lang/String;
    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private initData(III)V
    .locals 3
    .param p1, "yyyy"    # I
    .param p2, "mm"    # I
    .param p3, "dd"    # I

    .prologue
    .line 185
    iput p1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    .line 187
    invoke-static {p1, p2, p3}, Lcn/nubia/commonui/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYearMonthDay_str:Ljava/lang/String;

    .line 188
    iget v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-static {v1}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mFlag:Z

    .line 189
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->initDisplayedValues()V

    .line 190
    iget v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-static {p2, p3, v1}, Lcn/nubia/commonui/widget/LunarUtil;->solarSumDays(III)I

    move-result v0

    .line 191
    .local v0, "sumDay":I
    invoke-static {}, Lcn/nubia/commonui/widget/LunarUtil;->clearSum()V

    .line 192
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v1}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/ui_component/view/WheelView;->setValue(I)V

    .line 193
    iget v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mHour_int:I

    invoke-direct {p0, v1}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->adjustHourOfDay(I)V

    .line 194
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYearMonthDay_str:Ljava/lang/String;

    invoke-static {v1}, Lcn/nubia/commonui/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mWeekDay:Ljava/lang/String;

    .line 195
    iget-boolean v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mIs_CN:Z

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_solar:[Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v2}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v2

    .line 197
    invoke-virtual {v2}, Lcn/nubia/calendar/ui_component/view/WheelView;->getValue()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_us:[Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v2}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v2

    .line 200
    invoke-virtual {v2}, Lcn/nubia/calendar/ui_component/view/WheelView;->getValue()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    goto :goto_0
.end method

.method private initDisplayedValues()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 205
    iget-boolean v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mIs_CN:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    iget v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->timePickerSolMonthDay(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_solar:[Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/nubia/calendar/ui_component/view/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/calendar/ui_component/view/WheelView;->setMinValue(I)V

    .line 210
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_solar:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/ui_component/view/WheelView;->setMaxValue(I)V

    .line 212
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_solar:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/ui_component/view/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 222
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->timePickerUSMonthDay(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_us:[Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/nubia/calendar/ui_component/view/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/calendar/ui_component/view/WheelView;->setMinValue(I)V

    .line 218
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_us:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 219
    invoke-virtual {v0, v1}, Lcn/nubia/calendar/ui_component/view/WheelView;->setMaxValue(I)V

    .line 220
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_us:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/ui_component/view/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initTitle()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x3

    const/16 v4, 0xa

    .line 167
    iget-boolean v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mIs_CN:Z

    if-eqz v0, :cond_2

    .line 168
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mCustomTitle:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarYearLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarWeekLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mWeekDay:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 170
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->getAmPm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mHour_int:I

    if-ge v0, v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mHour_int:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMin_int:I

    if-ge v0, v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMin_int:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :goto_2
    return-void

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mHour_int:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMin_int:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 174
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    .line 175
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    .line 176
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mCustomTitle:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mWeekDay:Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mHour_int:I

    if-ge v0, v4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mHour_int:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMin_int:I

    if-ge v0, v4, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMin_int:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 180
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->getAmPm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mHour_int:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMin_int:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private resolveLunarDate(Ljava/lang/String;)V
    .locals 6
    .param p1, "lunarDate"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x7

    const/4 v3, 0x6

    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 362
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 363
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarYear:I

    .line 364
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarMonth:I

    .line 365
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarDay:I

    .line 372
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarYear:I

    .line 369
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarMonth:I

    .line 370
    const/16 v0, 0x9

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarDay:I

    goto :goto_0
.end method

.method private resolveSolarDate(Ljava/lang/String;)V
    .locals 3
    .param p1, "solarDate"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x4

    .line 375
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mSolarYear:I

    .line 376
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mSolarMonth:I

    .line 377
    const/16 v0, 0x8

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mSolarDay:I

    .line 378
    return-void
.end method

.method private setLunarTitle()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 446
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mCustomTitle:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarYearLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarWeekLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mWeekDay:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 447
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->getAmPm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mHour_int:I

    if-ge v0, v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mHour_int:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMin_int:I

    if-ge v0, v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMin_int:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    return-void

    .line 447
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mHour_int:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMin_int:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setRetDateTime()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 604
    const-string v1, ""

    .line 605
    .local v1, "mmdd":Ljava/lang/String;
    iget-boolean v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mSwitch_enabled:Z

    if-eqz v3, :cond_1

    .line 606
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_lunar:[Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v4}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v4

    .line 607
    invoke-virtual {v4}, Lcn/nubia/calendar/ui_component/view/WheelView;->getValue()I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    .line 608
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_lunar:[Ljava/lang/String;

    iget v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-static {v3, v4, v5}, Lcn/nubia/commonui/widget/LunarUtil;->daysToLunmmdd(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 610
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    sget-object v4, Lcn/nubia/commonui/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v6, :cond_0

    .line 611
    iput-boolean v6, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->isCurrentMonthLeap:Z

    .line 612
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 618
    :goto_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "lunarDate":Ljava/lang/String;
    iget-boolean v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->isCurrentMonthLeap:Z

    invoke-static {v0, v3}, Lcn/nubia/commonui/widget/LunarUtil;->lunarToSolar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 621
    .local v2, "solarDate":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->resolveSolarDate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    .end local v0    # "lunarDate":Ljava/lang/String;
    .end local v2    # "solarDate":Ljava/lang/String;
    :goto_1
    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mSolarYear:I

    iput v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mRetYear:I

    .line 641
    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mSolarMonth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mRetMonth:I

    .line 642
    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mSolarDay:I

    iput v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mRetDay:I

    .line 643
    return-void

    .line 614
    :cond_0
    iput-boolean v7, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->isCurrentMonthLeap:Z

    .line 615
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 625
    :cond_1
    iget-boolean v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mIs_CN:Z

    if-eqz v3, :cond_2

    .line 626
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_solar:[Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v4}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v4

    .line 627
    invoke-virtual {v4}, Lcn/nubia/calendar/ui_component/view/WheelView;->getValue()I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    .line 628
    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-static {v3}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v3

    iput-boolean v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mFlag:Z

    .line 629
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_solar:[Ljava/lang/String;

    iget-boolean v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mFlag:Z

    .line 630
    invoke-static {v3, v4, v5}, Lcn/nubia/commonui/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 637
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 638
    .restart local v2    # "solarDate":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->resolveSolarDate(Ljava/lang/String;)V

    goto :goto_1

    .line 632
    .end local v2    # "solarDate":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_us:[Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v4}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v4

    .line 633
    invoke-virtual {v4}, Lcn/nubia/calendar/ui_component/view/WheelView;->getValue()I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    .line 634
    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-static {v3}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v3

    iput-boolean v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mFlag:Z

    .line 635
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_us:[Ljava/lang/String;

    iget-boolean v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mFlag:Z

    invoke-static {v3, v4, v5}, Lcn/nubia/commonui/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 622
    :catch_0
    move-exception v3

    goto/16 :goto_1
.end method

.method private setSolarTitle()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 506
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mCustomTitle:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarYearLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarWeekLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mWeekDay:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 507
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->getAmPm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mHour_int:I

    if-ge v0, v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mHour_int:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMin_int:I

    if-ge v0, v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMin_int:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    return-void

    .line 507
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mHour_int:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMin_int:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setUSTitle()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 513
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mCustomTitle:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mWeekDay:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mHour_int:I

    if-ge v0, v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mHour_int:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMin_int:I

    if-ge v0, v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMin_int:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 516
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->getAmPm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 513
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    return-void

    .line 513
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mHour_int:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMin_int:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setupNubiaSwitch()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mNubiaSwitch:Lcn/nubia/calendar/ui_component/view/NubiaSwitch;

    if-nez v0, :cond_0

    .line 541
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mNubiaSwitch:Lcn/nubia/calendar/ui_component/view/NubiaSwitch;

    new-instance v1, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$2;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$2;-><init>(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)V

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/ui_component/view/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method private tryNotifyDateSet()V
    .locals 17

    .prologue
    .line 241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mCallBack:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$OnDateAndTimeSetListener;

    if-eqz v1, :cond_3

    .line 242
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mSwitch_enabled:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->getDateString(Z)Ljava/lang/String;

    move-result-object v9

    .line 243
    .local v9, "DateTimeStr":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v9, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 244
    .local v3, "year":I
    const/4 v1, 0x4

    const/4 v2, 0x6

    invoke-virtual {v9, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 245
    .local v4, "monthOfYear":I
    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-virtual {v9, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 246
    .local v5, "dayOfMonth":I
    const/16 v1, 0x8

    const/16 v2, 0xa

    invoke-virtual {v9, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 247
    .local v6, "hourOfDay":I
    const/16 v1, 0xa

    const/16 v2, 0xc

    invoke-virtual {v9, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 248
    .local v7, "minuteOfHour":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mSwitch_enabled:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 250
    :try_start_0
    invoke-static {v3}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonth(I)I

    move-result v15

    .line 251
    .local v15, "leapMonth":I
    if-nez v15, :cond_4

    const/4 v14, 0x0

    .line 252
    .local v14, "hasLeapMonth":Z
    :goto_0
    const/4 v13, 0x0

    .line 253
    .local v13, "flag":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v1}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v1

    .line 254
    invoke-virtual {v1}, Lcn/nubia/calendar/ui_component/view/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v16

    .line 255
    .local v16, "values":[Ljava/lang/String;
    add-int/lit8 v1, v4, -0x1

    aget-object v1, v16, v1

    sget-object v2, Lcn/nubia/commonui/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 256
    const/4 v13, 0x1

    .line 258
    :cond_0
    if-eqz v14, :cond_1

    .line 259
    if-le v4, v15, :cond_1

    .line 260
    add-int/lit8 v4, v4, -0x1

    .line 263
    :cond_1
    invoke-static {v3, v4, v5}, Lcn/nubia/commonui/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object v11

    .line 265
    .local v11, "dateString":Ljava/lang/String;
    invoke-static {v11, v13}, Lcn/nubia/commonui/widget/LunarUtil;->lunarToSolar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 267
    .local v10, "LunarToSolar":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 268
    const/4 v1, 0x4

    const/4 v2, 0x6

    .line 269
    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 270
    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-virtual {v10, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 275
    .end local v10    # "LunarToSolar":Ljava/lang/String;
    .end local v11    # "dateString":Ljava/lang/String;
    .end local v13    # "flag":Z
    .end local v14    # "hasLeapMonth":Z
    .end local v15    # "leapMonth":I
    .end local v16    # "values":[Ljava/lang/String;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mCallBack:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$OnDateAndTimeSetListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mSwitch_enabled:Z

    invoke-interface/range {v1 .. v8}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$OnDateAndTimeSetListener;->onDateAndTimeSet(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;IIIIIZ)V

    .line 278
    .end local v3    # "year":I
    .end local v4    # "monthOfYear":I
    .end local v5    # "dayOfMonth":I
    .end local v6    # "hourOfDay":I
    .end local v7    # "minuteOfHour":I
    .end local v9    # "DateTimeStr":Ljava/lang/String;
    :cond_3
    return-void

    .line 251
    .restart local v3    # "year":I
    .restart local v4    # "monthOfYear":I
    .restart local v5    # "dayOfMonth":I
    .restart local v6    # "hourOfDay":I
    .restart local v7    # "minuteOfHour":I
    .restart local v9    # "DateTimeStr":Ljava/lang/String;
    .restart local v15    # "leapMonth":I
    :cond_4
    const/4 v14, 0x1

    goto :goto_0

    .line 271
    .end local v15    # "leapMonth":I
    :catch_0
    move-exception v12

    .line 272
    .local v12, "e":Ljava/lang/Exception;
    const-string v1, "hd"

    const-string v2, "DateAndTimePickerDialog"

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateLunar()V
    .locals 8

    .prologue
    .line 381
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->adjustYearSolToLun()V

    .line 382
    const/4 v2, 0x0

    .line 383
    .local v2, "isLeapMonth":Z
    iget v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarMonth:I

    const/16 v6, 0x14

    if-le v5, v6, :cond_0

    .line 384
    iget v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarMonth:I

    add-int/lit8 v5, v5, -0x14

    iput v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarMonth:I

    .line 385
    const/4 v2, 0x1

    .line 387
    :cond_0
    iget v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-static {v5}, Lcn/nubia/commonui/widget/LunarUtil;->timePickerLunMonthDay(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_lunar:[Ljava/lang/String;

    .line 388
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v5}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcn/nubia/calendar/ui_component/view/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 389
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v5}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcn/nubia/calendar/ui_component/view/WheelView;->setMinValue(I)V

    .line 390
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v5}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_lunar:[Ljava/lang/String;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcn/nubia/calendar/ui_component/view/WheelView;->setMaxValue(I)V

    .line 391
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v5}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_lunar:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcn/nubia/calendar/ui_component/view/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 392
    const/4 v0, 0x0

    .line 393
    .local v0, "day":I
    iget v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-static {v5}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonth(I)I

    move-result v3

    .line 394
    .local v3, "leapMonth":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_2

    sget-object v5, Lcn/nubia/commonui/widget/LunarUtil;->LEAP:Ljava/lang/String;

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarMonth:I

    const/4 v7, 0x1

    .line 395
    invoke-static {v6, v7}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcn/nubia/commonui/widget/LunarUtil;->MONTH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarDay:I

    const/4 v7, 0x2

    .line 397
    invoke-static {v6, v7}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 398
    .local v4, "mmdd_lun":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_lunar:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 399
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_lunar:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 400
    add-int/lit8 v0, v1, 0x1

    .line 404
    :cond_1
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    iget v6, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-virtual {v5, v6}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->update(I)V

    .line 405
    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v5}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v5

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Lcn/nubia/calendar/ui_component/view/WheelView;->setValue(I)V

    .line 406
    return-void

    .line 394
    .end local v1    # "i":I
    .end local v4    # "mmdd_lun":Ljava/lang/String;
    :cond_2
    const-string v5, ""

    goto :goto_0

    .line 398
    .restart local v1    # "i":I
    .restart local v4    # "mmdd_lun":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private updateLunarTitle()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    .line 425
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v4}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/calendar/ui_component/view/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_lunar:[Ljava/lang/String;

    .line 426
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_lunar:[Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v5}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v5

    .line 427
    invoke-virtual {v5}, Lcn/nubia/calendar/ui_component/view/WheelView;->getValue()I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    .line 428
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_lunar:[Ljava/lang/String;

    iget v6, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-static {v4, v5, v6}, Lcn/nubia/commonui/widget/LunarUtil;->daysToLunmmdd(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, "mmdd":Ljava/lang/String;
    const/4 v0, 0x0

    .line 431
    .local v0, "isLeapMonth":Z
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 432
    const/4 v0, 0x1

    .line 433
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 435
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 437
    .local v3, "ymd_lun":Ljava/lang/String;
    :try_start_0
    invoke-static {v3, v0}, Lcn/nubia/commonui/widget/LunarUtil;->lunarToSolar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, "solarDate":Ljava/lang/String;
    invoke-static {v2}, Lcn/nubia/commonui/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mWeekDay:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    .end local v2    # "solarDate":Ljava/lang/String;
    :goto_0
    iget v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mHour_int:I

    invoke-direct {p0, v4}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->adjustHourOfDay(I)V

    .line 442
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->setLunarTitle()V

    .line 443
    return-void

    .line 439
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private updateSolar()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 453
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->adjustYearLunToSol()V

    .line 454
    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-static {v3}, Lcn/nubia/commonui/widget/LunarUtil;->timePickerSolMonthDay(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_solar:[Ljava/lang/String;

    .line 455
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v3}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/ui_component/view/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 456
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v3}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/ui_component/view/WheelView;->setMinValue(I)V

    .line 457
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v3}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_solar:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/ui_component/view/WheelView;->setMaxValue(I)V

    .line 458
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v3}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_solar:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/ui_component/view/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, "day":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mSolarMonth:I

    if-ge v3, v5, :cond_1

    const-string v3, "0"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mSolarMonth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/nubia/commonui/widget/LunarUtil;->MONTH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mSolarDay:I

    if-ge v3, v5, :cond_2

    const-string v3, "0"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mSolarDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/nubia/commonui/widget/LunarUtil;->DAY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, "mmdd_sol":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_solar:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 464
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_solar:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 465
    add-int/lit8 v0, v1, 0x1

    .line 469
    :cond_0
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    iget v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->update(I)V

    .line 470
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v3}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/ui_component/view/WheelView;->setValue(I)V

    .line 471
    return-void

    .line 460
    .end local v1    # "i":I
    .end local v2    # "mmdd_sol":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    goto :goto_0

    :cond_2
    const-string v3, ""

    goto :goto_1

    .line 463
    .restart local v1    # "i":I
    .restart local v2    # "mmdd_sol":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private updateSolarTitle()V
    .locals 4

    .prologue
    .line 495
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/calendar/ui_component/view/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_solar:[Ljava/lang/String;

    .line 496
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_solar:[Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v1}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v1

    .line 497
    invoke-virtual {v1}, Lcn/nubia/calendar/ui_component/view/WheelView;->getValue()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    .line 498
    iget v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mFlag:Z

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_solar:[Ljava/lang/String;

    iget-boolean v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mFlag:Z

    .line 500
    invoke-static {v1, v2, v3}, Lcn/nubia/commonui/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mWeekDay:Ljava/lang/String;

    .line 501
    iget v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mHour_int:I

    invoke-direct {p0, v0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->adjustHourOfDay(I)V

    .line 502
    invoke-direct {p0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->setSolarTitle()V

    .line 503
    return-void
.end method


# virtual methods
.method public getCurrentAmPm()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 552
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v3}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getmIs24HourView()Z

    move-result v3

    if-ne v3, v1, :cond_3

    .line 553
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v3}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getCurrentHour()I

    move-result v0

    .line 554
    .local v0, "hour":I
    if-nez v0, :cond_0

    .line 555
    const/16 v0, 0x18

    .line 556
    :cond_0
    const/16 v3, 0xc

    if-le v0, v3, :cond_2

    .line 561
    .end local v0    # "hour":I
    :cond_1
    :goto_0
    return v1

    .restart local v0    # "hour":I
    :cond_2
    move v1, v2

    .line 556
    goto :goto_0

    .line 558
    .end local v0    # "hour":I
    :cond_3
    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v3}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getmIsAm()Z

    move-result v3

    if-ne v3, v1, :cond_1

    move v1, v2

    .line 559
    goto :goto_0
.end method

.method public getCurrentMonthIsLeap()Z
    .locals 1

    .prologue
    .line 548
    iget-boolean v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->isCurrentMonthLeap:Z

    return v0
.end method

.method public getDateString(Z)Ljava/lang/String;
    .locals 9
    .param p1, "isLuanrMode"    # Z

    .prologue
    const/16 v6, 0xa

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 567
    const-string v3, ""

    .line 568
    .local v3, "mmdd":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v4}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getCurrentHour()I

    move-result v0

    .line 572
    .local v0, "hh":I
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v4}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getCurrentMinute()I

    move-result v2

    .line 573
    .local v2, "mm":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v0, v6, :cond_0

    const-string v4, "0"

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ge v2, v6, :cond_1

    const-string v4, "0"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, "hhmm":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 575
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_lunar:[Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v5}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v5

    .line 576
    invoke-virtual {v5}, Lcn/nubia/calendar/ui_component/view/WheelView;->getValue()I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    .line 577
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_lunar:[Ljava/lang/String;

    iget v6, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-static {v4, v5, v6}, Lcn/nubia/commonui/widget/LunarUtil;->daysToLunmmdd(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 579
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    sget-object v5, Lcn/nubia/commonui/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v7, :cond_2

    .line 580
    iput-boolean v7, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->isCurrentMonthLeap:Z

    .line 581
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 600
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 573
    .end local v1    # "hhmm":Ljava/lang/String;
    :cond_0
    const-string v4, ""

    goto :goto_0

    :cond_1
    const-string v4, ""

    goto :goto_1

    .line 583
    .restart local v1    # "hhmm":Ljava/lang/String;
    :cond_2
    iput-boolean v8, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->isCurrentMonthLeap:Z

    .line 584
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 587
    :cond_3
    iget-boolean v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mIs_CN:Z

    if-eqz v4, :cond_4

    .line 588
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_solar:[Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v5}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v5

    .line 589
    invoke-virtual {v5}, Lcn/nubia/calendar/ui_component/view/WheelView;->getValue()I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    .line 590
    iget v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-static {v4}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v4

    iput-boolean v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mFlag:Z

    .line 591
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_solar:[Ljava/lang/String;

    iget-boolean v6, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mFlag:Z

    .line 592
    invoke-static {v4, v5, v6}, Lcn/nubia/commonui/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 594
    :cond_4
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_us:[Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v5}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v5

    .line 595
    invoke-virtual {v5}, Lcn/nubia/calendar/ui_component/view/WheelView;->getValue()I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    .line 596
    iget v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mYYYY_int:I

    invoke-static {v4}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v4

    iput-boolean v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mFlag:Z

    .line 597
    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mMonthDay_str:Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mStrArr_us:[Ljava/lang/String;

    iget-boolean v6, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mFlag:Z

    invoke-static {v4, v5, v6}, Lcn/nubia/commonui/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method public getSwitchState()Z
    .locals 1

    .prologue
    .line 544
    iget-boolean v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mSwitch_enabled:Z

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 287
    invoke-super {p0, p1}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 288
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    const-string v1, "PICKER"

    .line 289
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 288
    invoke-virtual {v0, v1}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 290
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 294
    invoke-super {p0}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 295
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "PICKER"

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-virtual {v2}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 296
    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 282
    invoke-super {p0}, Lcn/nubia/calendar/ui_component/dialog/CalendarAlertDialog;->onStop()V

    .line 283
    return-void
.end method

.method public setLunarLayoutVisiable(Z)V
    .locals 2
    .param p1, "visiable"    # Z

    .prologue
    .line 159
    if-eqz p1, :cond_0

    .line 160
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarTime_layout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mLunarTime_layout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final updateTime(II)V
    .locals 2
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->setCurrentHour(Ljava/lang/Integer;)V

    .line 87
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->mTimePickerView:Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 88
    return-void
.end method
