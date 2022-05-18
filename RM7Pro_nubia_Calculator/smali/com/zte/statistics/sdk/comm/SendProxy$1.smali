.class final Lcom/zte/statistics/sdk/comm/SendProxy$1;
.super Ljava/lang/Object;
.source "SendProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/statistics/sdk/comm/SendProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 51
    invoke-static {p2}, Lcom/zte/zms/INetProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/zms/INetProxy;

    move-result-object p0

    invoke-static {p0}, Lcom/zte/statistics/sdk/comm/SendProxy;->access$102(Lcom/zte/zms/INetProxy;)Lcom/zte/zms/INetProxy;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p0, 0x0

    .line 46
    invoke-static {p0}, Lcom/zte/statistics/sdk/comm/SendProxy;->access$002(Lcom/zte/statistics/sdk/comm/SendProxy;)Lcom/zte/statistics/sdk/comm/SendProxy;

    .line 47
    invoke-static {p0}, Lcom/zte/statistics/sdk/comm/SendProxy;->access$102(Lcom/zte/zms/INetProxy;)Lcom/zte/zms/INetProxy;

    return-void
.end method
