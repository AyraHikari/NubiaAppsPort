.class public Lcn/nubia/music/app/update/MusicAppUpdateDialog;
.super Ljava/lang/Object;
.source "MusicAppUpdateDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showUpdateInfoDialog(Landroid/app/Activity;Lcn/nubia/upgrade/model/VersionData;Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 27
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    const-string v0, "layout_inflater"

    .line 29
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 31
    const v1, 0x7f030025

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 33
    const v0, 0x7f10008c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 34
    invoke-virtual {p1}, Lcn/nubia/upgrade/model/VersionData;->getUpgradeContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b013b

    invoke-static {v2}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lcn/nubia/upgrade/model/VersionData;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->CenterDialogBuilder(Landroid/content/Context;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    move-result-object v2

    .line 40
    invoke-virtual {v2, v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b013c

    new-instance v2, Lcn/nubia/music/app/update/MusicAppUpdateDialog$2;

    invoke-direct {v2, p0, p2, p1}, Lcn/nubia/music/app/update/MusicAppUpdateDialog$2;-><init>(Landroid/app/Activity;Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;Lcn/nubia/upgrade/model/VersionData;)V

    .line 41
    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0074

    new-instance v2, Lcn/nubia/music/app/update/MusicAppUpdateDialog$1;

    invoke-direct {v2, p1, p0, p2}, Lcn/nubia/music/app/update/MusicAppUpdateDialog$1;-><init>(Lcn/nubia/upgrade/model/VersionData;Landroid/app/Activity;Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;)V

    .line 69
    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->create()Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->show()V

    .line 84
    :cond_0
    return-void
.end method
