.class Lcom/zte/mifavor/widget/PagerSecond$3;
.super Ljava/lang/Object;
.source "PagerSecond.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/PagerSecond;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/PagerSecond;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/PagerSecond;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond$3;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 448
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 449
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$3;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/PagerSecond;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$3;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/PagerSecond;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 456
    :goto_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$3;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond$3;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-static {v1}, Lcom/zte/mifavor/widget/PagerSecond;->access$500(Lcom/zte/mifavor/widget/PagerSecond;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/PagerSecond;->access$402(Lcom/zte/mifavor/widget/PagerSecond;I)I

    .line 457
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$3;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond$3;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-static {v1}, Lcom/zte/mifavor/widget/PagerSecond;->access$400(Lcom/zte/mifavor/widget/PagerSecond;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/zte/mifavor/widget/PagerSecond;->access$602(Lcom/zte/mifavor/widget/PagerSecond;I)I

    .line 458
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$3;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    iget-object p0, p0, Lcom/zte/mifavor/widget/PagerSecond$3;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-static {p0}, Lcom/zte/mifavor/widget/PagerSecond;->access$400(Lcom/zte/mifavor/widget/PagerSecond;)I

    move-result p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/zte/mifavor/widget/PagerSecond;->access$700(Lcom/zte/mifavor/widget/PagerSecond;II)V

    return-void
.end method
