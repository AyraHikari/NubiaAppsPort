.class Landroid/support/transition/ViewGroupOverlayApi14;
.super Landroid/support/transition/ViewOverlayApi14;
.source "ViewGroupOverlayApi14.java"

# interfaces
.implements Landroid/support/transition/ViewGroupOverlayImpl;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostView"    # Landroid/view/ViewGroup;
    .param p3, "requestingView"    # Landroid/view/View;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/support/transition/ViewOverlayApi14;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 30
    return-void
.end method

.method static createFrom(Landroid/view/ViewGroup;)Landroid/support/transition/ViewGroupOverlayApi14;
    .locals 1
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 33
    invoke-static {p0}, Landroid/support/transition/ViewOverlayApi14;->createFrom(Landroid/view/View;)Landroid/support/transition/ViewOverlayApi14;

    move-result-object v0

    check-cast v0, Landroid/support/transition/ViewGroupOverlayApi14;

    return-object v0
.end method


# virtual methods
.method public add(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    iget-object v0, p0, Landroid/support/transition/ViewGroupOverlayApi14;->mOverlayViewGroup:Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;

    invoke-virtual {v0, p1}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->add(Landroid/view/View;)V

    .line 39
    return-void
.end method

.method public remove(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    iget-object v0, p0, Landroid/support/transition/ViewGroupOverlayApi14;->mOverlayViewGroup:Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;

    invoke-virtual {v0, p1}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->remove(Landroid/view/View;)V

    .line 44
    return-void
.end method
