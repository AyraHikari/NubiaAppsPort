.class Landroid/support/design/widget/BaseTransientBottomBar$6;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/BaseTransientBottomBar;->showView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BaseTransientBottomBar;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/design/widget/BaseTransientBottomBar;

    .prologue
    .line 479
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$6;, "Landroid/support/design/widget/BaseTransientBottomBar$6;"
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$6;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 482
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$6;, "Landroid/support/design/widget/BaseTransientBottomBar$6;"
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$6;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    iget-object v0, v0, Landroid/support/design/widget/BaseTransientBottomBar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->setOnLayoutChangeListener(Landroid/support/design/widget/BaseTransientBottomBar$OnLayoutChangeListener;)V

    .line 484
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$6;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$6;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar;->animateViewIn()V

    .line 491
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BaseTransientBottomBar$6;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-virtual {v0}, Landroid/support/design/widget/BaseTransientBottomBar;->onViewShown()V

    goto :goto_0
.end method
