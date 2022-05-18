.class public Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;
.super Lcn/nubia/commonui/app/AlertDialog;
.source "NubiaLunarTimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$a;,
        Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;,
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

.field private mLunarTimeLayout:Landroid/view/View;

.field private final mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

.field private mLunarYear:I

.field private mLunarYearLabel:Ljava/lang/String;

.field private mMin:I

.field private mMonthDay:Ljava/lang/String;

.field private mNubiaSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

.field private mOnClickListener:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$a;

.field private mOnTimeChangeListener:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;

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
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 93
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 34
    iput-boolean v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSwitchEnabled:Z

    .line 62
    iput-boolean v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->isCurrentMonthLeap:Z

    .line 94
    invoke-virtual {p0, v3}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setCancelable(Z)V

    .line 95
    invoke-virtual {p0, v3}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 97
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 101
    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 102
    iput-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    .line 107
    :goto_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mOnClickListener:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$a;

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$a;

    invoke-direct {v1, p0, v5}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$a;-><init>(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$1;)V

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mOnClickListener:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$a;

    .line 111
    :cond_0
    const/4 v1, -0x1

    const v2, 0x1040013

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mOnClickListener:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$a;

    invoke-virtual {p0, v1, v2, v3}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 113
    const/4 v1, -0x2

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mOnClickListener:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$a;

    invoke-virtual {p0, v1, v0, v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 115
    const-string v0, "layout_inflater"

    .line 116
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 117
    sget v1, Lcn/nubia/commonui/R$layout;->nubia_lunar_time_picker_dialog:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 119
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setView(Landroid/view/View;)V

    .line 121
    iput-object p3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mCallBack:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$onTimeSetListener;

    .line 122
    sget v0, Lcn/nubia/commonui/R$id;->nubia_lunar_time_picker_view:I

    .line 123
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    .line 124
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->setCurrentHour(Ljava/lang/Integer;)V

    .line 125
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 127
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mOnTimeChangeListener:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;

    if-nez v0, :cond_1

    .line 128
    new-instance v0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;

    invoke-direct {v0, p0, v5}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;-><init>(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$1;)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mOnTimeChangeListener:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;

    .line 131
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mOnTimeChangeListener:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->setOnTimeChangedListener(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$OnTimeChangeListener;)V

    .line 132
    sget v0, Lcn/nubia/commonui/R$id;->nubia_lunar_textview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarLabel:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarLabel:Landroid/widget/TextView;

    sget v2, Lcn/nubia/commonui/R$string;->nubia_lunar:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 134
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->getTextRes()V

    .line 135
    sget v0, Lcn/nubia/commonui/R$id;->nubia_switch_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/widget/NubiaSwitch;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mNubiaSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 136
    sget v0, Lcn/nubia/commonui/R$id;->nubia_lunar_time_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimeLayout:Landroid/view/View;

    .line 138
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    if-nez v0, :cond_2

    .line 139
    invoke-virtual {p0, v4}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setLunarLayoutVisiable(Z)V

    .line 142
    :cond_2
    iput p7, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mHour:I

    .line 143
    iput p8, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMin:I

    .line 144
    add-int/lit8 v0, p5, 0x1

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ge v0, v6, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ge p6, v6, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->initData(Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->initTitle()V

    .line 151
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setupNubiaSwitch()V

    .line 153
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimeLayout:Landroid/view/View;

    new-instance v1, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$1;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$1;-><init>(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    iget v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->update(I)V

    .line 162
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    if-eqz v0, :cond_3

    .line 163
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->getSwitchStateFromSP()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSwitchEnabled:Z

    .line 164
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSwitchEnabled:Z

    if-eqz v0, :cond_3

    .line 165
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mNubiaSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->toggle()V

    .line 168
    :cond_3
    return-void

    .line 104
    :cond_4
    iput-boolean v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    goto/16 :goto_0

    .line 146
    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 147
    :cond_6
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$onTimeSetListener;IIIII)V
    .locals 9

    .prologue
    .line 81
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

    .line 83
    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    return v0
.end method

.method static synthetic access$1202(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    return p1
.end method

.method static synthetic access$1300(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setSolarTitle()V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->updateLunar()V

    return-void
.end method

.method static synthetic access$1700(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->updateSolar()V

    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->updateSolarTitle()V

    return-void
.end method

.method static synthetic access$1900(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->tryNotifyTimeSet()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Lcn/nubia/commonui/widget/NubiaSwitch;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mNubiaSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    return-object v0
.end method

.method static synthetic access$302(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;I)I
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMin:I

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->adjustHourOfDay(I)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    return v0
.end method

.method static synthetic access$502(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;I)I
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    return p1
.end method

.method static synthetic access$600(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSwitchEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSwitchEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->updateLunarTitle()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    return v0
.end method

.method static synthetic access$900(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    return-object p1
.end method

.method private adjustHourOfDay(I)V
    .locals 2

    .prologue
    const/16 v0, 0xc

    .line 279
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getmIs24HourView()Z

    move-result v1

    if-nez v1, :cond_1

    .line 281
    if-le p1, v0, :cond_0

    .line 282
    add-int/lit8 p1, p1, -0xc

    .line 285
    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    .line 290
    :cond_1
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mHour:I

    .line 291
    return-void
.end method

.method private adjustYearLunarToSolar()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v0, 0x1

    .line 459
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v2

    .line 460
    invoke-virtual {v2}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 461
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    iget v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v1, v2, v3}, Lcn/nubia/commonui/widget/LunarUtil;->daysToLunmmdd(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 463
    const/4 v1, 0x0

    .line 465
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 467
    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 470
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 473
    :try_start_0
    invoke-static {v1, v0}, Lcn/nubia/commonui/widget/LunarUtil;->lunarToSolar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->resolveSolarDate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :goto_1
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    iget v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarYear:I

    if-eq v0, v1, :cond_0

    .line 479
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarYear:I

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    .line 481
    :cond_0
    return-void

    .line 475
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    move v0, v1

    move-object v1, v2

    goto :goto_0
.end method

.method private adjustYearSolarToLunar()V
    .locals 3

    .prologue
    .line 387
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v1

    .line 388
    invoke-virtual {v1}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 389
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    .line 390
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    iget-boolean v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    invoke-static {v0, v1, v2}, Lcn/nubia/commonui/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 394
    :try_start_0
    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->solarToLunar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->resolveLunarDate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :goto_0
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    iget v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarYear:I

    if-eq v0, v1, :cond_0

    .line 400
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarYear:I

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    .line 402
    :cond_0
    return-void

    .line 396
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getAmPm()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 223
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getmIs24HourView()Z

    move-result v0

    if-ne v3, v0, :cond_1

    .line 224
    const-string v0, ""

    .line 235
    :cond_0
    :goto_0
    return-object v0

    .line 226
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$string;->nubia_time_am_upper:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$string;->nubia_time_pm_upper:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 231
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getmIsAm()Z

    move-result v2

    if-ne v2, v3, :cond_2

    .line 232
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    if-eqz v1, :cond_0

    sget-object v0, Lcn/nubia/commonui/widget/LunarUtil;->am:Ljava/lang/String;

    goto :goto_0

    .line 235
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcn/nubia/commonui/widget/LunarUtil;->pm:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private getTextRes()V
    .locals 1

    .prologue
    .line 678
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->getTextRes(Landroid/content/Context;)V

    .line 679
    sget-object v0, Lcn/nubia/commonui/widget/LunarUtil;->YEAR:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarYearLabel:Ljava/lang/String;

    .line 680
    sget-object v0, Lcn/nubia/commonui/widget/LunarUtil;->MONTH:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarMonthLabel:Ljava/lang/String;

    .line 681
    sget-object v0, Lcn/nubia/commonui/widget/LunarUtil;->DAY:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarDayLabel:Ljava/lang/String;

    .line 682
    return-void
.end method

.method private initData(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v1, 0x4

    .line 189
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 190
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 191
    const/16 v2, 0x8

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 192
    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    .line 194
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYearMonthDay:Ljava/lang/String;

    .line 195
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    .line 196
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->initDisplayedValues()V

    .line 197
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v1, v2, v0}, Lcn/nubia/commonui/widget/LunarUtil;->solarSumDays(III)I

    move-result v0

    .line 198
    invoke-static {}, Lcn/nubia/commonui/widget/LunarUtil;->clearSum()V

    .line 199
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    .line 200
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mHour:I

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->adjustHourOfDay(I)V

    .line 201
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYearMonthDay:Ljava/lang/String;

    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;

    .line 203
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v1

    .line 205
    invoke-virtual {v1}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 210
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    goto :goto_0
.end method

.method private initDisplayedValues()V
    .locals 2

    .prologue
    .line 212
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->timePickerSolMonthDay(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->updateTimePickerArray([Ljava/lang/String;)V

    .line 221
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->timePickerUSMonthDay(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->updateTimePickerArray([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initTitle()V
    .locals 3

    .prologue
    .line 178
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setSolarTitle()V

    .line 187
    :goto_0
    return-void

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 182
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 183
    sget-object v0, Lcn/nubia/commonui/widget/LunarUtil;->WEEKDAYS_SHORT:[Ljava/lang/String;

    sget-object v1, Lcn/nubia/commonui/widget/LunarUtil;->WEEKDAYS_LONG:[Ljava/lang/String;

    .line 184
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;

    .line 185
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setSolarTitle()V

    goto :goto_0
.end method

.method private resolveLunarDate(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x7

    const/4 v3, 0x6

    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 340
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 341
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarYear:I

    .line 342
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarMonth:I

    .line 343
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarDay:I

    .line 349
    :goto_0
    return-void

    .line 345
    :cond_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarYear:I

    .line 346
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarMonth:I

    .line 347
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

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x4

    .line 352
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarYear:I

    .line 353
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarMonth:I

    .line 354
    const/16 v0, 0x8

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarDay:I

    .line 355
    return-void
.end method

.method private saveSwitchState()V
    .locals 3

    .prologue
    .line 667
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    if-nez v0, :cond_0

    .line 675
    :goto_0
    return-void

    .line 670
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "lunarTimePickerSwitch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 672
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 673
    const-string v1, "switchState"

    iget-boolean v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSwitchEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 674
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private setLunarTitle()V
    .locals 5

    .prologue
    .line 429
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$string;->nubia_time_title:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    .line 431
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->getAmPm()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mHour:I

    .line 432
    invoke-direct {p0, v4}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setTwoDigital(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMin:I

    invoke-direct {p0, v4}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setTwoDigital(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 430
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 433
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->getAlertController()Lcn/nubia/commonui/app/AlertController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 434
    return-void
.end method

.method private setRetDateTime()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 602
    const-string v0, ""

    .line 604
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSwitchEnabled:Z

    if-eqz v0, :cond_1

    .line 605
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v1

    .line 606
    invoke-virtual {v1}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 607
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v0, v1, v2}, Lcn/nubia/commonui/widget/LunarUtil;->daysToLunmmdd(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 610
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    sget-object v2, Lcn/nubia/commonui/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v3, v1, :cond_0

    .line 611
    iput-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->isCurrentMonthLeap:Z

    .line 612
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 619
    :goto_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 620
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->isCurrentMonthLeap:Z

    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/LunarUtil;->lunarToSolar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 622
    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->resolveSolarDate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    :goto_1
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarYear:I

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mRetYear:I

    .line 644
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarMonth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mRetMonth:I

    .line 645
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarDay:I

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mRetDay:I

    .line 646
    return-void

    .line 614
    :cond_0
    iput-boolean v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->isCurrentMonthLeap:Z

    .line 615
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 626
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    if-eqz v0, :cond_2

    .line 627
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v1

    .line 628
    invoke-virtual {v1}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 629
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    .line 630
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    iget-boolean v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    .line 631
    invoke-static {v0, v1, v2}, Lcn/nubia/commonui/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 639
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 640
    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->resolveSolarDate(Ljava/lang/String;)V

    goto :goto_1

    .line 633
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v1

    .line 634
    invoke-virtual {v1}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 635
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    .line 636
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;

    iget-boolean v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    invoke-static {v0, v1, v2}, Lcn/nubia/commonui/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 623
    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method private setSolarTitle()V
    .locals 5

    .prologue
    .line 495
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$string;->nubia_time_title:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    .line 497
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->getAmPm()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mHour:I

    .line 498
    invoke-direct {p0, v4}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setTwoDigital(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMin:I

    invoke-direct {p0, v4}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setTwoDigital(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 496
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 499
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->getAlertController()Lcn/nubia/commonui/app/AlertController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 500
    return-void
.end method

.method private setTwoDigital(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 503
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
    .line 507
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mNubiaSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    if-nez v0, :cond_0

    .line 531
    :goto_0
    return-void

    .line 511
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

    .line 241
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mRetYear:I

    if-le v0, v2, :cond_2

    .line 242
    iput v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mRetYear:I

    .line 246
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->saveSwitchState()V

    .line 248
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mCallBack:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$onTimeSetListener;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->clearFocus()V

    .line 250
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setRetDateTime()V

    .line 251
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mCallBack:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$onTimeSetListener;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mRetYear:I

    iget v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mRetMonth:I

    iget v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mRetDay:I

    iget-object v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    .line 253
    invoke-virtual {v5}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getCurrentHour()I

    move-result v5

    iget-object v6, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    .line 254
    invoke-virtual {v6}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getCurrentMinute()I

    move-result v6

    .line 251
    invoke-interface/range {v0 .. v6}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$onTimeSetListener;->onTimeSet(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;IIIII)V

    .line 256
    :cond_1
    return-void

    .line 243
    :cond_2
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mRetYear:I

    if-ge v0, v1, :cond_0

    .line 244
    iput v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mRetYear:I

    goto :goto_0
.end method

.method private updateLunar()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 358
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->adjustYearSolarToLunar()V

    .line 361
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarMonth:I

    const/16 v3, 0x14

    if-le v0, v3, :cond_3

    .line 362
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarMonth:I

    add-int/lit8 v0, v0, -0x14

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarMonth:I

    move v0, v1

    .line 366
    :goto_0
    iget v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v3}, Lcn/nubia/commonui/widget/LunarUtil;->timePickerLunMonthDay(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    .line 367
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->updateTimePickerArray([Ljava/lang/String;)V

    .line 370
    iget v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v3}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonth(I)I

    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_1

    sget-object v0, Lcn/nubia/commonui/widget/LunarUtil;->LEAP:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarMonth:I

    .line 372
    invoke-static {v3, v1}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/commonui/widget/LunarUtil;->MONTH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarDay:I

    const/4 v3, 0x2

    .line 374
    invoke-static {v1, v3}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v0, v2

    .line 375
    :goto_2
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 376
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 377
    add-int/lit8 v2, v0, 0x1

    .line 382
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    iget v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->update(I)V

    .line 383
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v0

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    .line 384
    return-void

    .line 371
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 375
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private updateLunarTitle()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v0, 0x1

    .line 404
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    .line 405
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v2

    .line 406
    invoke-virtual {v2}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 407
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    iget v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v1, v2, v3}, Lcn/nubia/commonui/widget/LunarUtil;->daysToLunmmdd(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 409
    const/4 v1, 0x0

    .line 411
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 413
    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 416
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 419
    :try_start_0
    invoke-static {v1, v0}, Lcn/nubia/commonui/widget/LunarUtil;->lunarToSolar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :goto_1
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mHour:I

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->adjustHourOfDay(I)V

    .line 425
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setLunarTitle()V

    .line 426
    return-void

    .line 421
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    move v0, v1

    move-object v1, v2

    goto :goto_0
.end method

.method private updateSolar()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 437
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->adjustYearLunarToSolar()V

    .line 439
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->timePickerSolMonthDay(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    .line 440
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->updateTimePickerArray([Ljava/lang/String;)V

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarMonth:I

    invoke-direct {p0, v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setTwoDigital(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcn/nubia/commonui/widget/LunarUtil;->MONTH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarDay:I

    .line 444
    invoke-direct {p0, v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setTwoDigital(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcn/nubia/commonui/widget/LunarUtil;->DAY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 447
    :goto_0
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 448
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 449
    add-int/lit8 v1, v0, 0x1

    .line 454
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->update(I)V

    .line 455
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/WheelView;->setValue(I)V

    .line 456
    return-void

    .line 447
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateSolarTitle()V
    .locals 4

    .prologue
    .line 484
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    .line 485
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v1

    .line 486
    invoke-virtual {v1}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 487
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    .line 488
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

    .line 489
    invoke-static {v1, v2, v3}, Lcn/nubia/commonui/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mWeekDay:Ljava/lang/String;

    .line 490
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mHour:I

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->adjustHourOfDay(I)V

    .line 491
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setSolarTitle()V

    .line 492
    return-void
.end method

.method private updateTimePickerArray([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 686
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 687
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 688
    return-void
.end method


# virtual methods
.method public getCurrentAmPm()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 542
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getmIs24HourView()Z

    move-result v2

    if-ne v2, v0, :cond_3

    .line 543
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getCurrentHour()I

    move-result v2

    .line 545
    if-nez v2, :cond_0

    .line 546
    const/16 v2, 0x18

    .line 548
    :cond_0
    const/16 v3, 0xc

    if-le v2, v3, :cond_2

    .line 554
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 548
    goto :goto_0

    .line 550
    :cond_3
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getmIsAm()Z

    move-result v2

    if-ne v2, v0, :cond_1

    move v0, v1

    .line 551
    goto :goto_0
.end method

.method public getCurrentMonthIsLeap()Z
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->isCurrentMonthLeap:Z

    return v0
.end method

.method public getDateString(Z)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 560
    const-string v0, ""

    .line 561
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getCurrentHour()I

    move-result v0

    .line 563
    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    .line 564
    add-int/lit8 v0, v0, -0xc

    .line 567
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getCurrentMinute()I

    move-result v1

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setTwoDigital(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setTwoDigital(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 570
    if-eqz p1, :cond_2

    .line 571
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v2

    .line 572
    invoke-virtual {v2}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v2

    aget-object v0, v0, v2

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 573
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarStringArray:[Ljava/lang/String;

    iget v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v0, v2, v3}, Lcn/nubia/commonui/widget/LunarUtil;->daysToLunmmdd(Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 576
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    sget-object v3, Lcn/nubia/commonui/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 577
    iput-boolean v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->isCurrentMonthLeap:Z

    .line 578
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 598
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 580
    :cond_1
    iput-boolean v5, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->isCurrentMonthLeap:Z

    .line 581
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 584
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mIsCN:Z

    if-eqz v0, :cond_3

    .line 585
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v2

    .line 586
    invoke-virtual {v2}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v2

    aget-object v0, v0, v2

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 587
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    .line 588
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSolarStringArray:[Ljava/lang/String;

    iget-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    .line 589
    invoke-static {v0, v2, v3}, Lcn/nubia/commonui/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 591
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v2

    .line 592
    invoke-virtual {v2}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v2

    aget-object v0, v0, v2

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    .line 593
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mYYYY:I

    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    .line 594
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mMonthDay:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mUSStringArray:[Ljava/lang/String;

    iget-boolean v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mFlag:Z

    invoke-static {v0, v2, v3}, Lcn/nubia/commonui/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSwitchState()Z
    .locals 1

    .prologue
    .line 534
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mSwitchEnabled:Z

    return v0
.end method

.method public getSwitchStateFromSP()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 661
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "lunarTimePickerSwitch"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 663
    const-string v1, "switchState"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 265
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 266
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    const-string v1, "PICKER"

    .line 267
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 266
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 269
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 273
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 274
    const-string v1, "PICKER"

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 275
    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 260
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertDialog;->onStop()V

    .line 261
    return-void
.end method

.method public setLunarLayoutVisiable(Z)V
    .locals 2

    .prologue
    .line 170
    if-eqz p1, :cond_0

    .line 171
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimeLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimeLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final updateTime(II)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->setCurrentHour(Ljava/lang/Integer;)V

    .line 87
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->mLunarTimePickerView:Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 88
    return-void
.end method
