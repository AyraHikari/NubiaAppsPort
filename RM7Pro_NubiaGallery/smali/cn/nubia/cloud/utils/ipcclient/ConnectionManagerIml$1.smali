.class Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml$1;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;


# direct methods
.method constructor <init>(Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml$1;->this$0:Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 31
    iget-object p1, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml$1;->this$0:Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;

    invoke-static {p1}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->access$1(Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 32
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml$1;->this$0:Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;

    invoke-static {v0}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->access$2(Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;)Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;

    move-result-object v1

    invoke-interface {v1, p2}, Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;->onTransact(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->access$3(Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;Ljava/lang/Object;)V

    .line 33
    iget-object p2, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml$1;->this$0:Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;

    invoke-static {p2}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->access$0(Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;)Lcn/nubia/cloud/utils/ipcclient/StatuMonitor;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml$1;->this$0:Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;

    invoke-static {v0}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->access$4(Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lcn/nubia/cloud/utils/ipcclient/StatuMonitor;->onServiceConnected(Ljava/lang/Object;)V

    .line 34
    iget-object p2, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml$1;->this$0:Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;

    invoke-static {p2}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->access$1(Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 31
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
    .locals 0

    .line 26
    iget-object p1, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml$1;->this$0:Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;

    invoke-virtual {p1}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->disconnect()V

    .line 27
    iget-object p1, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml$1;->this$0:Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;

    invoke-static {p1}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->access$0(Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;)Lcn/nubia/cloud/utils/ipcclient/StatuMonitor;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/cloud/utils/ipcclient/StatuMonitor;->onServiceDisconnected()V

    return-void
.end method
