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

    .prologue
    .line 24
    .local p0, "this":Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml$1;, "Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml.1;"
    iput-object p1, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml$1;->this$0:Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 31
    .local p0, "this":Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml$1;, "Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml.1;"
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml$1;->this$0:Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;

    invoke-static {v0}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->access$100(Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 32
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml$1;->this$0:Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;

    iget-object v2, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml$1;->this$0:Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;

    invoke-static {v2}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->access$300(Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;)Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;

    move-result-object v2

    invoke-interface {v2, p2}, Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;->onTransact(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->access$202(Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml$1;->this$0:Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;

    invoke-static {v0}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->access$000(Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;)Lcn/nubia/cloud/utils/ipcclient/StatuMonitor;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml$1;->this$0:Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;

    invoke-static {v2}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->access$200(Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lcn/nubia/cloud/utils/ipcclient/StatuMonitor;->onServiceConnected(Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml$1;->this$0:Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;

    invoke-static {v0}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->access$100(Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 35
    monitor-exit v1

    .line 36
    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 26
    .local p0, "this":Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml$1;, "Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml.1;"
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml$1;->this$0:Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;

    invoke-virtual {v0}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->disconnect()V

    .line 27
    iget-object v0, p0, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml$1;->this$0:Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;

    invoke-static {v0}, Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;->access$000(Lcn/nubia/cloud/utils/ipcclient/ConnectionManagerIml;)Lcn/nubia/cloud/utils/ipcclient/StatuMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/cloud/utils/ipcclient/StatuMonitor;->onServiceDisconnected()V

    .line 28
    return-void
.end method
