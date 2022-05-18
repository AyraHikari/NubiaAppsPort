.class Lcn/nubia/calendar/HomeActivity$7;
.super Landroid/database/ContentObserver;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/HomeActivity;->resisterNavigationbarOberver()V
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
    .line 729
    iput-object p1, p0, Lcn/nubia/calendar/HomeActivity$7;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 732
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/calendar/HomeActivity$7$1;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/HomeActivity$7$1;-><init>(Lcn/nubia/calendar/HomeActivity$7;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 738
    return-void
.end method
