.class Landroid/support/v7/widget/t$h;
.super Landroid/support/v7/widget/t$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/t;->R(Landroid/support/v7/widget/t$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/t$i;

.field final synthetic b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/support/v7/widget/t;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/t;Landroid/support/v7/widget/t$i;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/t$h;->d:Landroid/support/v7/widget/t;

    iput-object p2, p0, Landroid/support/v7/widget/t$h;->a:Landroid/support/v7/widget/t$i;

    iput-object p3, p0, Landroid/support/v7/widget/t$h;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput-object p4, p0, Landroid/support/v7/widget/t$h;->c:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/t$k;-><init>(Landroid/support/v7/widget/t$a;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/support/v7/widget/t$h;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 2
    iget-object p1, p0, Landroid/support/v7/widget/t$h;->c:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 3
    iget-object p1, p0, Landroid/support/v7/widget/t$h;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 4
    iget-object p1, p0, Landroid/support/v7/widget/t$h;->c:Landroid/view/View;

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 5
    iget-object p1, p0, Landroid/support/v7/widget/t$h;->d:Landroid/support/v7/widget/t;

    iget-object v0, p0, Landroid/support/v7/widget/t$h;->a:Landroid/support/v7/widget/t$i;

    iget-object v0, v0, Landroid/support/v7/widget/t$i;->b:Landroid/support/v7/widget/RecyclerView$z;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$i;->h(Landroid/support/v7/widget/RecyclerView$z;Z)V

    .line 6
    iget-object p1, p0, Landroid/support/v7/widget/t$h;->d:Landroid/support/v7/widget/t;

    invoke-static {p1}, Landroid/support/v7/widget/t;->I(Landroid/support/v7/widget/t;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/widget/t$h;->a:Landroid/support/v7/widget/t$i;

    iget-object v0, v0, Landroid/support/v7/widget/t$i;->b:Landroid/support/v7/widget/RecyclerView$z;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Landroid/support/v7/widget/t$h;->d:Landroid/support/v7/widget/t;

    invoke-static {p1}, Landroid/support/v7/widget/t;->O(Landroid/support/v7/widget/t;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/support/v7/widget/t$h;->d:Landroid/support/v7/widget/t;

    iget-object v0, p0, Landroid/support/v7/widget/t$h;->a:Landroid/support/v7/widget/t$i;

    iget-object v0, v0, Landroid/support/v7/widget/t$i;->b:Landroid/support/v7/widget/RecyclerView$z;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$i;->i(Landroid/support/v7/widget/RecyclerView$z;Z)V

    return-void
.end method
