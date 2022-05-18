.class Lcn/nubia/calendar/HomeActivity$WorkHandler;
.super Landroid/os/Handler;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/HomeActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/HomeActivity;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 578
    iput-object p1, p0, Lcn/nubia/calendar/HomeActivity$WorkHandler;->this$0:Lcn/nubia/calendar/HomeActivity;

    .line 579
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 580
    return-void
.end method

.method private doWithUpdateGotoTime()V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$WorkHandler;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-static {v0}, Lcn/nubia/calendar/HomeActivity;->access$400(Lcn/nubia/calendar/HomeActivity;)Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$WorkHandler;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-static {v0}, Lcn/nubia/calendar/HomeActivity;->access$400(Lcn/nubia/calendar/HomeActivity;)Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;->updateGotoTime()V

    .line 653
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$WorkHandler;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-static {v0}, Lcn/nubia/calendar/HomeActivity;->access$800(Lcn/nubia/calendar/HomeActivity;)Lcn/nubia/calendar/deftcontroller/TopBarController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 654
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$WorkHandler;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-static {v0}, Lcn/nubia/calendar/HomeActivity;->access$800(Lcn/nubia/calendar/HomeActivity;)Lcn/nubia/calendar/deftcontroller/TopBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/calendar/deftcontroller/TopBarController;->updateGotoTime()V

    .line 656
    :cond_1
    return-void
.end method

.method private execCommand(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v2, 0x66

    const/16 v1, 0x64

    .line 591
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 647
    :goto_0
    :pswitch_0
    return-void

    .line 593
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$WorkHandler;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-static {v0}, Lcn/nubia/calendar/HomeActivity;->access$400(Lcn/nubia/calendar/HomeActivity;)Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    move-result-object v0

    const/4 v1, 0x1

    .line 594
    invoke-virtual {v0, v1}, Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;->execCommand(I)V

    goto :goto_0

    .line 598
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$WorkHandler;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-static {v0}, Lcn/nubia/calendar/HomeActivity;->access$500(Lcn/nubia/calendar/HomeActivity;)Lcn/nubia/calendar/deftcontroller/UserActionController;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcn/nubia/calendar/deftcontroller/UserActionController;->execCommand(ILandroid/os/Message;)V

    goto :goto_0

    .line 602
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$WorkHandler;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-static {v0}, Lcn/nubia/calendar/HomeActivity;->access$500(Lcn/nubia/calendar/HomeActivity;)Lcn/nubia/calendar/deftcontroller/UserActionController;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1}, Lcn/nubia/calendar/deftcontroller/UserActionController;->execCommand(ILandroid/os/Message;)V

    goto :goto_0

    .line 607
    :pswitch_4
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$WorkHandler;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-static {v0}, Lcn/nubia/calendar/HomeActivity;->access$500(Lcn/nubia/calendar/HomeActivity;)Lcn/nubia/calendar/deftcontroller/UserActionController;

    move-result-object v0

    .line 608
    invoke-virtual {v0, v2, p1}, Lcn/nubia/calendar/deftcontroller/UserActionController;->execCommand(ILandroid/os/Message;)V

    goto :goto_0

    .line 613
    :pswitch_5
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$WorkHandler;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-static {v0}, Lcn/nubia/calendar/HomeActivity;->access$500(Lcn/nubia/calendar/HomeActivity;)Lcn/nubia/calendar/deftcontroller/UserActionController;

    move-result-object v0

    .line 614
    invoke-virtual {v0, v2, p1}, Lcn/nubia/calendar/deftcontroller/UserActionController;->execCommand(ILandroid/os/Message;)V

    goto :goto_0

    .line 619
    :pswitch_6
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$WorkHandler;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-static {v0}, Lcn/nubia/calendar/HomeActivity;->access$500(Lcn/nubia/calendar/HomeActivity;)Lcn/nubia/calendar/deftcontroller/UserActionController;

    move-result-object v0

    const/16 v1, 0x69

    .line 620
    invoke-virtual {v0, v1, p1}, Lcn/nubia/calendar/deftcontroller/UserActionController;->execCommand(ILandroid/os/Message;)V

    goto :goto_0

    .line 625
    :pswitch_7
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$WorkHandler;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-static {v0}, Lcn/nubia/calendar/HomeActivity;->access$600(Lcn/nubia/calendar/HomeActivity;)Lcn/nubia/calendar/deftcontroller/SelectDateController;

    move-result-object v0

    .line 626
    invoke-virtual {v0, v1}, Lcn/nubia/calendar/deftcontroller/SelectDateController;->execCommand(I)V

    goto :goto_0

    .line 630
    :pswitch_8
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$WorkHandler;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-static {v0}, Lcn/nubia/calendar/HomeActivity;->access$500(Lcn/nubia/calendar/HomeActivity;)Lcn/nubia/calendar/deftcontroller/UserActionController;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Lcn/nubia/calendar/deftcontroller/UserActionController;->execCommand(ILandroid/os/Message;)V

    goto :goto_0

    .line 635
    :pswitch_9
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$WorkHandler;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-static {v0}, Lcn/nubia/calendar/HomeActivity;->access$700(Lcn/nubia/calendar/HomeActivity;)Lcn/nubia/calendar/deftcontroller/SettingsController;

    move-result-object v0

    .line 636
    invoke-virtual {v0, v1}, Lcn/nubia/calendar/deftcontroller/SettingsController;->execCommand(I)V

    goto :goto_0

    .line 639
    :pswitch_a
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity$WorkHandler;->doWithUpdateGotoTime()V

    goto :goto_0

    .line 642
    :pswitch_b
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity$WorkHandler;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-static {v0}, Lcn/nubia/calendar/HomeActivity;->access$400(Lcn/nubia/calendar/HomeActivity;)Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    move-result-object v0

    const/16 v1, 0xfac

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;->execCommand(I)V

    goto :goto_0

    .line 591
    nop

    :pswitch_data_0
    .packed-switch 0xfa1
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_3
        :pswitch_9
        :pswitch_7
        :pswitch_a
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 584
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/calendar/HomeActivity$WorkHandler;->execCommand(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :goto_0
    return-void

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, "exception":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
