.class public Lcn/nubia/weather/ui/activity/UpgradeDialogHelper;
.super Ljava/lang/Object;
.source "UpgradeDialogHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpgradeDialogHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doInstall(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "versionData"    # Lcn/nubia/upgrade/model/VersionData;

    .prologue
    .line 52
    new-instance v0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, "builder":Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 54
    const v3, 0x7f090138

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 56
    const v3, 0x7f0900eb

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcn/nubia/weather/ui/activity/UpgradeDialogHelper$3;

    invoke-direct {v4}, Lcn/nubia/weather/ui/activity/UpgradeDialogHelper$3;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 63
    const v3, 0x7f0900ec

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcn/nubia/weather/ui/activity/UpgradeDialogHelper$4;

    invoke-direct {v4, p0, p1}, Lcn/nubia/weather/ui/activity/UpgradeDialogHelper$4;-><init>(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V

    invoke-virtual {v0, v3, v4}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 69
    invoke-virtual {v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->create()Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    move-result-object v2

    .line 71
    .local v2, "upgradeDialog":Lcn/nubia/commonui/app/NubiaCenterAlertDialog;
    :try_start_0
    invoke-virtual {v2}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "UpgradeDialogHelper"

    const-string v4, "Upgrade doInstall"

    invoke-static {v3, v4, v1}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static doUpgrade(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "versionData"    # Lcn/nubia/upgrade/model/VersionData;

    .prologue
    .line 17
    const-string v3, "UpgradeDialogHelper"

    const-string v4, "BaseActivity doUpgrade "

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {p0}, Lcn/nubia/weather/utils/NetUtil;->getNetworkState(Landroid/content/Context;)I

    move-result v2

    .line 19
    .local v2, "networkType":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 20
    const-string v3, "UpgradeDialogHelper"

    const-string v4, "onGetNewVersion mb"

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 23
    .local v0, "builder":Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 24
    const v3, 0x7f0900b7

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 26
    const/high16 v3, 0x1040000

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcn/nubia/weather/ui/activity/UpgradeDialogHelper$1;

    invoke-direct {v4}, Lcn/nubia/weather/ui/activity/UpgradeDialogHelper$1;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 34
    const v3, 0x7f090139

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcn/nubia/weather/ui/activity/UpgradeDialogHelper$2;

    invoke-direct {v4, p0, p1}, Lcn/nubia/weather/ui/activity/UpgradeDialogHelper$2;-><init>(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V

    invoke-virtual {v0, v3, v4}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 41
    invoke-virtual {v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->create()Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    move-result-object v1

    .line 42
    .local v1, "mDialog":Lcn/nubia/commonui/app/NubiaCenterAlertDialog;
    invoke-virtual {v1}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->show()V

    .line 48
    .end local v0    # "builder":Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .end local v1    # "mDialog":Lcn/nubia/commonui/app/NubiaCenterAlertDialog;
    :goto_0
    return-void

    .line 45
    :cond_0
    const-string v3, "UpgradeDialogHelper"

    const-string v4, "BaseActivity downloadNewVersion IN WIFI NETWORK "

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {p0}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcn/nubia/weather/presenter/OverAllControl;->downloadNewVersion(Lcn/nubia/upgrade/model/VersionData;)V

    goto :goto_0
.end method
