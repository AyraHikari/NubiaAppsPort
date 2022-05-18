.class Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;
.super Landroid/os/Handler;
.source "ZTEIndexFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/ZTEIndexFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 86
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 88
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    iget p1, p1, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->mState:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 114
    :pswitch_0
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-static {p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$500(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-static {p1, v0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$602(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;Z)Z

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-static {p1, v0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$000(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)V

    .line 119
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-static {p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$200(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->invalidate()V

    .line 120
    iget-object p0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    const-wide/16 v0, 0xa

    invoke-static {p0, v0, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$700(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;J)V

    goto :goto_0

    .line 110
    :pswitch_1
    iget-object p0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$000(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)V

    goto :goto_0

    .line 92
    :pswitch_2
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$000(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)V

    .line 98
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-static {p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$100(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 99
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-static {p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$200(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p1

    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-static {v1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$200(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p1, v1

    if-gez p1, :cond_1

    move p1, v0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-static {v1, p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$400(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$302(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)I

    .line 105
    :cond_2
    iget-object p0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$1;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-static {p0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$200(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Landroid/widget/ListView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
