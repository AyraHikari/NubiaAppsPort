.class Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$2;
.super Ljava/lang/Object;
.source "ReverseControlSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->connenctWiredTouPing(Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$OnConnectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$OnConnectListener;


# direct methods
.method constructor <init>(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$OnConnectListener;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    .prologue
    .line 117
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    iput-object p2, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$2;->val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$OnConnectListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 121
    const/4 v4, 0x0

    :try_start_0
    sput-boolean v4, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->hasConnectedSuccessStatus:Z

    .line 122
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    new-instance v5, Landroid/net/LocalSocket;

    invoke-direct {v5}, Landroid/net/LocalSocket;-><init>()V

    invoke-static {v4, v5}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->access$502(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    .line 123
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    invoke-static {v4}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->access$500(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;)Landroid/net/LocalSocket;

    move-result-object v4

    new-instance v5, Landroid/net/LocalSocketAddress;

    const-string v6, "scrcpy"

    invoke-direct {v5, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 124
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    invoke-static {v5}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->access$500(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;)Landroid/net/LocalSocket;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->access$102(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 125
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    invoke-static {v5}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->access$500(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;)Landroid/net/LocalSocket;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->access$202(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 126
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$2;->val$activity:Landroid/app/Activity;

    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$2;->val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$OnConnectListener;

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->access$300(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$OnConnectListener;Z)V

    .line 128
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;->createOptions()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;->getInstance(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Options;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;

    move-result-object v0

    .line 129
    .local v0, "device":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->getInstance()Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->getSocket()Ljava/net/Socket;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    invoke-static {v6}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->access$500(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;)Landroid/net/LocalSocket;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->getInstance(Ljava/net/Socket;Ljava/net/Socket;Landroid/net/LocalSocket;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;

    move-result-object v3

    .line 130
    .local v3, "pcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    new-instance v2, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;

    invoke-direct {v2, v0, v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;-><init>(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;)V

    .line 131
    .local v2, "mController":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    invoke-virtual {v4, v2}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->startSendmessage(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;)V

    .line 132
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->startReceiveMessage(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;Z)V

    .line 133
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    invoke-static {v4, v2}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->access$400(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;)V

    .line 134
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$2;->val$activity:Landroid/app/Activity;

    invoke-static {v4}, Lcn/nubia/touping/NubiaPCMirror/AllMessageJsonString;->sendCheckInfoWithPC(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v0    # "device":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Device;
    .end local v2    # "mController":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Controller;
    .end local v3    # "pcConnection":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;

    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$2;->val$activity:Landroid/app/Activity;

    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$2;->val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$OnConnectListener;

    invoke-static {v4, v5, v6, v8}, Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;->access$300(Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket;Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/ReverseControlSocket$OnConnectListener;Z)V

    .line 138
    const-string v4, "ReverseControlSocket"

    const-string v5, "reverseControl connect exception"

    invoke-static {v4, v5}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
