.class Lcn/nubia/music/app/task/Job$1;
.super Ljava/lang/Object;
.source "Job.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/app/task/Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/app/task/Job;


# direct methods
.method constructor <init>(Lcn/nubia/music/app/task/Job;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcn/nubia/music/app/task/Job$1;->a:Lcn/nubia/music/app/task/Job;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 21
    iget-object v0, p0, Lcn/nubia/music/app/task/Job$1;->a:Lcn/nubia/music/app/task/Job;

    invoke-virtual {v0}, Lcn/nubia/music/app/task/Job;->run()V

    .line 22
    iget-object v0, p0, Lcn/nubia/music/app/task/Job$1;->a:Lcn/nubia/music/app/task/Job;

    invoke-static {v0, v3}, Lcn/nubia/music/app/task/Job;->access$002(Lcn/nubia/music/app/task/Job;Z)Z

    .line 23
    invoke-static {}, Lcn/nubia/music/app/task/Job;->access$100()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcn/nubia/music/app/task/Job;->access$100()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/app/task/Job$1;->a:Lcn/nubia/music/app/task/Job;

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/music/app/task/Job$1;->a:Lcn/nubia/music/app/task/Job;

    invoke-static {v1}, Lcn/nubia/music/app/task/Job;->access$200(Lcn/nubia/music/app/task/Job;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " finished, bye!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcn/nubia/music/app/task/Job$1;->a:Lcn/nubia/music/app/task/Job;

    invoke-static {v0}, Lcn/nubia/music/app/task/Job;->access$300(Lcn/nubia/music/app/task/Job;)Lcn/nubia/music/app/task/ThreadPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcn/nubia/music/app/task/Job$1;->a:Lcn/nubia/music/app/task/Job;

    invoke-static {v0}, Lcn/nubia/music/app/task/Job;->access$300(Lcn/nubia/music/app/task/Job;)Lcn/nubia/music/app/task/ThreadPool;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/app/task/Job$1;->a:Lcn/nubia/music/app/task/Job;

    invoke-virtual {v0, v1}, Lcn/nubia/music/app/task/ThreadPool;->remove(Lcn/nubia/music/app/task/Job;)V

    .line 28
    :cond_0
    return-void
.end method
