.class Lb/a/b/a/j/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b/a/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/b/a/j/a;


# direct methods
.method constructor <init>(Lb/a/b/a/j/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/b/a/j/a$a;->a:Lb/a/b/a/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    sget-object p1, Lb/a/b/a/j/a;->f:Landroid/os/HandlerThread;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lb/a/b/a/j/a$a;->a:Lb/a/b/a/j/a;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lb/a/b/a/j/a;->b(Lb/a/b/a/j/a;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 3
    iget-object p2, p0, Lb/a/b/a/j/a$a;->a:Lb/a/b/a/j/a;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lb/a/b/a/j/a;->d(Lb/a/b/a/j/a;Z)Z

    .line 4
    sget-object p2, Lb/a/b/a/j/a;->f:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    sget-object p1, Lb/a/b/a/j/a;->f:Landroid/os/HandlerThread;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lb/a/b/a/j/a$a;->a:Lb/a/b/a/j/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/a/b/a/j/a;->b(Lb/a/b/a/j/a;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 3
    iget-object v0, p0, Lb/a/b/a/j/a$a;->a:Lb/a/b/a/j/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/a/b/a/j/a;->d(Lb/a/b/a/j/a;Z)Z

    .line 4
    sget-object v0, Lb/a/b/a/j/a;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
