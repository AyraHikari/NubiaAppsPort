.class Landroid/support/transition/ViewOverlayApi18;
.super Ljava/lang/Object;
.source "ViewOverlayApi18.java"

# interfaces
.implements Landroid/support/transition/ViewOverlayImpl;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x12
.end annotation


# instance fields
.field private final mViewOverlay:Landroid/view/ViewOverlay;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/ViewOverlayApi18;->mViewOverlay:Landroid/view/ViewOverlay;

    .line 32
    return-void
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi18;->mViewOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v0, p1}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 37
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi18;->mViewOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v0}, Landroid/view/ViewOverlay;->clear()V

    .line 42
    return-void
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/transition/ViewOverlayApi18;->mViewOverlay:Landroid/view/ViewOverlay;

    invoke-virtual {v0, p1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 47
    return-void
.end method
