.class public Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;
.super Lcn/nubia/commonui/app/AlertDialog;
.source "NubiaLunarTimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnClickListener;,
        Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;,
        Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$onTimeSetListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_YEAR:I = 0x7f5

.field private static final DEFAULT_START_YEAR:I = 0x7b2


# instance fields
.field private isCurrentMonthLeap:Z

.field private final mCallBack:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$onTimeSetListener;

.field private mFlag:Z

.field private mHour:I

.field private mIsCN:Z

.field private mLunarDay:I

.field private mLunarDayLabel:Ljava/lang/String;

.field private mLunarLabel:Landroid/widget/TextView;

.field private mLunarMonth:I

.field private mLunarMonthLabel:Ljava/lang/String;

.field private mLunarStringArray:[Ljava/lang/String;

.field private mLunarTimeDivider:Landroid/view/View;

.field private mLunarTimeLayout:Landroid/view/View;

.field private final mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

.field private mLunarYear:I

.field private mLunarYearLabel:Ljava/lang/String;

.field private mMin:I

.field private mMonthDay:Ljava/lang/String;

.field private mNubiaSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

.field private mOnClickListener:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnClickListener;

.field private mOnTimeChangeListener:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;

.field private mRetDay:I

.field private mRetMonth:I

.field private mRetYear:I

.field private mSolarDay:I

.field private mSolarMonth:I

.field private mSolarStringArray:[Ljava/lang/String;

.field private mSolarYear:I

.field private mSwitchEnabled:Z

.field private mUSStringArray:[Ljava/lang/String;

.field private mWeekDay:Ljava/lang/String;

.field private mYYYY:I

.field private mYearMonthDay:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$onTimeSetListener;IIIII)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$onTimeSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I
    .param p7, "hourOfDay"    # I
    .param p8, "minute"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 34
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSwitchEnabled:Z

    .line 62
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->isCurrentMonthLeap:Z

    .line 95
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setCancelable(Z)V

    .line 96
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 98
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 99
    .local v3, "themeContext":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 100
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "currentLanguage":Ljava/lang/String;
    const-string v6, "zh"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 103
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    .line 108
    :goto_0
    iget-object v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mOnClickListener:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnClickListener;

    if-nez v6, :cond_0

    .line 109
    new-instance v6, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnClickListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnClickListener;-><init>(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$1;)V

    iput-object v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mOnClickListener:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnClickListener;

    .line 112
    :cond_0
    const/4 v6, -0x1

    const v7, 0x1040013

    invoke-virtual {v3, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mOnClickListener:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnClickListener;

    invoke-virtual {p0, v6, v7, v8}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 114
    const/4 v6, -0x2

    const/high16 v7, 0x1040000

    invoke-virtual {v3, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mOnClickListener:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnClickListener;

    invoke-virtual {p0, v6, v7, v8}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 116
    const-string v6, "layout_inflater"

    .line 117
    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 118
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v6, Lcn/nubia/commonui/R$layout;->nubia_lunar_time_picker_dialog:I

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 120
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p0, v4}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setView(Landroid/view/View;)V

    .line 122
    iput-object p3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mCallBack:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$onTimeSetListener;

    .line 123
    sget v6, Lcn/nubia/commonui/R$id;->nubia_lunar_time_picker_view:I

    .line 124
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    iput-object v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    .line 125
    iget-object v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->setCurrentHour(Ljava/lang/Integer;)V

    .line 126
    iget-object v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 128
    iget-object v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mOnTimeChangeListener:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;

    if-nez v6, :cond_1

    .line 129
    new-instance v6, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;-><init>(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$1;)V

    iput-object v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mOnTimeChangeListener:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;

    .line 132
    :cond_1
    iget-object v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    iget-object v7, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mOnTimeChangeListener:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;

    invoke-virtual {v6, v7}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->setOnTimeChangedListener(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$OnTimeChangeListener;)V

    .line 133
    sget v6, Lcn/nubia/commonui/R$id;->nubia_lunar_textview:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarLabel:Landroid/widget/TextView;

    .line 134
    iget-object v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarLabel:Landroid/widget/TextView;

    sget v7, Lcn/nubia/commonui/R$string;->nubia_lunar:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 135
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->getTextRes()V

    .line 136
    sget v6, Lcn/nubia/commonui/R$id;->nubia_switch_button:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcn/nubia/commonui/widget/NubiaSwitch;

    iput-object v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mNubiaSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 137
    sget v6, Lcn/nubia/commonui/R$id;->nubia_lunar_time_layout:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimeLayout:Landroid/view/View;

    .line 138
    sget v6, Lcn/nubia/commonui/R$id;->nubia_lunar_date_picker_dialog_divider:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimeDivider:Landroid/view/View;

    .line 140
    iget-boolean v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    if-nez v6, :cond_2

    .line 141
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setLunarLayoutVisiable(Z)V

    .line 144
    :cond_2
    move/from16 v0, p7

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mHour:I

    .line 145
    move/from16 v0, p8

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMin:I

    .line 146
    add-int/lit8 p5, p5, 0x1

    .line 147
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v6, 0xa

    if-ge p5, v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 148
    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v6, 0xa

    if-ge p6, v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 149
    :goto_2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, "yearMonthDay":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->initData(Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->initTitle()V

    .line 153
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setupNubiaSwitch()V

    .line 155
    iget-object v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimeLayout:Landroid/view/View;

    new-instance v7, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$1;

    invoke-direct {v7, p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$1;-><init>(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    iget v7, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-virtual {v6, v7}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->update(I)V

    .line 164
    iget-boolean v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    if-eqz v6, :cond_3

    .line 165
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->getSwitchStateFromSP()Z

    move-result v6

    iput-boolean v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSwitchEnabled:Z

    .line 166
    iget-boolean v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSwitchEnabled:Z

    if-eqz v6, :cond_3

    .line 167
    iget-object v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mNubiaSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v6}, Lcn/nubia/commonui/widget/NubiaSwitch;->toggle()V

    .line 170
    :cond_3
    return-void

    .line 105
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "yearMonthDay":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    goto/16 :goto_0

    .line 148
    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    .restart local v4    # "view":Landroid/view/View;
    :cond_5
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    .line 149
    :cond_6
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$onTimeSetListener;IIIII)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$onTimeSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I
    .param p6, "hourOfDay"    # I
    .param p7, "minute"    # I

    .prologue
    .line 82
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;-><init>(Landroid/content/Context;ILcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$onTimeSetListener;IIIII)V

    .line 84
    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    return v0
.end method

.method static synthetic access$1202(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    return p1
.end method

.method static synthetic access$1300(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setSolarTitle()V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->updateLunar()V

    return-void
.end method

.method static synthetic access$1700(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->updateSolar()V

    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->updateSolarTitle()V

    return-void
.end method

.method static synthetic access$1900(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->tryNotifyTimeSet()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Lcn/nubia/commonui/widget/NubiaSwitch;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mNubiaSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    return-object v0
.end method

.method static synthetic access$302(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMin:I

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->adjustHourOfDay(I)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    return v0
.end method

.method static synthetic access$502(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    return p1
.end method

.method static synthetic access$600(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSwitchEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSwitchEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->updateLunarTitle()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    return v0
.end method

.method static synthetic access$900(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    return-object p1
.end method

.method private adjustHourOfDay(I)V
    .locals 1
    .param p1, "hourOfDay"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getmIs24HourView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    const/16 v0, 0xc

    if-le p1, v0, :cond_0

    .line 280
    add-int/lit8 p1, p1, -0xc

    .line 283
    :cond_0
    if-nez p1, :cond_1

    .line 284
    const/16 p1, 0xc

    .line 288
    :cond_1
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mHour:I

    .line 289
    return-void
.end method

.method private adjustYearLunarToSolar()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    .line 457
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v5}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v5

    .line 458
    invoke-virtual {v5}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 459
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    iget v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v4, v5, v6}, Lcn/nubia/commonui/widget/LunarUtil;->daysToLunmmdd(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, "mmdd":Ljava/lang/String;
    const/4 v0, 0x0

    .line 463
    .local v0, "isLeapMonth":Z
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 464
    const/4 v0, 0x1

    .line 465
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 468
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, "lunarYMD":Ljava/lang/String;
    :try_start_0
    invoke-static {v1, v0}, Lcn/nubia/commonui/widget/LunarUtil;->lunarToSolar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 472
    .local v3, "solarDate":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->resolveSolarDate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    .end local v3    # "solarDate":Ljava/lang/String;
    :goto_0
    iget v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    iget v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarYear:I

    if-eq v4, v5, :cond_1

    .line 477
    iget v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarYear:I

    iput v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    .line 479
    :cond_1
    return-void

    .line 473
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private adjustYearSolarToLunar()V
    .locals 6

    .prologue
    .line 385
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v4}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v4

    .line 386
    invoke-virtual {v4}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 387
    iget v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v3}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v3

    iput-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    .line 388
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    iget-boolean v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    invoke-static {v3, v4, v5}, Lcn/nubia/commonui/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, "mmdd":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, "solarYMD":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcn/nubia/commonui/widget/LunarUtil;->solarToLunar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "lunarDate":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->resolveLunarDate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .end local v0    # "lunarDate":Ljava/lang/String;
    :goto_0
    iget v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    iget v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarYear:I

    if-eq v3, v4, :cond_0

    .line 398
    iget v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarYear:I

    iput v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    .line 400
    :cond_0
    return-void

    .line 394
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getAmPm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getmIs24HourView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const-string v0, ""

    .line 234
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getmIsAm()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/nubia/commonui/widget/LunarUtil;->am:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lcn/nubia/commonui/widget/LunarUtil;->pm:Ljava/lang/String;

    goto :goto_0
.end method

.method private getTextRes()V
    .locals 1

    .prologue
    .line 676
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->getTextRes(Landroid/content/Context;)V

    .line 677
    sget-object v0, Lcn/nubia/commonui/widget/LunarUtil;->YEAR:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarYearLabel:Ljava/lang/String;

    .line 678
    sget-object v0, Lcn/nubia/commonui/widget/LunarUtil;->MONTH:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarMonthLabel:Ljava/lang/String;

    .line 679
    sget-object v0, Lcn/nubia/commonui/widget/LunarUtil;->DAY:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarDayLabel:Ljava/lang/String;

    .line 680
    return-void
.end method

.method private initData(Ljava/lang/String;)V
    .locals 7
    .param p1, "yearMonthDay"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x4

    .line 197
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 198
    .local v3, "yyyy":I
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 199
    .local v1, "mm":I
    const/16 v4, 0x8

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 200
    .local v0, "dd":I
    iput v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    .line 202
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYearMonthDay:Ljava/lang/String;

    .line 203
    iget v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v4}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v4

    iput-boolean v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    .line 204
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->initDisplayedValues()V

    .line 205
    iget v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v1, v0, v4}, Lcn/nubia/commonui/widget/LunarUtil;->solarSumDays(III)I

    move-result v2

    .line 206
    .local v2, "sumDay":I
    invoke-static {}, Lcn/nubia/commonui/widget/LunarUtil;->clearSum()V

    .line 207
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v4}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    .line 208
    iget v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mHour:I

    invoke-direct {p0, v4}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->adjustHourOfDay(I)V

    .line 209
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYearMonthDay:Ljava/lang/String;

    invoke-static {v4}, Lcn/nubia/commonui/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;

    .line 211
    iget-boolean v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    if-eqz v4, :cond_0

    .line 212
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v5}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v5

    .line 213
    invoke-virtual {v5}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 218
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v5}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v5

    .line 216
    invoke-virtual {v5}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    goto :goto_0
.end method

.method private initDisplayedValues()V
    .locals 2

    .prologue
    .line 220
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->timePickerSolMonthDay(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->updateTimePickerArray([Ljava/lang/String;)V

    .line 229
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->timePickerUSMonthDay(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->updateTimePickerArray([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initTitle()V
    .locals 3

    .prologue
    .line 186
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setSolarTitle()V

    .line 195
    :goto_0
    return-void

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 190
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 191
    sget-object v0, Lcn/nubia/commonui/widget/LunarUtil;->WEEKDAYS_SHORT:[Ljava/lang/String;

    sget-object v1, Lcn/nubia/commonui/widget/LunarUtil;->WEEKDAYS_LONG:[Ljava/lang/String;

    .line 192
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;

    .line 193
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setSolarTitle()V

    goto :goto_0
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

    .line 338
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 339
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarYear:I

    .line 340
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarMonth:I

    .line 341
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarDay:I

    .line 347
    :goto_0
    return-void

    .line 343
    :cond_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarYear:I

    .line 344
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarMonth:I

    .line 345
    const/16 v0, 0x9

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarDay:I

    goto :goto_0
.end method

.method private resolveSolarDate(Ljava/lang/String;)V
    .locals 3
    .param p1, "solarDate"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x4

    .line 350
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarYear:I

    .line 351
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarMonth:I

    .line 352
    const/16 v0, 0x8

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarDay:I

    .line 353
    return-void
.end method

.method private saveSwitchState()V
    .locals 5

    .prologue
    .line 665
    iget-boolean v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    if-nez v2, :cond_0

    .line 673
    :goto_0
    return-void

    .line 668
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "lunarTimePickerSwitch"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 670
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 671
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "switchState"

    iget-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSwitchEnabled:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 672
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private setLunarTitle()V
    .locals 6

    .prologue
    .line 427
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$string;->nubia_time_title:I

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    .line 429
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->getAmPm()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mHour:I

    .line 430
    invoke-direct {p0, v5}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setTwoDigital(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMin:I

    invoke-direct {p0, v5}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setTwoDigital(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 428
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "lunarTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->getAlertController()Lcn/nubia/commonui/app/AlertController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 432
    return-void
.end method

.method private setRetDateTime()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 600
    const-string v1, ""

    .line 602
    .local v1, "mmdd":Ljava/lang/String;
    iget-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSwitchEnabled:Z

    if-eqz v3, :cond_1

    .line 603
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v4}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v4

    .line 604
    invoke-virtual {v4}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 605
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    iget v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v3, v4, v5}, Lcn/nubia/commonui/widget/LunarUtil;->daysToLunmmdd(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 608
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    sget-object v4, Lcn/nubia/commonui/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-ne v6, v3, :cond_0

    .line 609
    iput-boolean v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->isCurrentMonthLeap:Z

    .line 610
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 617
    :goto_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, "lunarDate":Ljava/lang/String;
    iget-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->isCurrentMonthLeap:Z

    invoke-static {v0, v3}, Lcn/nubia/commonui/widget/LunarUtil;->lunarToSolar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 620
    .local v2, "solarDate":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->resolveSolarDate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    .end local v0    # "lunarDate":Ljava/lang/String;
    .end local v2    # "solarDate":Ljava/lang/String;
    :goto_1
    iget v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarYear:I

    iput v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mRetYear:I

    .line 642
    iget v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarMonth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mRetMonth:I

    .line 643
    iget v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarDay:I

    iput v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mRetDay:I

    .line 644
    return-void

    .line 612
    :cond_0
    iput-boolean v7, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->isCurrentMonthLeap:Z

    .line 613
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 624
    :cond_1
    iget-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    if-eqz v3, :cond_2

    .line 625
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v4}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v4

    .line 626
    invoke-virtual {v4}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 627
    iget v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v3}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v3

    iput-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    .line 628
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    iget-boolean v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    .line 629
    invoke-static {v3, v4, v5}, Lcn/nubia/commonui/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 637
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 638
    .restart local v2    # "solarDate":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->resolveSolarDate(Ljava/lang/String;)V

    goto :goto_1

    .line 631
    .end local v2    # "solarDate":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v4}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v4

    .line 632
    invoke-virtual {v4}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v4

    aget-object v3, v3, v4

    iput-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 633
    iget v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v3}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v3

    iput-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    .line 634
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;

    iget-boolean v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    invoke-static {v3, v4, v5}, Lcn/nubia/commonui/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 621
    :catch_0
    move-exception v3

    goto/16 :goto_1
.end method

.method private setSolarTitle()V
    .locals 6

    .prologue
    .line 493
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$string;->nubia_time_title:I

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    .line 495
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->getAmPm()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mHour:I

    .line 496
    invoke-direct {p0, v5}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setTwoDigital(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMin:I

    invoke-direct {p0, v5}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setTwoDigital(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 494
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "solarTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->getAlertController()Lcn/nubia/commonui/app/AlertController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 498
    return-void
.end method

.method private setTwoDigital(I)Ljava/lang/String;
    .locals 2
    .param p1, "digital"    # I

    .prologue
    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    const-string v0, "0"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private setupNubiaSwitch()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mNubiaSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    if-nez v0, :cond_0

    .line 529
    :goto_0
    return-void

    .line 509
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mNubiaSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    new-instance v1, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$2;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$2;-><init>(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method private tryNotifyTimeSet()V
    .locals 7

    .prologue
    const/16 v2, 0x7f5

    const/16 v1, 0x7b2

    .line 239
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mRetYear:I

    if-le v0, v2, :cond_2

    .line 240
    iput v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mRetYear:I

    .line 244
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->saveSwitchState()V

    .line 246
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mCallBack:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$onTimeSetListener;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->clearFocus()V

    .line 248
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setRetDateTime()V

    .line 249
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mCallBack:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$onTimeSetListener;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mRetYear:I

    iget v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mRetMonth:I

    iget v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mRetDay:I

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    .line 251
    invoke-virtual {v5}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getCurrentHour()I

    move-result v5

    iget-object v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    .line 252
    invoke-virtual {v6}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getCurrentMinute()I

    move-result v6

    .line 249
    invoke-interface/range {v0 .. v6}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$onTimeSetListener;->onTimeSet(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;IIIII)V

    .line 254
    :cond_1
    return-void

    .line 241
    :cond_2
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mRetYear:I

    if-ge v0, v1, :cond_0

    .line 242
    iput v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mRetYear:I

    goto :goto_0
.end method

.method private updateLunar()V
    .locals 8

    .prologue
    .line 356
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->adjustYearSolarToLunar()V

    .line 357
    const/4 v2, 0x0

    .line 359
    .local v2, "isLeapMonth":Z
    iget v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarMonth:I

    const/16 v6, 0x14

    if-le v5, v6, :cond_0

    .line 360
    iget v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarMonth:I

    add-int/lit8 v5, v5, -0x14

    iput v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarMonth:I

    .line 361
    const/4 v2, 0x1

    .line 364
    :cond_0
    iget v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v5}, Lcn/nubia/commonui/widget/LunarUtil;->timePickerLunMonthDay(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    .line 365
    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    invoke-direct {p0, v5}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->updateTimePickerArray([Ljava/lang/String;)V

    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, "day":I
    iget v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v5}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonth(I)I

    move-result v3

    .line 369
    .local v3, "leapMonth":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_2

    sget-object v5, Lcn/nubia/commonui/widget/LunarUtil;->LEAP:Ljava/lang/String;

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarMonth:I

    const/4 v7, 0x1

    .line 370
    invoke-static {v6, v7}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcn/nubia/commonui/widget/LunarUtil;->MONTH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarDay:I

    const/4 v7, 0x2

    .line 372
    invoke-static {v6, v7}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, "mmdd_lun":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 374
    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 375
    add-int/lit8 v0, v1, 0x1

    .line 380
    :cond_1
    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    iget v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-virtual {v5, v6}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->update(I)V

    .line 381
    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v5}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v5

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    .line 382
    return-void

    .line 369
    .end local v1    # "i":I
    .end local v4    # "mmdd_lun":Ljava/lang/String;
    :cond_2
    const-string v5, ""

    goto :goto_0

    .line 373
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

    .line 402
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v4}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/commonui/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    .line 403
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v5}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v5

    .line 404
    invoke-virtual {v5}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 405
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    iget v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v4, v5, v6}, Lcn/nubia/commonui/widget/LunarUtil;->daysToLunmmdd(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "mmdd":Ljava/lang/String;
    const/4 v0, 0x0

    .line 409
    .local v0, "isLeapMonth":Z
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 410
    const/4 v0, 0x1

    .line 411
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 414
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "lunarYMD":Ljava/lang/String;
    :try_start_0
    invoke-static {v1, v0}, Lcn/nubia/commonui/widget/LunarUtil;->lunarToSolar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, "solarDate":Ljava/lang/String;
    invoke-static {v3}, Lcn/nubia/commonui/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    .end local v3    # "solarDate":Ljava/lang/String;
    :goto_0
    iget v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mHour:I

    invoke-direct {p0, v4}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->adjustHourOfDay(I)V

    .line 423
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setLunarTitle()V

    .line 424
    return-void

    .line 419
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private updateSolar()V
    .locals 5

    .prologue
    .line 435
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->adjustYearLunarToSolar()V

    .line 437
    iget v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v3}, Lcn/nubia/commonui/widget/LunarUtil;->timePickerSolMonthDay(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    .line 438
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->updateTimePickerArray([Ljava/lang/String;)V

    .line 440
    const/4 v0, 0x0

    .line 441
    .local v0, "day":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarMonth:I

    invoke-direct {p0, v4}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setTwoDigital(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/nubia/commonui/widget/LunarUtil;->MONTH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarDay:I

    .line 442
    invoke-direct {p0, v4}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setTwoDigital(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/nubia/commonui/widget/LunarUtil;->DAY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 445
    .local v2, "mmdd_sol":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 446
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 447
    add-int/lit8 v0, v1, 0x1

    .line 452
    :cond_0
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    iget v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->update(I)V

    .line 453
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    .line 454
    return-void

    .line 445
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateSolarTitle()V
    .locals 4

    .prologue
    .line 482
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    .line 483
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v1

    .line 484
    invoke-virtual {v1}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 485
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    iget-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    .line 487
    invoke-static {v1, v2, v3}, Lcn/nubia/commonui/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 486
    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;

    .line 488
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mHour:I

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->adjustHourOfDay(I)V

    .line 489
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setSolarTitle()V

    .line 490
    return-void
.end method

.method private updateTimePickerArray([Ljava/lang/String;)V
    .locals 2
    .param p1, "array"    # [Ljava/lang/String;

    .prologue
    .line 682
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 684
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 685
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 686
    return-void
.end method


# virtual methods
.method public getCurrentAmPm()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 540
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getmIs24HourView()Z

    move-result v3

    if-ne v3, v1, :cond_3

    .line 541
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getCurrentHour()I

    move-result v0

    .line 543
    .local v0, "hour":I
    if-nez v0, :cond_0

    .line 544
    const/16 v0, 0x18

    .line 546
    :cond_0
    const/16 v3, 0xc

    if-le v0, v3, :cond_2

    .line 552
    .end local v0    # "hour":I
    :cond_1
    :goto_0
    return v1

    .restart local v0    # "hour":I
    :cond_2
    move v1, v2

    .line 546
    goto :goto_0

    .line 548
    .end local v0    # "hour":I
    :cond_3
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getmIsAm()Z

    move-result v3

    if-ne v3, v1, :cond_1

    move v1, v2

    .line 549
    goto :goto_0
.end method

.method public getCurrentMonthIsLeap()Z
    .locals 1

    .prologue
    .line 536
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->isCurrentMonthLeap:Z

    return v0
.end method

.method public getDateString(Z)Ljava/lang/String;
    .locals 9
    .param p1, "isLuanrMode"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 558
    const-string v3, ""

    .line 559
    .local v3, "mmdd":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v4}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getCurrentHour()I

    move-result v0

    .line 561
    .local v0, "hh":I
    const/16 v4, 0xc

    if-le v0, v4, :cond_0

    .line 562
    add-int/lit8 v0, v0, -0xc

    .line 565
    :cond_0
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v4}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getCurrentMinute()I

    move-result v2

    .line 566
    .local v2, "mm":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setTwoDigital(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setTwoDigital(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 568
    .local v1, "hhmm":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 569
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v5}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v5

    .line 570
    invoke-virtual {v5}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 571
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    iget v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v4, v5, v6}, Lcn/nubia/commonui/widget/LunarUtil;->daysToLunmmdd(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 574
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    sget-object v5, Lcn/nubia/commonui/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v7, :cond_1

    .line 575
    iput-boolean v7, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->isCurrentMonthLeap:Z

    .line 576
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 596
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 578
    :cond_1
    iput-boolean v8, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->isCurrentMonthLeap:Z

    .line 579
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 582
    :cond_2
    iget-boolean v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    if-eqz v4, :cond_3

    .line 583
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v5}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v5

    .line 584
    invoke-virtual {v5}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 585
    iget v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v4}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v4

    iput-boolean v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    .line 586
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    iget-boolean v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    .line 587
    invoke-static {v4, v5, v6}, Lcn/nubia/commonui/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 589
    :cond_3
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v5}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v5

    .line 590
    invoke-virtual {v5}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 591
    iget v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v4}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v4

    iput-boolean v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    .line 592
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;

    iget-boolean v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    invoke-static {v4, v5, v6}, Lcn/nubia/commonui/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getSwitchState()Z
    .locals 1

    .prologue
    .line 532
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSwitchEnabled:Z

    return v0
.end method

.method public getSwitchStateFromSP()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 659
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "lunarTimePickerSwitch"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 661
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "switchState"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 263
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 264
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    const-string v1, "PICKER"

    .line 265
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 264
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 267
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 271
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 272
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "PICKER"

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 273
    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 258
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertDialog;->onStop()V

    .line 259
    return-void
.end method

.method public setLunarLayoutVisiable(Z)V
    .locals 3
    .param p1, "visiable"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 172
    if-eqz p1, :cond_1

    .line 173
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimeLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimeDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimeDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimeLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimeDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimeDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final updateTime(II)V
    .locals 2
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->setCurrentHour(Ljava/lang/Integer;)V

    .line 88
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 89
    return-void
.end method
