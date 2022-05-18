.class public Lcom/android/gallery3d/filtershow/category/b;
.super Landroid/widget/ArrayAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/gallery3d/filtershow/category/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/view/View;

.field private c:I

.field private d:I

.field e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/filtershow/category/b;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/gallery3d/filtershow/category/b;->c:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/gallery3d/filtershow/category/b;->g:Z

    iput-boolean p2, p0, Lcom/android/gallery3d/filtershow/category/b;->h:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/category/b;->a:I

    return-void
.end method

.method private g(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/b;->b:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/android/gallery3d/filtershow/category/CategoryTrack;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/filtershow/category/a;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/category/a;->n(Landroid/widget/ArrayAdapter;)V

    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/category/b;->a(Lcom/android/gallery3d/filtershow/category/a;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/b;->e:I

    return v0
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/category/a;->c()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->clear()V

    return-void
.end method

.method public d()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/category/a;->h()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/category/a;->h()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v2

    instance-of v2, v2, Lcom/android/gallery3d/filtershow/filters/c0;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/category/a;->h()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public f(I)V
    .locals 2

    iput p1, p0, Lcom/android/gallery3d/filtershow/category/b;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/category/b;->d:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e00d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/category/b;->i:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->k0()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/category/b;->d:I

    :cond_1
    const/4 v1, 0x7

    if-ne p1, v1, :cond_2

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->a1()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/category/b;->d:I

    :cond_2
    const/16 v1, 0x9

    if-ne p1, v1, :cond_3

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->Z0()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/category/b;->d:I

    :cond_3
    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    :cond_4
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->s0()I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/category/b;->d:I

    :cond_5
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/gallery3d/filtershow/category/d;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/gallery3d/filtershow/category/d;-><init>(Landroid/content/Context;)V

    :cond_0
    check-cast p2, Lcom/android/gallery3d/filtershow/category/d;

    iget p3, p0, Lcom/android/gallery3d/filtershow/category/b;->f:I

    invoke-virtual {p2, p3}, Lcom/android/gallery3d/filtershow/category/IconView;->setOrientation(I)V

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {p2, p3, p0}, Lcom/android/gallery3d/filtershow/category/d;->i(Lcom/android/gallery3d/filtershow/category/a;Lcom/android/gallery3d/filtershow/category/b;)V

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/b;->c:I

    iget v1, p0, Lcom/android/gallery3d/filtershow/category/b;->a:I

    invoke-virtual {p3}, Lcom/android/gallery3d/filtershow/category/a;->j()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/gallery3d/filtershow/category/b;->f:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    div-int/lit8 v1, v1, 0x2

    :cond_2
    :goto_0
    invoke-virtual {p3}, Lcom/android/gallery3d/filtershow/category/a;->j()I

    move-result p3

    const/4 v2, 0x2

    if-ne p3, v2, :cond_3

    iget p3, p0, Lcom/android/gallery3d/filtershow/category/b;->f:I

    if-nez p3, :cond_3

    div-int/lit8 v1, v1, 0x2

    :cond_3
    new-instance p3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {p3, v0, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method

.method public h(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/b;->d:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public i(Lcom/android/gallery3d/filtershow/category/a;)V
    .locals 4

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/b;->e:I

    const/4 v1, 0x3

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget v3, p0, Lcom/android/gallery3d/filtershow/category/b;->e:I

    if-ne v3, v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->G1(Lcom/android/gallery3d/filtershow/category/a;)V

    goto :goto_0

    :cond_1
    if-ne v3, v2, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->H1(Lcom/android/gallery3d/filtershow/category/a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public j()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/category/a;->h()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/category/a;->h()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v2

    instance-of v2, v2, Lcom/android/gallery3d/filtershow/filters/c0;

    if-eqz v2, :cond_0

    invoke-super {p0, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public k(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/b;->b:Landroid/view/View;

    return-void
.end method

.method public l(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/category/b;->a:I

    return-void
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/category/b;->c:I

    return-void
.end method

.method public n(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/category/b;->f:I

    return-void
.end method

.method public o(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/b;->d:I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/category/b;->d:I

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const/4 p1, -0x1

    if-eq v0, p1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/category/b;->g(I)V

    :cond_0
    iget p1, p0, Lcom/android/gallery3d/filtershow/category/b;->d:I

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/category/b;->g(I)V

    return-void
.end method

.method public p(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/category/b;->g:Z

    return-void
.end method

.method public q(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/category/b;->h:Z

    return-void
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/category/b;->g:Z

    return v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/category/b;->i(Lcom/android/gallery3d/filtershow/category/a;)V

    return-void
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/category/b;->h:Z

    return v0
.end method
