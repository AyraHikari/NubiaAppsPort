.class public Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;
.super Landroid/widget/LinearLayout;
.source "AlertIncreasingSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final AlertIncreasing_Setting_CLICK:Ljava/lang/String; = "alertincreasing_setting_click"

.field private static final TAG:Ljava/lang/String; = "AlertIncreasingSettingView"


# instance fields
.field private mAlarmSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

.field private mIsAlertIncreasing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;->mIsAlertIncreasing:Z

    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;->initView(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;->mIsAlertIncreasing:Z

    .line 39
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;->initView(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;->mIsAlertIncreasing:Z

    .line 34
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;->initView(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;->mIsAlertIncreasing:Z

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;->mIsAlertIncreasing:Z

    return p1
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 43
    const-string v1, "layout_inflater"

    .line 44
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 45
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040027

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 46
    invoke-virtual {p0, p0}, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v1, 0x7f12009e

    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/widget/NubiaSwitch;

    iput-object v1, p0, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;->mAlarmSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 48
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;->mAlarmSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/widget/NubiaSwitch;->setVisibility(I)V

    .line 49
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;->mAlarmSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 50
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;->mAlarmSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 51
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;->mAlarmSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    new-instance v2, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView$1;

    invoke-direct {v2, p0, p1}, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView$1;-><init>(Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 60
    return-void
.end method


# virtual methods
.method public isAlertIncreasing()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;->mIsAlertIncreasing:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;->mAlarmSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;->mAlarmSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;->mAlarmSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method public saveSharedPreferences(Z)V
    .locals 3
    .param p1, "isAlertIncreasing"    # Z

    .prologue
    .line 63
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 64
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isAlertIncreasing"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 65
    return-void
.end method

.method public setAlertIncreasingStatus(Z)V
    .locals 2
    .param p1, "isAlertIncreasing"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;->mIsAlertIncreasing:Z

    .line 69
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;->mAlarmSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    iget-boolean v1, p0, Lcn/nubia/deskclock/ui/AlertIncreasingSettingView;->mIsAlertIncreasing:Z

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 70
    return-void
.end method
