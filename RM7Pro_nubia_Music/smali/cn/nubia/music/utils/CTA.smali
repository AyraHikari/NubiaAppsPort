.class public Lcn/nubia/music/utils/CTA;
.super Ljava/lang/Object;
.source "CTA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/utils/CTA$OnBtnClickListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDK;->getInstance()Lcom/nubia/reyun/sdk/ReYunSDK;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nubia/reyun/sdk/ReYunSDK;->setSdkIsUseNet(Z)V

    .line 25
    const-string v0, "CTA_flag"

    invoke-static {v2, v0, v2}, Lcn/nubia/music/utils/SharedPrefersHelper;->putBoolean(ILjava/lang/String;Z)V

    .line 26
    return-void
.end method

.method public static isEnabled()Z
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x0

    const-string v1, "CTA_flag"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/SharedPrefersHelper;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static showCTADialog(Landroid/content/Context;Lcn/nubia/music/utils/CTA$OnBtnClickListener;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 29
    if-nez p0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 35
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    const-string v0, "layout_inflater"

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 41
    const v1, 0x7f030025

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->CenterDialogBuilder(Landroid/content/Context;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0037

    .line 43
    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0034

    new-instance v2, Lcn/nubia/music/utils/CTA$2;

    invoke-direct {v2, p0, p1}, Lcn/nubia/music/utils/CTA$2;-><init>(Landroid/content/Context;Lcn/nubia/music/utils/CTA$OnBtnClickListener;)V

    .line 44
    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0035

    new-instance v2, Lcn/nubia/music/utils/CTA$1;

    invoke-direct {v2, p0}, Lcn/nubia/music/utils/CTA$1;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->create()Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->show()V

    goto :goto_0
.end method
