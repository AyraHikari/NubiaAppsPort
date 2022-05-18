.class Lcom/zte/mifavor/widget/ZTEIndexFastScroller$2;
.super Ljava/lang/Object;
.source "ZTEIndexFastScroller.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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

    .line 128
    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$2;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 159
    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$2;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-static {p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$600(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$2;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-static {p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$500(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ZTEIndexFastScroller"

    const-string p2, "onScroll STATE_SHOWING"

    .line 160
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object p0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$2;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$000(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    .line 141
    iget-object p2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$2;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-static {p2, v0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$502(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;Z)Z

    .line 145
    iget-object p2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$2;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-static {p2}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$200(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p2

    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$2;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-static {v0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$200(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p2, v0

    if-gez p2, :cond_0

    goto :goto_0

    .line 135
    :pswitch_0
    iget-object p2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$2;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-static {p2, v0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$602(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;Z)Z

    .line 136
    iget-object p2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$2;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-static {p2, p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$502(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;Z)Z

    const-string p1, "ZTEIndexFastScroller"

    const-string p2, "onScrollStateChanged STATE_SHOWING"

    .line 137
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object p0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$2;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-static {p0, v0}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$000(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)V

    goto :goto_1

    :cond_0
    move p1, p2

    .line 147
    :goto_0
    iget-object p2, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$2;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$2;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    invoke-static {v0, p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$400(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)I

    move-result p1

    invoke-static {p2, p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$302(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)I

    const-string p1, "ZTEIndexFastScroller"

    const-string p2, "onScrollStateChanged STATE_HIDING"

    .line 149
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object p0, p0, Lcom/zte/mifavor/widget/ZTEIndexFastScroller$2;->this$0:Lcom/zte/mifavor/widget/ZTEIndexFastScroller;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/zte/mifavor/widget/ZTEIndexFastScroller;->access$000(Lcom/zte/mifavor/widget/ZTEIndexFastScroller;I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
