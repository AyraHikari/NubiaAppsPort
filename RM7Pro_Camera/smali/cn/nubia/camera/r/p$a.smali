.class Lcn/nubia/camera/r/p$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/r/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/r/p;


# direct methods
.method constructor <init>(Lcn/nubia/camera/r/p;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcn/nubia/camera/r/p$a;->a:Lcn/nubia/camera/r/p;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 75
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/r/p$a;->a:Lcn/nubia/camera/r/p;

    invoke-static {v0}, Lcn/nubia/camera/r/p;->a(Lcn/nubia/camera/r/p;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/r/p$a;->a:Lcn/nubia/camera/r/p;

    invoke-static {v1}, Lcn/nubia/camera/r/p;->a(Lcn/nubia/camera/r/p;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcn/nubia/camera/r/p$a;->a:Lcn/nubia/camera/r/p;

    invoke-static {v1}, Lcn/nubia/camera/r/p;->a(Lcn/nubia/camera/r/p;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 92
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 80
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcn/nubia/camera/r/p$a;->a:Lcn/nubia/camera/r/p;

    invoke-static {v1}, Lcn/nubia/camera/r/p;->b(Lcn/nubia/camera/r/p;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 85
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcn/nubia/camera/r/p$a;->a:Lcn/nubia/camera/r/p;

    invoke-static {v1}, Lcn/nubia/camera/r/p;->a(Lcn/nubia/camera/r/p;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 87
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 89
    :goto_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 92
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
