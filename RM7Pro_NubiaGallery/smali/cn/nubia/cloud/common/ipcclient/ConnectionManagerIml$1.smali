.class Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml$1;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;


# direct methods
.method constructor <init>(Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml$1;->this$0:Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 30
    iget-object p1, p0, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml$1;->this$0:Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;

    invoke-static {p1}, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->access$0(Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 31
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml$1;->this$0:Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;

    invoke-static {v0}, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->access$1(Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;)Lcn/nubia/cloud/common/ipcclient/IServiceHandler;

    move-result-object v1

    invoke-interface {v1, p2}, Lcn/nubia/cloud/common/ipcclient/IServiceHandler;->onTransact(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->access$2(Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;Ljava/lang/Object;)V

    .line 32
    iget-object p2, p0, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml$1;->this$0:Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;

    invoke-static {p2}, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->access$0(Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 30
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

    .line 25
    iget-object p1, p0, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml$1;->this$0:Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;

    invoke-virtual {p1}, Lcn/nubia/cloud/common/ipcclient/ConnectionManagerIml;->disconnect()V

    return-void
.end method
