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

    .line 80
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 39
    iput-boolean v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSwtichEnabled:Z

    .line 62
    iput-boolean v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->isCurrentMonthLeap:Z

    .line 81
    invoke-virtual {p0, v3}, Lcn/nubia/commonui/widget/DatePickerDialog;->setCancelable(Z)V

    .line 82
    invoke-virtual {p0, v3}, Lcn/nubia/commonui/widget/DatePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 84
    iput-object p3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCallBack:Lcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;

    .line 85
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 86
    .local v1, "themeContext":Landroid/content/Context;
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/DatePickerDialog;->getCurrentLanguage(Landroid/content/Context;)V

    .line 87
    const-string v3, "layout_inflater"

    .line 88
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 89
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcn/nubia/commonui/R$layout;->nubia_date_picker_dialog:I

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 91
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/widget/DatePickerDialog;->setView(Landroid/view/View;)V

    .line 93
    sget v3, Lcn/nubia/commonui/R$id;->nubia_lunar_date_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarDateLayout:Landroid/view/View;

    .line 94
    sget v3, Lcn/nubia/commonui/R$id;->nubia_date_picker_view:I

    .line 95
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/widget/DatePickerView;

    iput-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    .line 96
    sget v3, Lcn/nubia/commonui/R$id;->nubia_lunar_textview:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarLabel:Landroid/widget/TextView;

    .line 97
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarLabel:Landroid/widget/TextView;

    sget v4, Lcn/nubia/commonui/R$string;->nubia_lunar:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 98
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    sget v3, Lcn/nubia/commonui/R$id;->nubia_switch_button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/widget/NubiaSwitch;

    iput-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mNubiaSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 101
    sget-boolean v3, Lcn/nubia/commonui/widget/DatePickerDialog;->mIsCN:Z

    if-nez v3, :cond_0

    .line 102
    invoke-virtual {p0, v5}, Lcn/nubia/commonui/widget/DatePickerDialog;->setLunarLayoutVisiable(Z)V

    .line 105
    :cond_0
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarDateLayout:Landroid/view/View;

    new-instance v4, Lcn/nubia/commonui/widget/DatePickerDialog$1;

    invoke-direct {v4, p0}, Lcn/nubia/commonui/widget/DatePickerDialog$1;-><init>(Lcn/nubia/commonui/widget/DatePickerDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mOnDateChangeListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    if-nez v3, :cond_1

    .line 114
    new-instance v3, Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    invoke-direct {v3, p0, v6}, Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;-><init>(Lcn/nubia/commonui/widget/DatePickerDialog;Lcn/nubia/commonui/widget/DatePickerDialog$1;)V

    iput-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mOnDateChangeListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    .line 117
    :cond_1
    invoke-direct {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->getTextRes()V

    .line 118
    invoke-direct {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->setupNubiaSwitch()V

    .line 120
    iput p4, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLoadYearVlaue:I

    .line 121
    add-int/lit8 v3, p5, 0x1

    iput v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLoadMonthVlaue:I

    .line 122
    iput p6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLoadDayVlaue:I

    .line 123
    invoke-direct {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->setup()V

    .line 124
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mOnClickListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnClickListener;

    if-nez v3, :cond_2

    .line 125
    new-instance v3, Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnClickListener;

    invoke-direct {v3, p0, v6}, Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnClickListener;-><init>(Lcn/nubia/commonui/widget/DatePickerDialog;Lcn/nubia/commonui/widget/DatePickerDialog$1;)V

    iput-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mOnClickListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnClickListener;

    .line 127
    :cond_2
    const/4 v3, -0x1

    const v4, 0x1040013

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mOnClickListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lcn/nubia/commonui/widget/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 129
    const/4 v3, -0x2

    const/high16 v4, 0x1040000

    .line 130
    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mOnClickListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnClickListener;

    .line 129
    invoke-virtual {p0, v3, v4, v5}, Lcn/nubia/commonui/widget/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 131
    sget-boolean v3, Lcn/nubia/commonui/widget/DatePickerDialog;->mIsCN:Z

    if-eqz v3, :cond_3

    .line 132
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->getSwitchStateFromSP()Z

    move-result v3

    iput-boolean v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSwtichEnabled:Z

    .line 133
    iget-boolean v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSwtichEnabled:Z

    if-eqz v3, :cond_3

    .line 134
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mNubiaSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/NubiaSwitch;->toggle()V

    .line 137
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
    .line 74
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/nubia/commonui/widget/DatePickerDialog;-><init>(Landroid/content/Context;ILcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;III)V

    .line 75
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
    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 141
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "currentLanguage":Ljava/lang/String;
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const/4 v1, 0x1

    sput-boolean v1, Lcn/nubia/commonui/widget/DatePickerDialog;->mIsCN:Z

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcn/nubia/commonui/widget/DatePickerDialog;->mIsCN:Z

    goto :goto_0
.end method

.method private getTextRes()V
    .locals 1

    .prologue
    .line 578
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->getTextRes(Landroid/content/Context;)V

    .line 579
    sget-object v0, Lcn/nubia/commonui/widget/LunarUtil;->YEAR:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarYearLabel:Ljava/lang/String;

    .line 580
    sget-object v0, Lcn/nubia/commonui/widget/LunarUtil;->MONTH:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarMonthLabel:Ljava/lang/String;

    .line 581
    sget-object v0, Lcn/nubia/commonui/widget/LunarUtil;->DAY:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarDayLabel:Ljava/lang/String;

    .line 582
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

    .line 445
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v5, v0, :cond_0

    .line 446
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarYear:I

    .line 447
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarMonth:I

    .line 448
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarDay:I

    .line 460
    :goto_0
    return-void

    .line 450
    :cond_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarYear:I

    .line 457
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarMonth:I

    .line 458
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

    .line 463
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSolarYear:I

    .line 464
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSolarMonth:I

    .line 465
    const/16 v0, 0x8

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSolarDay:I

    .line 466
    return-void
.end method

.method private saveSwitchState()V
    .locals 5

    .prologue
    .line 540
    sget-boolean v2, Lcn/nubia/commonui/widget/DatePickerDialog;->mIsCN:Z

    if-nez v2, :cond_0

    .line 548
    :goto_0
    return-void

    .line 543
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "datePickerSwitch"

    const/4 v4, 0x0

    .line 544
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 545
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 546
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "switchState"

    iget-boolean v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSwtichEnabled:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 547
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
    .line 415
    const-string v3, ""

    .line 416
    .local v3, "monthString":Ljava/lang/String;
    invoke-static {p1}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonth(I)I

    move-result v0

    .line 418
    .local v0, "leapMonth":I
    if-lez v0, :cond_1

    .line 419
    if-ne p2, v0, :cond_0

    if-eqz p4, :cond_0

    .line 420
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcn/nubia/commonui/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    .line 421
    invoke-static {p2, v6}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 428
    :goto_0
    iget-object v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mFormatdateString:Ljava/lang/String;

    invoke-static {v5}, Lcn/nubia/commonui/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 429
    .local v4, "weekday":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-static {p3, v5}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, "lunarDay":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/commonui/R$string;->nubia_date_lunar_title:I

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 431
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    aput-object v1, v7, v8

    const/4 v8, 0x3

    aput-object v4, v7, v8

    .line 430
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 432
    .local v2, "lunarTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->getAlertController()Lcn/nubia/commonui/app/AlertController;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcn/nubia/commonui/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 433
    return-void

    .line 423
    .end local v1    # "lunarDay":Ljava/lang/String;
    .end local v2    # "lunarTitle":Ljava/lang/String;
    .end local v4    # "weekday":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x1

    invoke-static {p2, v5}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 426
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
    .line 379
    const-string v7, ""

    .line 380
    .local v7, "monthString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 381
    .local v2, "isLeap":Z
    invoke-static {p1}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonth(I)I

    move-result v3

    .line 382
    .local v3, "leapMonth":I
    if-lez v3, :cond_2

    .line 383
    add-int/lit8 v3, v3, 0x1

    .line 384
    move/from16 v0, p2

    if-ne v0, v3, :cond_0

    .line 385
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcn/nubia/commonui/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, p2, -0x1

    const/4 v11, 0x1

    .line 386
    invoke-static {v10, v11}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 387
    add-int/lit8 p2, p2, -0x1

    .line 388
    const/4 v2, 0x1

    .line 400
    :goto_0
    invoke-static/range {p1 .. p3}, Lcn/nubia/commonui/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object v4

    .line 402
    .local v4, "lunarDate":Ljava/lang/String;
    :try_start_0
    invoke-static {v4, v2}, Lcn/nubia/commonui/widget/LunarUtil;->lunarToSolar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mFormatdateString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_1
    iget-object v9, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mFormatdateString:Ljava/lang/String;

    invoke-static {v9}, Lcn/nubia/commonui/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 407
    .local v8, "weekday":Ljava/lang/String;
    const/4 v9, 0x2

    move/from16 v0, p3

    invoke-static {v0, v9}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v5

    .line 408
    .local v5, "lunarDay":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcn/nubia/commonui/R$string;->nubia_date_lunar_title:I

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 409
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v7, v11, v12

    const/4 v12, 0x2

    aput-object v5, v11, v12

    const/4 v12, 0x3

    aput-object v8, v11, v12

    .line 408
    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 410
    .local v6, "lunarTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->getAlertController()Lcn/nubia/commonui/app/AlertController;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcn/nubia/commonui/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 411
    return-void

    .line 389
    .end local v4    # "lunarDate":Ljava/lang/String;
    .end local v5    # "lunarDay":Ljava/lang/String;
    .end local v6    # "lunarTitle":Ljava/lang/String;
    .end local v8    # "weekday":Ljava/lang/String;
    :cond_0
    move/from16 v0, p2

    if-le v0, v3, :cond_1

    .line 390
    add-int/lit8 v9, p2, -0x1

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v7

    .line 392
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 394
    :cond_1
    const/4 v9, 0x1

    move/from16 v0, p2

    invoke-static {v0, v9}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 397
    :cond_2
    const/4 v9, 0x1

    move/from16 v0, p2

    invoke-static {v0, v9}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 403
    .restart local v4    # "lunarDate":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 404
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
    .line 436
    invoke-static {p1, p2, p3}, Lcn/nubia/commonui/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/commonui/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, "weekday":Ljava/lang/String;
    sget-object v3, Lcn/nubia/commonui/widget/LunarUtil;->MONTHS_LONG:[Ljava/lang/String;

    add-int/lit8 v4, p2, -0x1

    aget-object v0, v3, v4

    .line 439
    .local v0, "monthStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/commonui/R$string;->nubia_date_solar_title:I

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 440
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

    .line 439
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "solarTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->getAlertController()Lcn/nubia/commonui/app/AlertController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcn/nubia/commonui/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 442
    return-void
.end method

.method private setup()V
    .locals 5

    .prologue
    .line 154
    sget-boolean v0, Lcn/nubia/commonui/widget/DatePickerDialog;->mIsCN:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSwtichEnabled:Z

    if-nez v0, :cond_1

    .line 155
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLoadYearVlaue:I

    iget v1, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLoadMonthVlaue:I

    iget v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLoadDayVlaue:I

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/commonui/widget/DatePickerDialog;->setSolarTitle(III)V

    .line 156
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    iget v1, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLoadYearVlaue:I

    iget v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLoadMonthVlaue:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLoadDayVlaue:I

    iget-object v4, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mOnDateChangeListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/commonui/widget/DatePickerView;->update(IIILcn/nubia/commonui/widget/DatePickerView$OnDateChangeListener;)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    sget-boolean v0, Lcn/nubia/commonui/widget/DatePickerDialog;->mIsCN:Z

    if-nez v0, :cond_0

    .line 159
    iget v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLoadYearVlaue:I

    iget v1, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLoadMonthVlaue:I

    iget v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLoadDayVlaue:I

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/commonui/widget/DatePickerDialog;->setSolarTitle(III)V

    .line 160
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
    .line 261
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mNubiaSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    if-nez v0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 265
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

    .line 170
    iget-object v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCallBack:Lcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;

    if-eqz v6, :cond_2

    .line 171
    iget-object v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v6}, Lcn/nubia/commonui/widget/DatePickerView;->clearFocus()V

    .line 173
    iget-boolean v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSwtichEnabled:Z

    if-eqz v6, :cond_5

    .line 174
    iget-object v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v6}, Lcn/nubia/commonui/widget/DatePickerView;->getYear()I

    move-result v6

    iput v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurryear:I

    .line 175
    iget-object v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v6}, Lcn/nubia/commonui/widget/DatePickerView;->getMonth()I

    move-result v6

    iput v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrmonth:I

    .line 176
    iget-object v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v6}, Lcn/nubia/commonui/widget/DatePickerView;->getDayOfMonth()I

    move-result v6

    iput v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrday:I

    .line 177
    const/4 v3, 0x0

    .line 179
    .local v3, "lunarToSolar":Ljava/lang/String;
    :try_start_0
    iget v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurryear:I

    invoke-static {v6}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonth(I)I

    move-result v2

    .line 180
    .local v2, "leapMonth":I
    if-nez v2, :cond_3

    const/4 v0, 0x0

    .line 181
    .local v0, "hasLeapMonth":Z
    :goto_0
    const/4 v1, 0x0

    .line 182
    .local v1, "isCurMonthLeap":Z
    iget-object v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v6}, Lcn/nubia/commonui/widget/DatePickerView;->getMonthWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v6

    .line 183
    invoke-virtual {v6}, Lcn/nubia/commonui/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v4

    .line 185
    .local v4, "values":[Ljava/lang/String;
    iget v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrmonth:I

    aget-object v6, v4, v6

    sget-object v7, Lcn/nubia/commonui/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v5, :cond_0

    .line 186
    const/4 v1, 0x1

    .line 189
    :cond_0
    if-eqz v0, :cond_4

    .line 190
    iget v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrmonth:I

    if-ge v5, v2, :cond_1

    .line 191
    iget v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrmonth:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrmonth:I

    .line 197
    :cond_1
    :goto_1
    iget v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurryear:I

    iget v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrmonth:I

    iget v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrday:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v5, v6, v7}, Lcn/nubia/commonui/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mFormatdateString:Ljava/lang/String;

    .line 199
    iget-object v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mFormatdateString:Ljava/lang/String;

    invoke-static {v5, v1}, Lcn/nubia/commonui/widget/LunarUtil;->lunarToSolar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-direct {p0, v3}, Lcn/nubia/commonui/widget/DatePickerDialog;->resolveSolarDate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
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

    .line 213
    .end local v3    # "lunarToSolar":Ljava/lang/String;
    :cond_2
    :goto_3
    return-void

    .restart local v2    # "leapMonth":I
    .restart local v3    # "lunarToSolar":Ljava/lang/String;
    :cond_3
    move v0, v5

    .line 180
    goto :goto_0

    .line 194
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

    .line 202
    .end local v0    # "hasLeapMonth":Z
    .end local v1    # "isCurMonthLeap":Z
    .end local v2    # "leapMonth":I
    .end local v4    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_2

    .line 207
    .end local v3    # "lunarToSolar":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCallBack:Lcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;

    iget-object v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    .line 208
    invoke-virtual {v7}, Lcn/nubia/commonui/widget/DatePickerView;->getYear()I

    move-result v7

    iget-object v8, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    .line 209
    invoke-virtual {v8}, Lcn/nubia/commonui/widget/DatePickerView;->getMonth()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    iget-object v9, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    .line 210
    invoke-virtual {v9}, Lcn/nubia/commonui/widget/DatePickerView;->getDayOfMonth()I

    move-result v9

    .line 208
    invoke-interface {v5, v6, v7, v8, v9}, Lcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;->onDateSet(Lcn/nubia/commonui/widget/DatePickerView;III)V

    goto :goto_3
.end method

.method private updateLunarBySolar()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 340
    const/4 v0, 0x0

    .line 342
    .local v0, "curMonthIsLeap":Z
    iget v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarYear:I

    sget v4, Lcn/nubia/commonui/widget/DatePickerDialog;->DEFAULT_START_YEAR:I

    if-ge v3, v4, :cond_1

    .line 343
    sget v3, Lcn/nubia/commonui/widget/DatePickerDialog;->DEFAULT_START_YEAR:I

    iput v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurryear:I

    .line 350
    :goto_0
    iget v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarMonth:I

    iput v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrmonth:I

    .line 351
    iget v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarDay:I

    iput v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrday:I

    .line 353
    iget v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrmonth:I

    const/16 v4, 0x14

    if-le v3, v4, :cond_0

    .line 354
    iget v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrmonth:I

    add-int/lit8 v3, v3, -0x14

    iput v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrmonth:I

    .line 355
    const/4 v0, 0x1

    .line 358
    :cond_0
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/DatePickerView;->getYearWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 359
    iget v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurryear:I

    invoke-static {v3}, Lcn/nubia/commonui/widget/LunarUtil;->solarMonthTolunarMonth(I)[Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, "months":[Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/DatePickerView;->getMonthWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 361
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/DatePickerView;->getMonthWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 362
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/DatePickerView;->getMonthWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v3

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 363
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/DatePickerView;->getMonthWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 365
    iget v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurryear:I

    iget v4, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrmonth:I

    invoke-static {v3, v4, v0}, Lcn/nubia/commonui/widget/LunarUtil;->solarDayTolunarDay(IIZ)[Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "days":[Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/DatePickerView;->getDayWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 368
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/DatePickerView;->getDayWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 369
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/DatePickerView;->getDayWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v3

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 370
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/DatePickerView;->getDayWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 372
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    iget v4, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurryear:I

    iget v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarMonth:I

    iget v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrday:I

    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mOnDateChangeListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcn/nubia/commonui/widget/DatePickerView;->update(IIILcn/nubia/commonui/widget/DatePickerView$OnDateChangeListener;)V

    .line 374
    iget v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarYear:I

    iget v4, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurrmonth:I

    iget v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarDay:I

    invoke-direct {p0, v3, v4, v5, v0}, Lcn/nubia/commonui/widget/DatePickerDialog;->setLunarTitleByLunarMonth(IIIZ)V

    .line 376
    return-void

    .line 344
    .end local v1    # "days":[Ljava/lang/String;
    .end local v2    # "months":[Ljava/lang/String;
    :cond_1
    iget v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarYear:I

    sget v4, Lcn/nubia/commonui/widget/DatePickerDialog;->DEFAULT_END_YEAR:I

    if-le v3, v4, :cond_2

    .line 345
    sget v3, Lcn/nubia/commonui/widget/DatePickerDialog;->DEFAULT_END_YEAR:I

    iput v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurryear:I

    goto/16 :goto_0

    .line 347
    :cond_2
    iget v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarYear:I

    iput v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCurryear:I

    goto/16 :goto_0
.end method


# virtual methods
.method public getCurrentMonthIsLeap()Z
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->isCurrentMonthLeap:Z

    return v0
.end method

.method public getDatePicker()Lcn/nubia/commonui/widget/DatePickerView;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    return-object v0
.end method

.method public getDateString(Z)Ljava/lang/String;
    .locals 11
    .param p1, "isLuanrMode"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 491
    iput-boolean v4, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->isCurrentMonthLeap:Z

    .line 492
    const-string v3, ""

    .line 493
    .local v3, "date":Ljava/lang/String;
    iget-object v9, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v9}, Lcn/nubia/commonui/widget/DatePickerView;->getYear()I

    move-result v2

    .line 494
    .local v2, "curYear":I
    iget-object v9, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v9}, Lcn/nubia/commonui/widget/DatePickerView;->getMonth()I

    move-result v1

    .line 495
    .local v1, "curMonth":I
    iget-object v9, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v9}, Lcn/nubia/commonui/widget/DatePickerView;->getDayOfMonth()I

    move-result v0

    .line 497
    .local v0, "curDay":I
    if-eqz p1, :cond_4

    .line 498
    invoke-static {v2}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonth(I)I

    move-result v6

    .line 499
    .local v6, "leapMonth":I
    if-nez v6, :cond_2

    .line 500
    .local v4, "hasLeapMonth":Z
    :goto_0
    const/4 v5, 0x0

    .line 501
    .local v5, "isCurMonthLeap":Z
    iget-object v9, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v9}, Lcn/nubia/commonui/widget/DatePickerView;->getMonthWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v9

    .line 502
    invoke-virtual {v9}, Lcn/nubia/commonui/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v7

    .line 504
    .local v7, "values":[Ljava/lang/String;
    aget-object v9, v7, v1

    sget-object v10, Lcn/nubia/commonui/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v8, :cond_0

    .line 505
    const/4 v5, 0x1

    .line 506
    iput-boolean v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->isCurrentMonthLeap:Z

    .line 509
    :cond_0
    if-eqz v4, :cond_3

    .line 511
    if-ge v1, v6, :cond_1

    .line 512
    add-int/lit8 v1, v1, 0x1

    .line 518
    :cond_1
    :goto_1
    add-int/lit8 v8, v0, 0x1

    invoke-static {v2, v1, v8}, Lcn/nubia/commonui/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object v8

    .line 520
    .end local v4    # "hasLeapMonth":Z
    .end local v5    # "isCurMonthLeap":Z
    .end local v6    # "leapMonth":I
    .end local v7    # "values":[Ljava/lang/String;
    :goto_2
    return-object v8

    .restart local v6    # "leapMonth":I
    :cond_2
    move v4, v8

    .line 499
    goto :goto_0

    .line 515
    .restart local v4    # "hasLeapMonth":Z
    .restart local v5    # "isCurMonthLeap":Z
    .restart local v7    # "values":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 520
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
    .line 482
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSwtichEnabled:Z

    return v0
.end method

.method public getSwitchStateFromSP()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 534
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "datePickerSwitch"

    .line 535
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 536
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
    .line 229
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 230
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    const-string v1, "PICKER"

    .line 231
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 230
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/DatePickerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 232
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 222
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 223
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "PICKER"

    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/DatePickerView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 224
    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 217
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertDialog;->onStop()V

    .line 218
    return-void
.end method

.method public setLunarLayoutVisiable(Z)V
    .locals 2
    .param p1, "visiable"    # Z

    .prologue
    .line 525
    if-eqz p1, :cond_0

    .line 526
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarDateLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 531
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mLunarDateLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSwitchState(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 551
    sget-boolean v0, Lcn/nubia/commonui/widget/DatePickerDialog;->mIsCN:Z

    if-nez v0, :cond_1

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mSwtichEnabled:Z

    if-eq v0, p1, :cond_0

    .line 557
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mNubiaSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->toggle()V

    goto :goto_0
.end method

.method public setYearMinMaxValue(II)V
    .locals 5
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 562
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_0

    .line 564
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

    .line 563
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 566
    :cond_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v2, v3

    check-cast v2, [Ljava/lang/String;

    .line 567
    .local v2, "years":[Ljava/lang/String;
    sput p1, Lcn/nubia/commonui/widget/DatePickerDialog;->DEFAULT_START_YEAR:I

    .line 568
    sput p2, Lcn/nubia/commonui/widget/DatePickerDialog;->DEFAULT_END_YEAR:I

    .line 569
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    sput p1, Lcn/nubia/commonui/widget/DatePickerView;->DEFAULT_START_YEAR:I

    .line 570
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    sput p2, Lcn/nubia/commonui/widget/DatePickerView;->DEFAULT_END_YEAR:I

    .line 571
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/DatePickerView;->getYearWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 572
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/DatePickerView;->getYearWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcn/nubia/commonui/widget/WheelView;->setMinValue(I)V

    .line 573
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/DatePickerView;->getYearWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcn/nubia/commonui/widget/WheelView;->setMaxValue(I)V

    .line 574
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/commonui/widget/DatePickerView;->updateDate(III)V

    .line 167
    return-void
.end method
