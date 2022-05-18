.class Landroid/support/transition/Fade$FadeAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/Fade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FadeAnimatorListener"
.end annotation


# instance fields
.field private mLayerTypeChanged:Z

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 182
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    .line 183
    iput-object p1, p0, Landroid/support/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    .line 184
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 197
    iget-object v0, p0, Landroid/support/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 198
    iget-boolean v0, p0, Landroid/support/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Landroid/support/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 201
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 188
    iget-object v0, p0, Landroid/support/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    .line 189
    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-nez v0, :cond_0

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    .line 191
    iget-object v0, p0, Landroid/support/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 193
    :cond_0
    return-void
.end method
