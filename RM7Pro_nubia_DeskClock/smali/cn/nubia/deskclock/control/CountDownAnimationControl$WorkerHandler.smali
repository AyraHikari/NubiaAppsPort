.class public Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;
.super Landroid/os/Handler;
.source "CountDownAnimationControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/control/CountDownAnimationControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WorkerHandler"
.end annotation


# instance fields
.field controlWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/deskclock/control/CountDownAnimationControl;",
            ">;"
        }
    .end annotation
.end field

.field countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;


# direct methods
.method public constructor <init>(Lcn/nubia/deskclock/control/CountDownAnimationControl;Landroid/os/Looper;)V
    .locals 1
    .param p1, "countDownAnimationControl"    # Lcn/nubia/deskclock/control/CountDownAnimationControl;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 108
    iput-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->controlWeakReference:Ljava/lang/ref/WeakReference;

    .line 109
    iput-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    .line 112
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->controlWeakReference:Ljava/lang/ref/WeakReference;

    .line 113
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 116
    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->controlWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->controlWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->controlWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/deskclock/control/CountDownAnimationControl;

    iput-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    .line 118
    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v1}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$000(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/control/CountDownControl;

    move-result-object v1

    if-nez v1, :cond_1

    .line 177
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 121
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 123
    :sswitch_1
    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v1}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$000(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/control/CountDownControl;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/control/CountDownControl;->startEnterAnimation()V

    goto :goto_0

    .line 126
    :sswitch_2
    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v1}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$000(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/control/CountDownControl;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/control/CountDownControl;->startCloseAnimation()V

    goto :goto_0

    .line 129
    :sswitch_3
    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v1}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$000(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/control/CountDownControl;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/control/CountDownControl;->start()V

    goto :goto_0

    .line 132
    :sswitch_4
    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v1}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$000(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/control/CountDownControl;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/control/CountDownControl;->pause()V

    goto :goto_0

    .line 135
    :sswitch_5
    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v1}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$000(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/control/CountDownControl;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/control/CountDownControl;->restart()V

    goto :goto_0

    .line 138
    :sswitch_6
    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v1}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$000(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/control/CountDownControl;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/control/CountDownControl;->reset()V

    goto :goto_0

    .line 141
    :sswitch_7
    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    iget-object v2, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v2}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$200(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/model/CountDownModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/model/CountDownModel;->getStartSecond()I

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$102(Lcn/nubia/deskclock/control/CountDownAnimationControl;I)I

    .line 142
    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    iget-object v2, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v2}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$200(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/model/CountDownModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/model/CountDownModel;->getListener()Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$302(Lcn/nubia/deskclock/control/CountDownAnimationControl;Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;)Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;

    .line 143
    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v1}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$000(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/control/CountDownControl;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v2}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$100(Lcn/nubia/deskclock/control/CountDownAnimationControl;)I

    move-result v2

    iget-object v3, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v3}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$300(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/deskclock/control/CountDownControl;->setTime(ILcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;)V

    .line 144
    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v1}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$000(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/control/CountDownControl;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v2}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$200(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/model/CountDownModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/model/CountDownModel;->getmTotalTime()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/deskclock/control/CountDownControl;->setTotalTime(I)V

    goto/16 :goto_0

    .line 147
    :sswitch_8
    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v1}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$400(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v2}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$200(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/model/CountDownModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/model/CountDownModel;->getCountDigitText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 150
    :sswitch_9
    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v1}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$200(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/model/CountDownModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/model/CountDownModel;->getCountDownViewCanScroll()Z

    move-result v0

    .line 151
    .local v0, "canScroll":Z
    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v1}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$500(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/ui/CountDownView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/deskclock/ui/CountDownView;->setCanScroll(Z)V

    .line 152
    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v1}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$500(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/ui/CountDownView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/deskclock/ui/CountDownView;->setEnabled(Z)V

    .line 153
    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v1}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$500(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/ui/CountDownView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/deskclock/ui/CountDownView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 159
    .end local v0    # "canScroll":Z
    :sswitch_a
    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v1}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$000(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/control/CountDownControl;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v2}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$200(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/model/CountDownModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/model/CountDownModel;->getmTotalTime()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/deskclock/control/CountDownControl;->setTotalTime(I)V

    .line 160
    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v1}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$000(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/control/CountDownControl;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v2}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$200(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/model/CountDownModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/model/CountDownModel;->getPauseTime()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcn/nubia/deskclock/control/CountDownControl;->setPauseTime(ILcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;)V

    .line 162
    :sswitch_b
    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v1}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$000(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/control/CountDownControl;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v2}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$200(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/model/CountDownModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/model/CountDownModel;->getCountDownCallback()Lcn/nubia/deskclock/inter/ICountDownCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/deskclock/control/CountDownControl;->setCountDownCallback(Lcn/nubia/deskclock/inter/ICountDownCallback;)V

    goto/16 :goto_0

    .line 165
    :sswitch_c
    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    iget-object v2, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v2}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$200(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/model/CountDownModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/model/CountDownModel;->getStartSecond()I

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$102(Lcn/nubia/deskclock/control/CountDownAnimationControl;I)I

    .line 166
    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    iget-object v2, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v2}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$200(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/model/CountDownModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/model/CountDownModel;->getListener()Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$302(Lcn/nubia/deskclock/control/CountDownAnimationControl;Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;)Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;

    .line 167
    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v1}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$000(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/control/CountDownControl;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v2}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$200(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/model/CountDownModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/model/CountDownModel;->getmTotalTime()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/deskclock/control/CountDownControl;->setTotalTime(I)V

    .line 168
    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v1}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$000(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/control/CountDownControl;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v2}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$100(Lcn/nubia/deskclock/control/CountDownAnimationControl;)I

    move-result v2

    iget-object v3, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v3}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$300(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/fragment/CountdownFragment$MinuteAndSecondListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/deskclock/control/CountDownControl;->setTime(ILcn/nubia/deskclock/ui/MinuteAndSecondPickerDialog$onMinuteAndScondSetListener;)V

    goto/16 :goto_0

    .line 171
    :sswitch_d
    iget-object v1, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v1}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$600(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/control/CountDownAnimationControl$WorkerHandler;->countDownAnimationControl:Lcn/nubia/deskclock/control/CountDownAnimationControl;

    invoke-static {v2}, Lcn/nubia/deskclock/control/CountDownAnimationControl;->access$200(Lcn/nubia/deskclock/control/CountDownAnimationControl;)Lcn/nubia/deskclock/model/CountDownModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/model/CountDownModel;->getsetDeleteStateString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 121
    :sswitch_data_0
    .sparse-switch
        0xfa1 -> :sswitch_1
        0xfa2 -> :sswitch_2
        0xfa3 -> :sswitch_3
        0xfa4 -> :sswitch_4
        0xfa5 -> :sswitch_6
        0xfa6 -> :sswitch_7
        0xfa7 -> :sswitch_5
        0xfa9 -> :sswitch_c
        0xfaa -> :sswitch_8
        0xfab -> :sswitch_9
        0xfac -> :sswitch_0
        0xfad -> :sswitch_a
        0xfae -> :sswitch_b
        0x1388 -> :sswitch_d
    .end sparse-switch
.end method
