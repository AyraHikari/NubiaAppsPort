.class public Lcn/nubia/touping/SettingActivity;
.super Lcn/nubia/touping/BaseActivity;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LELINKBITRATE:I = 0xd3

.field private static final REQUEST_FLOAT_PERMISSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[SettingActivity]"


# instance fields
.field private bitrateNumForText:Landroid/widget/EditText;

.field private iFrameNumForText:Landroid/widget/EditText;

.field private mBackView:Landroid/view/View;

.field private mFilter:Landroid/content/IntentFilter;

.field private mFloatingWindowSwitch:Lcn/nubia/touping/View/NubiaSwitch;

.field private mFloatingWindowView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mPrivateModeSwitch:Lcn/nubia/touping/View/NubiaSwitch;

.field private mPrivateModeView:Landroid/view/View;

.field private mQualityTextView:Landroid/widget/TextView;

.field private mQualityTitle:Landroid/widget/TextView;

.field private mQualityView:Landroid/view/View;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSoundSourceTextView:Landroid/widget/TextView;

.field private mSoundSourceTitle:Landroid/widget/TextView;

.field private mSoundSourceView:Landroid/view/View;

.field private sendNumNow:Landroid/widget/Button;

.field private settings_dts:Landroid/view/View;

.field private settings_dts_text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcn/nubia/touping/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/touping/SettingActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/SettingActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcn/nubia/touping/SettingActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/touping/SettingActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/SettingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcn/nubia/touping/SettingActivity;->setBackground(Z)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/touping/SettingActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/SettingActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcn/nubia/touping/SettingActivity;->mSoundSourceTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/touping/SettingActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/SettingActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcn/nubia/touping/SettingActivity;->settings_dts_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/touping/SettingActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/SettingActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcn/nubia/touping/SettingActivity;->mQualityTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private initHandler()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcn/nubia/touping/SettingActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/touping/SettingActivity$1;-><init>(Lcn/nubia/touping/SettingActivity;)V

    iput-object v0, p0, Lcn/nubia/touping/SettingActivity;->mHandler:Landroid/os/Handler;

    .line 100
    return-void
.end method

.method private initPreference()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 147
    iget-object v6, p0, Lcn/nubia/touping/SettingActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v7, "SOUND_SOURCE"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 148
    .local v2, "id":I
    iget-object v6, p0, Lcn/nubia/touping/SettingActivity;->mSoundSourceTextView:Landroid/widget/TextView;

    invoke-static {p0, v2}, Lcn/nubia/touping/Dialog/SoundSourceDialog;->getSoundSourceTypeById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v6, p0, Lcn/nubia/touping/SettingActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v7, "SOUND_DTS_WIREDLESS"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 151
    .local v3, "id_dts":I
    iget-object v6, p0, Lcn/nubia/touping/SettingActivity;->settings_dts_text:Landroid/widget/TextView;

    invoke-static {p0, v3}, Lcn/nubia/touping/Dialog/DtsWiredLessDialog;->getSoundDtsTypeById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const-string v6, "PRIVATE_MODE_WIRELESS"

    invoke-static {p0, v6, v9}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    .line 155
    .local v4, "privateMode":Z
    const-string v6, "SCREEN_PROJECTION_QUALITY_20210706"

    invoke-static {p0, v6, v8}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesIntByKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 157
    .local v5, "quality":I
    iget-object v6, p0, Lcn/nubia/touping/SettingActivity;->mPrivateModeSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v6, v4}, Lcn/nubia/touping/View/NubiaSwitch;->setChecked(Z)V

    .line 159
    iget-object v6, p0, Lcn/nubia/touping/SettingActivity;->mQualityTextView:Landroid/widget/TextView;

    invoke-static {p0, v5}, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->getQualityTypeById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    invoke-static {}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->getInstance()Lcn/nubia/touping/Utils/FloatingWindowUtil;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->checkFloatPermission(Landroid/content/Context;)Z

    move-result v1

    .line 161
    .local v1, "hasPermission":Z
    if-eqz v1, :cond_0

    .line 162
    const-string v6, "FLOATING_WINDOW"

    invoke-static {p0, v6, v9}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 164
    .local v0, "floatingWindow":Z
    iget-object v6, p0, Lcn/nubia/touping/SettingActivity;->mFloatingWindowSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v6, v0}, Lcn/nubia/touping/View/NubiaSwitch;->setChecked(Z)V

    .line 168
    .end local v0    # "floatingWindow":Z
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v6, p0, Lcn/nubia/touping/SettingActivity;->mFloatingWindowSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v6, v8}, Lcn/nubia/touping/View/NubiaSwitch;->setChecked(Z)V

    goto :goto_0
.end method

.method private initReceiver()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcn/nubia/touping/SettingActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcn/nubia/touping/SettingActivity$2;

    invoke-direct {v0, p0}, Lcn/nubia/touping/SettingActivity$2;-><init>(Lcn/nubia/touping/SettingActivity;)V

    iput-object v0, p0, Lcn/nubia/touping/SettingActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/SettingActivity;->mFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "cn.nubia.touping.action.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/touping/SettingActivity;->mFilter:Landroid/content/IntentFilter;

    .line 135
    :cond_1
    iget-object v0, p0, Lcn/nubia/touping/SettingActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcn/nubia/touping/SettingActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/touping/SettingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 201
    const v0, 0x7f0e00b3

    invoke-virtual {p0, v0}, Lcn/nubia/touping/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/touping/View/NubiaSwitch;

    iput-object v0, p0, Lcn/nubia/touping/SettingActivity;->mPrivateModeSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    .line 202
    const v0, 0x7f0e00b5

    invoke-virtual {p0, v0}, Lcn/nubia/touping/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/touping/View/NubiaSwitch;

    iput-object v0, p0, Lcn/nubia/touping/SettingActivity;->mFloatingWindowSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    .line 203
    const v0, 0x7f0e00b2

    invoke-virtual {p0, v0}, Lcn/nubia/touping/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/SettingActivity;->mPrivateModeView:Landroid/view/View;

    .line 204
    const v0, 0x7f0e00b4

    invoke-virtual {p0, v0}, Lcn/nubia/touping/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/SettingActivity;->mFloatingWindowView:Landroid/view/View;

    .line 205
    const v0, 0x7f0e00b8

    invoke-virtual {p0, v0}, Lcn/nubia/touping/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/SettingActivity;->mQualityView:Landroid/view/View;

    .line 209
    iget-object v0, p0, Lcn/nubia/touping/SettingActivity;->mQualityView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    const v0, 0x7f0e00bb

    invoke-virtual {p0, v0}, Lcn/nubia/touping/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/SettingActivity;->mSoundSourceView:Landroid/view/View;

    .line 215
    const v0, 0x7f0e00be

    invoke-virtual {p0, v0}, Lcn/nubia/touping/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/SettingActivity;->settings_dts:Landroid/view/View;

    .line 216
    const v0, 0x7f0e00bc

    invoke-virtual {p0, v0}, Lcn/nubia/touping/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/touping/SettingActivity;->mSoundSourceTitle:Landroid/widget/TextView;

    .line 217
    const v0, 0x7f0e00b9

    invoke-virtual {p0, v0}, Lcn/nubia/touping/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/touping/SettingActivity;->mQualityTitle:Landroid/widget/TextView;

    .line 218
    const v0, 0x7f0e00b1

    invoke-virtual {p0, v0}, Lcn/nubia/touping/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/SettingActivity;->mBackView:Landroid/view/View;

    .line 219
    const v0, 0x7f0e00bd

    invoke-virtual {p0, v0}, Lcn/nubia/touping/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/touping/SettingActivity;->mSoundSourceTextView:Landroid/widget/TextView;

    .line 220
    const v0, 0x7f0e00c0

    invoke-virtual {p0, v0}, Lcn/nubia/touping/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/touping/SettingActivity;->settings_dts_text:Landroid/widget/TextView;

    .line 221
    const v0, 0x7f0e00ba

    invoke-virtual {p0, v0}, Lcn/nubia/touping/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/touping/SettingActivity;->mQualityTextView:Landroid/widget/TextView;

    .line 223
    iget-object v0, p0, Lcn/nubia/touping/SettingActivity;->mPrivateModeView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lcn/nubia/touping/SettingActivity;->mFloatingWindowView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcn/nubia/touping/SettingActivity;->mQualityView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcn/nubia/touping/SettingActivity;->mSoundSourceView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcn/nubia/touping/SettingActivity;->settings_dts:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcn/nubia/touping/SettingActivity;->mBackView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    return-void
.end method

.method private jugeMiracastStatus2Show()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 171
    invoke-static {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastWifiDisplayStatusUtils;->isMiracastTouPingStatus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcn/nubia/touping/SettingActivity;->mFloatingWindowView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 173
    iget-object v0, p0, Lcn/nubia/touping/SettingActivity;->mQualityView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 174
    iget-object v0, p0, Lcn/nubia/touping/SettingActivity;->mSoundSourceView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 175
    iget-object v0, p0, Lcn/nubia/touping/SettingActivity;->settings_dts:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 182
    :goto_0
    const v0, 0x7f0e00b6

    invoke-direct {p0, v0}, Lcn/nubia/touping/SettingActivity;->setTextViewColor(I)V

    .line 183
    const v0, 0x7f0e00b7

    invoke-direct {p0, v0}, Lcn/nubia/touping/SettingActivity;->setTextViewColor(I)V

    .line 184
    const v0, 0x7f0e00b9

    invoke-direct {p0, v0}, Lcn/nubia/touping/SettingActivity;->setTextViewColor(I)V

    .line 185
    const v0, 0x7f0e00ba

    invoke-direct {p0, v0}, Lcn/nubia/touping/SettingActivity;->setTextViewColor(I)V

    .line 186
    const v0, 0x7f0e00bc

    invoke-direct {p0, v0}, Lcn/nubia/touping/SettingActivity;->setTextViewColor(I)V

    .line 187
    const v0, 0x7f0e00bd

    invoke-direct {p0, v0}, Lcn/nubia/touping/SettingActivity;->setTextViewColor(I)V

    .line 188
    const v0, 0x7f0e00bf

    invoke-direct {p0, v0}, Lcn/nubia/touping/SettingActivity;->setTextViewColor(I)V

    .line 189
    const v0, 0x7f0e00c0

    invoke-direct {p0, v0}, Lcn/nubia/touping/SettingActivity;->setTextViewColor(I)V

    .line 190
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/SettingActivity;->mFloatingWindowView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 178
    iget-object v0, p0, Lcn/nubia/touping/SettingActivity;->mQualityView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 179
    iget-object v0, p0, Lcn/nubia/touping/SettingActivity;->mSoundSourceView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 180
    iget-object v0, p0, Lcn/nubia/touping/SettingActivity;->settings_dts:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method

.method private setBackground(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const v1, 0x7f0c0012

    .line 355
    iget-object v2, p0, Lcn/nubia/touping/SettingActivity;->mSoundSourceTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f0c0016

    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/touping/SettingActivity;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 356
    iget-object v0, p0, Lcn/nubia/touping/SettingActivity;->mSoundSourceTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcn/nubia/touping/SettingActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 357
    return-void

    :cond_0
    move v0, v1

    .line 355
    goto :goto_0

    .line 356
    :cond_1
    const v1, 0x7f0c0013

    goto :goto_1
.end method

.method private setTextViewColor(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 193
    invoke-static {p0}, Lcn/nubia/touping/MiracastTouPing/MiracastWifiDisplayStatusUtils;->isMiracastTouPingStatus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0, p1}, Lcn/nubia/touping/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0012

    invoke-virtual {p0, v1}, Lcn/nubia/touping/SettingActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/touping/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0016

    invoke-virtual {p0, v1}, Lcn/nubia/touping/SettingActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private showQualityDialog()V
    .locals 4

    .prologue
    .line 259
    new-instance v0, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;

    invoke-direct {v0, p0}, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;-><init>(Landroid/content/Context;)V

    .line 260
    .local v0, "dialog":Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;
    iget-object v1, p0, Lcn/nubia/touping/SettingActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "SCREEN_PROJECTION_QUALITY_20210706"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->setCheckedItem(I)V

    .line 261
    new-instance v1, Lcn/nubia/touping/SettingActivity$5;

    invoke-direct {v1, p0, v0}, Lcn/nubia/touping/SettingActivity$5;-><init>(Lcn/nubia/touping/SettingActivity;Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;)V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 271
    invoke-virtual {v0}, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->show()V

    .line 272
    return-void
.end method

.method private showSoundSourceDialog()V
    .locals 4

    .prologue
    .line 233
    new-instance v0, Lcn/nubia/touping/Dialog/SoundSourceDialog;

    invoke-direct {v0, p0}, Lcn/nubia/touping/Dialog/SoundSourceDialog;-><init>(Landroid/content/Context;)V

    .line 234
    .local v0, "soundSourceDialog":Lcn/nubia/touping/Dialog/SoundSourceDialog;
    iget-object v1, p0, Lcn/nubia/touping/SettingActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "SOUND_SOURCE"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/SoundSourceDialog;->setCheckedItem(I)V

    .line 235
    new-instance v1, Lcn/nubia/touping/SettingActivity$3;

    invoke-direct {v1, p0, v0}, Lcn/nubia/touping/SettingActivity$3;-><init>(Lcn/nubia/touping/SettingActivity;Lcn/nubia/touping/Dialog/SoundSourceDialog;)V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/SoundSourceDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 242
    invoke-virtual {v0}, Lcn/nubia/touping/Dialog/SoundSourceDialog;->show()V

    .line 243
    return-void
.end method

.method private showdtsWiredlessDialog()V
    .locals 4

    .prologue
    .line 246
    new-instance v0, Lcn/nubia/touping/Dialog/DtsWiredLessDialog;

    invoke-direct {v0, p0}, Lcn/nubia/touping/Dialog/DtsWiredLessDialog;-><init>(Landroid/content/Context;)V

    .line 247
    .local v0, "dtsWiredLessDialog":Lcn/nubia/touping/Dialog/DtsWiredLessDialog;
    iget-object v1, p0, Lcn/nubia/touping/SettingActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "SOUND_DTS_WIREDLESS"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/DtsWiredLessDialog;->setCheckedItem(I)V

    .line 248
    new-instance v1, Lcn/nubia/touping/SettingActivity$4;

    invoke-direct {v1, p0, v0}, Lcn/nubia/touping/SettingActivity$4;-><init>(Lcn/nubia/touping/SettingActivity;Lcn/nubia/touping/Dialog/DtsWiredLessDialog;)V

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Dialog/DtsWiredLessDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 255
    invoke-virtual {v0}, Lcn/nubia/touping/Dialog/DtsWiredLessDialog;->show()V

    .line 256
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 335
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/touping/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 336
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 337
    if-ne p1, v1, :cond_2

    .line 338
    iget-object v2, p0, Lcn/nubia/touping/SettingActivity;->mFloatingWindowSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    iget-object v3, p0, Lcn/nubia/touping/SettingActivity;->mFloatingWindowSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v3}, Lcn/nubia/touping/View/NubiaSwitch;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_0
    invoke-virtual {v2, v1}, Lcn/nubia/touping/View/NubiaSwitch;->setChecked(Z)V

    .line 339
    iget-object v1, p0, Lcn/nubia/touping/SettingActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 340
    .local v0, "editor1":Landroid/content/SharedPreferences$Editor;
    const-string v1, "FLOATING_WINDOW"

    iget-object v2, p0, Lcn/nubia/touping/SettingActivity;->mFloatingWindowSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v2}, Lcn/nubia/touping/View/NubiaSwitch;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 341
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 342
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorPlayingStatus()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    :cond_0
    iget-object v1, p0, Lcn/nubia/touping/SettingActivity;->mFloatingWindowSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v1}, Lcn/nubia/touping/View/NubiaSwitch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 344
    invoke-static {}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->getInstance()Lcn/nubia/touping/Utils/FloatingWindowUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->showDelayTime()V

    .line 349
    :cond_1
    :goto_1
    invoke-static {p0}, Lcn/nubia/touping/Utils/TrackUtils;->sendProjectionDisplayModeWireLess(Landroid/content/Context;)V

    .line 352
    .end local v0    # "editor1":Landroid/content/SharedPreferences$Editor;
    :cond_2
    return-void

    .line 338
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 346
    .restart local v0    # "editor1":Landroid/content/SharedPreferences$Editor;
    :cond_4
    invoke-static {}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->getInstance()Lcn/nubia/touping/Utils/FloatingWindowUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->hideDelayTime()V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 331
    :goto_0
    :pswitch_0
    return-void

    .line 281
    :pswitch_1
    iget-object v6, p0, Lcn/nubia/touping/SettingActivity;->mPrivateModeSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    iget-object v7, p0, Lcn/nubia/touping/SettingActivity;->mPrivateModeSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v7}, Lcn/nubia/touping/View/NubiaSwitch;->isChecked()Z

    move-result v7

    if-nez v7, :cond_0

    :goto_1
    invoke-virtual {v6, v4}, Lcn/nubia/touping/View/NubiaSwitch;->setChecked(Z)V

    .line 282
    iget-object v4, p0, Lcn/nubia/touping/SettingActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 283
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "PRIVATE_MODE_WIRELESS"

    iget-object v5, p0, Lcn/nubia/touping/SettingActivity;->mPrivateModeSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v5}, Lcn/nubia/touping/View/NubiaSwitch;->isChecked()Z

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 284
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 285
    const-string v4, "PRIVATE_MODE_WIRELESS"

    invoke-static {v4, p0}, Lcn/nubia/touping/Utils/PrivacyModeUtils;->tellAMSPrivateModeStatus(Ljava/lang/String;Landroid/content/Context;)V

    .line 286
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->setNubiaTouPingStatus2System(Landroid/content/Context;)V

    .line 287
    invoke-static {p0}, Lcn/nubia/touping/Utils/TrackUtils;->sendPrivateModeWireLess(Landroid/content/Context;)V

    .line 288
    iget-object v4, p0, Lcn/nubia/touping/SettingActivity;->mPrivateModeSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v4}, Lcn/nubia/touping/View/NubiaSwitch;->isChecked()Z

    move-result v4

    invoke-static {p0, v4}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->addGlobalSettings(Landroid/content/Context;Z)V

    .line 289
    invoke-static {p0}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->sendCurrentPrivateModeStatus(Landroid/content/Context;)V

    goto :goto_0

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    move v4, v5

    .line 281
    goto :goto_1

    .line 292
    :pswitch_2
    invoke-static {}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->getInstance()Lcn/nubia/touping/Utils/FloatingWindowUtil;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->checkFloatPermission(Landroid/content/Context;)Z

    move-result v2

    .line 293
    .local v2, "hasPermission":Z
    if-nez v2, :cond_1

    .line 294
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    .local v3, "intent":Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcn/nubia/touping/SettingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 296
    invoke-virtual {p0, v3, v4}, Lcn/nubia/touping/SettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 299
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v6, p0, Lcn/nubia/touping/SettingActivity;->mFloatingWindowSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    iget-object v7, p0, Lcn/nubia/touping/SettingActivity;->mFloatingWindowSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v7}, Lcn/nubia/touping/View/NubiaSwitch;->isChecked()Z

    move-result v7

    if-nez v7, :cond_4

    :goto_2
    invoke-virtual {v6, v4}, Lcn/nubia/touping/View/NubiaSwitch;->setChecked(Z)V

    .line 300
    iget-object v4, p0, Lcn/nubia/touping/SettingActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 301
    .local v1, "editor1":Landroid/content/SharedPreferences$Editor;
    const-string v4, "FLOATING_WINDOW"

    iget-object v5, p0, Lcn/nubia/touping/SettingActivity;->mFloatingWindowSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v5}, Lcn/nubia/touping/View/NubiaSwitch;->isChecked()Z

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 302
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 303
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorPlayingStatus()Z

    move-result v4

    if-nez v4, :cond_2

    sget-boolean v4, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->flagForWiredTouPing:Z

    if-nez v4, :cond_3

    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 304
    :cond_2
    iget-object v4, p0, Lcn/nubia/touping/SettingActivity;->mFloatingWindowSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v4}, Lcn/nubia/touping/View/NubiaSwitch;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 305
    invoke-static {}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->getInstance()Lcn/nubia/touping/Utils/FloatingWindowUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->showDelayTime()V

    .line 310
    :cond_3
    :goto_3
    invoke-static {p0}, Lcn/nubia/touping/Utils/TrackUtils;->sendProjectionDisplayModeWireLess(Landroid/content/Context;)V

    goto/16 :goto_0

    .end local v1    # "editor1":Landroid/content/SharedPreferences$Editor;
    :cond_4
    move v4, v5

    .line 299
    goto :goto_2

    .line 307
    .restart local v1    # "editor1":Landroid/content/SharedPreferences$Editor;
    :cond_5
    invoke-static {}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->getInstance()Lcn/nubia/touping/Utils/FloatingWindowUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/touping/Utils/FloatingWindowUtil;->hideDelayTime()V

    goto :goto_3

    .line 313
    .end local v1    # "editor1":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "hasPermission":Z
    :pswitch_3
    invoke-direct {p0}, Lcn/nubia/touping/SettingActivity;->showQualityDialog()V

    goto/16 :goto_0

    .line 316
    :pswitch_4
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorPlayingStatus()Z

    move-result v4

    if-nez v4, :cond_6

    .line 317
    invoke-direct {p0}, Lcn/nubia/touping/SettingActivity;->showSoundSourceDialog()V

    goto/16 :goto_0

    .line 319
    :cond_6
    const v4, 0x7f080085

    invoke-virtual {p0, v4}, Lcn/nubia/touping/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 323
    :pswitch_5
    invoke-direct {p0}, Lcn/nubia/touping/SettingActivity;->showdtsWiredlessDialog()V

    goto/16 :goto_0

    .line 326
    :pswitch_6
    invoke-virtual {p0}, Lcn/nubia/touping/SettingActivity;->finish()V

    goto/16 :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00b1
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcn/nubia/touping/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f040025

    invoke-virtual {p0, v0}, Lcn/nubia/touping/SettingActivity;->setContentView(I)V

    .line 79
    invoke-static {p0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/SettingActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 80
    invoke-direct {p0}, Lcn/nubia/touping/SettingActivity;->initView()V

    .line 81
    invoke-direct {p0}, Lcn/nubia/touping/SettingActivity;->initHandler()V

    .line 82
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Lcn/nubia/touping/BaseActivity;->onPause()V

    .line 141
    iget-object v0, p0, Lcn/nubia/touping/SettingActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcn/nubia/touping/SettingActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/nubia/touping/SettingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 144
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcn/nubia/touping/BaseActivity;->onResume()V

    .line 105
    invoke-direct {p0}, Lcn/nubia/touping/SettingActivity;->initPreference()V

    .line 106
    invoke-direct {p0}, Lcn/nubia/touping/SettingActivity;->initReceiver()V

    .line 107
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorPlayingStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->getNubiaTouPingStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcn/nubia/touping/SettingActivity;->setBackground(Z)V

    .line 108
    invoke-direct {p0}, Lcn/nubia/touping/SettingActivity;->jugeMiracastStatus2Show()V

    .line 109
    return-void

    .line 107
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
