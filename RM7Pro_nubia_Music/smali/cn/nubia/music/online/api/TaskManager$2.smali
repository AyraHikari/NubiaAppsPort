.class Lcn/nubia/music/online/api/TaskManager$2;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/online/api/TaskManager;->submit(Lcn/nubia/music/online/api/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/online/api/Task;

.field final synthetic b:Lcn/nubia/music/online/api/TaskManager;


# direct methods
.method constructor <init>(Lcn/nubia/music/online/api/TaskManager;Lcn/nubia/music/online/api/Task;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcn/nubia/music/online/api/TaskManager$2;->b:Lcn/nubia/music/online/api/TaskManager;

    iput-object p2, p0, Lcn/nubia/music/online/api/TaskManager$2;->a:Lcn/nubia/music/online/api/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcn/nubia/music/online/api/TaskManager$2;->a:Lcn/nubia/music/online/api/Task;

    invoke-virtual {v0}, Lcn/nubia/music/online/api/Task;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcn/nubia/music/online/api/TaskManager$2;->a:Lcn/nubia/music/online/api/Task;

    invoke-virtual {v0}, Lcn/nubia/music/online/api/Task;->cancel()V

    .line 112
    iget-object v0, p0, Lcn/nubia/music/online/api/TaskManager$2;->a:Lcn/nubia/music/online/api/Task;

    invoke-virtual {v0}, Lcn/nubia/music/online/api/Task;->timeout()V

    .line 114
    :cond_0
    return-void
.end method
