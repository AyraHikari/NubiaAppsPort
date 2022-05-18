.class public Lcn/nubia/deskclock/ui/SnoozeSettingView;
.super Landroid/widget/LinearLayout;
.source "SnoozeSettingView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/ui/SnoozeSettingView$SnoozeListener;
    }
.end annotation


# static fields
.field private static final Snooze_Setting_CLICK:Ljava/lang/String; = "snooze_setting_click"

.field private static final TAG:Ljava/lang/String; = "SnoozeSettingView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSnoozeInterVal:[Ljava/lang/String;

.field private mSnoozeIntervalIndex:I

.field mSnoozePickerDialog:Lcn/nubia/deskclock/ui/SnoozePickerDialog;

.field private mSnoozeSummary:Landroid/widget/TextView;

.field private mSnoozeTimes:[Ljava/lang/String;

.field private mSnoozeTimesIndex:I

.field private mSnoozeview:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    iput v0, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeTimesIndex:I

    .line 28
    iput v0, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeIntervalIndex:I

    .line 35
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->initView(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput v0, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeTimesIndex:I

    .line 28
    iput v0, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeIntervalIndex:I

    .line 45
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->initView(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iput v0, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeTimesIndex:I

    .line 28
    iput v0, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeIntervalIndex:I

    .line 40
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->initView(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method static synthetic access$102(Lcn/nubia/deskclock/ui/SnoozeSettingView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/SnoozeSettingView;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeTimesIndex:I

    return p1
.end method

.method static synthetic access$202(Lcn/nubia/deskclock/ui/SnoozeSettingView;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/SnoozeSettingView;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeIntervalIndex:I

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/ui/SnoozeSettingView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/SnoozeSettingView;

    .prologue
    .line 20
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->updateSnoozeView()V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const-string v1, "layout_inflater"

    .line 50
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 51
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040078

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    iput-object p1, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mContext:Landroid/content/Context;

    .line 53
    const v1, 0x7f12015f

    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeSummary:Landroid/widget/TextView;

    .line 54
    const v1, 0x7f12015d

    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeview:Landroid/widget/RelativeLayout;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeTimes:[Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeInterVal:[Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeview:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method private updateSnoozeView()V
    .locals 4

    .prologue
    .line 75
    iget v0, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeTimesIndex:I

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeSummary:Landroid/widget/TextView;

    const v1, 0x7f0d007f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->saveSharedPreferences()V

    .line 83
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeSummary:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeTimes:[Ljava/lang/String;

    iget v3, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeTimesIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeInterVal:[Ljava/lang/String;

    iget v3, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeIntervalIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getSnoozeInterVal()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 182
    iget v1, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeIntervalIndex:I

    packed-switch v1, :pswitch_data_0

    .line 194
    :goto_0
    :pswitch_0
    return v0

    .line 186
    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 188
    :pswitch_2
    const/16 v0, 0xa

    goto :goto_0

    .line 190
    :pswitch_3
    const/16 v0, 0xf

    goto :goto_0

    .line 192
    :pswitch_4
    const/16 v0, 0x1e

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getSnoozeTimes()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 156
    iget v1, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeTimesIndex:I

    packed-switch v1, :pswitch_data_0

    .line 169
    :goto_0
    :pswitch_0
    return v0

    .line 160
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 162
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 164
    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    .line 166
    :pswitch_4
    const/16 v0, 0x12c

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isSnoozeEnable()Z
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->getSnoozeTimes()I

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x1

    .line 178
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->updateSnoozeView()V

    .line 71
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 72
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 95
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozePickerDialog:Lcn/nubia/deskclock/ui/SnoozePickerDialog;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozePickerDialog:Lcn/nubia/deskclock/ui/SnoozePickerDialog;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->dismiss()V

    .line 97
    iput-object v3, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozePickerDialog:Lcn/nubia/deskclock/ui/SnoozePickerDialog;

    .line 99
    :cond_0
    new-instance v0, Lcn/nubia/deskclock/ui/SnoozePickerDialog;

    iget-object v1, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mContext:Landroid/content/Context;

    new-instance v2, Lcn/nubia/deskclock/ui/SnoozeSettingView$SnoozeListener;

    invoke-direct {v2, p0, v3}, Lcn/nubia/deskclock/ui/SnoozeSettingView$SnoozeListener;-><init>(Lcn/nubia/deskclock/ui/SnoozeSettingView;Lcn/nubia/deskclock/ui/SnoozeSettingView$1;)V

    iget v3, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeTimesIndex:I

    iget v4, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeIntervalIndex:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/deskclock/ui/SnoozePickerDialog;-><init>(Landroid/content/Context;Lcn/nubia/deskclock/ui/SnoozePickerDialog$onSnoozeSetListener;II)V

    iput-object v0, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozePickerDialog:Lcn/nubia/deskclock/ui/SnoozePickerDialog;

    .line 101
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozePickerDialog:Lcn/nubia/deskclock/ui/SnoozePickerDialog;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->show()V

    .line 102
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mContext:Landroid/content/Context;

    const-string v1, "snooze_setting_click"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/ReyunUtils;->trackCustomEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozePickerDialog:Lcn/nubia/deskclock/ui/SnoozePickerDialog;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozePickerDialog:Lcn/nubia/deskclock/ui/SnoozePickerDialog;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/SnoozePickerDialog;->dismiss()V

    .line 203
    iput-object v1, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozePickerDialog:Lcn/nubia/deskclock/ui/SnoozePickerDialog;

    .line 205
    :cond_0
    return-void
.end method

.method public saveSharedPreferences()V
    .locals 4

    .prologue
    .line 86
    const-string v1, "SnoozeSettingView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " [saveSharedPreferences] isSnoozeEnable() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->isSnoozeEnable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ;; getSnoozeInterVal() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->getSnoozeInterVal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ;; getSnoozeTimes() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->getSnoozeTimes()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isSnooze"

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->isSnoozeEnable()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "snoozeTime"

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->getSnoozeInterVal()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "snoozeMaxCount"

    invoke-virtual {p0}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->getSnoozeTimes()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 91
    return-void
.end method

.method public setPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 63
    return-void
.end method

.method public setSnooze(Z)V
    .locals 0
    .param p1, "isSnooze"    # Z

    .prologue
    .line 66
    return-void
.end method

.method public setSnoozeInterVal(I)V
    .locals 4
    .param p1, "interval"    # I

    .prologue
    const/4 v3, 0x0

    .line 131
    const-string v0, "SnoozeSettingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSnoozeMaxCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sparse-switch p1, :sswitch_data_0

    .line 149
    iput v3, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeIntervalIndex:I

    .line 150
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->updateSnoozeView()V

    .line 153
    :goto_0
    return-void

    .line 134
    :sswitch_0
    iput v3, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeIntervalIndex:I

    goto :goto_0

    .line 137
    :sswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeIntervalIndex:I

    goto :goto_0

    .line 140
    :sswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeIntervalIndex:I

    goto :goto_0

    .line 143
    :sswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeIntervalIndex:I

    goto :goto_0

    .line 146
    :sswitch_4
    const/4 v0, 0x4

    iput v0, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeIntervalIndex:I

    goto :goto_0

    .line 132
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
        0xf -> :sswitch_3
        0x1e -> :sswitch_4
    .end sparse-switch
.end method

.method public setSnoozeTimes(I)V
    .locals 4
    .param p1, "times"    # I

    .prologue
    const/4 v3, 0x0

    .line 106
    const-string v0, "SnoozeSettingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "snoozeTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sparse-switch p1, :sswitch_data_0

    .line 125
    iput v3, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeTimesIndex:I

    .line 127
    :goto_0
    invoke-direct {p0}, Lcn/nubia/deskclock/ui/SnoozeSettingView;->updateSnoozeView()V

    .line 128
    return-void

    .line 110
    :sswitch_0
    iput v3, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeTimesIndex:I

    goto :goto_0

    .line 113
    :sswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeTimesIndex:I

    goto :goto_0

    .line 116
    :sswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeTimesIndex:I

    goto :goto_0

    .line 119
    :sswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeTimesIndex:I

    goto :goto_0

    .line 122
    :sswitch_4
    const/4 v0, 0x4

    iput v0, p0, Lcn/nubia/deskclock/ui/SnoozeSettingView;->mSnoozeTimesIndex:I

    goto :goto_0

    .line 108
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x12c -> :sswitch_4
    .end sparse-switch
.end method
