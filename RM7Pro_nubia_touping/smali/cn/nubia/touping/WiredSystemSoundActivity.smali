.class public Lcn/nubia/touping/WiredSystemSoundActivity;
.super Landroid/app/Activity;
.source "WiredSystemSoundActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "[WiredSystemSoundActivity]"

.field public static sInstance:Lcn/nubia/touping/WiredSystemSoundActivity;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mNeverAskCheckBox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private checkPrivateMode()V
    .locals 4

    .prologue
    .line 103
    const-string v2, "PRIVATE_MODE_WIRED"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 105
    .local v1, "privateMode":Z
    if-nez v1, :cond_0

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcn/nubia/touping/PrivateModeActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcn/nubia/touping/WiredSystemSoundActivity;->startActivity(Landroid/content/Intent;)V

    .line 109
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 56
    const-string v0, "WIRED_SOUND_OUTPUT_NEVER_ASK"

    iget-object v1, p0, Lcn/nubia/touping/WiredSystemSoundActivity;->mNeverAskCheckBox:Landroid/widget/CheckBox;

    .line 57
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 56
    invoke-static {p0, v0, v1}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->saveSharedPrefenrencesKeyValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 58
    const/4 v0, 0x0

    const v1, 0x7f050018

    invoke-virtual {p0, v0, v1}, Lcn/nubia/touping/WiredSystemSoundActivity;->overridePendingTransition(II)V

    .line 59
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 98
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/touping/WiredSystemSoundActivity;->finish()V

    .line 99
    invoke-direct {p0}, Lcn/nubia/touping/WiredSystemSoundActivity;->checkPrivateMode()V

    .line 100
    return-void

    .line 77
    :pswitch_0
    iget-object v2, p0, Lcn/nubia/touping/WiredSystemSoundActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcn/nubia/touping/WiredSystemSoundActivity;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "hdmi_for_voice=false"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 80
    :cond_0
    invoke-static {p0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 81
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 82
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "WIRED_SOUND_OUTPUT"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 88
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :pswitch_1
    iget-object v2, p0, Lcn/nubia/touping/WiredSystemSoundActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_1

    .line 89
    iget-object v2, p0, Lcn/nubia/touping/WiredSystemSoundActivity;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "hdmi_for_voice=true"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 91
    :cond_1
    invoke-static {p0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 92
    .restart local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "WIRED_SOUND_OUTPUT"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x7f0e009d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const-string v4, "[WiredSystemSoundActivity]"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const v4, 0x7f040026

    invoke-virtual {p0, v4}, Lcn/nubia/touping/WiredSystemSoundActivity;->setContentView(I)V

    .line 31
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcn/nubia/touping/WiredSystemSoundActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcn/nubia/touping/WiredSystemSoundActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 32
    iget-object v4, p0, Lcn/nubia/touping/WiredSystemSoundActivity;->mAudioManager:Landroid/media/AudioManager;

    if-nez v4, :cond_0

    .line 33
    const-string v4, "[WiredSystemSoundActivity]"

    const-string v5, "mAudioManager not found, exit."

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcn/nubia/touping/WiredSystemSoundActivity;->finish()V

    .line 51
    :goto_0
    return-void

    .line 37
    :cond_0
    const v4, 0x7f0e009e

    invoke-virtual {p0, v4}, Lcn/nubia/touping/WiredSystemSoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 38
    .local v3, "positiveBn":Landroid/view/View;
    const v4, 0x7f0e009d

    invoke-virtual {p0, v4}, Lcn/nubia/touping/WiredSystemSoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 39
    .local v1, "negativeBn":Landroid/view/View;
    const v4, 0x7f0e00c1

    invoke-virtual {p0, v4}, Lcn/nubia/touping/WiredSystemSoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcn/nubia/touping/WiredSystemSoundActivity;->mNeverAskCheckBox:Landroid/widget/CheckBox;

    .line 40
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    sput-object p0, Lcn/nubia/touping/WiredSystemSoundActivity;->sInstance:Lcn/nubia/touping/WiredSystemSoundActivity;

    .line 43
    invoke-virtual {p0}, Lcn/nubia/touping/WiredSystemSoundActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 44
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcn/nubia/touping/WiredSystemSoundActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->orientation:I

    .line 45
    .local v2, "orientation":I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 46
    invoke-virtual {p0}, Lcn/nubia/touping/WiredSystemSoundActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09005a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    :goto_1
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 48
    invoke-virtual {p0}, Lcn/nubia/touping/WiredSystemSoundActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 49
    invoke-virtual {p0}, Lcn/nubia/touping/WiredSystemSoundActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x51

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    .line 50
    const v4, 0x7f050016

    const v5, 0x7f050018

    invoke-virtual {p0, v4, v5}, Lcn/nubia/touping/WiredSystemSoundActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 46
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 69
    const-string v0, "[WiredSystemSoundActivity]"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/touping/WiredSystemSoundActivity;->sInstance:Lcn/nubia/touping/WiredSystemSoundActivity;

    .line 71
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 64
    return-void
.end method
