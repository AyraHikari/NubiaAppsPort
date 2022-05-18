.class Lcn/nubia/calendar/EventInfoActivity$1;
.super Landroid/database/ContentObserver;
.source "EventInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/EventInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/EventInfoActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/EventInfoActivity;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/EventInfoActivity;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 232
    iput-object p1, p0, Lcn/nubia/calendar/EventInfoActivity$1;->this$0:Lcn/nubia/calendar/EventInfoActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 236
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoActivity$1;->this$0:Lcn/nubia/calendar/EventInfoActivity;

    const-string v1, "android.permission.READ_CALENDAR"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcn/nubia/calendar/EventInfoActivity$1$1;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/EventInfoActivity$1$1;-><init>(Lcn/nubia/calendar/EventInfoActivity$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 248
    :cond_0
    return-void
.end method
