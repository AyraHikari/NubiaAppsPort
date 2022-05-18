.class Lcom/zte/mifavor/widget/PagerSecond$4;
.super Ljava/lang/Object;
.source "PagerSecond.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/PagerSecond;->addTab(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/PagerSecond;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/PagerSecond;I)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/zte/mifavor/widget/PagerSecond$4;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    iput p2, p0, Lcom/zte/mifavor/widget/PagerSecond$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string p1, "PagerSecond"

    const-string v0, "click tab"

    .line 493
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$4;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-static {v0}, Lcom/zte/mifavor/widget/PagerSecond;->access$100(Lcom/zte/mifavor/widget/PagerSecond;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 497
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$4;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-static {v0}, Lcom/zte/mifavor/widget/PagerSecond;->access$100(Lcom/zte/mifavor/widget/PagerSecond;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/PagerSecond$4;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-static {v1}, Lcom/zte/mifavor/widget/PagerSecond;->access$200(Lcom/zte/mifavor/widget/PagerSecond;)Landroid/widget/Scroller;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/PagerSecond$4;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    .line 498
    invoke-static {v2}, Lcom/zte/mifavor/widget/PagerSecond;->access$800(Lcom/zte/mifavor/widget/PagerSecond;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/zte/extres/R$interpolator;->tab_move:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 497
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PagerSecond"

    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTab -onClick : replace interpolator error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :goto_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$4;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-static {v0}, Lcom/zte/mifavor/widget/PagerSecond;->access$500(Lcom/zte/mifavor/widget/PagerSecond;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/zte/mifavor/widget/PagerSecond$4;->val$position:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 508
    iget-object v0, p0, Lcom/zte/mifavor/widget/PagerSecond$4;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    invoke-static {v0}, Lcom/zte/mifavor/widget/PagerSecond;->access$900(Lcom/zte/mifavor/widget/PagerSecond;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/mifavor/widget/PagerSecond$4;->this$0:Lcom/zte/mifavor/widget/PagerSecond;

    .line 509
    invoke-static {p0}, Lcom/zte/mifavor/widget/PagerSecond;->access$900(Lcom/zte/mifavor/widget/PagerSecond;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0x258

    .line 508
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
