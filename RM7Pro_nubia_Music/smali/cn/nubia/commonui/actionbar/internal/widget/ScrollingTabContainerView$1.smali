.class Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$1;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->animateToTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$1;->b:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    iput-object p2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$1;->b:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$1;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 264
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$1;->b:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->smoothScrollTo(II)V

    .line 265
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$1;->b:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 266
    return-void
.end method
