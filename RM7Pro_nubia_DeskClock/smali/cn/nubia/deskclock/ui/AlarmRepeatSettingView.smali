.class public Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;
.super Landroid/widget/LinearLayout;
.source "AlarmRepeatSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$StartActivityListener;,
        Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;,
        Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$OnWeekSelecedListener;,
        Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;
    }
.end annotation


# static fields
.field private static final DESKCLOCK_FEATURE:Ljava/lang/String; = "nubia_deskclock_feature"

.field private static final ENABLE_CTS:Ljava/lang/String; = "DeskClock_enableCts"

.field public static final RequestCode:I = 0x1f5

.field public static final ResultCode:I = 0x1f6

.field public static final SELECTED_INDEX:Ljava/lang/String; = "alarm_repeat_selected_index"

.field private static final TAG:Ljava/lang/String; = "AlarmRepeatSettingView"


# instance fields
.field private mActivityListener:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$StartActivityListener;

.field private mAlarmRepeatWeek:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDaysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

.field private mDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mEnableCts:Ljava/lang/String;

.field private mIsHolidayAlarm:Z

.field private mOnWeekSeleced:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$OnWeekSelecedListener;

.field private mRepeatSettingType:[Ljava/lang/String;

.field private mRepeatSettingTypeIndex:[Z

.field private mSelectedDayIndex:[Z

.field private mWeeddayPickerView:Landroid/widget/RelativeLayout;

.field private mWeekdayPickerSummary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mDaysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    .line 45
    const/4 v0, 0x7

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mSelectedDayIndex:[Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mIsHolidayAlarm:Z

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Z

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mRepeatSettingTypeIndex:[Z

    .line 52
    const-string v0, "false"

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mEnableCts:Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->initView(Landroid/content/Context;)V

    .line 59
    return-void

    .line 45
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 49
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mDaysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    .line 45
    const/4 v0, 0x7

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mSelectedDayIndex:[Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mIsHolidayAlarm:Z

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Z

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mRepeatSettingTypeIndex:[Z

    .line 52
    const-string v0, "false"

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mEnableCts:Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->initView(Landroid/content/Context;)V

    .line 64
    return-void

    .line 45
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 49
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mDaysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    .line 45
    const/4 v0, 0x7

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mSelectedDayIndex:[Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mIsHolidayAlarm:Z

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Z

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mRepeatSettingTypeIndex:[Z

    .line 52
    const-string v0, "false"

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mEnableCts:Ljava/lang/String;

    .line 68
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->initView(Landroid/content/Context;)V

    .line 69
    return-void

    .line 45
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 49
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)[Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mSelectedDayIndex:[Z

    return-object v0
.end method

.method static synthetic access$002(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;[Z)[Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;
    .param p1, "x1"    # [Z

    .prologue
    .line 29
    iput-object p1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mSelectedDayIndex:[Z

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    .prologue
    .line 29
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->onWeekdayChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$StartActivityListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mActivityListener:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$StartActivityListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)[Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mRepeatSettingTypeIndex:[Z

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    .prologue
    .line 29
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->setPickerSummaryName()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mEnableCts:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    .prologue
    .line 29
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->setAllTypePick()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$902(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mIsHolidayAlarm:Z

    return p1
.end method

.method private getListItems([Ljava/lang/CharSequence;[Z)Ljava/util/ArrayList;
    .locals 6
    .param p1, "entries"    # [Ljava/lang/CharSequence;
    .param p2, "index1"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            "[Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v1, "listItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_1

    .line 211
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 212
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "entry"

    aget-object v4, p1, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    aget-boolean v3, p2, v0

    if-ne v3, v5, :cond_0

    .line 214
    const-string v3, "checked"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_0
    const-string v3, "checked"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 221
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-object v1
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    :try_start_0
    const-string v2, "nubia_deskclock_feature"

    const-string v3, "DeskClock_enableCts"

    invoke-static {v2, v3}, Lcn/nubia/config/android/NubiaFeatureConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mEnableCts:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    iput-object p1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 86
    .local v1, "res":Landroid/content/res/Resources;
    const-string v2, "layout_inflater"

    .line 87
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 88
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04007e

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 89
    const v2, 0x7f120170

    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mWeekdayPickerSummary:Landroid/widget/TextView;

    .line 90
    const v2, 0x7f12016d

    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mWeeddayPickerView:Landroid/widget/RelativeLayout;

    .line 91
    const v2, 0x7f0b000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mAlarmRepeatWeek:[Ljava/lang/String;

    .line 92
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isInternalVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    const v2, 0x7f0b0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mRepeatSettingType:[Ljava/lang/String;

    .line 94
    const/4 v2, 0x4

    new-array v2, v2, [Z

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mRepeatSettingTypeIndex:[Z

    .line 100
    :goto_1
    iget-object v2, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mWeeddayPickerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-void

    .line 98
    :cond_0
    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mRepeatSettingType:[Ljava/lang/String;

    goto :goto_1

    .line 82
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 94
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private onWeekdayChanged()V
    .locals 3

    .prologue
    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 135
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mDaysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mSelectedDayIndex:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {v1, v0, v2}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->set(IZ)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mOnWeekSeleced:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$OnWeekSelecedListener;

    invoke-interface {v1}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$OnWeekSelecedListener;->onSeleced()V

    .line 138
    return-void
.end method

.method private setAllTypePick()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v6, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 573
    const/4 v1, 0x1

    .line 574
    .local v1, "isCustom":Z
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mSelectedDayIndex:[Z

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/Utils;->updateWeekSelectView(Landroid/content/Context;[Z)Ljava/lang/String;

    move-result-object v2

    .line 575
    .local v2, "mSummaryName":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 576
    .local v3, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isInternalVersion()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 577
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_1

    .line 578
    const v4, 0x7f0b0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 579
    iget-object v4, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mRepeatSettingTypeIndex:[Z

    aput-boolean v7, v4, v0

    .line 580
    const/4 v1, 0x0

    .line 577
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    :cond_0
    iget-object v4, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mRepeatSettingTypeIndex:[Z

    aput-boolean v8, v4, v0

    goto :goto_1

    .line 585
    :cond_1
    if-eqz v1, :cond_2

    .line 586
    iget-object v4, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mRepeatSettingTypeIndex:[Z

    const/4 v5, 0x3

    aput-boolean v7, v4, v5

    .line 602
    :cond_2
    :goto_2
    iget-boolean v4, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mIsHolidayAlarm:Z

    if-nez v4, :cond_7

    .line 603
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v9, :cond_7

    .line 604
    const-string v4, "AlarmRepeatSettingView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mRepeatSettingTypeIndex i ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    .line 606
    iget-object v4, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mRepeatSettingTypeIndex:[Z

    aput-boolean v7, v4, v0

    .line 603
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 589
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    if-ge v0, v9, :cond_5

    .line 590
    const v4, 0x7f0b0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 591
    iget-object v4, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mRepeatSettingTypeIndex:[Z

    aput-boolean v7, v4, v0

    .line 592
    const/4 v1, 0x0

    .line 589
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 594
    :cond_4
    iget-object v4, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mRepeatSettingTypeIndex:[Z

    aput-boolean v8, v4, v0

    goto :goto_6

    .line 597
    :cond_5
    if-eqz v1, :cond_2

    .line 598
    iget-object v4, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mRepeatSettingTypeIndex:[Z

    aput-boolean v7, v4, v6

    goto :goto_2

    .line 608
    :cond_6
    iget-object v4, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mRepeatSettingTypeIndex:[Z

    aput-boolean v8, v4, v0

    goto :goto_4

    .line 612
    :cond_7
    return-void
.end method

.method private setPickerSummaryName()V
    .locals 4

    .prologue
    .line 562
    const-string v1, "AlarmRepeatSettingView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPickerSummaryName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mIsHolidayAlarm:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mSelectedDayIndex:[Z

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/Utils;->updateWeekSelectView(Landroid/content/Context;[Z)Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "mSummaryName":Ljava/lang/String;
    iget-boolean v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mIsHolidayAlarm:Z

    if-nez v1, :cond_0

    .line 565
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mWeekdayPickerSummary:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mWeekdayPickerSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected createAllSelectDialog()Lcn/nubia/commonui/app/AlertDialog;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 162
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 163
    .local v1, "context":Landroid/content/Context;
    const-string v6, "layout_inflater"

    .line 164
    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 165
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f04007c

    invoke-virtual {v3, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 167
    .local v2, "dialogView":Landroid/view/View;
    const v6, 0x7f12016b

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 168
    .local v4, "lv":Landroid/widget/ListView;
    new-instance v0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;

    iget-object v6, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mRepeatSettingType:[Ljava/lang/String;

    iget-object v7, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mRepeatSettingTypeIndex:[Z

    invoke-direct {p0, v6, v7}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->getListItems([Ljava/lang/CharSequence;[Z)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v0, p0, v6}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;-><init>(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;Ljava/util/ArrayList;)V

    .line 170
    .local v0, "adapter":Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$RepeatSettingAdapter;
    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    new-instance v6, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v6, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x1040000

    .line 172
    invoke-virtual {v6, v7, v8}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v5

    .line 173
    .local v5, "nAlertDialog":Lcn/nubia/commonui/app/AlertDialog;
    return-object v5
.end method

.method protected createWeekSelectDialog()Lcn/nubia/commonui/app/AlertDialog;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 177
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 179
    .local v2, "context":Landroid/content/Context;
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 180
    .local v1, "builer":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const-string v7, "layout_inflater"

    .line 181
    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 182
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f04007c

    invoke-virtual {v4, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 184
    .local v3, "dialogView":Landroid/view/View;
    const v7, 0x7f12016b

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    .line 185
    .local v5, "lv":Landroid/widget/ListView;
    new-instance v0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;

    iget-object v7, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mAlarmRepeatWeek:[Ljava/lang/String;

    iget-object v8, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mSelectedDayIndex:[Z

    invoke-direct {p0, v7, v8}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->getListItems([Ljava/lang/CharSequence;[Z)Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {v0, p0, v7}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;-><init>(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;Ljava/util/ArrayList;)V

    .line 188
    .local v0, "adapter":Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$WeekSettingAdapter;
    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    invoke-virtual {v1, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 190
    const v7, 0x104000a

    new-instance v8, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$1;

    invoke-direct {v8, p0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$1;-><init>(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;)V

    invoke-virtual {v1, v7, v8}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 202
    const/high16 v7, 0x1040000

    invoke-virtual {v1, v7, v9}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 203
    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v6

    .line 204
    .local v6, "nAlertDialog":Lcn/nubia/commonui/app/AlertDialog;
    return-object v6
.end method

.method public getDaysOfWeek()Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mDaysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    return-object v0
.end method

.method public getHolidayAlarm()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mIsHolidayAlarm:Z

    return v0
.end method

.method public getSelectedDayIndex()[Z
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mSelectedDayIndex:[Z

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 149
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/deskclock/util/Utils;->isAlarmKlaxonRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->createAllSelectDialog()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 157
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 145
    :cond_0
    return-void
.end method

.method public setDaysOfWeek(Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;)V
    .locals 4
    .param p1, "dow"    # Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    .prologue
    .line 104
    iget-object v2, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mDaysOfWeek:Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    invoke-virtual {v2, p1}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->set(Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;)V

    .line 105
    invoke-virtual {p1}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->getBooleanArray()[Z

    move-result-object v1

    .line 106
    .local v1, "isDaySet":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 107
    aget-boolean v2, v1, v0

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mSelectedDayIndex:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    .line 106
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    iget-object v2, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mSelectedDayIndex:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    goto :goto_1

    .line 113
    :cond_1
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->onWeekdayChanged()V

    .line 114
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->setPickerSummaryName()V

    .line 115
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->setAllTypePick()V

    .line 116
    return-void
.end method

.method public setHolidayAlarm(Z)V
    .locals 3
    .param p1, "holidayalarm"    # Z

    .prologue
    .line 127
    const-string v0, "AlarmRepeatSettingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHolidayAlarm  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iput-boolean p1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mIsHolidayAlarm:Z

    .line 129
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->setPickerSummaryName()V

    .line 130
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->setAllTypePick()V

    .line 131
    return-void
.end method

.method public setOnStartActivityListener(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$StartActivityListener;)V
    .locals 0
    .param p1, "Listener"    # Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$StartActivityListener;

    .prologue
    .line 626
    iput-object p1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mActivityListener:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$StartActivityListener;

    .line 627
    return-void
.end method

.method public setOnWeekSelecedListener(Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$OnWeekSelecedListener;)V
    .locals 0
    .param p1, "Listener"    # Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$OnWeekSelecedListener;

    .prologue
    .line 72
    iput-object p1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mOnWeekSeleced:Lcn/nubia/deskclock/ui/AlarmRepeatSettingView$OnWeekSelecedListener;

    .line 73
    return-void
.end method

.method public setPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 77
    return-void
.end method

.method public setSelectedDayIndex([Z)V
    .locals 0
    .param p1, "index"    # [Z

    .prologue
    .line 619
    iput-object p1, p0, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->mSelectedDayIndex:[Z

    .line 620
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->onWeekdayChanged()V

    .line 621
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->setPickerSummaryName()V

    .line 622
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/AlarmRepeatSettingView;->setAllTypePick()V

    .line 623
    return-void
.end method
