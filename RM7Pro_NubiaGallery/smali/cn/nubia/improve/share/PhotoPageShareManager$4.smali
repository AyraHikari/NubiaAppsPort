.class Lcn/nubia/improve/share/PhotoPageShareManager$4;
.super Landroid/os/Handler;
.source "PhotoPageShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/share/PhotoPageShareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/share/PhotoPageShareManager;


# direct methods
.method constructor <init>(Lcn/nubia/improve/share/PhotoPageShareManager;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$4;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 461
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 462
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f100135

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 p1, 0x2

    const/4 v3, 0x0

    if-eq v0, p1, :cond_4

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 492
    :cond_0
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$4;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$1000(Lcn/nubia/improve/share/PhotoPageShareManager;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 493
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$4;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$1000(Lcn/nubia/improve/share/PhotoPageShareManager;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    .line 494
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$4;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1, v3}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$1002(Lcn/nubia/improve/share/PhotoPageShareManager;Lcn/nubia/commonui/app/ProgressDialog;)Lcn/nubia/commonui/app/ProgressDialog;

    .line 496
    :cond_1
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$4;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$500(Lcn/nubia/improve/share/PhotoPageShareManager;)V

    .line 497
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$4;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$600(Lcn/nubia/improve/share/PhotoPageShareManager;)V

    .line 498
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$4;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$700(Lcn/nubia/improve/share/PhotoPageShareManager;)V

    goto/16 :goto_0

    .line 485
    :cond_2
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$4;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$300(Lcn/nubia/improve/share/PhotoPageShareManager;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$4;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$300(Lcn/nubia/improve/share/PhotoPageShareManager;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager$4;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {v0}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$900(Lcn/nubia/improve/share/PhotoPageShareManager;)I

    move-result v0

    if-le p1, v0, :cond_3

    .line 486
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$4;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$100(Lcn/nubia/improve/share/PhotoPageShareManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/improve/share/PhotoPageShareManager$4;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {v3}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$300(Lcn/nubia/improve/share/PhotoPageShareManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v0, v1, v3}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$1100(Landroid/content/Context;II)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$1002(Lcn/nubia/improve/share/PhotoPageShareManager;Lcn/nubia/commonui/app/ProgressDialog;)Lcn/nubia/commonui/app/ProgressDialog;

    .line 487
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$4;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$1000(Lcn/nubia/improve/share/PhotoPageShareManager;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/commonui/app/ProgressDialog;->show()V

    .line 489
    :cond_3
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$4;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-virtual {p1, v2}, Lcn/nubia/improve/share/PhotoPageShareManager;->process(Z)V

    goto/16 :goto_0

    .line 477
    :cond_4
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$4;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$1000(Lcn/nubia/improve/share/PhotoPageShareManager;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 478
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$4;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$1000(Lcn/nubia/improve/share/PhotoPageShareManager;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    .line 479
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$4;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1, v3}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$1002(Lcn/nubia/improve/share/PhotoPageShareManager;Lcn/nubia/commonui/app/ProgressDialog;)Lcn/nubia/commonui/app/ProgressDialog;

    .line 481
    :cond_5
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$4;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$500(Lcn/nubia/improve/share/PhotoPageShareManager;)V

    .line 482
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$4;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    iget v0, p1, Lcn/nubia/improve/share/PhotoPageShareManager;->click_pos:I

    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$4;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    iget v1, v1, Lcn/nubia/improve/share/PhotoPageShareManager;->click_uid:I

    invoke-virtual {p1, v0, v1}, Lcn/nubia/improve/share/PhotoPageShareManager;->setShareItemClick(II)V

    goto :goto_0

    .line 472
    :cond_6
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager$4;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {v0}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$1000(Lcn/nubia/improve/share/PhotoPageShareManager;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 473
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager$4;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {v0}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$1000(Lcn/nubia/improve/share/PhotoPageShareManager;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    .line 465
    :cond_7
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$4;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$300(Lcn/nubia/improve/share/PhotoPageShareManager;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$4;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$300(Lcn/nubia/improve/share/PhotoPageShareManager;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager$4;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {v0}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$900(Lcn/nubia/improve/share/PhotoPageShareManager;)I

    move-result v0

    if-le p1, v0, :cond_8

    .line 466
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$4;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$100(Lcn/nubia/improve/share/PhotoPageShareManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/improve/share/PhotoPageShareManager$4;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {v2}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$300(Lcn/nubia/improve/share/PhotoPageShareManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$1100(Landroid/content/Context;II)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$1002(Lcn/nubia/improve/share/PhotoPageShareManager;Lcn/nubia/commonui/app/ProgressDialog;)Lcn/nubia/commonui/app/ProgressDialog;

    .line 467
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$4;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {p1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$1000(Lcn/nubia/improve/share/PhotoPageShareManager;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/commonui/app/ProgressDialog;->show()V

    .line 469
    :cond_8
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$4;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/improve/share/PhotoPageShareManager;->process(Z)V

    :cond_9
    :goto_0
    return-void
.end method
