.class final Lcn/nubia/calendar/submodule_alerts/AlertReceiver$1;
.super Ljava/lang/Object;
.source "AlertReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->createLocalCalendar(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcn/nubia/calendar/submodule_alerts/AlertReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 315
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertReceiver$1;->val$context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertReceiver$1;->val$context:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_CALENDAR"

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertReceiver$1;->val$context:Landroid/content/Context;

    const-string v2, "android.permission.READ_CALENDAR"

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 317
    .local v0, "hasReadAndWritePermission":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 318
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->access$000(Landroid/content/Context;)V

    .line 322
    .end local v0    # "hasReadAndWritePermission":Z
    :cond_0
    return-void

    .line 316
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
