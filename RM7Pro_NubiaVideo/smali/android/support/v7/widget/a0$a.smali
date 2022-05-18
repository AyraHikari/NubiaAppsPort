.class Landroid/support/v7/widget/a0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z

.field final synthetic d:Landroid/support/v7/widget/a0;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/a0$a;->d:Landroid/support/v7/widget/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/a0$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/a0$a;->d:Landroid/support/v7/widget/a0;

    iget-object v0, v0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v0}, Landroid/support/v7/widget/f0;->i()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a0$a;->d:Landroid/support/v7/widget/a0;

    iget-object v0, v0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v0}, Landroid/support/v7/widget/f0;->k()I

    move-result v0

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/a0$a;->b:I

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/a0$a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/a0$a;->d:Landroid/support/v7/widget/a0;

    iget-object v0, v0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f0;->d(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/a0$a;->d:Landroid/support/v7/widget/a0;

    iget-object v1, v1, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v1}, Landroid/support/v7/widget/f0;->m()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/a0$a;->b:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a0$a;->d:Landroid/support/v7/widget/a0;

    iget-object v0, v0, Landroid/support/v7/widget/a0;->g:Landroid/support/v7/widget/f0;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/f0;->g(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a0$a;->b:I

    .line 4
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/a0$a;->d:Landroid/support/v7/widget/a0;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$m;->T(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/a0$a;->a:I

    return-void
.end method

.method public c(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$w;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$n;

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$n;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$n;->a()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$n;->a()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$w;->l()I

    move-result p2

    if-ge v0, p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/a0$a;->b(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method d()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Landroid/support/v7/widget/a0$a;->a:I

    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Landroid/support/v7/widget/a0$a;->b:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/support/v7/widget/a0$a;->c:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnchorInfo{mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/a0$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/a0$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/v7/widget/a0$a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
