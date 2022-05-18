.class public Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;
.super Ljava/lang/Object;
.source "CountdownFragment.java"

# interfaces
.implements Lcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/fragment/CountdownFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MinuteAndSecondListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;


# direct methods
.method public constructor <init>(Lcn/nubia/deskclock/fragment/CountdownFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 989
    iput-object p1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationIsEnd()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1007
    const-string v7, "CountdownFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " onAnimationIsEnd mStartSecond : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v9}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1900(Lcn/nubia/deskclock/fragment/CountdownFragment;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  ;; mIsDialogClick : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v9}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1800(Lcn/nubia/deskclock/fragment/CountdownFragment;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    iget-object v7, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v7}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1900(Lcn/nubia/deskclock/fragment/CountdownFragment;)I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v7}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1800(Lcn/nubia/deskclock/fragment/CountdownFragment;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1009
    iget-object v7, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v7}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1900(Lcn/nubia/deskclock/fragment/CountdownFragment;)I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v4, v7

    .line 1010
    .local v4, "deltaTime":J
    iget-object v7, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long/2addr v8, v4

    invoke-static {v7, v8, v9}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$2002(Lcn/nubia/deskclock/fragment/CountdownFragment;J)J

    .line 1011
    const-string v7, "CountdownFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onAnimationIsEnd: mFinalTime : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v9}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$2000(Lcn/nubia/deskclock/fragment/CountdownFragment;)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    iget-object v7, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v7}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$2100(Lcn/nubia/deskclock/fragment/CountdownFragment;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "time_pref"

    invoke-virtual {v7, v8, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "countdown_finaltime"

    iget-object v9, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    .line 1013
    invoke-static {v9}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$2000(Lcn/nubia/deskclock/fragment/CountdownFragment;)J

    move-result-wide v10

    invoke-interface {v7, v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1014
    iget-object v7, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v7}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$2200(Lcn/nubia/deskclock/fragment/CountdownFragment;)V

    .line 1016
    .end local v4    # "deltaTime":J
    :cond_0
    iget-object v7, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v7, v12}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1802(Lcn/nubia/deskclock/fragment/CountdownFragment;Z)Z

    .line 1017
    iget-object v7, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v7}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$2300(Lcn/nubia/deskclock/fragment/CountdownFragment;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v7}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$2100(Lcn/nubia/deskclock/fragment/CountdownFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcn/nubia/deskclock/util/Utils;->isCountdownRunning(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1018
    const-string v7, "CountdownFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onAnimationIsEnd: mStatus :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v9}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$400(Lcn/nubia/deskclock/fragment/CountdownFragment;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    iget-object v7, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v7}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$400(Lcn/nubia/deskclock/fragment/CountdownFragment;)I

    move-result v7

    if-nez v7, :cond_2

    .line 1020
    iget-object v7, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v7}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$2400(Lcn/nubia/deskclock/fragment/CountdownFragment;)V

    .line 1021
    iget-object v7, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v7}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$2500(Lcn/nubia/deskclock/fragment/CountdownFragment;)Lcn/nubia/deskclock/model/CountDownModel;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1022
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1023
    .local v2, "currentMillis":J
    iget-object v7, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v7}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$2500(Lcn/nubia/deskclock/fragment/CountdownFragment;)Lcn/nubia/deskclock/model/CountDownModel;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/deskclock/model/CountDownModel;->getCurrentTime()J

    move-result-wide v8

    long-to-int v7, v8

    div-int/lit16 v6, v7, 0x3e8

    .line 1024
    .local v6, "second":I
    iget-object v7, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v7}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$2000(Lcn/nubia/deskclock/fragment/CountdownFragment;)J

    move-result-wide v8

    sub-long/2addr v8, v2

    long-to-int v7, v8

    div-int/lit16 v0, v7, 0x3e8

    .line 1025
    .local v0, "current":I
    const-string v7, "CountdownFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " onAnimationIsEnd  second == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ;; current : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    if-nez v6, :cond_1

    if-eq v6, v0, :cond_1

    .line 1027
    move v6, v0

    .line 1029
    :cond_1
    iget-object v7, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v7}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$2100(Lcn/nubia/deskclock/fragment/CountdownFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v12, v12, v6}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeTimeToPref(Landroid/content/Context;III)V

    .line 1030
    iget-object v7, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v7}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$2100(Lcn/nubia/deskclock/fragment/CountdownFragment;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "time_pref"

    invoke-virtual {v7, v8, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "countdown_finaltime"

    iget-object v9, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    .line 1031
    invoke-static {v9}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$2000(Lcn/nubia/deskclock/fragment/CountdownFragment;)J

    move-result-wide v10

    invoke-interface {v7, v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1032
    invoke-static {v12}, Lcn/nubia/deskclock/database/CountDownSPUtils;->setmAssistantStartCountdownStatus(Z)V

    .line 1033
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v7}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$2100(Lcn/nubia/deskclock/fragment/CountdownFragment;)Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcn/nubia/deskclock/CountDownService;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1034
    .local v1, "mCountdown":Landroid/content/Intent;
    const-string v7, "bengin_time"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1035
    iget-object v7, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v7}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$2100(Lcn/nubia/deskclock/fragment/CountdownFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1039
    .end local v0    # "current":I
    .end local v1    # "mCountdown":Landroid/content/Intent;
    .end local v2    # "currentMillis":J
    .end local v6    # "second":I
    :cond_2
    return-void
.end method

.method public onMinuteAndSecondSet(Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;III)V
    .locals 5
    .param p1, "view"    # Lcn/nubia/deskclock/ui/MinuteAndSecondPickerView;
    .param p2, "hour"    # I
    .param p3, "minute"    # I
    .param p4, "second"    # I

    .prologue
    const/16 v4, 0x233

    const/4 v1, 0x1

    .line 993
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v0, v1}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1702(Lcn/nubia/deskclock/fragment/CountdownFragment;Z)Z

    .line 994
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v0, v1}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1802(Lcn/nubia/deskclock/fragment/CountdownFragment;Z)Z

    .line 995
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    mul-int/lit16 v1, p2, 0xe10

    mul-int/lit8 v2, p3, 0x3c

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    invoke-static {v0, v1}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1902(Lcn/nubia/deskclock/fragment/CountdownFragment;I)I

    .line 996
    const-string v0, "CountdownFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onMinuteAndSecondSet  needAddList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v2}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1700(Lcn/nubia/deskclock/fragment/CountdownFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ;; mIsDialogClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v2}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1800(Lcn/nubia/deskclock/fragment/CountdownFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ;; mStartSecond : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v2}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1900(Lcn/nubia/deskclock/fragment/CountdownFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1000(Lcn/nubia/deskclock/fragment/CountdownFragment;)Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->getIsLayoutMax()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1000(Lcn/nubia/deskclock/fragment/CountdownFragment;)Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->translateToMin()V

    .line 999
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1100(Lcn/nubia/deskclock/fragment/CountdownFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1003
    :goto_0
    return-void

    .line 1001
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1100(Lcn/nubia/deskclock/fragment/CountdownFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
