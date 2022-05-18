.class public Lcn/nubia/touping/USBMirrorSettingActivity;
.super Lcn/nubia/touping/BaseActivity;
.source "USBMirrorSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "USBMirrorSettingActivity"


# instance fields
.field private mBackView:Landroid/view/View;

.field private mPrivateModeSwitch:Lcn/nubia/touping/View/NubiaSwitch;

.field private mPrivateModeView:Landroid/view/View;

.field private mQualityTextView:Landroid/widget/TextView;

.field private mQualityTitle:Landroid/widget/TextView;

.field private mQualityView:Landroid/view/View;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSoundSourceTextView:Landroid/widget/TextView;

.field private mSoundSourceTitle:Landroid/widget/TextView;

.field private mSoundSourceView:Landroid/view/View;

.field private settings_dts:Landroid/view/View;

.field private settings_dts_text:Landroid/widget/TextView;

.field private wired_USB_mode:Landroid/view/View;

.field private wired_USB_mode_switcher:Lcn/nubia/touping/View/NubiaSwitch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcn/nubia/touping/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/touping/USBMirrorSettingActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/USBMirrorSettingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mQualityTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/touping/USBMirrorSettingActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/USBMirrorSettingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->settings_dts_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/touping/USBMirrorSettingActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/USBMirrorSettingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mSoundSourceTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private initData()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 98
    const-string v3, "PRIVATE_MODE_USB"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 100
    .local v2, "privateMode":Z
    iget-object v3, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mPrivateModeSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v3, v2}, Lcn/nubia/touping/View/NubiaSwitch;->setChecked(Z)V

    .line 102
    iget-object v3, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "SOUND_SOURCE_USB"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 103
    .local v0, "id":I
    iget-object v3, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mSoundSourceTextView:Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->getSoundSourceTypeById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v3, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "SOUND_DTS_WIRED"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 106
    .local v1, "id_dts":I
    iget-object v3, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->settings_dts_text:Landroid/widget/TextView;

    invoke-static {p0, v1}, Lcn/nubia/touping/Dialog/DtsWiredDialog;->getSoundDtsTypeById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 68
    const v1, 0x7f0e00c4

    invoke-virtual {p0, v1}, Lcn/nubia/touping/USBMirrorSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->wired_USB_mode:Landroid/view/View;

    .line 69
    const v1, 0x7f0e00c5

    invoke-virtual {p0, v1}, Lcn/nubia/touping/USBMirrorSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/touping/View/NubiaSwitch;

    iput-object v1, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->wired_USB_mode_switcher:Lcn/nubia/touping/View/NubiaSwitch;

    .line 70
    invoke-virtual {p0}, Lcn/nubia/touping/USBMirrorSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wiredToupingSwitchForTurnUSBTest"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 71
    .local v0, "switchStatus":I
    if-lez v0, :cond_0

    .line 72
    iget-object v1, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->wired_USB_mode_switcher:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v1, v3}, Lcn/nubia/touping/View/NubiaSwitch;->setChecked(Z)V

    .line 76
    :goto_0
    const v1, 0x7f0e00b3

    invoke-virtual {p0, v1}, Lcn/nubia/touping/USBMirrorSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/touping/View/NubiaSwitch;

    iput-object v1, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mPrivateModeSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    .line 77
    const v1, 0x7f0e00b2

    invoke-virtual {p0, v1}, Lcn/nubia/touping/USBMirrorSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mPrivateModeView:Landroid/view/View;

    .line 78
    const v1, 0x7f0e00b8

    invoke-virtual {p0, v1}, Lcn/nubia/touping/USBMirrorSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mQualityView:Landroid/view/View;

    .line 79
    const v1, 0x7f0e00bb

    invoke-virtual {p0, v1}, Lcn/nubia/touping/USBMirrorSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mSoundSourceView:Landroid/view/View;

    .line 80
    const v1, 0x7f0e00bc

    invoke-virtual {p0, v1}, Lcn/nubia/touping/USBMirrorSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mSoundSourceTitle:Landroid/widget/TextView;

    .line 81
    const v1, 0x7f0e00b9

    invoke-virtual {p0, v1}, Lcn/nubia/touping/USBMirrorSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mQualityTitle:Landroid/widget/TextView;

    .line 82
    const v1, 0x7f0e00b1

    invoke-virtual {p0, v1}, Lcn/nubia/touping/USBMirrorSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mBackView:Landroid/view/View;

    .line 83
    const v1, 0x7f0e00bd

    invoke-virtual {p0, v1}, Lcn/nubia/touping/USBMirrorSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mSoundSourceTextView:Landroid/widget/TextView;

    .line 84
    const v1, 0x7f0e00ba

    invoke-virtual {p0, v1}, Lcn/nubia/touping/USBMirrorSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mQualityTextView:Landroid/widget/TextView;

    .line 86
    const v1, 0x7f0e00be

    invoke-virtual {p0, v1}, Lcn/nubia/touping/USBMirrorSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->settings_dts:Landroid/view/View;

    .line 87
    const v1, 0x7f0e00c0

    invoke-virtual {p0, v1}, Lcn/nubia/touping/USBMirrorSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->settings_dts_text:Landroid/widget/TextView;

    .line 89
    iget-object v1, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->wired_USB_mode:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v1, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mPrivateModeView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v1, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mQualityView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v1, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mSoundSourceView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v1, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->settings_dts:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v1, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mBackView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void

    .line 74
    :cond_0
    iget-object v1, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->wired_USB_mode_switcher:Lcn/nubia/touping/View/NubiaSwitch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/touping/View/NubiaSwitch;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method private setBackground(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const v1, 0x7f0c0012

    .line 168
    iget-object v2, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mSoundSourceTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f0c0016

    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/touping/USBMirrorSettingActivity;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    iget-object v0, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mSoundSourceTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcn/nubia/touping/USBMirrorSettingActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    return-void

    :cond_0
    move v0, v1

    .line 168
    goto :goto_0

    .line 169
    :cond_1
    const v1, 0x7f0c0013

    goto :goto_1
.end method

.method private showQualityDialog()V
    .locals 4

    .prologue
    .line 173
    new-instance v0, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;

    invoke-direct {v0, p0}, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;-><init>(Landroid/content/Context;)V

    .line 174
    .local v0, "dialog":Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;
    iget-object v1, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "SCREEN_PROJECTION_QUALITY_20210706"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->setCheckedItem(I)V

    .line 175
    new-instance v1, Lcn/nubia/touping/USBMirrorSettingActivity$1;

    invoke-direct {v1, p0, v0}, Lcn/nubia/touping/USBMirrorSettingActivity$1;-><init>(Lcn/nubia/touping/USBMirrorSettingActivity;Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;)V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 182
    invoke-virtual {v0}, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->show()V

    .line 183
    return-void
.end method

.method private showSoundSourceDialog()V
    .locals 4

    .prologue
    .line 200
    new-instance v0, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;

    invoke-direct {v0, p0}, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;-><init>(Landroid/content/Context;)V

    .line 201
    .local v0, "soundSourceDialog":Lcn/nubia/touping/Dialog/USBSoundSourceDialog;
    iget-object v1, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "SOUND_SOURCE_USB"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->setCheckedItem(I)V

    .line 202
    new-instance v1, Lcn/nubia/touping/USBMirrorSettingActivity$3;

    invoke-direct {v1, p0, v0}, Lcn/nubia/touping/USBMirrorSettingActivity$3;-><init>(Lcn/nubia/touping/USBMirrorSettingActivity;Lcn/nubia/touping/Dialog/USBSoundSourceDialog;)V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 209
    invoke-virtual {v0}, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->show()V

    .line 210
    return-void
.end method

.method private showdtsWiredDialog()V
    .locals 4

    .prologue
    .line 187
    new-instance v0, Lcn/nubia/touping/Dialog/DtsWiredDialog;

    invoke-direct {v0, p0}, Lcn/nubia/touping/Dialog/DtsWiredDialog;-><init>(Landroid/content/Context;)V

    .line 188
    .local v0, "dtsWiredDialog":Lcn/nubia/touping/Dialog/DtsWiredDialog;
    iget-object v1, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "SOUND_DTS_WIRED"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/DtsWiredDialog;->setCheckedItem(I)V

    .line 189
    new-instance v1, Lcn/nubia/touping/USBMirrorSettingActivity$2;

    invoke-direct {v1, p0, v0}, Lcn/nubia/touping/USBMirrorSettingActivity$2;-><init>(Lcn/nubia/touping/USBMirrorSettingActivity;Lcn/nubia/touping/Dialog/DtsWiredDialog;)V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/DtsWiredDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 196
    invoke-virtual {v0}, Lcn/nubia/touping/Dialog/DtsWiredDialog;->show()V

    .line 197
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 118
    if-nez p1, :cond_0

    .line 165
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 162
    :sswitch_0
    invoke-virtual {p0}, Lcn/nubia/touping/USBMirrorSettingActivity;->finish()V

    goto :goto_0

    .line 121
    :sswitch_1
    iget-object v4, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mPrivateModeSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    iget-object v5, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mPrivateModeSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v5}, Lcn/nubia/touping/View/NubiaSwitch;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_1
    invoke-virtual {v4, v2}, Lcn/nubia/touping/View/NubiaSwitch;->setChecked(Z)V

    .line 122
    iget-object v2, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 123
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "PRIVATE_MODE_USB"

    iget-object v3, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mPrivateModeSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v3}, Lcn/nubia/touping/View/NubiaSwitch;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 125
    const-string v2, "PRIVATE_MODE_USB"

    invoke-static {v2, p0}, Lcn/nubia/touping/Utils/PrivacyModeUtils;->tellAMSPrivateModeStatus(Ljava/lang/String;Landroid/content/Context;)V

    .line 126
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setNubiaTouPingStatus2SystemUSB(Landroid/content/Context;)V

    .line 127
    invoke-static {p0}, Lcn/nubia/touping/Utils/TrackUtils;->sendPrivateModeUSB(Landroid/content/Context;)V

    .line 128
    iget-object v2, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mPrivateModeSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v2}, Lcn/nubia/touping/View/NubiaSwitch;->isChecked()Z

    move-result v2

    invoke-static {p0, v2}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->addGlobalSettings(Landroid/content/Context;Z)V

    .line 129
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->sendCurrentPrivateModeStatus(Landroid/content/Context;)V

    goto :goto_0

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    move v2, v3

    .line 121
    goto :goto_1

    .line 132
    :sswitch_2
    invoke-direct {p0}, Lcn/nubia/touping/USBMirrorSettingActivity;->showQualityDialog()V

    goto :goto_0

    .line 135
    :sswitch_3
    invoke-direct {p0}, Lcn/nubia/touping/USBMirrorSettingActivity;->showdtsWiredDialog()V

    goto :goto_0

    .line 139
    :sswitch_4
    invoke-direct {p0}, Lcn/nubia/touping/USBMirrorSettingActivity;->showSoundSourceDialog()V

    goto :goto_0

    .line 145
    :sswitch_5
    invoke-static {}, Lcn/nubia/touping/Utils/PhoneInfo;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 146
    const-string v2, "USBMirrorSettingActivity"

    const-string v3, "isMonkeyRunning is clicked wired_USB_mode"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/touping/USBMirrorSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wiredToupingSwitchForTurnUSBTest"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 150
    .local v1, "switchStatus":I
    if-lez v1, :cond_4

    move v1, v3

    .line 151
    :goto_2
    if-lez v1, :cond_5

    .line 152
    iget-object v3, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->wired_USB_mode_switcher:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v3, v2}, Lcn/nubia/touping/View/NubiaSwitch;->setChecked(Z)V

    .line 159
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcn/nubia/touping/USBMirrorSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wiredToupingSwitchForTurnUSBTest"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    move v1, v2

    .line 150
    goto :goto_2

    .line 154
    :cond_5
    iget-object v2, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->wired_USB_mode_switcher:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v2, v3}, Lcn/nubia/touping/View/NubiaSwitch;->setChecked(Z)V

    .line 155
    sget-boolean v2, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-eqz v2, :cond_3

    .line 156
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->stopMediaCodec(Landroid/content/Context;)V

    goto :goto_3

    .line 119
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e00b1 -> :sswitch_0
        0x7f0e00b2 -> :sswitch_1
        0x7f0e00b8 -> :sswitch_2
        0x7f0e00bb -> :sswitch_4
        0x7f0e00be -> :sswitch_3
        0x7f0e00c4 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcn/nubia/touping/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f040028

    invoke-virtual {p0, v0}, Lcn/nubia/touping/USBMirrorSettingActivity;->setContentView(I)V

    .line 63
    invoke-static {p0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/USBMirrorSettingActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 64
    invoke-direct {p0}, Lcn/nubia/touping/USBMirrorSettingActivity;->initView()V

    .line 65
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcn/nubia/touping/BaseActivity;->onResume()V

    .line 112
    invoke-direct {p0}, Lcn/nubia/touping/USBMirrorSettingActivity;->initData()V

    .line 113
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorPlayingStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcn/nubia/touping/USBMirrorSettingActivity;->setBackground(Z)V

    .line 114
    return-void

    .line 113
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
