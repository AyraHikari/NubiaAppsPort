.class Lcom/android/calculator2/ZteTrackManager$1;
.super Ljava/lang/Object;
.source "ZteTrackManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/ZteTrackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calculator2/ZteTrackManager;


# direct methods
.method constructor <init>(Lcom/android/calculator2/ZteTrackManager;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/calculator2/ZteTrackManager$1;->this$0:Lcom/android/calculator2/ZteTrackManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "ZteTrackManager"

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/calculator2/ZteTrackManager$ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object p1, Lcom/android/calculator2/ZteTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter p1

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/android/calculator2/ZteTrackManager$1;->this$0:Lcom/android/calculator2/ZteTrackManager;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/android/calculator2/ZteTrackManager;->access$202(Lcom/android/calculator2/ZteTrackManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 58
    iget-object p0, p0, Lcom/android/calculator2/ZteTrackManager$1;->this$0:Lcom/android/calculator2/ZteTrackManager;

    const/4 p2, 0x1

    invoke-static {p0, p2}, Lcom/android/calculator2/ZteTrackManager;->access$302(Lcom/android/calculator2/ZteTrackManager;Z)Z

    .line 59
    sget-object p0, Lcom/android/calculator2/ZteTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 60
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "ZteTrackManager"

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/calculator2/ZteTrackManager$ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object p1, Lcom/android/calculator2/ZteTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    monitor-enter p1

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/android/calculator2/ZteTrackManager$1;->this$0:Lcom/android/calculator2/ZteTrackManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calculator2/ZteTrackManager;->access$202(Lcom/android/calculator2/ZteTrackManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 68
    iget-object p0, p0, Lcom/android/calculator2/ZteTrackManager$1;->this$0:Lcom/android/calculator2/ZteTrackManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/calculator2/ZteTrackManager;->access$302(Lcom/android/calculator2/ZteTrackManager;Z)Z

    .line 69
    sget-object p0, Lcom/android/calculator2/ZteTrackManager;->sTrackThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 70
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
