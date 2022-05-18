.class Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$5;
.super Ljava/lang/Object;
.source "BaseSinkActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->getMaxCollapsedTitleViewWidth()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$5;->this$0:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 568
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$5;->this$0:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    iget-object v0, v0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 570
    iget-object v2, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$5;->this$0:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    iget-object v2, v2, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 571
    instance-of v3, v2, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v3, :cond_0

    .line 572
    iget-object p0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$5;->this$0:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    invoke-static {p0, v2}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->access$200(Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;Landroid/view/View;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
