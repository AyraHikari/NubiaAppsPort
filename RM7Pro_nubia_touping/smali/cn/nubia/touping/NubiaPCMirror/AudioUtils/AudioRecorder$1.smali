.class Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$1;
.super Ljava/lang/Object;
.source "AudioRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->acceptMsg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;


# direct methods
.method constructor <init>(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    .prologue
    .line 78
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 82
    :try_start_0
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->access$100()Landroid/net/LocalServerSocket;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->access$002(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    .line 83
    const/4 v2, 0x1

    new-array v0, v2, [B

    .line 84
    .local v0, "b":[B
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->access$000(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)Landroid/net/LocalSocket;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 85
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    .line 86
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$1;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->access$000(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)Landroid/net/LocalSocket;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->access$202(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 87
    const-string v2, "AudioRecorder"

    const-string v3, "ServerActivity       mServerSocket.accept() mSocket ok "

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v0    # "b":[B
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e1":Ljava/lang/Exception;
    const-string v2, "AudioRecorder"

    const-string v3, "ServerActivity       mServerSocket.accept() error"

    invoke-static {v2, v3, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
