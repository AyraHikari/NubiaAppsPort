.class Landroid/support/v7/widget/c$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/c;->a(Landroid/support/v7/widget/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/c$a;

.field final synthetic b:Landroid/view/ViewPropertyAnimator;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/support/v7/widget/c;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/c;Landroid/support/v7/widget/c$a;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Landroid/support/v7/widget/c$8;->d:Landroid/support/v7/widget/c;

    iput-object p2, p0, Landroid/support/v7/widget/c$8;->a:Landroid/support/v7/widget/c$a;

    iput-object p3, p0, Landroid/support/v7/widget/c$8;->b:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Landroid/support/v7/widget/c$8;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 387
    iget-object v0, p0, Landroid/support/v7/widget/c$8;->b:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 388
    iget-object v0, p0, Landroid/support/v7/widget/c$8;->c:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 389
    iget-object v0, p0, Landroid/support/v7/widget/c$8;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 390
    iget-object v0, p0, Landroid/support/v7/widget/c$8;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 391
    iget-object v0, p0, Landroid/support/v7/widget/c$8;->d:Landroid/support/v7/widget/c;

    iget-object v1, p0, Landroid/support/v7/widget/c$8;->a:Landroid/support/v7/widget/c$a;

    iget-object v1, v1, Landroid/support/v7/widget/c$a;->b:Landroid/support/v7/widget/RecyclerView$u;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/c;->a(Landroid/support/v7/widget/RecyclerView$u;Z)V

    .line 392
    iget-object v0, p0, Landroid/support/v7/widget/c$8;->d:Landroid/support/v7/widget/c;

    iget-object v0, v0, Landroid/support/v7/widget/c;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/c$8;->a:Landroid/support/v7/widget/c$a;

    iget-object v1, v1, Landroid/support/v7/widget/c$a;->b:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Landroid/support/v7/widget/c$8;->d:Landroid/support/v7/widget/c;

    invoke-virtual {v0}, Landroid/support/v7/widget/c;->c()V

    .line 394
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 383
    iget-object v0, p0, Landroid/support/v7/widget/c$8;->d:Landroid/support/v7/widget/c;

    iget-object v1, p0, Landroid/support/v7/widget/c$8;->a:Landroid/support/v7/widget/c$a;

    iget-object v1, v1, Landroid/support/v7/widget/c$a;->b:Landroid/support/v7/widget/RecyclerView$u;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/c;->b(Landroid/support/v7/widget/RecyclerView$u;Z)V

    .line 384
    return-void
.end method
