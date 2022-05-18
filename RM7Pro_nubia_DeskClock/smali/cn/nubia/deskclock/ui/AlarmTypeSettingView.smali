.class public Lcn/nubia/deskclock/ui/AlarmTypeSettingView;
.super Landroid/widget/LinearLayout;
.source "AlarmTypeSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/ui/AlarmTypeSettingView$OnAlarmTypeChangedListener;
    }
.end annotation


# instance fields
.field private final AlarmType_Setting_CLICK:Ljava/lang/String;

.field private final RING:Ljava/lang/String;

.field private final RINGANDVIBRATE:Ljava/lang/String;

.field private final VIBRATE:Ljava/lang/String;

.field private mAlarmSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

.field private mEntryValues:[Ljava/lang/String;

.field private mEntrys:[Ljava/lang/String;

.field private mIndex:I

.field private mIsVibrate:Z

.field private mOnAlarmTypeChangedListener:Lcn/nubia/deskclock/ui/AlarmTypeSettingView$OnAlarmTypeChangedListener;

.field private mSummaryView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const-string v0, "0"

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->RING:Ljava/lang/String;

    .line 25
    const-string v0, "1"

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->VIBRATE:Ljava/lang/String;

    .line 26
    const-string v0, "2"

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->RINGANDVIBRATE:Ljava/lang/String;

    .line 27
    const-string v0, "alarmtype_setting_click"

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->AlarmType_Setting_CLICK:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->mSummaryView:Landroid/widget/TextView;

    .line 33
    iput-boolean v1, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->mIsVibrate:Z

    .line 34
    iput v1, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->mIndex:I

    .line 40
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->initView(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const-string v0, "0"

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->RING:Ljava/lang/String;

    .line 25
    const-string v0, "1"

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->VIBRATE:Ljava/lang/String;

    .line 26
    const-string v0, "2"

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->RINGANDVIBRATE:Ljava/lang/String;

    .line 27
    const-string v0, "alarmtype_setting_click"

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->AlarmType_Setting_CLICK:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->mSummaryView:Landroid/widget/TextView;

    .line 33
    iput-boolean v1, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->mIsVibrate:Z

    .line 34
    iput v1, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->mIndex:I

    .line 50
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->initView(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const-string v0, "0"

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->RING:Ljava/lang/String;

    .line 25
    const-string v0, "1"

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->VIBRATE:Ljava/lang/String;

    .line 26
    const-string v0, "2"

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->RINGANDVIBRATE:Ljava/lang/String;

    .line 27
    const-string v0, "alarmtype_setting_click"

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->AlarmType_Setting_CLICK:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->mSummaryView:Landroid/widget/TextView;

    .line 33
    iput-boolean v1, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->mIsVibrate:Z

    .line 34
    iput v1, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->mIndex:I

    .line 45
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->initView(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/ui/AlarmTypeSettingView;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmTypeSettingView;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->mIsVibrate:Z

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/deskclock/ui/AlarmTypeSettingView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmTypeSettingView;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->mIsVibrate:Z

    return p1
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 54
    const-string v1, "layout_inflater"

    .line 55
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 56
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040025

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 57
    invoke-virtual {p0, p0}, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v1, 0x7f120098

    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/widget/NubiaSwitch;

    iput-object v1, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->mAlarmSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 59
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->mAlarmSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/widget/NubiaSwitch;->setVisibility(I)V

    .line 60
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->mAlarmSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 61
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->mAlarmSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 62
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->mAlarmSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    new-instance v2, Lcn/nubia/deskclock/ui/AlarmTypeSettingView$1;

    invoke-direct {v2, p0, p1}, Lcn/nubia/deskclock/ui/AlarmTypeSettingView$1;-><init>(Lcn/nubia/deskclock/ui/AlarmTypeSettingView;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    return-void
.end method


# virtual methods
.method public isVibrate()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->mIsVibrate:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->mAlarmSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->mAlarmSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->mAlarmSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->mOnAlarmTypeChangedListener:Lcn/nubia/deskclock/ui/AlarmTypeSettingView$OnAlarmTypeChangedListener;

    .line 97
    return-void
.end method

.method public saveSharedPreferences(Z)V
    .locals 3
    .param p1, "vibrate"    # Z

    .prologue
    .line 73
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 74
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "vibrate"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 75
    return-void
.end method

.method public setAlarmTypeChangeListener(Lcn/nubia/deskclock/ui/AlarmTypeSettingView$OnAlarmTypeChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcn/nubia/deskclock/ui/AlarmTypeSettingView$OnAlarmTypeChangedListener;

    .prologue
    .line 91
    iput-object p1, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->mOnAlarmTypeChangedListener:Lcn/nubia/deskclock/ui/AlarmTypeSettingView$OnAlarmTypeChangedListener;

    .line 92
    return-void
.end method

.method public setVibrate(Z)V
    .locals 2
    .param p1, "isVibrate"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->mIsVibrate:Z

    .line 79
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->mAlarmSwitch:Lcn/nubia/commonui/widget/NubiaSwitch;

    iget-boolean v1, p0, Lcn/nubia/deskclock/ui/AlarmTypeSettingView;->mIsVibrate:Z

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 80
    return-void
.end method
