.class Lcn/nubia/calendar/submodule_alerts/AlertActivity$3;
.super Landroid/os/Handler;
.source "AlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_alerts/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    .prologue
    .line 569
    iput-object p1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$3;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    .line 571
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 628
    :goto_0
    return-void

    .line 573
    :pswitch_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$3;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$600(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$3;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$600(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/os/Handler;

    move-result-object v2

    .line 574
    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 573
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 577
    :pswitch_1
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$3;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    .line 578
    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/calendar/CalendarSettingsActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "preferences_alerts_vibrate"

    const/4 v3, 0x0

    .line 579
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 581
    .local v0, "bVibrate":Z
    if-eqz v0, :cond_0

    .line 582
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$3;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$700(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)V

    .line 584
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$3;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$800(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)V

    .line 585
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$3;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$900(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)V

    goto :goto_0

    .line 588
    .end local v0    # "bVibrate":Z
    :pswitch_2
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$3;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$1002(Lcn/nubia/calendar/submodule_alerts/AlertActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 589
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$3;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$1100(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$3;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$1100(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 591
    :try_start_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$3;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$1100(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :cond_1
    :goto_1
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$3;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$1200(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)V

    .line 596
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$3;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$1300(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)V

    goto :goto_0

    .line 602
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_1

    .line 619
    :pswitch_4
    const-string v1, "AlertActivity"

    const-string v2, "Unknown audio focus change code"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 604
    :pswitch_5
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$3;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$600(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 605
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$3;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$600(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 609
    :pswitch_6
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$3;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$600(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 610
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$3;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$600(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 613
    :pswitch_7
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$3;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$600(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 614
    iget-object v1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$3;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$600(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 592
    :catch_0
    move-exception v1

    goto :goto_1

    .line 571
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 602
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method
