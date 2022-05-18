.class Lcn/nubia/deskclock/AlarmKlaxon$4;
.super Landroid/content/BroadcastReceiver;
.source "AlarmKlaxon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/AlarmKlaxon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/AlarmKlaxon;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/AlarmKlaxon;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/AlarmKlaxon;

    .prologue
    .line 333
    iput-object p1, p0, Lcn/nubia/deskclock/AlarmKlaxon$4;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 336
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 337
    .local v6, "action":Ljava/lang/String;
    :goto_0
    const-string v9, ""

    .line 338
    .local v9, "packageName":Ljava/lang/String;
    const-string v0, "com.android.systemui.headsup_released"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 339
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pkgname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 343
    :goto_1
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 344
    invoke-static {}, Lcn/nubia/deskclock/util/ThreadPool;->getInstance()Lcn/nubia/deskclock/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcn/nubia/deskclock/AlarmKlaxon$4$1;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/AlarmKlaxon$4$1;-><init>(Lcn/nubia/deskclock/AlarmKlaxon$4;)V

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/util/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 355
    :goto_2
    const-string v0, "com.nubia.deskclock.ALARM_SNOOZE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 356
    if-eqz p2, :cond_6

    const-string v0, "alarm_game_mode_snooze"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 357
    .local v8, "gameModeSnooze":Z
    :goto_3
    const-string v0, "AlarmKlaxon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmKlaxon gameModeSnooze "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    if-eqz v8, :cond_1

    .line 359
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$4;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-static {v0, v3}, Lcn/nubia/deskclock/AlarmKlaxon;->access$600(Lcn/nubia/deskclock/AlarmKlaxon;I)V

    .line 361
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$4;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    iget-object v1, p0, Lcn/nubia/deskclock/AlarmKlaxon$4;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-static {v1}, Lcn/nubia/deskclock/AlarmKlaxon;->access$700(Lcn/nubia/deskclock/AlarmKlaxon;)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcn/nubia/deskclock/AlarmKlaxon;->access$800(Lcn/nubia/deskclock/AlarmKlaxon;Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V

    .line 362
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$4;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-static {v0, v10}, Lcn/nubia/deskclock/AlarmKlaxon;->access$900(Lcn/nubia/deskclock/AlarmKlaxon;Z)V

    .line 363
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$4;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-virtual {v0}, Lcn/nubia/deskclock/AlarmKlaxon;->stopSelf()V

    .line 395
    .end local v8    # "gameModeSnooze":Z
    :cond_2
    :goto_4
    return-void

    .line 336
    .end local v6    # "action":Ljava/lang/String;
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_3
    const-string v6, ""

    goto/16 :goto_0

    .line 341
    .restart local v6    # "action":Ljava/lang/String;
    .restart local v9    # "packageName":Ljava/lang/String;
    :cond_4
    invoke-static {v10}, Lcn/nubia/deskclock/AlarmKlaxon;->access$402(Z)Z

    goto :goto_1

    .line 352
    :cond_5
    const-string v0, "AlarmKlaxon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmKlaxon - onReceive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move v8, v3

    .line 356
    goto :goto_3

    .line 364
    :cond_7
    const-string v0, "com.nubia.deskclock.ALARM_SNOOZE_FROM_VOICE_ASSISTANT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 365
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$4;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    iget-object v1, p0, Lcn/nubia/deskclock/AlarmKlaxon$4;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-static {v1}, Lcn/nubia/deskclock/AlarmKlaxon;->access$700(Lcn/nubia/deskclock/AlarmKlaxon;)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcn/nubia/deskclock/AlarmKlaxon;->access$800(Lcn/nubia/deskclock/AlarmKlaxon;Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;)V

    .line 366
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$4;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-static {v0, v10}, Lcn/nubia/deskclock/AlarmKlaxon;->access$900(Lcn/nubia/deskclock/AlarmKlaxon;Z)V

    .line 367
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$4;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-virtual {v0}, Lcn/nubia/deskclock/AlarmKlaxon;->stopSelf()V

    goto :goto_4

    .line 368
    :cond_8
    const-string v0, "com.nubia.deskclock.ALARM_DISMISS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 369
    if-eqz p2, :cond_a

    const-string v0, "alarm_game_mode_dismiss"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 370
    .local v7, "gameModeDismiss":Z
    :goto_5
    const-string v0, "AlarmKlaxon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmKlaxon gameModeDismiss "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    if-eqz v7, :cond_9

    .line 372
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$4;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-static {v0, v10}, Lcn/nubia/deskclock/AlarmKlaxon;->access$600(Lcn/nubia/deskclock/AlarmKlaxon;I)V

    .line 374
    :cond_9
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$4;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    iget-object v1, p0, Lcn/nubia/deskclock/AlarmKlaxon$4;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-static {v1}, Lcn/nubia/deskclock/AlarmKlaxon;->access$700(Lcn/nubia/deskclock/AlarmKlaxon;)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v2

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcn/nubia/deskclock/AlarmKlaxon;->access$1000(Lcn/nubia/deskclock/AlarmKlaxon;Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;ZJ)V

    .line 375
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$4;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-static {v0}, Lcn/nubia/deskclock/AlarmKlaxon;->access$1100(Lcn/nubia/deskclock/AlarmKlaxon;)V

    .line 376
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$4;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-virtual {v0}, Lcn/nubia/deskclock/AlarmKlaxon;->stopSelf()V

    goto/16 :goto_4

    .end local v7    # "gameModeDismiss":Z
    :cond_a
    move v7, v3

    .line 369
    goto :goto_5

    .line 377
    :cond_b
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 379
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$4;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    iget-object v1, p0, Lcn/nubia/deskclock/AlarmKlaxon$4;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-static {v1}, Lcn/nubia/deskclock/AlarmKlaxon;->access$700(Lcn/nubia/deskclock/AlarmKlaxon;)Lcn/nubia/deskclock/model/Alarm;

    move-result-object v2

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcn/nubia/deskclock/AlarmKlaxon;->access$1000(Lcn/nubia/deskclock/AlarmKlaxon;Landroid/content/Context;Lcn/nubia/deskclock/model/Alarm;ZJ)V

    .line 380
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$4;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-static {v0}, Lcn/nubia/deskclock/AlarmKlaxon;->access$1100(Lcn/nubia/deskclock/AlarmKlaxon;)V

    .line 381
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$4;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-virtual {v0}, Lcn/nubia/deskclock/AlarmKlaxon;->stopSelf()V

    goto/16 :goto_4

    .line 382
    :cond_c
    const-string v0, "com.android.systemui.headsup_released"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "cn.nubia.deskclock.preset"

    .line 383
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$4;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-static {v0}, Lcn/nubia/deskclock/AlarmKlaxon;->access$1200(Lcn/nubia/deskclock/AlarmKlaxon;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 385
    const/16 v0, 0x457

    invoke-static {p1, v0}, Lcn/nubia/deskclock/model/Alarms;->cleanNotificationWhenGameMode(Landroid/content/Context;I)V

    goto/16 :goto_4

    .line 388
    :cond_d
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPreO()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    const-string v0, "AlarmKlaxon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " update : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "updated"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v0, "updated"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 391
    iget-object v0, p0, Lcn/nubia/deskclock/AlarmKlaxon$4;->this$0:Lcn/nubia/deskclock/AlarmKlaxon;

    invoke-static {v0, p1}, Lcn/nubia/deskclock/AlarmKlaxon;->access$1300(Lcn/nubia/deskclock/AlarmKlaxon;Landroid/content/Context;)V

    goto/16 :goto_4
.end method
