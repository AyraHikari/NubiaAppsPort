.class Lcn/nubia/deskclock/CountDownRingService$3;
.super Ljava/lang/Object;
.source "CountDownRingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/CountDownRingService;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/CountDownRingService;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/CountDownRingService;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/CountDownRingService;

    .prologue
    .line 185
    iput-object p1, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x4

    .line 188
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v4}, Lcn/nubia/deskclock/util/Utils;->restoreAlarmRingDefaultIfFileNotExist(Landroid/content/Context;)V

    .line 189
    iget-object v5, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    const-string v6, "audio"

    invoke-virtual {v4, v6}, Lcn/nubia/deskclock/CountDownRingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    invoke-static {v5, v4}, Lcn/nubia/deskclock/CountDownRingService;->access$202(Lcn/nubia/deskclock/CountDownRingService;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 190
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    .line 191
    .local v3, "uri":Landroid/net/Uri;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v4, v5}, Lcn/nubia/deskclock/CountDownRingService;->access$302(Lcn/nubia/deskclock/CountDownRingService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 193
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    iget-object v5, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v5}, Lcn/nubia/deskclock/CountDownRingService;->access$200(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-static {v4, v5}, Lcn/nubia/deskclock/CountDownRingService;->access$402(Lcn/nubia/deskclock/CountDownRingService;I)I

    .line 194
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v4}, Lcn/nubia/deskclock/CountDownRingService;->access$200(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/AudioManager;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v5}, Lcn/nubia/deskclock/CountDownRingService;->access$500(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v2

    .line 196
    .local v2, "result":I
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v4}, Lcn/nubia/deskclock/CountDownRingService;->access$300(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 197
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v4}, Lcn/nubia/deskclock/CountDownRingService;->access$300(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/MediaPlayer;

    move-result-object v4

    new-instance v5, Lcn/nubia/deskclock/CountDownRingService$3$1;

    invoke-direct {v5, p0}, Lcn/nubia/deskclock/CountDownRingService$3$1;-><init>(Lcn/nubia/deskclock/CountDownRingService$3;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 211
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v4}, Lcn/nubia/deskclock/CountDownRingService;->access$600(Lcn/nubia/deskclock/CountDownRingService;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eqz v4, :cond_3

    .line 212
    const-string v4, "CountDownRingService"

    const-string v5, "Using the in-call alarm"

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v4}, Lcn/nubia/deskclock/util/RingtoneUtils;->isPlayAlarmWhenCalling(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    .line 214
    invoke-static {v4}, Lcn/nubia/deskclock/CountDownRingService;->access$700(Lcn/nubia/deskclock/CountDownRingService;)I

    move-result v4

    if-ne v4, v9, :cond_1

    .line 216
    :try_start_0
    const-string v4, "CountDownRingService"

    const-string v5, "is play alarm when calling"

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    iget-object v5, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-virtual {v5}, Lcn/nubia/deskclock/CountDownRingService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v6}, Lcn/nubia/deskclock/CountDownRingService;->access$300(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/MediaPlayer;

    move-result-object v6

    const/high16 v7, 0x7f090000

    invoke-static {v4, v5, v6, v7}, Lcn/nubia/deskclock/CountDownRingService;->access$800(Lcn/nubia/deskclock/CountDownRingService;Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V

    .line 218
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v4}, Lcn/nubia/deskclock/CountDownRingService;->access$200(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/AudioManager;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 220
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v4}, Lcn/nubia/deskclock/CountDownRingService;->access$300(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/MediaPlayer;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 221
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v4}, Lcn/nubia/deskclock/CountDownRingService;->access$300(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/MediaPlayer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 222
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v4}, Lcn/nubia/deskclock/CountDownRingService;->access$300(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 223
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v4}, Lcn/nubia/deskclock/CountDownRingService;->access$300(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 226
    const-string v4, "CountDownRingService"

    const-string v5, "is play alarm when calling error"

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v4}, Lcn/nubia/deskclock/CountDownRingService;->access$300(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/MediaPlayer;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 230
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v4}, Lcn/nubia/deskclock/CountDownRingService;->access$300(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 231
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v4}, Lcn/nubia/deskclock/CountDownRingService;->access$300(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->stop()V

    .line 234
    :cond_2
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v4}, Lcn/nubia/deskclock/CountDownRingService;->access$900(Lcn/nubia/deskclock/CountDownRingService;)Landroid/os/Vibrator;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 235
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v4}, Lcn/nubia/deskclock/CountDownRingService;->access$900(Lcn/nubia/deskclock/CountDownRingService;)Landroid/os/Vibrator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Vibrator;->cancel()V

    goto :goto_0

    .line 240
    :cond_3
    :try_start_1
    const-string v4, "CountDownRingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " is idle : Volume : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v6}, Lcn/nubia/deskclock/CountDownRingService;->access$200(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/AudioManager;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ;; mIsGameMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v6}, Lcn/nubia/deskclock/CountDownRingService;->access$1000(Lcn/nubia/deskclock/CountDownRingService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v4}, Lcn/nubia/deskclock/CountDownRingService;->access$200(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/AudioManager;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 242
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v4}, Lcn/nubia/deskclock/CountDownRingService;->access$1000(Lcn/nubia/deskclock/CountDownRingService;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 243
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->ringWhenGameRunning()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 252
    :catch_1
    move-exception v0

    .line 253
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 254
    const-string v4, "CountDownRingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " play error mIsGameMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v6}, Lcn/nubia/deskclock/CountDownRingService;->access$1000(Lcn/nubia/deskclock/CountDownRingService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v4}, Lcn/nubia/deskclock/CountDownRingService;->access$1000(Lcn/nubia/deskclock/CountDownRingService;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 259
    :try_start_2
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v4}, Lcn/nubia/deskclock/CountDownRingService;->access$200(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/AudioManager;

    move-result-object v4

    const/4 v5, 0x4

    iget-object v6, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v6}, Lcn/nubia/deskclock/CountDownRingService;->access$400(Lcn/nubia/deskclock/CountDownRingService;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 260
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    iget-object v5, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-virtual {v5}, Lcn/nubia/deskclock/CountDownRingService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v6}, Lcn/nubia/deskclock/CountDownRingService;->access$300(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/MediaPlayer;

    move-result-object v6

    const v7, 0x7f090004

    invoke-static {v4, v5, v6, v7}, Lcn/nubia/deskclock/CountDownRingService;->access$800(Lcn/nubia/deskclock/CountDownRingService;Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V

    .line 262
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v4}, Lcn/nubia/deskclock/CountDownRingService;->access$300(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 263
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v4}, Lcn/nubia/deskclock/CountDownRingService;->access$300(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/MediaPlayer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 264
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v4}, Lcn/nubia/deskclock/CountDownRingService;->access$300(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 265
    :catch_2
    move-exception v1

    .line 266
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 245
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_4
    :try_start_3
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v4}, Lcn/nubia/deskclock/CountDownRingService;->access$200(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/AudioManager;

    move-result-object v4

    const/4 v5, 0x4

    iget-object v6, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v6}, Lcn/nubia/deskclock/CountDownRingService;->access$400(Lcn/nubia/deskclock/CountDownRingService;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 246
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v4}, Lcn/nubia/deskclock/CountDownRingService;->access$300(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/MediaPlayer;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-virtual {v4, v5, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 247
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v4}, Lcn/nubia/deskclock/CountDownRingService;->access$300(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 248
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v4}, Lcn/nubia/deskclock/CountDownRingService;->access$300(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/MediaPlayer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 249
    iget-object v4, p0, Lcn/nubia/deskclock/CountDownRingService$3;->this$0:Lcn/nubia/deskclock/CountDownRingService;

    invoke-static {v4}, Lcn/nubia/deskclock/CountDownRingService;->access$300(Lcn/nubia/deskclock/CountDownRingService;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method
