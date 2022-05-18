.class public abstract Landroid/support/v4/content/WakefulBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WakefulBroadcastReceiver.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final EXTRA_WAKE_LOCK_ID:Ljava/lang/String; = "android.support.content.wakelockid"

.field private static final mActiveWakeLocks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private static mNextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    .line 75
    const/4 v0, 0x1

    sput v0, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static completeWakefulIntent(Landroid/content/Intent;)Z
    .locals 7
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    const-string v4, "android.support.content.wakelockid"

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 125
    .local v0, "id":I
    if-nez v0, :cond_0

    .line 142
    :goto_0
    return v2

    .line 128
    :cond_0
    sget-object v4, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    monitor-enter v4

    .line 129
    :try_start_0
    sget-object v2, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager$WakeLock;

    .line 130
    .local v1, "wl":Landroid/os/PowerManager$WakeLock;
    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 132
    sget-object v2, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 133
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 141
    :cond_1
    const-string v2, "WakefulBroadcastReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No active wake lock id #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    monitor-exit v4

    move v2, v3

    goto :goto_0

    .line 143
    .end local v1    # "wl":Landroid/os/PowerManager$WakeLock;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 92
    sget-object v5, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    monitor-enter v5

    .line 93
    :try_start_0
    sget v1, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    .line 94
    .local v1, "id":I
    sget v4, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    .line 95
    sget v4, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    if-gtz v4, :cond_0

    .line 96
    const/4 v4, 0x1

    sput v4, Landroid/support/v4/content/WakefulBroadcastReceiver;->mNextId:I

    .line 99
    :cond_0
    const-string v4, "android.support.content.wakelockid"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 101
    .local v0, "comp":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 102
    const/4 v0, 0x0

    monitor-exit v5

    .line 111
    .end local v0    # "comp":Landroid/content/ComponentName;
    :goto_0
    return-object v0

    .line 105
    .restart local v0    # "comp":Landroid/content/ComponentName;
    :cond_1
    const-string v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 106
    .local v2, "pm":Landroid/os/PowerManager;
    const/4 v4, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wake:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 107
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 106
    invoke-virtual {v2, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 108
    .local v3, "wl":Landroid/os/PowerManager$WakeLock;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 109
    const-wide/32 v6, 0xea60

    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 110
    sget-object v4, Landroid/support/v4/content/WakefulBroadcastReceiver;->mActiveWakeLocks:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    monitor-exit v5

    goto :goto_0

    .line 112
    .end local v0    # "comp":Landroid/content/ComponentName;
    .end local v1    # "id":I
    .end local v2    # "pm":Landroid/os/PowerManager;
    .end local v3    # "wl":Landroid/os/PowerManager$WakeLock;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
