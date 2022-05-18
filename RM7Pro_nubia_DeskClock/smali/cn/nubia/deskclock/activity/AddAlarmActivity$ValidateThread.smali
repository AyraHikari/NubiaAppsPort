.class Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;
.super Ljava/lang/Thread;
.source "AddAlarmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/activity/AddAlarmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValidateThread"
.end annotation


# instance fields
.field private mIsCanceled:Z

.field private final mValidateUri:Landroid/net/Uri;

.field final synthetic this$0:Lcn/nubia/deskclock/activity/AddAlarmActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/deskclock/activity/AddAlarmActivity;Landroid/net/Uri;)V
    .locals 1
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 505
    iput-object p1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;->this$0:Lcn/nubia/deskclock/activity/AddAlarmActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 509
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;->mIsCanceled:Z

    .line 506
    iput-object p2, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;->mValidateUri:Landroid/net/Uri;

    .line 507
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 517
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 518
    const-string v1, "AddAlarmActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start loading default rintone, mIsCanceled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;->mIsCanceled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-boolean v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;->mIsCanceled:Z

    if-eqz v1, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    const/4 v10, 0x0

    .line 522
    .local v10, "tempUri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 523
    .local v7, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;->this$0:Lcn/nubia/deskclock/activity/AddAlarmActivity;

    invoke-virtual {v1}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 524
    .local v0, "res":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;->mValidateUri:Landroid/net/Uri;

    if-eqz v1, :cond_7

    .line 525
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;->mValidateUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 526
    .local v6, "authority":Ljava/lang/String;
    iget-boolean v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;->mIsCanceled:Z

    if-nez v1, :cond_0

    .line 528
    const-string v1, "settings"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 530
    :try_start_0
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;->mValidateUri:Landroid/net/Uri;

    invoke-static {}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->access$400()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 531
    iget-boolean v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;->mIsCanceled:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 539
    if-eqz v7, :cond_0

    .line 540
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 533
    :cond_2
    if-eqz v7, :cond_3

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 534
    iget-object v10, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;->mValidateUri:Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 539
    :cond_3
    if-eqz v7, :cond_4

    .line 540
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 544
    :cond_4
    :goto_1
    iget-boolean v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;->mIsCanceled:Z

    if-nez v1, :cond_0

    .line 546
    if-nez v10, :cond_5

    .line 547
    sget-object v10, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    .line 552
    .end local v6    # "authority":Ljava/lang/String;
    :cond_5
    :goto_2
    move-object v9, v10

    .line 553
    .local v9, "ringtoneUri":Landroid/net/Uri;
    iget-boolean v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;->mIsCanceled:Z

    if-nez v1, :cond_0

    .line 555
    iget-object v1, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;->this$0:Lcn/nubia/deskclock/activity/AddAlarmActivity;

    invoke-static {v1}, Lcn/nubia/deskclock/activity/AddAlarmActivity;->access$600(Lcn/nubia/deskclock/activity/AddAlarmActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread$1;

    invoke-direct {v2, p0, v9}, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread$1;-><init>(Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 536
    .end local v9    # "ringtoneUri":Landroid/net/Uri;
    .restart local v6    # "authority":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 537
    .local v8, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 539
    if-eqz v7, :cond_4

    .line 540
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 539
    .end local v8    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_6

    .line 540
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 542
    :cond_6
    throw v1

    .line 550
    .end local v6    # "authority":Ljava/lang/String;
    :cond_7
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public waitForCancel()V
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/activity/AddAlarmActivity$ValidateThread;->mIsCanceled:Z

    .line 513
    return-void
.end method
