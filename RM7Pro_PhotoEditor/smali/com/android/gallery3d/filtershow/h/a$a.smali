.class Lcom/android/gallery3d/filtershow/h/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/h/a;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/h/a;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/h/a$a;->a:Lcom/android/gallery3d/filtershow/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    sget-object p1, Lcom/android/gallery3d/filtershow/h/a;->g:Landroid/os/HandlerThread;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/h/a$a;->a:Lcom/android/gallery3d/filtershow/h/a;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/h/a;->b(Lcom/android/gallery3d/filtershow/h/a;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/h/a$a;->a:Lcom/android/gallery3d/filtershow/h/a;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/android/gallery3d/filtershow/h/a;->d(Lcom/android/gallery3d/filtershow/h/a;Z)Z

    sget-object p2, Lcom/android/gallery3d/filtershow/h/a;->g:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

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

    sget-object p1, Lcom/android/gallery3d/filtershow/h/a;->g:Landroid/os/HandlerThread;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/h/a$a;->a:Lcom/android/gallery3d/filtershow/h/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/h/a;->b(Lcom/android/gallery3d/filtershow/h/a;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/h/a$a;->a:Lcom/android/gallery3d/filtershow/h/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/h/a;->d(Lcom/android/gallery3d/filtershow/h/a;Z)Z

    sget-object v0, Lcom/android/gallery3d/filtershow/h/a;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
