.class final Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;
.super Landroid/support/v4/app/JobIntentService$WorkEnqueuer;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompatWorkEnqueuer"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

.field mLaunchingService:Z

.field private final mRunWakeLock:Landroid/os/PowerManager$WakeLock;

.field mServiceRunning:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mContext:Landroid/content/Context;

    .line 165
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 166
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 167
    iget-object v1, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 168
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mRunWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 169
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mRunWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 170
    return-void
.end method


# virtual methods
.method enqueueWork(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 174
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 175
    iget-object v1, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 177
    iget-object v1, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 178
    monitor-enter p0

    .line 179
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mLaunchingService:Z

    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mLaunchingService:Z

    .line 181
    iget-boolean v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mServiceRunning:Z

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 190
    :cond_0
    monitor-exit p0

    .line 192
    :cond_1
    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public serviceCreated()V
    .locals 1

    .prologue
    .line 196
    monitor-enter p0

    .line 198
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mServiceRunning:Z

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mServiceRunning:Z

    .line 200
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mRunWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 201
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 203
    :cond_0
    monitor-exit p0

    .line 204
    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public serviceDestroyed()V
    .locals 4

    .prologue
    .line 217
    monitor-enter p0

    .line 220
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mLaunchingService:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 223
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mServiceRunning:Z

    .line 224
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mRunWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 225
    monitor-exit p0

    .line 226
    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public serviceStartReceived()V
    .locals 1

    .prologue
    .line 208
    monitor-enter p0

    .line 211
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;->mLaunchingService:Z

    .line 212
    monitor-exit p0

    .line 213
    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
