.class Lcn/nubia/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkConnectivityListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/common/NetworkConnectivityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/common/NetworkConnectivityListener;


# direct methods
.method private constructor <init>(Lcn/nubia/common/NetworkConnectivityListener;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcn/nubia/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcn/nubia/common/NetworkConnectivityListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/common/NetworkConnectivityListener;Lcn/nubia/common/NetworkConnectivityListener$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/common/NetworkConnectivityListener;
    .param p2, "x1"    # Lcn/nubia/common/NetworkConnectivityListener$1;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcn/nubia/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;-><init>(Lcn/nubia/common/NetworkConnectivityListener;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcn/nubia/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcn/nubia/common/NetworkConnectivityListener;

    .line 68
    invoke-static {v5}, Lcn/nubia/common/NetworkConnectivityListener;->access$000(Lcn/nubia/common/NetworkConnectivityListener;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 69
    :cond_0
    const-string v5, "NetworkConnectivityListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceived() called with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcn/nubia/common/NetworkConnectivityListener;

    invoke-static {v7}, Lcn/nubia/common/NetworkConnectivityListener;->access$100(Lcn/nubia/common/NetworkConnectivityListener;)Lcn/nubia/common/NetworkConnectivityListener$State;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/common/NetworkConnectivityListener$State;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_1
    return-void

    .line 73
    :cond_2
    const-string v5, "noConnectivity"

    .line 74
    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 76
    .local v3, "noConnectivity":Z
    if-eqz v3, :cond_3

    .line 77
    iget-object v5, p0, Lcn/nubia/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcn/nubia/common/NetworkConnectivityListener;

    sget-object v6, Lcn/nubia/common/NetworkConnectivityListener$State;->NOT_CONNECTED:Lcn/nubia/common/NetworkConnectivityListener$State;

    invoke-static {v5, v6}, Lcn/nubia/common/NetworkConnectivityListener;->access$102(Lcn/nubia/common/NetworkConnectivityListener;Lcn/nubia/common/NetworkConnectivityListener$State;)Lcn/nubia/common/NetworkConnectivityListener$State;

    .line 82
    :goto_0
    iget-object v6, p0, Lcn/nubia/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcn/nubia/common/NetworkConnectivityListener;

    const-string v5, "networkInfo"

    .line 83
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    .line 82
    invoke-static {v6, v5}, Lcn/nubia/common/NetworkConnectivityListener;->access$202(Lcn/nubia/common/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 84
    iget-object v6, p0, Lcn/nubia/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcn/nubia/common/NetworkConnectivityListener;

    const-string v5, "otherNetwork"

    .line 85
    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    .line 84
    invoke-static {v6, v5}, Lcn/nubia/common/NetworkConnectivityListener;->access$302(Lcn/nubia/common/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 87
    iget-object v5, p0, Lcn/nubia/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcn/nubia/common/NetworkConnectivityListener;

    const-string v6, "reason"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/common/NetworkConnectivityListener;->access$402(Lcn/nubia/common/NetworkConnectivityListener;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    iget-object v5, p0, Lcn/nubia/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcn/nubia/common/NetworkConnectivityListener;

    const-string v6, "isFailover"

    .line 89
    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 88
    invoke-static {v5, v6}, Lcn/nubia/common/NetworkConnectivityListener;->access$502(Lcn/nubia/common/NetworkConnectivityListener;Z)Z

    .line 98
    iget-object v5, p0, Lcn/nubia/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcn/nubia/common/NetworkConnectivityListener;

    invoke-static {v5}, Lcn/nubia/common/NetworkConnectivityListener;->access$600(Lcn/nubia/common/NetworkConnectivityListener;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 99
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Handler;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 100
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    .line 101
    .local v4, "target":Landroid/os/Handler;
    iget-object v5, p0, Lcn/nubia/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcn/nubia/common/NetworkConnectivityListener;

    invoke-static {v5}, Lcn/nubia/common/NetworkConnectivityListener;->access$600(Lcn/nubia/common/NetworkConnectivityListener;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 102
    .local v2, "message":Landroid/os/Message;
    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 79
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Handler;>;"
    .end local v2    # "message":Landroid/os/Message;
    .end local v4    # "target":Landroid/os/Handler;
    :cond_3
    iget-object v5, p0, Lcn/nubia/common/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcn/nubia/common/NetworkConnectivityListener;

    sget-object v6, Lcn/nubia/common/NetworkConnectivityListener$State;->CONNECTED:Lcn/nubia/common/NetworkConnectivityListener$State;

    invoke-static {v5, v6}, Lcn/nubia/common/NetworkConnectivityListener;->access$102(Lcn/nubia/common/NetworkConnectivityListener;Lcn/nubia/common/NetworkConnectivityListener$State;)Lcn/nubia/common/NetworkConnectivityListener$State;

    goto :goto_0
.end method
