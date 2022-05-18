.class Lcn/nubia/touping/NubiaPCMirror/VedioSocket$4;
.super Ljava/lang/Object;
.source "VedioSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->sendCurrenLinkData(Z[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

.field final synthetic val$byteArrary:[B

.field final synthetic val$wiredLessTouPing:Z


# direct methods
.method constructor <init>(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;Z[B)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    .prologue
    .line 221
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    iput-boolean p2, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$4;->val$wiredLessTouPing:Z

    iput-object p3, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$4;->val$byteArrary:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 225
    const/4 v1, 0x0

    .line 226
    .local v1, "socketConnected":Z
    :try_start_0
    iget-boolean v8, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$4;->val$wiredLessTouPing:Z

    if-eqz v8, :cond_2

    .line 227
    iget-object v8, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    invoke-static {v8}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$000(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;)Ljava/net/Socket;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    invoke-static {v8}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$000(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;)Ljava/net/Socket;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/Socket;->isClosed()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    invoke-static {v8}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$000(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;)Ljava/net/Socket;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/Socket;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    invoke-static {v8}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$000(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;)Ljava/net/Socket;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v8

    if-nez v8, :cond_1

    move v1, v6

    .line 231
    :goto_0
    const-string v6, "VedioSocket888"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "socket socketConnected ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->eBySwitch(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    if-eqz v1, :cond_4

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 235
    .local v2, "sendBefore":J
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    invoke-static {v6}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$200(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;)Ljava/io/OutputStream;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$4;->val$byteArrary:[B

    const/4 v8, 0x0

    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$4;->val$byteArrary:[B

    array-length v9, v9

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 236
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    invoke-static {v6}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$200(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;)Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 237
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$610()I

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 239
    .local v4, "sendEnd":J
    sub-long v6, v4, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sput-wide v6, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->sendSpendTime:J

    .line 240
    const-string v6, "VedioSocket888"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "send needTime sendSpendTime  :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->sendSpendTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->eBySwitch(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    .end local v2    # "sendBefore":J
    .end local v4    # "sendEnd":J
    :goto_1
    :try_start_1
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    invoke-static {v6}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$400(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 252
    const-string v6, "VedioSocket8889"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "letft list.size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    invoke-static {v8}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$400(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->eBySwitch(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 258
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v7

    .line 227
    goto/16 :goto_0

    .line 229
    :cond_2
    :try_start_2
    iget-object v8, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    invoke-static {v8}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$500(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;)Landroid/net/LocalSocket;

    move-result-object v8

    if-eqz v8, :cond_3

    move v1, v6

    :goto_3
    goto/16 :goto_0

    :cond_3
    move v1, v7

    goto :goto_3

    .line 242
    :cond_4
    const-string v6, "VedioSocket8889"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " numSend = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$600()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v6}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->stopMediaCodec(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 247
    const-string v6, "VedioSocket"

    const-string v7, "sendCurrenLinkData exception"

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    sget-object v6, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;->context:Landroid/content/Context;

    invoke-static {v6}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->stopMediaCodec(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 251
    :try_start_4
    iget-object v6, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    invoke-static {v6}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$400(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 252
    const-string v6, "VedioSocket8889"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "letft list.size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    invoke-static {v8}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$400(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/touping/Utils/LogShow;->eBySwitch(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 254
    :catch_1
    move-exception v0

    .line 255
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 254
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 255
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 250
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 251
    :try_start_5
    iget-object v7, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    invoke-static {v7}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$400(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 252
    const-string v7, "VedioSocket8889"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "letft list.size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcn/nubia/touping/NubiaPCMirror/VedioSocket$4;->this$0:Lcn/nubia/touping/NubiaPCMirror/VedioSocket;

    invoke-static {v9}, Lcn/nubia/touping/NubiaPCMirror/VedioSocket;->access$400(Lcn/nubia/touping/NubiaPCMirror/VedioSocket;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/touping/Utils/LogShow;->eBySwitch(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 256
    :cond_5
    :goto_4
    throw v6

    .line 254
    :catch_3
    move-exception v0

    .line 255
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method
