.class Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$6;
.super Ljava/lang/Object;
.source "BaseSinkActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->updateWidthDecrementOfTitleView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

.field final synthetic val$actionMenuView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;Landroid/view/View;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$6;->this$0:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    iput-object p2, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$6;->val$actionMenuView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 595
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 596
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$6;->val$actionMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$6;->val$actionMenuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 601
    :goto_0
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$6;->this$0:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    iget-object v0, v0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getPaddingEnd()I

    move-result v0

    .line 602
    iget-object v1, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$6;->val$actionMenuView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int v2, v1, v0

    .line 604
    iget-object v3, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$6;->this$0:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    iget-object v4, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$6;->this$0:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    iget-object v4, v4, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mPrimaryTitle:Landroid/widget/TextView;

    invoke-static {v3, v4, v2}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->access$300(Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;Landroid/widget/TextView;I)V

    .line 605
    iget-object v3, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$6;->this$0:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    iget-object p0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$6;->this$0:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    iget-object p0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mSecondaryTitle:Landroid/widget/TextView;

    invoke-static {v3, p0, v2}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->access$300(Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;Landroid/widget/TextView;I)V

    const-string p0, "BaseSinkActivity"

    .line 607
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWidthDecrementOfTitleView, onGlobalLayout, actionMenuViewWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", paddingEnd="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
