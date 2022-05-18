.class final Lcn/nubia/weather/ui/activity/UpgradeDialogHelper$2;
.super Ljava/lang/Object;
.source "UpgradeDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/ui/activity/UpgradeDialogHelper;->doUpgrade(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$versionData:Lcn/nubia/upgrade/model/VersionData;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/UpgradeDialogHelper$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcn/nubia/weather/ui/activity/UpgradeDialogHelper$2;->val$versionData:Lcn/nubia/upgrade/model/VersionData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 37
    const-string v0, "UpgradeDialogHelper"

    const-string v1, "BaseActivity downloadNewVersion IN Moblie NETWORK "

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/UpgradeDialogHelper$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/UpgradeDialogHelper$2;->val$versionData:Lcn/nubia/upgrade/model/VersionData;

    invoke-virtual {v0, v1}, Lcn/nubia/weather/presenter/OverAllControl;->downloadNewVersion(Lcn/nubia/upgrade/model/VersionData;)V

    .line 39
    return-void
.end method
