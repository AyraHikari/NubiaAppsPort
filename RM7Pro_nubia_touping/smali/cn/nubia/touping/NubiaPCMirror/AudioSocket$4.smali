.class Lcn/nubia/touping/NubiaPCMirror/AudioSocket$4;
.super Ljava/lang/Object;
.source "AudioSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->sendCurrenLinkData(Z[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

.field final synthetic val$byteArrary:[B

.field final synthetic val$wiredLessTouPing:Z


# direct methods
.method constructor <init>(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;Z[B)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    .prologue
    .line 193
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    iput-boolean p2, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$4;->val$wiredLessTouPing:Z

    iput-object p3, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$4;->val$byteArrary:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 198
    :try_start_0
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->access$608(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;)I

    .line 199
    sget-boolean v3, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->IS_LEGACY_AAC_MODE:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->access$600(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/16 v4, 0x14

    if-ge v3, v4, :cond_1

    .line 219
    :try_start_1
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->access$400(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 220
    const-string v2, "AudioSocket8889"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "letft list.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    invoke-static {v4}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->access$400(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->eBySwitch(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 202
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    iget-boolean v3, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$4;->val$wiredLessTouPing:Z

    if-eqz v3, :cond_3

    .line 203
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->access$000(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;)Ljava/net/Socket;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->access$000(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->access$000(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->access$000(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v3

    if-nez v3, :cond_2

    .line 207
    .local v1, "flagSocket":Z
    :goto_1
    if-eqz v1, :cond_5

    .line 209
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->access$200(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;)Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$4;->val$byteArrary:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$4;->val$byteArrary:[B

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 210
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->access$200(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    :goto_2
    :try_start_3
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->access$400(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 220
    const-string v2, "AudioSocket8889"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "letft list.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    invoke-static {v4}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->access$400(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->eBySwitch(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 222
    :catch_1
    move-exception v0

    .line 223
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "flagSocket":Z
    :cond_2
    move v1, v2

    .line 203
    goto :goto_1

    .line 205
    :cond_3
    :try_start_4
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->access$500(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;)Landroid/net/LocalSocket;

    move-result-object v3

    if-eqz v3, :cond_4

    .restart local v1    # "flagSocket":Z
    :goto_3
    goto :goto_1

    .end local v1    # "flagSocket":Z
    :cond_4
    move v1, v2

    goto :goto_3

    .line 212
    .restart local v1    # "flagSocket":Z
    :cond_5
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->stopMediaCodec(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 214
    .end local v1    # "flagSocket":Z
    :catch_2
    move-exception v0

    .line 215
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    sget-object v2, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->stopMediaCodec(Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 219
    :try_start_6
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->access$400(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 220
    const-string v2, "AudioSocket8889"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "letft list.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    invoke-static {v4}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->access$400(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/touping/Utils/LogShow;->eBySwitch(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 222
    :catch_3
    move-exception v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 218
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 219
    :try_start_7
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->access$400(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 220
    const-string v3, "AudioSocket8889"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "letft list.size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/touping/NubiaPCMirror/AudioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    invoke-static {v5}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->access$400(Lcn/nubia/touping/NubiaPCMirror/AudioSocket;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/touping/Utils/LogShow;->eBySwitch(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 224
    :cond_6
    :goto_4
    throw v2

    .line 222
    :catch_4
    move-exception v0

    .line 223
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method
