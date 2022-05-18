.class Lcn/nubia/touping/NubiaPCMirror/AudioSocket$2;
.super Ljava/lang/Object;
.source "AudioSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->connenctWiredTouPing(Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;


# direct methods
.method constructor <init>(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    .prologue
    .line 108
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    iput-object p2, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$2;->val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    invoke-static {v1, v2}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->access$502(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    .line 113
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    invoke-static {v1}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->access$500(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;)Landroid/net/LocalSocket;

    move-result-object v1

    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string v3, "scrcpy"

    invoke-direct {v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 114
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    invoke-static {v4}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->access$500(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;)Landroid/net/LocalSocket;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v1, v2}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->access$102(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;Ljava/io/BufferedReader;)Ljava/io/BufferedReader;

    .line 115
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->access$500(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;)Landroid/net/LocalSocket;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->access$202(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 116
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$2;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$2;->val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->access$300(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;Z)V

    .line 118
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :try_start_1
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v1, v2}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->access$402(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;Ljava/util/List;)Ljava/util/List;

    .line 120
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :try_start_2
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->startSendmessage(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 127
    :goto_0
    return-void

    .line 120
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$2;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$2;->val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;

    invoke-static {v1, v2, v3, v5}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->access$300(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/AudioSocket$OnConnectListener;Z)V

    .line 125
    const-string v1, "AudioSocket"

    const-string v2, "connect exception"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
