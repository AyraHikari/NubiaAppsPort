.class Lcn/nubia/calendar/deftcontroller/UpdateApkController$4;
.super Ljava/lang/Object;
.source "UpdateApkController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/deftcontroller/UpdateApkController;->doInstall(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/deftcontroller/UpdateApkController;

.field final synthetic val$versionData:Lcn/nubia/upgrade/model/VersionData;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/deftcontroller/UpdateApkController;Lcn/nubia/upgrade/model/VersionData;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    .prologue
    .line 246
    iput-object p1, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$4;->this$0:Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    iput-object p2, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$4;->val$versionData:Lcn/nubia/upgrade/model/VersionData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$4;->this$0:Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$4;->val$versionData:Lcn/nubia/upgrade/model/VersionData;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->installNewVersion(Lcn/nubia/upgrade/model/VersionData;)V

    .line 249
    return-void
.end method
