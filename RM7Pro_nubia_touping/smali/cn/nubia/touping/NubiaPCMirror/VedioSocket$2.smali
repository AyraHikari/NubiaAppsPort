.class Lcn/nubia/touping/NubiaPCMirror/VedioSocket$2;
.super Ljava/lang/Object;
.source "VedioSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->connenctWiredTouPing(Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;


# direct methods
.method constructor <init>(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    .prologue
    .line 125
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    iput-object p2, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$2;->val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    invoke-static {v1, v2}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$502(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    .line 130
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    invoke-static {v1}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$500(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;)Landroid/net/LocalSocket;

    move-result-object v1

    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string v3, "scrcpy"

    invoke-direct {v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 131
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    invoke-static {v4}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$500(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;)Landroid/net/LocalSocket;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v1, v2}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$102(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;Ljava/io/BufferedReader;)Ljava/io/BufferedReader;

    .line 132
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$500(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;)Landroid/net/LocalSocket;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$202(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 133
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$2;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$2;->val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$300(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;Z)V

    .line 135
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :try_start_1
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v1, v2}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$402(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;Ljava/util/List;)Ljava/util/List;

    .line 137
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :try_start_2
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->startSendmessage(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 144
    :goto_0
    return-void

    .line 137
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

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$2;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$2;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$2;->val$mOnConnectListener:Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;

    invoke-static {v1, v2, v3, v5}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$300(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;Landroid/app/Activity;Lcn/nubia/touping/NubiaPCMirror/VedioSocket$OnConnectListener;Z)V

    .line 142
    const-string v1, "VedioSocket"

    const-string v2, "connect exception"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
