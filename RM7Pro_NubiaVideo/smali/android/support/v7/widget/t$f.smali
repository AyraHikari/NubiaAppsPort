.class Landroid/support/v7/widget/t$f;
.super Landroid/support/v7/widget/t$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/t;->S(Landroid/support/v7/widget/RecyclerView$z;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$z;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic e:Landroid/support/v7/widget/t;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/t;Landroid/support/v7/widget/RecyclerView$z;IILandroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/t$f;->e:Landroid/support/v7/widget/t;

    iput-object p2, p0, Landroid/support/v7/widget/t$f;->a:Landroid/support/v7/widget/RecyclerView$z;

    iput p3, p0, Landroid/support/v7/widget/t$f;->b:I

    iput p4, p0, Landroid/support/v7/widget/t$f;->c:I

    iput-object p5, p0, Landroid/support/v7/widget/t$f;->d:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/t$k;-><init>(Landroid/support/v7/widget/t$a;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/t$f;->b:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 3
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/t$f;->c:I

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/support/v7/widget/t$f;->d:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 2
    iget-object p1, p0, Landroid/support/v7/widget/t$f;->e:Landroid/support/v7/widget/t;

    iget-object v0, p0, Landroid/support/v7/widget/t$f;->a:Landroid/support/v7/widget/RecyclerView$z;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$i;->j(Landroid/support/v7/widget/RecyclerView$z;)V

    .line 3
    iget-object p1, p0, Landroid/support/v7/widget/t$f;->e:Landroid/support/v7/widget/t;

    invoke-static {p1}, Landroid/support/v7/widget/t;->H(Landroid/support/v7/widget/t;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/widget/t$f;->a:Landroid/support/v7/widget/RecyclerView$z;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Landroid/support/v7/widget/t$f;->e:Landroid/support/v7/widget/t;

    invoke-static {p1}, Landroid/support/v7/widget/t;->O(Landroid/support/v7/widget/t;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/support/v7/widget/t$f;->e:Landroid/support/v7/widget/t;

    iget-object v0, p0, Landroid/support/v7/widget/t$f;->a:Landroid/support/v7/widget/RecyclerView$z;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$i;->k(Landroid/support/v7/widget/RecyclerView$z;)V

    return-void
.end method
