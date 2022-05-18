.class public abstract Landroidx/recyclerview/widget/RecyclerView$t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$t$b;,
        Landroidx/recyclerview/widget/RecyclerView$t$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field private c:Landroidx/recyclerview/widget/RecyclerView$i;

.field private d:Z

.field private e:Z

.field private f:Landroid/view/View;

.field private final g:Landroidx/recyclerview/widget/RecyclerView$t$a;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11760
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$t;->a:I

    .line 11777
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$t$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$t$a;-><init>(II)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$t;->g:Landroidx/recyclerview/widget/RecyclerView$t$a;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 1

    .line 11958
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$t;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->f(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method protected abstract a()V
.end method

.method a(II)V
    .locals 5

    .line 11907
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$t;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 11908
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    .line 11909
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$t;->f()V

    .line 11917
    :cond_1
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->f:Landroid/view/View;

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->c:Landroidx/recyclerview/widget/RecyclerView$i;

    if-eqz v1, :cond_3

    .line 11918
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->a:I

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$t;->d(I)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11919
    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    .line 11920
    :cond_2
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 11921
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-int v3, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 11922
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    .line 11920
    invoke-virtual {v0, v3, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->a(II[I)V

    :cond_3
    const/4 v1, 0x0

    .line 11927
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->d:Z

    .line 11929
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->f:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 11931
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$t;->a(Landroid/view/View;)I

    move-result v1

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$t;->a:I

    if-ne v1, v3, :cond_4

    .line 11932
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->f:Landroid/view/View;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->D:Landroidx/recyclerview/widget/RecyclerView$u;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$t;->g:Landroidx/recyclerview/widget/RecyclerView$t$a;

    invoke-virtual {p0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$t;->a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$t$a;)V

    .line 11933
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->g:Landroidx/recyclerview/widget/RecyclerView$t$a;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$t$a;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 11934
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$t;->f()V

    goto :goto_0

    :cond_4
    const-string v1, "RecyclerView"

    const-string v3, "Passed over target position while smooth scrolling."

    .line 11936
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11937
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$t;->f:Landroid/view/View;

    .line 11940
    :cond_5
    :goto_0
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->e:Z

    if-eqz v1, :cond_6

    .line 11941
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->D:Landroidx/recyclerview/widget/RecyclerView$u;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$t;->g:Landroidx/recyclerview/widget/RecyclerView$t$a;

    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$t;->a(IILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$t$a;)V

    .line 11942
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->g:Landroidx/recyclerview/widget/RecyclerView$t$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$t$a;->a()Z

    move-result p1

    .line 11943
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$t;->g:Landroidx/recyclerview/widget/RecyclerView$t$a;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$t$a;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    if-eqz p1, :cond_6

    .line 11946
    iget-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->e:Z

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    .line 11947
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->d:Z

    .line 11948
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView;->A:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->a()V

    :cond_6
    return-void
.end method

.method protected abstract a(IILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$t$a;)V
.end method

.method protected a(Landroid/graphics/PointF;)V
    .locals 3

    .line 11998
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 12000
    iget v1, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 12001
    iget v1, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method protected abstract a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$t$a;)V
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$i;)V
    .locals 2

    .line 11795
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->A:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$w;->b()V

    .line 11797
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$t;->h:Z

    if-eqz v0, :cond_0

    .line 11798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An instance of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was started more than once. Each instance of"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11799
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is intended to only be used once. You should create a new instance for each use."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecyclerView"

    .line 11798
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11804
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 11805
    iput-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$t;->c:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 11806
    iget p2, p0, Landroidx/recyclerview/widget/RecyclerView$t;->a:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 11809
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->D:Landroidx/recyclerview/widget/RecyclerView$u;

    iget p2, p0, Landroidx/recyclerview/widget/RecyclerView$t;->a:I

    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$u;->a:I

    const/4 p1, 0x1

    .line 11810
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->e:Z

    .line 11811
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->d:Z

    .line 11812
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$t;->i()I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$t;->e(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$t;->f:Landroid/view/View;

    .line 11813
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$t;->a()V

    .line 11814
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$t;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->A:Landroidx/recyclerview/widget/RecyclerView$w;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$w;->a()V

    .line 11816
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->h:Z

    return-void

    .line 11807
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid target position"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract b()V
.end method

.method protected b(Landroid/view/View;)V
    .locals 2

    .line 11985
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$t;->a(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$t;->i()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 11986
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->f:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 0

    .line 11820
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->a:I

    return-void
.end method

.method public d(I)Landroid/graphics/PointF;
    .locals 2

    .line 11835
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$t;->e()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    .line 11836
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView$t$b;

    if-eqz v1, :cond_0

    .line 11837
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$t$b;

    .line 11838
    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$t$b;->d(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 11840
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-class v0, Landroidx/recyclerview/widget/RecyclerView$t$b;

    .line 11841
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecyclerView"

    .line 11840
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public e(I)Landroid/view/View;
    .locals 1

    .line 11972
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$t;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->c(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public e()Landroidx/recyclerview/widget/RecyclerView$i;
    .locals 1

    .line 11851
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$t;->c:Landroidx/recyclerview/widget/RecyclerView$i;

    return-object v0
.end method

.method protected final f()V
    .locals 3

    .line 11861
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$t;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 11864
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$t;->e:Z

    .line 11865
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$t;->b()V

    .line 11866
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->D:Landroidx/recyclerview/widget/RecyclerView$u;

    const/4 v2, -0x1

    iput v2, v1, Landroidx/recyclerview/widget/RecyclerView$u;->a:I

    const/4 v1, 0x0

    .line 11867
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->f:Landroid/view/View;

    .line 11868
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$t;->a:I

    .line 11869
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$t;->d:Z

    .line 11871
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$t;->c:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$i;->b(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 11873
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->c:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 11874
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$t;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public g()Z
    .locals 1

    .line 11885
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$t;->d:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .line 11893
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$t;->e:Z

    return v0
.end method

.method public i()I
    .locals 1

    .line 11903
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$t;->a:I

    return v0
.end method

.method public j()I
    .locals 1

    .line 11965
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$t;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->n:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->w()I

    move-result v0

    return v0
.end method
