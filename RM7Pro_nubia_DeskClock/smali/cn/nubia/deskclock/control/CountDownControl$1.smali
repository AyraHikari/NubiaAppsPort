.class Lcn/nubia/deskclock/control/CountDownControl$1;
.super Landroid/os/Handler;
.source "CountDownControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/control/CountDownControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/control/CountDownControl;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/control/CountDownControl;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/control/CountDownControl;

    .prologue
    .line 23
    iput-object p1, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 27
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 29
    :sswitch_0
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/CountDownControl;->access$000(Lcn/nubia/deskclock/control/CountDownControl;)V

    .line 30
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v0, v1}, Lcn/nubia/deskclock/control/CountDownControl;->access$102(Lcn/nubia/deskclock/control/CountDownControl;Z)Z

    .line 31
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v0, v1}, Lcn/nubia/deskclock/control/CountDownControl;->access$202(Lcn/nubia/deskclock/control/CountDownControl;Z)Z

    .line 32
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/CountDownControl;->access$300(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/inter/ICountDownCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/CountDownControl;->access$300(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/inter/ICountDownCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/deskclock/inter/ICountDownCallback;->onCountDownOver()V

    goto :goto_0

    .line 36
    :sswitch_1
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v0, v1}, Lcn/nubia/deskclock/control/CountDownControl;->access$102(Lcn/nubia/deskclock/control/CountDownControl;Z)Z

    .line 37
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/CountDownControl;->access$200(Lcn/nubia/deskclock/control/CountDownControl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v0, v2}, Lcn/nubia/deskclock/control/CountDownControl;->access$202(Lcn/nubia/deskclock/control/CountDownControl;Z)Z

    .line 42
    :goto_1
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v0, v1}, Lcn/nubia/deskclock/control/CountDownControl;->access$402(Lcn/nubia/deskclock/control/CountDownControl;Z)Z

    .line 43
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/CountDownControl;->access$500(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/ui/CountDownView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/CountDownView;->getCurrentTime()J

    move-result-wide v0

    iget-object v2, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v2}, Lcn/nubia/deskclock/control/CountDownControl;->access$600(Lcn/nubia/deskclock/control/CountDownControl;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/CountDownControl;->access$300(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/inter/ICountDownCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/CountDownControl;->access$300(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/inter/ICountDownCallback;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    .line 46
    invoke-static {v1}, Lcn/nubia/deskclock/control/CountDownControl;->access$500(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/ui/CountDownView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/CountDownView;->getCurrentHour()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    .line 47
    invoke-static {v2}, Lcn/nubia/deskclock/control/CountDownControl;->access$500(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/ui/CountDownView;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/ui/CountDownView;->getCurrentMinute()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    .line 48
    invoke-static {v3}, Lcn/nubia/deskclock/control/CountDownControl;->access$500(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/ui/CountDownView;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/deskclock/ui/CountDownView;->getCurrentSecond()I

    move-result v3

    .line 45
    invoke-interface {v0, v1, v2, v3}, Lcn/nubia/deskclock/inter/ICountDownCallback;->onAjustTimeTo(III)V

    .line 50
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/CountDownControl;->access$300(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/inter/ICountDownCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    .line 51
    invoke-static {v0}, Lcn/nubia/deskclock/control/CountDownControl;->access$500(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/ui/CountDownView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/CountDownView;->getCurrentHour()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v1}, Lcn/nubia/deskclock/control/CountDownControl;->access$500(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/ui/CountDownView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/CountDownView;->getCurrentMinute()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    .line 52
    invoke-static {v1}, Lcn/nubia/deskclock/control/CountDownControl;->access$500(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/ui/CountDownView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/CountDownView;->getCurrentSecond()I

    move-result v1

    add-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/CountDownControl;->access$700(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/model/CountDownModel;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v1}, Lcn/nubia/deskclock/control/CountDownControl;->access$500(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/ui/CountDownView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/CountDownView;->getCurrentTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/nubia/deskclock/model/CountDownModel;->setCurrentTime(J)V

    .line 54
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/CountDownControl;->access$300(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/inter/ICountDownCallback;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v1}, Lcn/nubia/deskclock/control/CountDownControl;->access$500(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/ui/CountDownView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/CountDownView;->getCurrentHour()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    .line 55
    invoke-static {v2}, Lcn/nubia/deskclock/control/CountDownControl;->access$500(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/ui/CountDownView;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/ui/CountDownView;->getCurrentMinute()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v3}, Lcn/nubia/deskclock/control/CountDownControl;->access$500(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/ui/CountDownView;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/deskclock/ui/CountDownView;->getCurrentSecond()I

    move-result v3

    .line 54
    invoke-interface {v0, v1, v2, v3}, Lcn/nubia/deskclock/inter/ICountDownCallback;->onTouchUp(III)V

    goto/16 :goto_0

    .line 40
    :cond_2
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v0, v1}, Lcn/nubia/deskclock/control/CountDownControl;->access$202(Lcn/nubia/deskclock/control/CountDownControl;Z)Z

    goto/16 :goto_1

    .line 59
    :sswitch_2
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v0, v2}, Lcn/nubia/deskclock/control/CountDownControl;->access$402(Lcn/nubia/deskclock/control/CountDownControl;Z)Z

    .line 60
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v1}, Lcn/nubia/deskclock/control/CountDownControl;->access$500(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/ui/CountDownView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/ui/CountDownView;->getCurrentTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcn/nubia/deskclock/control/CountDownControl;->access$602(Lcn/nubia/deskclock/control/CountDownControl;J)J

    .line 61
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/CountDownControl;->access$300(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/inter/ICountDownCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/CountDownControl;->access$300(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/inter/ICountDownCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/deskclock/inter/ICountDownCallback;->onMove()V

    goto/16 :goto_0

    .line 66
    :sswitch_3
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/CountDownControl;->access$300(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/inter/ICountDownCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/CountDownControl;->access$300(Lcn/nubia/deskclock/control/CountDownControl;)Lcn/nubia/deskclock/inter/ICountDownCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/deskclock/inter/ICountDownCallback;->onTouchDown()V

    goto/16 :goto_0

    .line 71
    :sswitch_4
    iget-object v0, p0, Lcn/nubia/deskclock/control/CountDownControl$1;->this$0:Lcn/nubia/deskclock/control/CountDownControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/CountDownControl;->access$800(Lcn/nubia/deskclock/control/CountDownControl;)V

    goto/16 :goto_0

    .line 27
    :sswitch_data_0
    .sparse-switch
        0x12341 -> :sswitch_0
        0x12343 -> :sswitch_3
        0x12344 -> :sswitch_2
        0x12345 -> :sswitch_4
        0x123442 -> :sswitch_1
    .end sparse-switch
.end method
