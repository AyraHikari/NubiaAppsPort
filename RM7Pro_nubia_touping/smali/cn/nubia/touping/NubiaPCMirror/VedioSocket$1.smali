.class Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;
.super Ljava/lang/Object;
.source "VedioSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->connenct(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$ipAddress:Ljava/lang/String;

.field final synthetic val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;

.field final synthetic val$port:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    .prologue
    .line 82
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    iput-object p2, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->val$ipAddress:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->val$port:Ljava/lang/String;

    iput-object p4, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;

    iput-object p5, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 86
    :try_start_0
    const-string v2, "VedioSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect start  ipAddress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->val$ipAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  PORT = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->val$port:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    invoke-static {v2, v3}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$002(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;Ljava/net/Socket;)Ljava/net/Socket;

    .line 88
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->val$ipAddress:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->val$port:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 89
    .local v1, "socketAddress":Ljava/net/SocketAddress;
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$000(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;)Ljava/net/Socket;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 90
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$000(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;)Ljava/net/Socket;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 92
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    invoke-static {v5}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$000(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;)Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v2, v3}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$102(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;Ljava/io/BufferedReader;)Ljava/io/BufferedReader;

    .line 93
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$000(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$202(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 94
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->val$activity:Landroid/app/Activity;

    new-instance v3, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1$1;

    invoke-direct {v3, p0}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1$1;-><init>(Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 102
    :cond_0
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$300(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;Z)V

    .line 104
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :try_start_1
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v2, v3}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$402(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;Ljava/util/List;)Ljava/util/List;

    .line 106
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :try_start_2
    const-string v2, "VedioSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect end  ipAddress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->val$ipAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   PORT = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->val$port:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->startSendmessage(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 114
    .end local v1    # "socketAddress":Ljava/net/SocketAddress;
    :goto_0
    return-void

    .line 106
    .restart local v1    # "socketAddress":Ljava/net/SocketAddress;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 109
    .end local v1    # "socketAddress":Ljava/net/SocketAddress;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$1;->val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$300(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;Z)V

    .line 112
    const-string v2, "VedioSocket"

    const-string v3, "connect exception"

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
