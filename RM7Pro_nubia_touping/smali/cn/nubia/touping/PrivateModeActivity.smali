.class public Lcn/nubia/touping/PrivateModeActivity;
.super Landroid/app/Activity;
.source "PrivateModeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "[PrivateModeActivity]"

.field public static sInstance:Lcn/nubia/touping/PrivateModeActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 45
    const/4 v0, 0x0

    const v1, 0x7f050018

    invoke-virtual {p0, v0, v1}, Lcn/nubia/touping/PrivateModeActivity;->overridePendingTransition(II)V

    .line 46
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 71
    :goto_0
    return-void

    .line 59
    :pswitch_0
    invoke-static {p0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 60
    .local v1, "mSharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 61
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "PRIVATE_MODE_WIRED"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 63
    const-string v2, "PRIVATE_MODE_WIRED"

    invoke-static {v2, p0}, Lcn/nubia/touping/Utils/PrivacyModeUtils;->tellAMSPrivateModeStatus(Ljava/lang/String;Landroid/content/Context;)V

    .line 64
    invoke-static {p0, v3}, Lcn/nubia/touping/Utils/OprateBuryingPointUtils;->addGlobalSettings(Landroid/content/Context;Z)V

    .line 65
    invoke-virtual {p0}, Lcn/nubia/touping/PrivateModeActivity;->finish()V

    goto :goto_0

    .line 68
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "mSharedPreferences":Landroid/content/SharedPreferences;
    :pswitch_1
    invoke-virtual {p0}, Lcn/nubia/touping/PrivateModeActivity;->finish()V

    goto :goto_0

    .line 57
    nop

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
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const-string v4, "[PrivateModeActivity]"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const v4, 0x7f040023

    invoke-virtual {p0, v4}, Lcn/nubia/touping/PrivateModeActivity;->setContentView(I)V

    .line 27
    const v4, 0x7f0e009e

    invoke-virtual {p0, v4}, Lcn/nubia/touping/PrivateModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 28
    .local v2, "mPositiveBn":Landroid/view/View;
    const v4, 0x7f0e009d

    invoke-virtual {p0, v4}, Lcn/nubia/touping/PrivateModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 29
    .local v1, "mNegativeBn":Landroid/view/View;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    sput-object p0, Lcn/nubia/touping/PrivateModeActivity;->sInstance:Lcn/nubia/touping/PrivateModeActivity;

    .line 32
    invoke-virtual {p0}, Lcn/nubia/touping/PrivateModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 33
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcn/nubia/touping/PrivateModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v3, v4, Landroid/content/res/Configuration;->orientation:I

    .line 34
    .local v3, "orientation":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 35
    invoke-virtual {p0}, Lcn/nubia/touping/PrivateModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09005a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    :goto_0
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 37
    invoke-virtual {p0}, Lcn/nubia/touping/PrivateModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 38
    invoke-virtual {p0}, Lcn/nubia/touping/PrivateModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x51

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    .line 39
    const v4, 0x7f050016

    const v5, 0x7f050018

    invoke-virtual {p0, v4, v5}, Lcn/nubia/touping/PrivateModeActivity;->overridePendingTransition(II)V

    .line 40
    return-void

    .line 35
    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 51
    const-string v0, "[PrivateModeActivity]"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/touping/PrivateModeActivity;->sInstance:Lcn/nubia/touping/PrivateModeActivity;

    .line 53
    return-void
.end method
