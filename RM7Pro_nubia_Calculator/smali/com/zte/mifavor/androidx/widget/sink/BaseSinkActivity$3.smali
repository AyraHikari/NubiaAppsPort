.class Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$3;
.super Ljava/lang/Object;
.source "BaseSinkActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->disableSinkingExt(Z)V
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

    .line 483
    iput-object p1, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$3;->this$0:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 486
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 487
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$3;->this$0:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    iget-object v0, v0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mAppBarLy:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$3;->this$0:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    iget-object v0, v0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mAppBarLy:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 491
    :goto_0
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$3;->this$0:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->access$000(Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;Lcom/google/android/material/appbar/AppBarLayout$Behavior$DragCallback;)V

    .line 492
    iget-object p0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$3;->this$0:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->access$100(Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;Z)V

    return-void
.end method
