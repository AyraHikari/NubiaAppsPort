.class Landroid/support/transition/GhostViewApi14$Creator;
.super Ljava/lang/Object;
.source "GhostViewApi14.java"

# interfaces
.implements Landroid/support/transition/GhostViewImpl$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/GhostViewApi14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Creator"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findFrameLayout(Landroid/view/ViewGroup;)Landroid/widget/FrameLayout;
    .locals 2
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 84
    :goto_0
    instance-of v1, p0, Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    .line 85
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 86
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 87
    const/4 p0, 0x0

    .line 91
    .end local v0    # "parent":Landroid/view/ViewParent;
    .end local p0    # "viewGroup":Landroid/view/ViewGroup;
    :goto_1
    return-object p0

    .restart local v0    # "parent":Landroid/view/ViewParent;
    .restart local p0    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    move-object p0, v0

    .line 89
    check-cast p0, Landroid/view/ViewGroup;

    .line 90
    goto :goto_0

    .line 91
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_1
    check-cast p0, Landroid/widget/FrameLayout;

    goto :goto_1
.end method


# virtual methods
.method public addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/support/transition/GhostViewImpl;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 50
    invoke-static {p1}, Landroid/support/transition/GhostViewApi14;->getGhostView(Landroid/view/View;)Landroid/support/transition/GhostViewApi14;

    move-result-object v1

    .line 51
    .local v1, "ghostView":Landroid/support/transition/GhostViewApi14;
    if-nez v1, :cond_1

    .line 52
    invoke-static {p2}, Landroid/support/transition/GhostViewApi14$Creator;->findFrameLayout(Landroid/view/ViewGroup;)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 53
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    if-nez v0, :cond_0

    .line 54
    const/4 v2, 0x0

    .line 60
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    :goto_0
    return-object v2

    .line 56
    .restart local v0    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_0
    new-instance v1, Landroid/support/transition/GhostViewApi14;

    .end local v1    # "ghostView":Landroid/support/transition/GhostViewApi14;
    invoke-direct {v1, p1}, Landroid/support/transition/GhostViewApi14;-><init>(Landroid/view/View;)V

    .line 57
    .restart local v1    # "ghostView":Landroid/support/transition/GhostViewApi14;
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 59
    .end local v0    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_1
    iget v2, v1, Landroid/support/transition/GhostViewApi14;->mReferences:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/support/transition/GhostViewApi14;->mReferences:I

    move-object v2, v1

    .line 60
    goto :goto_0
.end method

.method public removeGhost(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 65
    invoke-static {p1}, Landroid/support/transition/GhostViewApi14;->getGhostView(Landroid/view/View;)Landroid/support/transition/GhostViewApi14;

    move-result-object v0

    .line 66
    .local v0, "ghostView":Landroid/support/transition/GhostViewApi14;
    if-eqz v0, :cond_0

    .line 67
    iget v3, v0, Landroid/support/transition/GhostViewApi14;->mReferences:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Landroid/support/transition/GhostViewApi14;->mReferences:I

    .line 68
    iget v3, v0, Landroid/support/transition/GhostViewApi14;->mReferences:I

    if-gtz v3, :cond_0

    .line 69
    invoke-virtual {v0}, Landroid/support/transition/GhostViewApi14;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 70
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 71
    check-cast v1, Landroid/view/ViewGroup;

    .line 72
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 73
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 77
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method
