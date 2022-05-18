.class Lcom/zte/mifavor/androidx/widget/RecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/androidx/widget/RecyclerView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/androidx/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/androidx/widget/RecyclerView;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView$1;->this$0:Lcom/zte/mifavor/androidx/widget/RecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 124
    iget-object p1, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView$1;->this$0:Lcom/zte/mifavor/androidx/widget/RecyclerView;

    iget-object p2, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView$1;->this$0:Lcom/zte/mifavor/androidx/widget/RecyclerView;

    invoke-static {p2}, Lcom/zte/mifavor/androidx/widget/RecyclerView;->access$000(Lcom/zte/mifavor/androidx/widget/RecyclerView;)I

    move-result p2

    sub-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/zte/mifavor/androidx/widget/RecyclerView;->access$002(Lcom/zte/mifavor/androidx/widget/RecyclerView;I)I

    .line 125
    iget-object p1, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView$1;->this$0:Lcom/zte/mifavor/androidx/widget/RecyclerView;

    iget-object p1, p1, Lcom/zte/mifavor/androidx/widget/RecyclerView;->mSpringAnimationCommon:Lcom/zte/mifavor/utils/SpringAnimationCommon;

    iget-object p0, p0, Lcom/zte/mifavor/androidx/widget/RecyclerView$1;->this$0:Lcom/zte/mifavor/androidx/widget/RecyclerView;

    invoke-static {p0}, Lcom/zte/mifavor/androidx/widget/RecyclerView;->access$000(Lcom/zte/mifavor/androidx/widget/RecyclerView;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/zte/mifavor/utils/SpringAnimationCommon;->setScrollOffsetY(I)V

    return-void
.end method
