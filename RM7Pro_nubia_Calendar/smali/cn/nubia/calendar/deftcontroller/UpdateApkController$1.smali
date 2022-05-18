.class Lcn/nubia/calendar/deftcontroller/UpdateApkController$1;
.super Ljava/lang/Object;
.source "UpdateApkController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/deftcontroller/UpdateApkController;->checkUpgradeV2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/deftcontroller/UpdateApkController;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/deftcontroller/UpdateApkController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    .prologue
    .line 55
    iput-object p1, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$1;->this$0:Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$1;->this$0:Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    invoke-static {v0}, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->access$100(Lcn/nubia/calendar/deftcontroller/UpdateApkController;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$1;->this$0:Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    invoke-static {v0}, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->access$100(Lcn/nubia/calendar/deftcontroller/UpdateApkController;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CALENDAR"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$1;->this$0:Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    invoke-static {v0}, Lcn/nubia/calendar/deftcontroller/UpdateApkController;->access$200(Lcn/nubia/calendar/deftcontroller/UpdateApkController;)V

    .line 61
    :cond_0
    return-void
.end method
