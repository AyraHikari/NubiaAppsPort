.class Lcn/nubia/calendar/EventInfoFragment$1;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/EventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/EventInfoFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/EventInfoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 430
    iput-object p1, p0, Lcn/nubia/calendar/EventInfoFragment$1;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 433
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/calendar/EventInfoFragment$1$1;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/EventInfoFragment$1$1;-><init>(Lcn/nubia/calendar/EventInfoFragment$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 441
    return-void
.end method
