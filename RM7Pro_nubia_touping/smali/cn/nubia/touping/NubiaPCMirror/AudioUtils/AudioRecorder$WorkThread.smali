.class Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;
.super Ljava/lang/Thread;
.source "AudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkThread"
.end annotation


# instance fields
.field private volatile isRunning:Z

.field private mAacEncoder:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;

.field private mAudioRecorder:Landroid/media/AudioRecord;

.field final synthetic this$0:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;


# direct methods
.method private constructor <init>(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)V
    .locals 1

    .prologue
    .line 196
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->isRunning:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;
    .param p2, "x1"    # Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$1;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;-><init>(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;

    .prologue
    .line 196
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->stopAndRelease()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;
    .param p1, "x1"    # Z

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->setRunning(Z)V

    return-void
.end method

.method private createAudioRecord2()Landroid/media/AudioRecord;
    .locals 6

    .prologue
    .line 205
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    invoke-static {v1}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->access$600(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;->getSampleRate()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    .line 206
    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->access$600(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;->getChannelConfig()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    .line 207
    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->access$600(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;->getAudioFormat()I

    move-result v3

    .line 205
    invoke-static {v1, v2, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 208
    .local v5, "bufferSize":I
    new-instance v0, Landroid/media/AudioRecord;

    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    invoke-static {v1}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->access$700(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    :goto_0
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    .line 209
    invoke-static {v2}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->access$600(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;->getSampleRate()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    .line 210
    invoke-static {v3}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->access$600(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;->getChannelConfig()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    .line 211
    invoke-static {v4}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->access$600(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;->getAudioFormat()I

    move-result v4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 213
    .local v0, "audioRecord":Landroid/media/AudioRecord;
    return-object v0

    .line 208
    .end local v0    # "audioRecord":Landroid/media/AudioRecord;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private initAacEncoder()V
    .locals 2

    .prologue
    .line 222
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;

    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    invoke-static {v1}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->access$600(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;-><init>(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;)V

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->mAacEncoder:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;

    .line 223
    return-void
.end method

.method private initAudioRecorder()V
    .locals 1

    .prologue
    .line 218
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->createAudioRecord2()Landroid/media/AudioRecord;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->mAudioRecorder:Landroid/media/AudioRecord;

    .line 219
    return-void
.end method

.method private receiveDataAndSend()V
    .locals 24

    .prologue
    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    move-object/from16 v19, v0

    .line 264
    invoke-static/range {v19 .. v19}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->access$600(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;->getSampleRate()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    move-object/from16 v20, v0

    .line 265
    invoke-static/range {v20 .. v20}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->access$600(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;->getChannelConfig()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    move-object/from16 v21, v0

    .line 266
    invoke-static/range {v21 .. v21}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->access$600(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;->getAudioFormat()I

    move-result v21

    .line 263
    invoke-static/range {v19 .. v21}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v9

    .line 267
    .local v9, "bufferSize":I
    const/4 v14, 0x1

    .line 268
    .local v14, "readCount":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 269
    .local v16, "startTime":J
    const/16 v18, 0x0

    .line 270
    .local v18, "totalLenOfSecond":I
    const-string v19, "AudioRecorder"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "receiveDataAndSend IS_QUICK_MODE === "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-boolean v21, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->IS_QUICK_MODE:Z

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " IS_LEGACY_AAC_MODE = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-boolean v21, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->IS_LEGACY_AAC_MODE:Z

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_0
    :goto_0
    :try_start_0
    sget-boolean v19, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->IS_QUICK_MODE:Z

    if-eqz v19, :cond_8

    .line 274
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->isRunning:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->access$1000(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)V

    .line 343
    :cond_1
    :goto_1
    return-void

    .line 278
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->access$000(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)Landroid/net/LocalSocket;

    move-result-object v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->access$200(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)Ljava/io/InputStream;

    move-result-object v19

    if-nez v19, :cond_4

    .line 279
    :cond_3
    const-wide/16 v20, 0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V

    .line 281
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->access$000(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)Landroid/net/LocalSocket;

    move-result-object v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->access$000(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)Landroid/net/LocalSocket;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->access$200(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)Ljava/io/InputStream;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 282
    const/16 v9, 0x1000

    .line 283
    new-array v8, v9, [B

    .line 284
    .local v8, "buffer1":[B
    const/4 v12, 0x0

    .line 285
    .local v12, "hadReaded":I
    move v13, v9

    .line 286
    .local v13, "len":I
    :goto_2
    if-eq v12, v9, :cond_5

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->access$200(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v12, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v15

    .line 288
    .local v15, "readLen":I
    add-int/2addr v12, v15

    .line 289
    sub-int v13, v9, v12

    .line 290
    goto :goto_2

    .line 291
    .end local v15    # "readLen":I
    :cond_5
    if-ne v12, v9, :cond_7

    .line 292
    array-length v0, v8

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v8, v1}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->sendData([BI)V

    .line 293
    array-length v0, v8

    move/from16 v19, v0

    add-int v18, v18, v19

    .line 297
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v16

    const-wide/16 v22, 0x3e8

    cmp-long v19, v20, v22

    if-lez v19, :cond_6

    .line 298
    const-string v19, "AudioRecorder"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " byte data per second"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcn/nubia/touping/Utils/LogShow;->eBySwitch(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 300
    const/16 v18, 0x0

    .line 302
    :cond_6
    add-int/lit8 v14, v14, 0x1

    .line 303
    goto/16 :goto_0

    .line 295
    :cond_7
    const-string v19, "AudioRecorder"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "receiveDataAndSend mSocket.getInputStream error not send readLen =="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 340
    .end local v8    # "buffer1":[B
    .end local v12    # "hadReaded":I
    .end local v13    # "len":I
    :catch_0
    move-exception v11

    .line 341
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 305
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->isRunning:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->mAudioRecorder:Landroid/media/AudioRecord;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 309
    new-array v5, v9, [B

    .line 310
    .local v5, "buffer":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->mAudioRecorder:Landroid/media/AudioRecord;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    array-length v0, v5

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v5, v1, v2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v15

    .line 311
    .restart local v15    # "readLen":I
    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v15, v0, :cond_c

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 313
    .local v6, "beforeEcode":J
    sget-boolean v19, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->IS_LEGACY_AAC_MODE:Z

    if-eqz v19, :cond_9

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->mAacEncoder:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v15}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->encodePcm([BI)Ljava/util/ArrayList;

    move-result-object v4

    .line 315
    .local v4, "aarData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_a

    .line 316
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 317
    .local v10, "data":[B
    array-length v0, v10

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v10, v1}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->sendData([BI)V

    .line 318
    array-length v0, v10

    move/from16 v20, v0

    add-int v18, v18, v20

    .line 319
    goto :goto_4

    .line 322
    .end local v4    # "aarData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v10    # "data":[B
    :cond_9
    array-length v0, v5

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v5, v1}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->sendData([BI)V

    .line 328
    .end local v6    # "beforeEcode":J
    :cond_a
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v16

    const-wide/16 v22, 0x3e8

    cmp-long v19, v20, v22

    if-lez v19, :cond_b

    .line 329
    const-string v19, "AudioRecorder"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " byte data per second"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcn/nubia/touping/Utils/LogShow;->eBySwitch(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 331
    const/16 v18, 0x0

    .line 334
    :cond_b
    add-int/lit8 v14, v14, 0x1

    .line 335
    goto/16 :goto_0

    .line 325
    :cond_c
    const-string v19, "AudioRecorder"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "receiveDataAndSend mAudioRecorder error not send readLen =="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method private sendData([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    .line 366
    :try_start_0
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->getInstance()Lcn/nubia/touping/NubiaPCMirror/AudioSocket;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/nubia/touping/NubiaPCMirror/AudioSocket;->addMessage([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setRunning(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 202
    iput-boolean p1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->isRunning:Z

    .line 203
    return-void
.end method

.method private startRecording()V
    .locals 2

    .prologue
    .line 227
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->mAacEncoder:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->start()V

    .line 228
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->mAudioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private stopAndRelease()V
    .locals 3

    .prologue
    .line 347
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->mAudioRecorder:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->mAudioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 349
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->mAudioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 350
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->mAudioRecorder:Landroid/media/AudioRecord;

    .line 352
    :cond_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->mAacEncoder:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;

    if-eqz v1, :cond_1

    .line 353
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->mAacEncoder:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;->stop()V

    .line 354
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->mAacEncoder:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AacEncoder;

    .line 356
    :cond_1
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    invoke-static {v1}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->access$1000(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    const-string v1, "AudioRecorder"

    const-string v2, "stopAndRelease"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 359
    const-string v1, "AudioRecorder"

    const-string v2, "stopAndRelease exception"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 236
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 238
    const/16 v0, -0x14

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 239
    const-class v1, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;

    monitor-enter v1

    .line 240
    :try_start_0
    sget-boolean v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->IS_LEGACY_AAC_MODE:Z

    if-eqz v0, :cond_1

    .line 242
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->IS_QUICK_MODE:Z

    .line 243
    const v0, 0xac44

    sput v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;->SAMPLE_RATE:I

    .line 247
    :goto_0
    invoke-static {}, Lcn/nubia/touping/NubiaPCMirror/NubiaWirelessTouPingService;->getRemoteSupportGameList()Ljava/util/ArrayList;

    .line 248
    sget-boolean v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->IS_QUICK_MODE:Z

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    invoke-static {v0}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->access$800(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)V

    .line 250
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->this$0:Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;

    invoke-static {v0}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;->access$900(Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder;)V

    .line 253
    :cond_0
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->initAudioRecorder()V

    .line 254
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->initAacEncoder()V

    .line 255
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->startRecording()V

    .line 257
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->receiveDataAndSend()V

    .line 258
    invoke-direct {p0}, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioRecorder$WorkThread;->stopAndRelease()V

    .line 259
    monitor-exit v1

    .line 260
    return-void

    .line 245
    :cond_1
    const v0, 0xbb80

    sput v0, Lcn/nubia/touping/NubiaPCMirror/AudioUtils/AudioConfig;->SAMPLE_RATE:I

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
