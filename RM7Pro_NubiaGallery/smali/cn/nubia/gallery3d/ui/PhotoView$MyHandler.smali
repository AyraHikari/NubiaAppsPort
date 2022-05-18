.class Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;
.super Lcn/nubia/gallery3d/ui/SynchronizedHandler;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/PhotoView;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/ui/PhotoView;Lcn/nubia/gallery3d/ui/GLRoot;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    .line 533
    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;-><init>(Lcn/nubia/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 538
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 610
    new-instance v0, Ljava/lang/AssertionError;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 605
    :pswitch_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1700(Lcn/nubia/gallery3d/ui/PhotoView;)V

    .line 606
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1, v2}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1600(Lcn/nubia/gallery3d/ui/PhotoView;Z)V

    goto/16 :goto_0

    .line 597
    :pswitch_1
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$100(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/PhotoView$Listener;->clearSelected()V

    .line 598
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1500(Lcn/nubia/gallery3d/ui/PhotoView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 599
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$100(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/PhotoView$Listener;->onBack()V

    goto/16 :goto_0

    .line 601
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1, v3}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1600(Lcn/nubia/gallery3d/ui/PhotoView;Z)V

    goto/16 :goto_0

    .line 593
    :pswitch_2
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1400(Lcn/nubia/gallery3d/ui/PhotoView;I)V

    goto/16 :goto_0

    .line 589
    :pswitch_3
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1, v1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1400(Lcn/nubia/gallery3d/ui/PhotoView;I)V

    goto/16 :goto_0

    .line 582
    :pswitch_4
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$900(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 583
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$300(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v0

    and-int/lit8 v0, v0, -0x5

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$302(Lcn/nubia/gallery3d/ui/PhotoView;I)I

    .line 584
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1300(Lcn/nubia/gallery3d/ui/PhotoView;)V

    goto/16 :goto_0

    .line 558
    :pswitch_5
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$100(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Listener;

    move-result-object v0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcn/nubia/gallery3d/data/Path;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v3, p1}, Lcn/nubia/gallery3d/ui/PhotoView$Listener;->onDeleteImage(Lcn/nubia/gallery3d/data/Path;I)V

    .line 568
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$900(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 569
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$900(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 570
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$900(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/SynchronizedHandler;

    move-result-object v0

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, p1, v3, v4}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 572
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1000(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result p1

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1100(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p1, v2

    if-ne p1, v1, :cond_1

    .line 574
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1000(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v0

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1200(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PhotoView$Model;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->access$1100(Lcn/nubia/gallery3d/ui/PhotoView;)I

    move-result v0

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result p1

    .line 578
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->showUndoBar()V

    goto :goto_0

    .line 552
    :pswitch_6
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$800(Lcn/nubia/gallery3d/ui/PhotoView;I)V

    goto :goto_0

    .line 546
    :pswitch_7
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$700(Lcn/nubia/gallery3d/ui/PhotoView;)V

    goto :goto_0

    .line 540
    :pswitch_8
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$400(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/GestureRecognizer;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/GestureRecognizer;->cancelScale()V

    .line 541
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/PhotoView;->access$500(Lcn/nubia/gallery3d/ui/PhotoView;)Lcn/nubia/gallery3d/ui/PositionController;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcn/nubia/gallery3d/ui/PositionController;->setExtraScalingRange(Z)V

    .line 542
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$MyHandler;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-static {p1, v3}, Lcn/nubia/gallery3d/ui/PhotoView;->access$602(Lcn/nubia/gallery3d/ui/PhotoView;Z)Z

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
