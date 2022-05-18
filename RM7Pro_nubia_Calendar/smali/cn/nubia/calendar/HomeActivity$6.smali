.class Lcn/nubia/calendar/HomeActivity$6;
.super Landroid/database/ContentObserver;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/HomeActivity;->resisterReminderTimeObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/HomeActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/HomeActivity;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/HomeActivity;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 705
    iput-object p1, p0, Lcn/nubia/calendar/HomeActivity$6;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 714
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$6;->this$0:Lcn/nubia/calendar/HomeActivity;

    const-string v1, "android.permission.READ_CALENDAR"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    invoke-static {}, Lcn/nubia/calendar/util/ExecutorServiceHelp;->getInstance()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcn/nubia/calendar/HomeActivity$6$1;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/HomeActivity$6$1;-><init>(Lcn/nubia/calendar/HomeActivity$6;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 722
    :cond_0
    return-void
.end method
