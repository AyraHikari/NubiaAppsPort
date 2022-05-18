.class Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;
.super Ljava/lang/Object;
.source "ReverseControlSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->connenct(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$OnConnectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$ipAddress:Ljava/lang/String;

.field final synthetic val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$OnConnectListener;

.field final synthetic val$port:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$OnConnectListener;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    .prologue
    .line 80
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    iput-object p2, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->val$ipAddress:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->val$port:Ljava/lang/String;

    iput-object p4, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->val$activity:Landroid/app/Activity;

    iput-object p5, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$OnConnectListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 84
    const/4 v5, 0x0

    :try_start_0
    sput-boolean v5, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->hasConnectedSuccessStatus:Z

    .line 85
    const-string v5, "ReverseControlSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connect start  ipAddress = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->val$ipAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  PORT = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->val$port:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    new-instance v6, Ljava/net/Socket;

    invoke-direct {v6}, Ljava/net/Socket;-><init>()V

    invoke-static {v5, v6}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->access$002(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;Ljava/net/Socket;)Ljava/net/Socket;

    .line 87
    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->val$ipAddress:Ljava/lang/String;

    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->val$port:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 88
    .local v4, "socketAddress":Ljava/net/SocketAddress;
    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    invoke-static {v5}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->access$000(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;)Ljava/net/Socket;

    move-result-object v5

    const/16 v6, 0x3e8

    invoke-virtual {v5, v4, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 89
    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    invoke-static {v5}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->access$000(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;)Ljava/net/Socket;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 90
    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    invoke-static {v5}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->access$000(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;)Ljava/net/Socket;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 91
    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    invoke-static {v6}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->access$000(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;)Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->access$102(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 92
    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    invoke-static {v6}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->access$000(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;)Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->access$202(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 93
    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->val$activity:Landroid/app/Activity;

    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$OnConnectListener;

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->access$300(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$OnConnectListener;Z)V

    .line 94
    const-string v5, "ReverseControlSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connect end  ipAddress = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->val$ipAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   PORT = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->val$port:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->createOptions()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->getInstance(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    move-result-object v0

    .line 96
    .local v0, "device":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->getInstance()Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->getSocket()Ljava/net/Socket;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    invoke-static {v6}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->access$000(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;)Ljava/net/Socket;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->getInstance(Ljava/net/Socket;Ljava/net/Socket;Landroid/net/LocalSocket;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;

    move-result-object v3

    .line 97
    .local v3, "pcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    new-instance v2, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;

    invoke-direct {v2, v0, v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;-><init>(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;)V

    .line 98
    .local v2, "mController":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;
    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    invoke-virtual {v5, v2}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->startSendmessage(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;)V

    .line 99
    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    const/4 v6, 0x1

    invoke-virtual {v5, v2, v6}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->startReceiveMessage(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;Z)V

    .line 100
    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    invoke-static {v5, v2}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->access$400(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;)V

    .line 101
    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->val$activity:Landroid/app/Activity;

    invoke-static {v5}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->sendCheckInfoWithPC(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v0    # "device":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;
    .end local v2    # "mController":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;
    .end local v3    # "pcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    .end local v4    # "socketAddress":Ljava/net/SocketAddress;
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->val$activity:Landroid/app/Activity;

    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$1;->val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$OnConnectListener;

    invoke-static {v5, v6, v7, v9}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->access$300(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$OnConnectListener;Z)V

    .line 105
    const-string v5, "ReverseControlSocket"

    const-string v6, "reverseControl connect exception"

    invoke-static {v5, v6}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
