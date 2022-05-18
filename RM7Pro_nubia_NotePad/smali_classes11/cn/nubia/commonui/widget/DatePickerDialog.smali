.class public Lcn/nubia/commonui/widget/DatePickerDialog;
.super Lcn/nubia/commonui/app/AlertDialog;
.source "DatePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnClickListener;,
        Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;,
        Lcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field public static DEFAULT_END_YEAR:I

.field public static DEFAULT_START_YEAR:I

.field private static mIsCN:Z


# instance fields
.field private isCurrentMonthLeap:Z

.field private final mCallBack:Lcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;

.field private mCurrday:I

.field private mCurrmonth:I

.field private mCurryear:I

.field private final mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

.field private mFormatdateString:Ljava/lang/String;

.field private mLoadDayVlaue:I

.field private mLoadMonthVlaue:I

.field private mLoadYearVlaue:I

.field private mLunarDateDivider:Landroid/view/View;

.field private mLunarDateLayout:Landroid/view/View;

.field private mLunarDay:I

.field private mLunarDayLabel:Ljava/lang/String;

.field private mLunarLabel:Landroid/widget/TextView;

.field private mLunarMonth:I

.field private mLunarMonthLabel:Ljava/lang/String;

.field private mLunarYear:I

.field private mLunarYearLabel:Ljava/lang/String;

.field private mNubiaSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

.field private mOnClickListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnClickListener;

.field private mOnDateChangeListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;

.field private mSolarDay:I

.field private mSolarMonth:I

.field private mSolarYear:I

.field private mSwtichEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x7b2

    sput v0, Lcn/nubia/commonui/widget/DatePickerDialog;->DEFAULT_START_YEAR:I

    .line 35
    const/16 v0, 0x7f5

    sput v0, Lcn/nubia/commonui/widget/DatePickerDialog;->DEFAULT_END_YEAR:I

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/commonui/widget/DatePickerDialog;->mIsCN:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 39
    iput-boolean v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSwtichEnabled:Z

    .line 62
    iput-boolean v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->isCurrentMonthLeap:Z

    .line 82
    invoke-virtual {p0, v3}, Lcn/nubia/commonui/widget/DatePickerDialog;->setCancelable(Z)V

    .line 83
    invoke-virtual {p0, v3}, Lcn/nubia/commonui/widget/DatePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 85
    iput-object p3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCallBack:Lcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;

    .line 86
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 87
    .local v1, "themeContext":Landroid/content/Context;
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/DatePickerDialog;->getCurrentLanguage(Landroid/content/Context;)V

    .line 88
    const-string v3, "layout_inflater"

    .line 89
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 90
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcn/nubia/commonui/R$layout;->nubia_date_picker_dialog:I

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 92
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/widget/DatePickerDialog;->setView(Landroid/view/View;)V

    .line 94
    sget v3, Lcn/nubia/commonui/R$id;->nubia_lunar_date_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarDateLayout:Landroid/view/View;

    .line 95
    sget v3, Lcn/nubia/commonui/R$id;->nubia_date_picker_dialog_divider:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarDateDivider:Landroid/view/View;

    .line 96
    sget v3, Lcn/nubia/commonui/R$id;->nubia_date_picker_view:I

    .line 97
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/widget/DatePickerView;

    iput-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    .line 98
    sget v3, Lcn/nubia/commonui/R$id;->nubia_lunar_textview:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarLabel:Landroid/widget/TextView;

    .line 99
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarLabel:Landroid/widget/TextView;

    sget v4, Lcn/nubia/commonui/R$string;->nubia_lunar:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 100
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    sget v3, Lcn/nubia/commonui/R$id;->nubia_switch_button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/widget/NubiaSwitch;

    iput-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mNubiaSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 103
    sget-boolean v3, Lcn/nubia/commonui/widget/DatePickerDialog;->mIsCN:Z

    if-nez v3, :cond_0

    .line 104
    invoke-virtual {p0, v5}, Lcn/nubia/commonui/widget/DatePickerDialog;->setLunarLayoutVisiable(Z)V

    .line 107
    :cond_0
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarDateLayout:Landroid/view/View;

    new-instance v4, Lcn/nubia/commonui/widget/DatePickerDialog$1;

    invoke-direct {v4, p0}, Lcn/nubia/commonui/widget/DatePickerDialog$1;-><init>(Lcn/nubia/commonui/widget/DatePickerDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mOnDateChangeListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    if-nez v3, :cond_1

    .line 116
    new-instance v3, Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    invoke-direct {v3, p0, v6}, Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;-><init>(Lcn/nubia/commonui/widget/DatePickerDialog;Lcn/nubia/commonui/widget/DatePickerDialog$1;)V

    iput-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mOnDateChangeListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    .line 119
    :cond_1
    invoke-direct {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->getTextRes()V

    .line 120
    invoke-direct {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->setupNubiaSwitch()V

    .line 122
    iput p4, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLoadYearVlaue:I

    .line 123
    add-int/lit8 v3, p5, 0x1

    iput v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLoadMonthVlaue:I

    .line 124
    iput p6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLoadDayVlaue:I

    .line 125
    invoke-direct {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->setup()V

    .line 126
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mOnClickListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnClickListener;

    if-nez v3, :cond_2

    .line 127
    new-instance v3, Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnClickListener;

    invoke-direct {v3, p0, v6}, Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnClickListener;-><init>(Lcn/nubia/commonui/widget/DatePickerDialog;Lcn/nubia/commonui/widget/DatePickerDialog$1;)V

    iput-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mOnClickListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnClickListener;

    .line 129
    :cond_2
    const/4 v3, -0x1

    const v4, 0x1040013

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mOnClickListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lcn/nubia/commonui/widget/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 131
    const/4 v3, -0x2

    const/high16 v4, 0x1040000

    .line 132
    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mOnClickListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnClickListener;

    .line 131
    invoke-virtual {p0, v3, v4, v5}, Lcn/nubia/commonui/widget/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 133
    sget-boolean v3, Lcn/nubia/commonui/widget/DatePickerDialog;->mIsCN:Z

    if-eqz v3, :cond_3

    .line 134
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->getSwitchStateFromSP()Z

    move-result v3

    iput-boolean v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSwtichEnabled:Z

    .line 135
    iget-boolean v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSwtichEnabled:Z

    if-eqz v3, :cond_3

    .line 136
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mNubiaSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/NubiaSwitch;->toggle()V

    .line 139
    :cond_3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I

    .prologue
    .line 75
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/nubia/commonui/widget/DatePickerDialog;-><init>(Landroid/content/Context;ILcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;III)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/NubiaSwitch;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mNubiaSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/commonui/widget/DatePickerDialog;III)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/commonui/widget/DatePickerDialog;->setSolarTitle(III)V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/commonui/widget/DatePickerDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mFormatdateString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcn/nubia/commonui/widget/DatePickerDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mFormatdateString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcn/nubia/commonui/widget/DatePickerDialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/DatePickerDialog;->resolveLunarDate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/commonui/widget/DatePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerDialog;

    .prologue
    .line 27
    invoke-direct {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->updateLunarBySolar()V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/commonui/widget/DatePickerDialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/DatePickerDialog;->resolveSolarDate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/commonui/widget/DatePickerDialog;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerDialog;

    .prologue
    .line 27
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSolarYear:I

    return v0
.end method

.method static synthetic access$1502(Lcn/nubia/commonui/widget/DatePickerDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSolarYear:I

    return p1
.end method

.method static synthetic access$1600(Lcn/nubia/commonui/widget/DatePickerDialog;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerDialog;

    .prologue
    .line 27
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSolarMonth:I

    return v0
.end method

.method static synthetic access$1700(Lcn/nubia/commonui/widget/DatePickerDialog;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerDialog;

    .prologue
    .line 27
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSolarDay:I

    return v0
.end method

.method static synthetic access$1800(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mOnDateChangeListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcn/nubia/commonui/widget/DatePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerDialog;

    .prologue
    .line 27
    invoke-direct {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->saveSwitchState()V

    return-void
.end method

.method static synthetic access$2000(Lcn/nubia/commonui/widget/DatePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerDialog;

    .prologue
    .line 27
    invoke-direct {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->tryNotifyDateSet()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/commonui/widget/DatePickerDialog;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerDialog;

    .prologue
    .line 27
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurryear:I

    return v0
.end method

.method static synthetic access$302(Lcn/nubia/commonui/widget/DatePickerDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurryear:I

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerDialog;

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/commonui/widget/DatePickerDialog;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerDialog;

    .prologue
    .line 27
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrmonth:I

    return v0
.end method

.method static synthetic access$502(Lcn/nubia/commonui/widget/DatePickerDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrmonth:I

    return p1
.end method

.method static synthetic access$600(Lcn/nubia/commonui/widget/DatePickerDialog;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerDialog;

    .prologue
    .line 27
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrday:I

    return v0
.end method

.method static synthetic access$602(Lcn/nubia/commonui/widget/DatePickerDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrday:I

    return p1
.end method

.method static synthetic access$700(Lcn/nubia/commonui/widget/DatePickerDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerDialog;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSwtichEnabled:Z

    return v0
.end method

.method static synthetic access$702(Lcn/nubia/commonui/widget/DatePickerDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSwtichEnabled:Z

    return p1
.end method

.method static synthetic access$800(Lcn/nubia/commonui/widget/DatePickerDialog;III)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/commonui/widget/DatePickerDialog;->setLunarTitleByValues(III)V

    return-void
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcn/nubia/commonui/widget/DatePickerDialog;->mIsCN:Z

    return v0
.end method

.method private getCurrentLanguage(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 143
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "currentLanguage":Ljava/lang/String;
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const/4 v1, 0x1

    sput-boolean v1, Lcn/nubia/commonui/widget/DatePickerDialog;->mIsCN:Z

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcn/nubia/commonui/widget/DatePickerDialog;->mIsCN:Z

    goto :goto_0
.end method

.method private getTextRes()V
    .locals 1

    .prologue
    .line 586
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->getTextRes(Landroid/content/Context;)V

    .line 587
    sget-object v0, Lcn/nubia/commonui/widget/LunarUtil;->YEAR:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarYearLabel:Ljava/lang/String;

    .line 588
    sget-object v0, Lcn/nubia/commonui/widget/LunarUtil;->MONTH:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarMonthLabel:Ljava/lang/String;

    .line 589
    sget-object v0, Lcn/nubia/commonui/widget/LunarUtil;->DAY:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarDayLabel:Ljava/lang/String;

    .line 590
    return-void
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

    .line 447
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v5, v0, :cond_0

    .line 448
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarYear:I

    .line 449
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarMonth:I

    .line 450
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarDay:I

    .line 462
    :goto_0
    return-void

    .line 452
    :cond_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarYear:I

    .line 459
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarMonth:I

    .line 460
    const/16 v0, 0x9

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarDay:I

    goto :goto_0
.end method

.method private resolveSolarDate(Ljava/lang/String;)V
    .locals 3
    .param p1, "solarDate"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x4

    .line 465
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSolarYear:I

    .line 466
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSolarMonth:I

    .line 467
    const/16 v0, 0x8

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSolarDay:I

    .line 468
    return-void
.end method

.method private saveSwitchState()V
    .locals 5

    .prologue
    .line 548
    sget-boolean v2, Lcn/nubia/commonui/widget/DatePickerDialog;->mIsCN:Z

    if-nez v2, :cond_0

    .line 556
    :goto_0
    return-void

    .line 551
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "datePickerSwitch"

    const/4 v4, 0x0

    .line 552
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 553
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 554
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "switchState"

    iget-boolean v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSwtichEnabled:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 555
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private setLunarTitleByLunarMonth(IIIZ)V
    .locals 10
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "curMonthIsLeap"    # Z

    .prologue
    .line 417
    const-string v3, ""

    .line 418
    .local v3, "monthString":Ljava/lang/String;
    invoke-static {p1}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonth(I)I

    move-result v0

    .line 420
    .local v0, "leapMonth":I
    if-lez v0, :cond_1

    .line 421
    if-ne p2, v0, :cond_0

    if-eqz p4, :cond_0

    .line 422
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcn/nubia/commonui/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    .line 423
    invoke-static {p2, v6}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 430
    :goto_0
    iget-object v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mFormatdateString:Ljava/lang/String;

    invoke-static {v5}, Lcn/nubia/commonui/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 431
    .local v4, "weekday":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-static {p3, v5}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, "lunarDay":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$string;->nubia_date_lunar_title:I

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 433
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    aput-object v1, v7, v8

    const/4 v8, 0x3

    aput-object v4, v7, v8

    .line 432
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, "lunarTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->getAlertController()Lcn/nubia/commonui/app/AlertController;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcn/nubia/commonui/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 435
    return-void

    .line 425
    .end local v1    # "lunarDay":Ljava/lang/String;
    .end local v2    # "lunarTitle":Ljava/lang/String;
    .end local v4    # "weekday":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x1

    invoke-static {p2, v5}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 428
    :cond_1
    const/4 v5, 0x1

    invoke-static {p2, v5}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private setLunarTitleByValues(III)V
    .locals 14
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 381
    const-string v7, ""

    .line 382
    .local v7, "monthString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 383
    .local v2, "isLeap":Z
    invoke-static {p1}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonth(I)I

    move-result v3

    .line 384
    .local v3, "leapMonth":I
    if-lez v3, :cond_2

    .line 385
    add-int/lit8 v3, v3, 0x1

    .line 386
    move/from16 v0, p2

    if-ne v0, v3, :cond_0

    .line 387
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcn/nubia/commonui/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, p2, -0x1

    const/4 v11, 0x1

    .line 388
    invoke-static {v10, v11}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 389
    add-int/lit8 p2, p2, -0x1

    .line 390
    const/4 v2, 0x1

    .line 402
    :goto_0
    invoke-static/range {p1 .. p3}, Lcn/nubia/commonui/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object v4

    .line 404
    .local v4, "lunarDate":Ljava/lang/String;
    :try_start_0
    invoke-static {v4, v2}, Lcn/nubia/commonui/widget/LunarUtil;->lunarToSolar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mFormatdateString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :goto_1
    iget-object v9, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mFormatdateString:Ljava/lang/String;

    invoke-static {v9}, Lcn/nubia/commonui/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 409
    .local v8, "weekday":Ljava/lang/String;
    const/4 v9, 0x2

    move/from16 v0, p3

    invoke-static {v0, v9}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v5

    .line 410
    .local v5, "lunarDay":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcn/nubia/commonui/R$string;->nubia_date_lunar_title:I

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 411
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v7, v11, v12

    const/4 v12, 0x2

    aput-object v5, v11, v12

    const/4 v12, 0x3

    aput-object v8, v11, v12

    .line 410
    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 412
    .local v6, "lunarTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->getAlertController()Lcn/nubia/commonui/app/AlertController;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcn/nubia/commonui/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 413
    return-void

    .line 391
    .end local v4    # "lunarDate":Ljava/lang/String;
    .end local v5    # "lunarDay":Ljava/lang/String;
    .end local v6    # "lunarTitle":Ljava/lang/String;
    .end local v8    # "weekday":Ljava/lang/String;
    :cond_0
    move/from16 v0, p2

    if-le v0, v3, :cond_1

    .line 392
    add-int/lit8 v9, p2, -0x1

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v7

    .line 394
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 396
    :cond_1
    const/4 v9, 0x1

    move/from16 v0, p2

    invoke-static {v0, v9}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 399
    :cond_2
    const/4 v9, 0x1

    move/from16 v0, p2

    invoke-static {v0, v9}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 405
    .restart local v4    # "lunarDate":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 406
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setSolarTitle(III)V
    .locals 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 438
    invoke-static {p1, p2, p3}, Lcn/nubia/commonui/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/commonui/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, "weekday":Ljava/lang/String;
    sget-object v3, Lcn/nubia/commonui/widget/LunarUtil;->MONTHS_LONG:[Ljava/lang/String;

    add-int/lit8 v4, p2, -0x1

    aget-object v0, v3, v4

    .line 441
    .local v0, "monthStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/commonui/R$string;->nubia_date_solar_title:I

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 442
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v2, v5, v6

    .line 441
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, "solarTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->getAlertController()Lcn/nubia/commonui/app/AlertController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcn/nubia/commonui/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 444
    return-void
.end method

.method private setup()V
    .locals 5

    .prologue
    .line 156
    sget-boolean v0, Lcn/nubia/commonui/widget/DatePickerDialog;->mIsCN:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSwtichEnabled:Z

    if-nez v0, :cond_1

    .line 157
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLoadYearVlaue:I

    iget v1, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLoadMonthVlaue:I

    iget v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLoadDayVlaue:I

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/commonui/widget/DatePickerDialog;->setSolarTitle(III)V

    .line 158
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    iget v1, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLoadYearVlaue:I

    iget v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLoadMonthVlaue:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLoadDayVlaue:I

    iget-object v4, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mOnDateChangeListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/commonui/widget/DatePickerView;->update(IIILcn/nubia/commonui/widget/DatePickerView$OnDateChangeListener;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    sget-boolean v0, Lcn/nubia/commonui/widget/DatePickerDialog;->mIsCN:Z

    if-nez v0, :cond_0

    .line 161
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLoadYearVlaue:I

    iget v1, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLoadMonthVlaue:I

    iget v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLoadDayVlaue:I

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/commonui/widget/DatePickerDialog;->setSolarTitle(III)V

    .line 162
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    iget v1, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLoadYearVlaue:I

    iget v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLoadMonthVlaue:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLoadDayVlaue:I

    iget-object v4, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mOnDateChangeListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/commonui/widget/DatePickerView;->update(IIILcn/nubia/commonui/widget/DatePickerView$OnDateChangeListener;)V

    goto :goto_0
.end method

.method private setupNubiaSwitch()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mNubiaSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    if-nez v0, :cond_0

    .line 339
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mNubiaSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    new-instance v1, Lcn/nubia/commonui/widget/DatePickerDialog$2;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/widget/DatePickerDialog$2;-><init>(Lcn/nubia/commonui/widget/DatePickerDialog;)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method private tryNotifyDateSet()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    .line 172
    iget-object v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCallBack:Lcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;

    if-eqz v6, :cond_2

    .line 173
    iget-object v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v6}, Lcn/nubia/commonui/widget/DatePickerView;->clearFocus()V

    .line 175
    iget-boolean v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSwtichEnabled:Z

    if-eqz v6, :cond_5

    .line 176
    iget-object v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v6}, Lcn/nubia/commonui/widget/DatePickerView;->getYear()I

    move-result v6

    iput v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurryear:I

    .line 177
    iget-object v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v6}, Lcn/nubia/commonui/widget/DatePickerView;->getMonth()I

    move-result v6

    iput v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrmonth:I

    .line 178
    iget-object v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v6}, Lcn/nubia/commonui/widget/DatePickerView;->getDayOfMonth()I

    move-result v6

    iput v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrday:I

    .line 179
    const/4 v3, 0x0

    .line 181
    .local v3, "lunarToSolar":Ljava/lang/String;
    :try_start_0
    iget v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurryear:I

    invoke-static {v6}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonth(I)I

    move-result v2

    .line 182
    .local v2, "leapMonth":I
    if-nez v2, :cond_3

    const/4 v0, 0x0

    .line 183
    .local v0, "hasLeapMonth":Z
    :goto_0
    const/4 v1, 0x0

    .line 184
    .local v1, "isCurMonthLeap":Z
    iget-object v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v6}, Lcn/nubia/commonui/widget/DatePickerView;->getMonthWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v6

    .line 185
    invoke-virtual {v6}, Lcn/nubia/commonui/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, "values":[Ljava/lang/String;
    iget v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrmonth:I

    aget-object v6, v4, v6

    sget-object v7, Lcn/nubia/commonui/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v5, :cond_0

    .line 188
    const/4 v1, 0x1

    .line 191
    :cond_0
    if-eqz v0, :cond_4

    .line 192
    iget v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrmonth:I

    if-ge v5, v2, :cond_1

    .line 193
    iget v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrmonth:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrmonth:I

    .line 199
    :cond_1
    :goto_1
    iget v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurryear:I

    iget v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrmonth:I

    iget v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrday:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v5, v6, v7}, Lcn/nubia/commonui/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mFormatdateString:Ljava/lang/String;

    .line 201
    iget-object v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mFormatdateString:Ljava/lang/String;

    invoke-static {v5, v1}, Lcn/nubia/commonui/widget/LunarUtil;->lunarToSolar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-direct {p0, v3}, Lcn/nubia/commonui/widget/DatePickerDialog;->resolveSolarDate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v0    # "hasLeapMonth":Z
    .end local v1    # "isCurMonthLeap":Z
    .end local v2    # "leapMonth":I
    .end local v4    # "values":[Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCallBack:Lcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;

    iget-object v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    iget v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSolarYear:I

    iget v8, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSolarMonth:I

    add-int/lit8 v8, v8, -0x1

    iget v9, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSolarDay:I

    invoke-interface {v5, v6, v7, v8, v9}, Lcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;->onDateSet(Lcn/nubia/commonui/widget/DatePickerView;III)V

    .line 215
    .end local v3    # "lunarToSolar":Ljava/lang/String;
    :cond_2
    :goto_3
    return-void

    .restart local v2    # "leapMonth":I
    .restart local v3    # "lunarToSolar":Ljava/lang/String;
    :cond_3
    move v0, v5

    .line 182
    goto :goto_0

    .line 196
    .restart local v0    # "hasLeapMonth":Z
    .restart local v1    # "isCurMonthLeap":Z
    .restart local v4    # "values":[Ljava/lang/String;
    :cond_4
    :try_start_1
    iget v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrmonth:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrmonth:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 204
    .end local v0    # "hasLeapMonth":Z
    .end local v1    # "isCurMonthLeap":Z
    .end local v2    # "leapMonth":I
    .end local v4    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_2

    .line 209
    .end local v3    # "lunarToSolar":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCallBack:Lcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;

    iget-object v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    .line 210
    invoke-virtual {v7}, Lcn/nubia/commonui/widget/DatePickerView;->getYear()I

    move-result v7

    iget-object v8, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    .line 211
    invoke-virtual {v8}, Lcn/nubia/commonui/widget/DatePickerView;->getMonth()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    iget-object v9, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    .line 212
    invoke-virtual {v9}, Lcn/nubia/commonui/widget/DatePickerView;->getDayOfMonth()I

    move-result v9

    .line 210
    invoke-interface {v5, v6, v7, v8, v9}, Lcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;->onDateSet(Lcn/nubia/commonui/widget/DatePickerView;III)V

    goto :goto_3
.end method

.method private updateLunarBySolar()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 342
    const/4 v0, 0x0

    .line 344
    .local v0, "curMonthIsLeap":Z
    iget v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarYear:I

    sget v4, Lcn/nubia/commonui/widget/DatePickerDialog;->DEFAULT_START_YEAR:I

    if-ge v3, v4, :cond_1

    .line 345
    sget v3, Lcn/nubia/commonui/widget/DatePickerDialog;->DEFAULT_START_YEAR:I

    iput v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurryear:I

    .line 352
    :goto_0
    iget v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarMonth:I

    iput v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrmonth:I

    .line 353
    iget v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarDay:I

    iput v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrday:I

    .line 355
    iget v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrmonth:I

    const/16 v4, 0x14

    if-le v3, v4, :cond_0

    .line 356
    iget v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrmonth:I

    add-int/lit8 v3, v3, -0x14

    iput v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrmonth:I

    .line 357
    const/4 v0, 0x1

    .line 360
    :cond_0
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/DatePickerView;->getYearWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 361
    iget v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurryear:I

    invoke-static {v3}, Lcn/nubia/commonui/widget/LunarUtil;->solarMonthTolunarMonth(I)[Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, "months":[Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/DatePickerView;->getMonthWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 363
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/DatePickerView;->getMonthWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 364
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/DatePickerView;->getMonthWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v3

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 365
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/DatePickerView;->getMonthWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 367
    iget v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurryear:I

    iget v4, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrmonth:I

    invoke-static {v3, v4, v0}, Lcn/nubia/commonui/widget/LunarUtil;->solarDayTolunarDay(IIZ)[Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "days":[Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/DatePickerView;->getDayWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 370
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/DatePickerView;->getDayWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 371
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/DatePickerView;->getDayWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v3

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 372
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/DatePickerView;->getDayWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 374
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    iget v4, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurryear:I

    iget v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarMonth:I

    iget v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrday:I

    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mOnDateChangeListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcn/nubia/commonui/widget/DatePickerView;->update(IIILcn/nubia/commonui/widget/DatePickerView$OnDateChangeListener;)V

    .line 376
    iget v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarYear:I

    iget v4, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrmonth:I

    iget v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarDay:I

    invoke-direct {p0, v3, v4, v5, v0}, Lcn/nubia/commonui/widget/DatePickerDialog;->setLunarTitleByLunarMonth(IIIZ)V

    .line 378
    return-void

    .line 346
    .end local v1    # "days":[Ljava/lang/String;
    .end local v2    # "months":[Ljava/lang/String;
    :cond_1
    iget v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarYear:I

    sget v4, Lcn/nubia/commonui/widget/DatePickerDialog;->DEFAULT_END_YEAR:I

    if-le v3, v4, :cond_2

    .line 347
    sget v3, Lcn/nubia/commonui/widget/DatePickerDialog;->DEFAULT_END_YEAR:I

    iput v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurryear:I

    goto/16 :goto_0

    .line 349
    :cond_2
    iget v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarYear:I

    iput v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurryear:I

    goto/16 :goto_0
.end method


# virtual methods
.method public getCurrentMonthIsLeap()Z
    .locals 1

    .prologue
    .line 489
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->isCurrentMonthLeap:Z

    return v0
.end method

.method public getDatePicker()Lcn/nubia/commonui/widget/DatePickerView;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    return-object v0
.end method

.method public getDateString(Z)Ljava/lang/String;
    .locals 11
    .param p1, "isLuanrMode"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 493
    iput-boolean v4, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->isCurrentMonthLeap:Z

    .line 494
    const-string v3, ""

    .line 495
    .local v3, "date":Ljava/lang/String;
    iget-object v9, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v9}, Lcn/nubia/commonui/widget/DatePickerView;->getYear()I

    move-result v2

    .line 496
    .local v2, "curYear":I
    iget-object v9, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v9}, Lcn/nubia/commonui/widget/DatePickerView;->getMonth()I

    move-result v1

    .line 497
    .local v1, "curMonth":I
    iget-object v9, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v9}, Lcn/nubia/commonui/widget/DatePickerView;->getDayOfMonth()I

    move-result v0

    .line 499
    .local v0, "curDay":I
    if-eqz p1, :cond_4

    .line 500
    invoke-static {v2}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonth(I)I

    move-result v6

    .line 501
    .local v6, "leapMonth":I
    if-nez v6, :cond_2

    .line 502
    .local v4, "hasLeapMonth":Z
    :goto_0
    const/4 v5, 0x0

    .line 503
    .local v5, "isCurMonthLeap":Z
    iget-object v9, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v9}, Lcn/nubia/commonui/widget/DatePickerView;->getMonthWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v9

    .line 504
    invoke-virtual {v9}, Lcn/nubia/commonui/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v7

    .line 506
    .local v7, "values":[Ljava/lang/String;
    aget-object v9, v7, v1

    sget-object v10, Lcn/nubia/commonui/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v8, :cond_0

    .line 507
    const/4 v5, 0x1

    .line 508
    iput-boolean v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->isCurrentMonthLeap:Z

    .line 511
    :cond_0
    if-eqz v4, :cond_3

    .line 513
    if-ge v1, v6, :cond_1

    .line 514
    add-int/lit8 v1, v1, 0x1

    .line 520
    :cond_1
    :goto_1
    add-int/lit8 v8, v0, 0x1

    invoke-static {v2, v1, v8}, Lcn/nubia/commonui/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object v8

    .line 522
    .end local v4    # "hasLeapMonth":Z
    .end local v5    # "isCurMonthLeap":Z
    .end local v6    # "leapMonth":I
    .end local v7    # "values":[Ljava/lang/String;
    :goto_2
    return-object v8

    .restart local v6    # "leapMonth":I
    :cond_2
    move v4, v8

    .line 501
    goto :goto_0

    .line 517
    .restart local v4    # "hasLeapMonth":Z
    .restart local v5    # "isCurMonthLeap":Z
    .restart local v7    # "values":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 522
    .end local v4    # "hasLeapMonth":Z
    .end local v5    # "isCurMonthLeap":Z
    .end local v6    # "leapMonth":I
    .end local v7    # "values":[Ljava/lang/String;
    :cond_4
    invoke-static {v2, v1, v0}, Lcn/nubia/commonui/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object v8

    goto :goto_2
.end method

.method public getSwitchState()Z
    .locals 1

    .prologue
    .line 484
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSwtichEnabled:Z

    return v0
.end method

.method public getSwitchStateFromSP()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 542
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "datePickerSwitch"

    .line 543
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 544
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
    .line 231
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 232
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    const-string v1, "PICKER"

    .line 233
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/DatePickerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 234
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 224
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 225
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "PICKER"

    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/DatePickerView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 226
    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 219
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertDialog;->onStop()V

    .line 220
    return-void
.end method

.method public setLunarLayoutVisiable(Z)V
    .locals 3
    .param p1, "visiable"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 527
    if-eqz p1, :cond_1

    .line 528
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarDateLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarDateDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarDateDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarDateLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarDateDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarDateDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSwitchState(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 559
    sget-boolean v0, Lcn/nubia/commonui/widget/DatePickerDialog;->mIsCN:Z

    if-nez v0, :cond_1

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSwtichEnabled:Z

    if-eq v0, p1, :cond_0

    .line 565
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mNubiaSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->toggle()V

    goto :goto_0
.end method

.method public setYearMinMaxValue(II)V
    .locals 5
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 570
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 571
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_0

    .line 572
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 574
    :cond_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v2, v3

    check-cast v2, [Ljava/lang/String;

    .line 575
    .local v2, "years":[Ljava/lang/String;
    sput p1, Lcn/nubia/commonui/widget/DatePickerDialog;->DEFAULT_START_YEAR:I

    .line 576
    sput p2, Lcn/nubia/commonui/widget/DatePickerDialog;->DEFAULT_END_YEAR:I

    .line 577
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    sput p1, Lcn/nubia/commonui/widget/DatePickerView;->DEFAULT_START_YEAR:I

    .line 578
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    sput p2, Lcn/nubia/commonui/widget/DatePickerView;->DEFAULT_END_YEAR:I

    .line 579
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/DatePickerView;->getYearWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 580
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/DatePickerView;->getYearWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 581
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/DatePickerView;->getYearWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 582
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/commonui/widget/DatePickerView;->updateDate(III)V

    .line 169
    return-void
.end method
