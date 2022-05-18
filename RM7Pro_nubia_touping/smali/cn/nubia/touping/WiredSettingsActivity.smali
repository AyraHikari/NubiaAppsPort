.class public Lcn/nubia/touping/WiredSettingsActivity;
.super Lcn/nubia/touping/BaseActivity;
.source "WiredSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "[WiredSettingsActivity]"


# instance fields
.field private imageViewShowHZ:Landroid/widget/ImageView;

.field private limitFPS60_mode:Landroid/view/View;

.field private limiteFPS60:Lcn/nubia/touping/View/NubiaSwitch;

.field private mBackView:Landroid/view/View;

.field private mHdmiDialog:Landroid/app/Dialog;

.field private mHdmiModeView:Landroid/view/View;

.field private mPrivateModeSwitch:Lcn/nubia/touping/View/NubiaSwitch;

.field private mPrivateModeView:Landroid/view/View;

.field private mScreenOrientationDialog:Landroid/app/Dialog;

.field private mScreenOrientationTextView:Landroid/widget/TextView;

.field private mScreenOrientationView:Landroid/view/View;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mShowFpsSwitch:Lcn/nubia/touping/View/NubiaSwitch;

.field private mShowFpsView:Landroid/view/View;

.field private mSoundOutputSwitch:Lcn/nubia/touping/View/NubiaSwitch;

.field private mSoundOutputView:Landroid/view/View;

.field private testViewShowHZ:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcn/nubia/touping/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/touping/WiredSettingsActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/WiredSettingsActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/touping/WiredSettingsActivity;->mHdmiDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$002(Lcn/nubia/touping/WiredSettingsActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/WiredSettingsActivity;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 30
    iput-object p1, p0, Lcn/nubia/touping/WiredSettingsActivity;->mHdmiDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/touping/WiredSettingsActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/touping/WiredSettingsActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/touping/WiredSettingsActivity;->mScreenOrientationDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/touping/WiredSettingsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/WiredSettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/touping/WiredSettingsActivity;->setOrientation(Z)V

    return-void
.end method

.method private initPreference()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 71
    const-string v3, "PRIVATE_MODE_WIRED"

    invoke-static {p0, v3, v4}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 73
    .local v0, "privateMode":Z
    iget-object v3, p0, Lcn/nubia/touping/WiredSettingsActivity;->mPrivateModeSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v3, v0}, Lcn/nubia/touping/View/NubiaSwitch;->setChecked(Z)V

    .line 74
    const-string v3, "WIRED_SHOW_FPS"

    invoke-static {p0, v3, v4}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 76
    .local v1, "showFps":Z
    iget-object v3, p0, Lcn/nubia/touping/WiredSettingsActivity;->mShowFpsSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v3, v1}, Lcn/nubia/touping/View/NubiaSwitch;->setChecked(Z)V

    .line 77
    const-string v3, "WIRED_SOUND_OUTPUT"

    invoke-static {p0, v3, v4}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 79
    .local v2, "soundOutput":Z
    iget-object v3, p0, Lcn/nubia/touping/WiredSettingsActivity;->mSoundOutputSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v3, v2}, Lcn/nubia/touping/View/NubiaSwitch;->setChecked(Z)V

    .line 80
    return-void
.end method

.method private initViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 83
    const v1, 0x7f0e00c9

    invoke-virtual {p0, v1}, Lcn/nubia/touping/WiredSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/touping/WiredSettingsActivity;->mPrivateModeView:Landroid/view/View;

    .line 84
    const v1, 0x7f0e00cb

    invoke-virtual {p0, v1}, Lcn/nubia/touping/WiredSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/touping/WiredSettingsActivity;->limitFPS60_mode:Landroid/view/View;

    .line 85
    const v1, 0x7f0e00cd

    invoke-virtual {p0, v1}, Lcn/nubia/touping/WiredSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/touping/WiredSettingsActivity;->mShowFpsView:Landroid/view/View;

    .line 86
    const v1, 0x7f0e00cf

    invoke-virtual {p0, v1}, Lcn/nubia/touping/WiredSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/touping/WiredSettingsActivity;->mSoundOutputView:Landroid/view/View;

    .line 87
    const v1, 0x7f0e00d3

    invoke-virtual {p0, v1}, Lcn/nubia/touping/WiredSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/touping/WiredSettingsActivity;->mHdmiModeView:Landroid/view/View;

    .line 88
    const v1, 0x7f0e00d1

    invoke-virtual {p0, v1}, Lcn/nubia/touping/WiredSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/touping/WiredSettingsActivity;->mScreenOrientationView:Landroid/view/View;

    .line 89
    const v1, 0x7f0e00d2

    invoke-virtual {p0, v1}, Lcn/nubia/touping/WiredSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/touping/WiredSettingsActivity;->mScreenOrientationTextView:Landroid/widget/TextView;

    .line 90
    const v1, 0x7f0e00c6

    invoke-virtual {p0, v1}, Lcn/nubia/touping/WiredSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/touping/WiredSettingsActivity;->mBackView:Landroid/view/View;

    .line 91
    const v1, 0x7f0e00ca

    invoke-virtual {p0, v1}, Lcn/nubia/touping/WiredSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/touping/View/NubiaSwitch;

    iput-object v1, p0, Lcn/nubia/touping/WiredSettingsActivity;->mPrivateModeSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    .line 92
    const v1, 0x7f0e00c7

    invoke-virtual {p0, v1}, Lcn/nubia/touping/WiredSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/nubia/touping/WiredSettingsActivity;->imageViewShowHZ:Landroid/widget/ImageView;

    .line 93
    const v1, 0x7f0e00c8

    invoke-virtual {p0, v1}, Lcn/nubia/touping/WiredSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/touping/WiredSettingsActivity;->testViewShowHZ:Landroid/widget/TextView;

    .line 94
    invoke-static {}, Lcn/nubia/touping/Utils/PhoneInfo;->support165HZ()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcn/nubia/touping/WiredSettingsActivity;->imageViewShowHZ:Landroid/widget/ImageView;

    const v2, 0x7f0200c1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    iget-object v1, p0, Lcn/nubia/touping/WiredSettingsActivity;->testViewShowHZ:Landroid/widget/TextView;

    const v2, 0x7f080099

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 105
    :goto_0
    const v1, 0x7f0e00cc

    invoke-virtual {p0, v1}, Lcn/nubia/touping/WiredSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/touping/View/NubiaSwitch;

    iput-object v1, p0, Lcn/nubia/touping/WiredSettingsActivity;->limiteFPS60:Lcn/nubia/touping/View/NubiaSwitch;

    .line 106
    invoke-virtual {p0}, Lcn/nubia/touping/WiredSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "limiteFPS60"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 107
    .local v0, "limitStatus":I
    if-lez v0, :cond_1

    .line 108
    iget-object v1, p0, Lcn/nubia/touping/WiredSettingsActivity;->limiteFPS60:Lcn/nubia/touping/View/NubiaSwitch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/touping/View/NubiaSwitch;->setChecked(Z)V

    .line 113
    :goto_1
    const v1, 0x7f0e00ce

    invoke-virtual {p0, v1}, Lcn/nubia/touping/WiredSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/touping/View/NubiaSwitch;

    iput-object v1, p0, Lcn/nubia/touping/WiredSettingsActivity;->mShowFpsSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    .line 114
    const v1, 0x7f0e00d0

    invoke-virtual {p0, v1}, Lcn/nubia/touping/WiredSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/touping/View/NubiaSwitch;

    iput-object v1, p0, Lcn/nubia/touping/WiredSettingsActivity;->mSoundOutputSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    .line 115
    iget-object v1, p0, Lcn/nubia/touping/WiredSettingsActivity;->mPrivateModeView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v1, p0, Lcn/nubia/touping/WiredSettingsActivity;->limitFPS60_mode:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v1, p0, Lcn/nubia/touping/WiredSettingsActivity;->mShowFpsView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v1, p0, Lcn/nubia/touping/WiredSettingsActivity;->mSoundOutputView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v1, p0, Lcn/nubia/touping/WiredSettingsActivity;->mHdmiModeView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v1, p0, Lcn/nubia/touping/WiredSettingsActivity;->mScreenOrientationView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v1, p0, Lcn/nubia/touping/WiredSettingsActivity;->mBackView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v2, p0, Lcn/nubia/touping/WiredSettingsActivity;->mScreenOrientationTextView:Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->getsInstance()Lcn/nubia/touping/Utils/hdmi/HdmiUtil;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f080070

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 126
    invoke-static {}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->getsInstance()Lcn/nubia/touping/Utils/hdmi/HdmiUtil;

    move-result-object v1

    new-instance v2, Lcn/nubia/touping/WiredSettingsActivity$1;

    invoke-direct {v2, p0}, Lcn/nubia/touping/WiredSettingsActivity$1;-><init>(Lcn/nubia/touping/WiredSettingsActivity;)V

    invoke-virtual {v1, v2}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->setOnHdmiPluggedChangedListener(Lcn/nubia/touping/Utils/hdmi/HdmiUtil$OnHdmiPluggedChangedListener;)V

    .line 139
    return-void

    .line 98
    .end local v0    # "limitStatus":I
    :cond_0
    iget-object v1, p0, Lcn/nubia/touping/WiredSettingsActivity;->imageViewShowHZ:Landroid/widget/ImageView;

    const v2, 0x7f0200c2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    iget-object v1, p0, Lcn/nubia/touping/WiredSettingsActivity;->testViewShowHZ:Landroid/widget/TextView;

    const v2, 0x7f08009a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 110
    .restart local v0    # "limitStatus":I
    :cond_1
    iget-object v1, p0, Lcn/nubia/touping/WiredSettingsActivity;->limiteFPS60:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v1, v3}, Lcn/nubia/touping/View/NubiaSwitch;->setChecked(Z)V

    goto :goto_1

    .line 123
    :cond_2
    const v1, 0x7f08006f

    goto :goto_2
.end method

.method private setEnabled(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 142
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 143
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 144
    check-cast v2, Landroid/view/ViewGroup;

    .line 145
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 146
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 147
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0, p2}, Lcn/nubia/touping/WiredSettingsActivity;->setEnabled(Landroid/view/View;Z)V

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v2    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private setOrientation(Z)V
    .locals 7
    .param p1, "portrait"    # Z

    .prologue
    .line 236
    iget-object v4, p0, Lcn/nubia/touping/WiredSettingsActivity;->mScreenOrientationTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v3, 0x7f080070

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    .line 239
    :try_start_0
    const-string v3, "nubia.os.ApplicationManager$Trigger"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 240
    .local v0, "cls":Ljava/lang/Class;
    const-string v3, "setSystemProperties"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 241
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v6, "persist.sys.nubia.hdmirotation"

    aput-object v6, v5, v3

    const/4 v6, 0x1

    if-eqz p1, :cond_1

    const-string v3, "portrait"

    :goto_1
    aput-object v3, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v3, "[WiredSettingsActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setOrientation() portrait : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_2
    return-void

    .line 236
    :cond_0
    const v3, 0x7f08006f

    goto :goto_0

    .line 241
    .restart local v0    # "cls":Ljava/lang/Class;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :cond_1
    const-string v3, "landscape"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 243
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "[WiredSettingsActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setOrientation() exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 233
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 156
    :pswitch_1
    iget-object v5, p0, Lcn/nubia/touping/WiredSettingsActivity;->mPrivateModeSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    iget-object v6, p0, Lcn/nubia/touping/WiredSettingsActivity;->mPrivateModeSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v6}, Lcn/nubia/touping/View/NubiaSwitch;->isChecked()Z

    move-result v6

    if-nez v6, :cond_1

    :goto_1
    invoke-virtual {v5, v3}, Lcn/nubia/touping/View/NubiaSwitch;->setChecked(Z)V

    .line 157
    iget-object v3, p0, Lcn/nubia/touping/WiredSettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 158
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "PRIVATE_MODE_WIRED"

    iget-object v4, p0, Lcn/nubia/touping/WiredSettingsActivity;->mPrivateModeSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v4}, Lcn/nubia/touping/View/NubiaSwitch;->isChecked()Z

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 159
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 160
    const-string v3, "PRIVATE_MODE_WIRED"

    invoke-static {v3, p0}, Lcn/nubia/touping/Utils/PrivacyModeUtils;->tellAMSPrivateModeStatus(Ljava/lang/String;Landroid/content/Context;)V

    .line 161
    iget-object v3, p0, Lcn/nubia/touping/WiredSettingsActivity;->mPrivateModeSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v3}, Lcn/nubia/touping/View/NubiaSwitch;->isChecked()Z

    move-result v3

    invoke-static {p0, v3}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->addGlobalSettings(Landroid/content/Context;Z)V

    .line 162
    invoke-static {p0}, Lcn/nubia/touping/Utils/TrackUtils;->sendPrivateModeWire(Landroid/content/Context;)V

    goto :goto_0

    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    move v3, v4

    .line 156
    goto :goto_1

    .line 166
    :pswitch_2
    invoke-virtual {p0}, Lcn/nubia/touping/WiredSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "limiteFPS60"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 167
    .local v2, "limitStatus":I
    if-lez v2, :cond_2

    move v2, v4

    .line 168
    :goto_2
    if-lez v2, :cond_3

    .line 169
    iget-object v5, p0, Lcn/nubia/touping/WiredSettingsActivity;->limiteFPS60:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v5, v3}, Lcn/nubia/touping/View/NubiaSwitch;->setChecked(Z)V

    .line 173
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "limitStatus = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 174
    invoke-virtual {p0}, Lcn/nubia/touping/WiredSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "limiteFPS60"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    move v2, v3

    .line 167
    goto :goto_2

    .line 171
    :cond_3
    iget-object v3, p0, Lcn/nubia/touping/WiredSettingsActivity;->limiteFPS60:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v3, v4}, Lcn/nubia/touping/View/NubiaSwitch;->setChecked(Z)V

    goto :goto_3

    .line 177
    .end local v2    # "limitStatus":I
    :pswitch_3
    iget-object v5, p0, Lcn/nubia/touping/WiredSettingsActivity;->mShowFpsSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    iget-object v6, p0, Lcn/nubia/touping/WiredSettingsActivity;->mShowFpsSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v6}, Lcn/nubia/touping/View/NubiaSwitch;->isChecked()Z

    move-result v6

    if-nez v6, :cond_4

    :goto_4
    invoke-virtual {v5, v3}, Lcn/nubia/touping/View/NubiaSwitch;->setChecked(Z)V

    .line 178
    iget-object v3, p0, Lcn/nubia/touping/WiredSettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 179
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "WIRED_SHOW_FPS"

    iget-object v4, p0, Lcn/nubia/touping/WiredSettingsActivity;->mShowFpsSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v4}, Lcn/nubia/touping/View/NubiaSwitch;->isChecked()Z

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 180
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_4
    move v3, v4

    .line 177
    goto :goto_4

    .line 184
    :pswitch_4
    iget-object v5, p0, Lcn/nubia/touping/WiredSettingsActivity;->mSoundOutputSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    iget-object v6, p0, Lcn/nubia/touping/WiredSettingsActivity;->mSoundOutputSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v6}, Lcn/nubia/touping/View/NubiaSwitch;->isChecked()Z

    move-result v6

    if-nez v6, :cond_6

    :goto_5
    invoke-virtual {v5, v3}, Lcn/nubia/touping/View/NubiaSwitch;->setChecked(Z)V

    .line 185
    iget-object v3, p0, Lcn/nubia/touping/WiredSettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 186
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "WIRED_SOUND_OUTPUT"

    iget-object v4, p0, Lcn/nubia/touping/WiredSettingsActivity;->mSoundOutputSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v4}, Lcn/nubia/touping/View/NubiaSwitch;->isChecked()Z

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcn/nubia/touping/WiredSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 189
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_5

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hdmi_for_voice="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/touping/WiredSettingsActivity;->mSoundOutputSwitch:Lcn/nubia/touping/View/NubiaSwitch;

    invoke-virtual {v4}, Lcn/nubia/touping/View/NubiaSwitch;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 192
    :cond_5
    invoke-static {p0}, Lcn/nubia/touping/Utils/TrackUtils;->sendSoundSiwtchWire(Landroid/content/Context;)V

    goto/16 :goto_0

    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_6
    move v3, v4

    .line 184
    goto :goto_5

    .line 196
    :pswitch_5
    iget-object v3, p0, Lcn/nubia/touping/WiredSettingsActivity;->mHdmiDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcn/nubia/touping/WiredSettingsActivity;->mHdmiDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 197
    iget-object v3, p0, Lcn/nubia/touping/WiredSettingsActivity;->mHdmiDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 198
    const/4 v3, 0x0

    iput-object v3, p0, Lcn/nubia/touping/WiredSettingsActivity;->mHdmiDialog:Landroid/app/Dialog;

    .line 200
    :cond_7
    new-instance v3, Lcn/nubia/touping/Dialog/HdmiNodesDialog;

    invoke-direct {v3, p0}, Lcn/nubia/touping/Dialog/HdmiNodesDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/nubia/touping/WiredSettingsActivity;->mHdmiDialog:Landroid/app/Dialog;

    .line 201
    iget-object v3, p0, Lcn/nubia/touping/WiredSettingsActivity;->mHdmiDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 205
    :pswitch_6
    invoke-static {}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->getsInstance()Lcn/nubia/touping/Utils/hdmi/HdmiUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->isHdmiPlugged()Z

    move-result v3

    if-nez v3, :cond_9

    .line 206
    iget-object v3, p0, Lcn/nubia/touping/WiredSettingsActivity;->mScreenOrientationDialog:Landroid/app/Dialog;

    if-nez v3, :cond_8

    .line 207
    new-instance v3, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;

    invoke-direct {v3, p0}, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/nubia/touping/WiredSettingsActivity;->mScreenOrientationDialog:Landroid/app/Dialog;

    .line 208
    iget-object v3, p0, Lcn/nubia/touping/WiredSettingsActivity;->mScreenOrientationDialog:Landroid/app/Dialog;

    check-cast v3, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;

    new-instance v4, Lcn/nubia/touping/WiredSettingsActivity$2;

    invoke-direct {v4, p0}, Lcn/nubia/touping/WiredSettingsActivity$2;-><init>(Lcn/nubia/touping/WiredSettingsActivity;)V

    invoke-virtual {v3, v4}, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;->setOnClickListener(Lcn/nubia/touping/Dialog/ScreenOrientationDialog$OnClickListener;)V

    .line 220
    :cond_8
    iget-object v3, p0, Lcn/nubia/touping/WiredSettingsActivity;->mScreenOrientationDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 221
    iget-object v3, p0, Lcn/nubia/touping/WiredSettingsActivity;->mScreenOrientationDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 224
    :cond_9
    const v3, 0x7f080056

    invoke-virtual {p0, v3}, Lcn/nubia/touping/WiredSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 230
    :pswitch_7
    invoke-virtual {p0}, Lcn/nubia/touping/WiredSettingsActivity;->finish()V

    goto/16 :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00c6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcn/nubia/touping/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f040029

    invoke-virtual {p0, v0}, Lcn/nubia/touping/WiredSettingsActivity;->setContentView(I)V

    .line 54
    invoke-static {p0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/WiredSettingsActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 55
    invoke-direct {p0}, Lcn/nubia/touping/WiredSettingsActivity;->initViews()V

    .line 56
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Lcn/nubia/touping/BaseActivity;->onDestroy()V

    .line 67
    invoke-static {}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->getsInstance()Lcn/nubia/touping/Utils/hdmi/HdmiUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->setOnHdmiPluggedChangedListener(Lcn/nubia/touping/Utils/hdmi/HdmiUtil$OnHdmiPluggedChangedListener;)V

    .line 68
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Lcn/nubia/touping/BaseActivity;->onResume()V

    .line 61
    invoke-direct {p0}, Lcn/nubia/touping/WiredSettingsActivity;->initPreference()V

    .line 62
    return-void
.end method
