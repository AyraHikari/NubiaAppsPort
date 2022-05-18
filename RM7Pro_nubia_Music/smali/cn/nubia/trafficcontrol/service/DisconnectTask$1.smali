.class Lcn/nubia/trafficcontrol/service/DisconnectTask$1;
.super Ljava/lang/Object;
.source "DisconnectTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/trafficcontrol/service/DisconnectTask;->trigger(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/trafficcontrol/service/DisconnectTask;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/nubia/trafficcontrol/service/DisconnectTask;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/nubia/trafficcontrol/service/DisconnectTask$1;->a:Lcn/nubia/trafficcontrol/service/DisconnectTask;

    iput-object p2, p0, Lcn/nubia/trafficcontrol/service/DisconnectTask$1;->b:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcn/nubia/trafficcontrol/service/DisconnectTask$1;->a:Lcn/nubia/trafficcontrol/service/DisconnectTask;

    invoke-static {v0}, Lcn/nubia/trafficcontrol/service/DisconnectTask;->access$0(Lcn/nubia/trafficcontrol/service/DisconnectTask;)Lcn/nubia/trafficcontrol/interfaces/IDisconnectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/trafficcontrol/service/DisconnectTask$1;->a:Lcn/nubia/trafficcontrol/service/DisconnectTask;

    invoke-static {v0}, Lcn/nubia/trafficcontrol/service/DisconnectTask;->access$0(Lcn/nubia/trafficcontrol/service/DisconnectTask;)Lcn/nubia/trafficcontrol/interfaces/IDisconnectListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/trafficcontrol/interfaces/IDisconnectListener;->isConnectionFree()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lcn/nubia/trafficcontrol/service/DisconnectTask;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unbind to remote service for too long not send data"

    invoke-static {v0, v1}, Lcn/nubia/analytic/util/NeoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcn/nubia/trafficcontrol/service/DisconnectTask$1;->a:Lcn/nubia/trafficcontrol/service/DisconnectTask;

    invoke-static {v0}, Lcn/nubia/trafficcontrol/service/DisconnectTask;->access$0(Lcn/nubia/trafficcontrol/service/DisconnectTask;)Lcn/nubia/trafficcontrol/interfaces/IDisconnectListener;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/trafficcontrol/service/DisconnectTask$1;->b:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcn/nubia/trafficcontrol/interfaces/IDisconnectListener;->disconnect(Landroid/content/Context;)V

    .line 55
    :cond_0
    return-void
.end method
