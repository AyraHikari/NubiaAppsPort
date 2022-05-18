.class Landroid/support/v7/widget/c;
.super Landroid/support/v7/view/menu/b;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/c$b;,
        Landroid/support/v7/widget/c$c;,
        Landroid/support/v7/widget/c$f;,
        Landroid/support/v7/widget/c$a;,
        Landroid/support/v7/widget/c$e;,
        Landroid/support/v7/widget/c$d;
    }
.end annotation


# instance fields
.field final A:Landroid/support/v7/widget/c$f;

.field B:I

.field h:Landroid/support/v7/widget/c$d;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I

.field private final u:Landroid/util/SparseBooleanArray;

.field private v:Landroid/view/View;

.field w:Landroid/support/v7/widget/c$e;

.field x:Landroid/support/v7/widget/c$a;

.field y:Landroid/support/v7/widget/c$c;

.field private z:Landroid/support/v7/widget/c$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget v0, La/b/d/a/g;->c:I

    sget v1, La/b/d/a/g;->b:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/view/menu/b;-><init>(Landroid/content/Context;II)V

    .line 2
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/c;->u:Landroid/util/SparseBooleanArray;

    .line 3
    new-instance p1, Landroid/support/v7/widget/c$f;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/c$f;-><init>(Landroid/support/v7/widget/c;)V

    iput-object p1, p0, Landroid/support/v7/widget/c;->A:Landroid/support/v7/widget/c$f;

    return-void
.end method

.method static synthetic p(Landroid/support/v7/widget/c;)Landroid/support/v7/view/menu/g;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v7/view/menu/b;->c:Landroid/support/v7/view/menu/g;

    return-object p0
.end method

.method static synthetic q(Landroid/support/v7/widget/c;)Landroid/support/v7/view/menu/g;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v7/view/menu/b;->c:Landroid/support/v7/view/menu/g;

    return-object p0
.end method

.method static synthetic r(Landroid/support/v7/widget/c;)Landroid/support/v7/view/menu/n;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v7/view/menu/b;->g:Landroid/support/v7/view/menu/n;

    return-object p0
.end method

.method static synthetic s(Landroid/support/v7/widget/c;)Landroid/support/v7/view/menu/g;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v7/view/menu/b;->c:Landroid/support/v7/view/menu/g;

    return-object p0
.end method

.method static synthetic t(Landroid/support/v7/widget/c;)Landroid/support/v7/view/menu/g;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v7/view/menu/b;->c:Landroid/support/v7/view/menu/g;

    return-object p0
.end method

.method static synthetic u(Landroid/support/v7/widget/c;)Landroid/support/v7/view/menu/n;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v7/view/menu/b;->g:Landroid/support/v7/view/menu/n;

    return-object p0
.end method

.method private w(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/b;->g:Landroid/support/v7/view/menu/n;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 3
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4
    instance-of v5, v4, Landroid/support/v7/view/menu/n$a;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Landroid/support/v7/view/menu/n$a;

    .line 5
    invoke-interface {v5}, Landroid/support/v7/view/menu/n$a;->getItemData()Landroid/support/v7/view/menu/h;

    move-result-object v5

    if-ne v5, p1, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/c;->w:Landroid/support/v7/widget/c$e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/view/menu/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Landroid/support/v7/widget/c;->p:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/support/v7/view/menu/b;->b:Landroid/content/Context;

    invoke-static {p1}, La/b/d/d/a;->a(Landroid/content/Context;)La/b/d/d/a;

    move-result-object p1

    invoke-virtual {p1}, La/b/d/d/a;->c()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/c;->o:I

    .line 3
    :cond_0
    iget-object p1, p0, Landroid/support/v7/view/menu/b;->c:Landroid/support/v7/view/menu/g;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/g;->G(Z)V

    :cond_1
    return-void
.end method

.method public C(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v7/widget/c;->s:Z

    return-void
.end method

.method public D(Landroid/support/v7/widget/ActionMenuView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/support/v7/view/menu/b;->g:Landroid/support/v7/view/menu/n;

    .line 2
    iget-object v0, p0, Landroid/support/v7/view/menu/b;->c:Landroid/support/v7/view/menu/g;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionMenuView;->E(Landroid/support/v7/view/menu/g;)V

    return-void
.end method

.method public E(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/c;->h:Landroid/support/v7/widget/c$d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/l;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroid/support/v7/widget/c;->j:Z

    .line 4
    iput-object p1, p0, Landroid/support/v7/widget/c;->i:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public F(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v7/widget/c;->k:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroid/support/v7/widget/c;->l:Z

    return-void
.end method

.method public G()Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/c;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/c;->A()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/b;->c:Landroid/support/v7/view/menu/g;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/view/menu/b;->g:Landroid/support/v7/view/menu/n;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/c;->y:Landroid/support/v7/widget/c$c;

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/view/menu/g;->v()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/support/v7/widget/c$e;

    iget-object v3, p0, Landroid/support/v7/view/menu/b;->b:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v7/view/menu/b;->c:Landroid/support/v7/view/menu/g;

    iget-object v5, p0, Landroid/support/v7/widget/c;->h:Landroid/support/v7/widget/c$d;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/widget/c$e;-><init>(Landroid/support/v7/widget/c;Landroid/content/Context;Landroid/support/v7/view/menu/g;Landroid/view/View;Z)V

    .line 4
    new-instance v1, Landroid/support/v7/widget/c$c;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/c$c;-><init>(Landroid/support/v7/widget/c;Landroid/support/v7/widget/c$e;)V

    iput-object v1, p0, Landroid/support/v7/widget/c;->y:Landroid/support/v7/widget/c$c;

    .line 5
    iget-object v0, p0, Landroid/support/v7/view/menu/b;->g:Landroid/support/v7/view/menu/n;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 6
    invoke-super {p0, v0}, Landroid/support/v7/view/menu/b;->b(Landroid/support/v7/view/menu/s;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/view/menu/g;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/c;->v()Z

    .line 2
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/b;->a(Landroid/support/v7/view/menu/g;Z)V

    return-void
.end method

.method public b(Landroid/support/v7/view/menu/s;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/support/v7/view/menu/g;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    .line 2
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/view/menu/s;->W()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/view/menu/b;->c:Landroid/support/v7/view/menu/g;

    if-eq v2, v3, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/support/v7/view/menu/s;->W()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/s;

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/view/menu/s;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/c;->w(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 5
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/view/menu/s;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    .line 6
    invoke-virtual {p1}, Landroid/support/v7/view/menu/g;->size()I

    move-result v2

    move v3, v1

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v2, :cond_4

    .line 7
    invoke-virtual {p1, v3}, Landroid/support/v7/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 8
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 9
    :cond_4
    :goto_2
    new-instance v2, Landroid/support/v7/widget/c$a;

    iget-object v3, p0, Landroid/support/v7/view/menu/b;->b:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1, v0}, Landroid/support/v7/widget/c$a;-><init>(Landroid/support/v7/widget/c;Landroid/content/Context;Landroid/support/v7/view/menu/s;Landroid/view/View;)V

    iput-object v2, p0, Landroid/support/v7/widget/c;->x:Landroid/support/v7/widget/c$a;

    .line 10
    invoke-virtual {v2, v1}, Landroid/support/v7/view/menu/l;->g(Z)V

    .line 11
    iget-object v0, p0, Landroid/support/v7/widget/c;->x:Landroid/support/v7/widget/c$a;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/l;->k()V

    .line 12
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/b;->b(Landroid/support/v7/view/menu/s;)Z

    return v4
.end method

.method public d()Z
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Landroid/support/v7/view/menu/b;->c:Landroid/support/v7/view/menu/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Landroid/support/v7/view/menu/g;->A()Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v3, v2

    .line 4
    :goto_0
    iget v4, v0, Landroid/support/v7/widget/c;->o:I

    .line 5
    iget v5, v0, Landroid/support/v7/widget/c;->n:I

    .line 6
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 7
    iget-object v7, v0, Landroid/support/v7/view/menu/b;->g:Landroid/support/v7/view/menu/n;

    check-cast v7, Landroid/view/ViewGroup;

    move v8, v2

    move v9, v8

    move v10, v9

    move v11, v10

    :goto_1
    if-ge v8, v3, :cond_4

    .line 8
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v7/view/menu/h;

    .line 9
    invoke-virtual {v13}, Landroid/support/v7/view/menu/h;->m()Z

    move-result v14

    if-eqz v14, :cond_1

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 10
    :cond_1
    invoke-virtual {v13}, Landroid/support/v7/view/menu/h;->l()Z

    move-result v14

    if-eqz v14, :cond_2

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x1

    .line 11
    :goto_2
    iget-boolean v12, v0, Landroid/support/v7/widget/c;->s:Z

    if-eqz v12, :cond_3

    invoke-virtual {v13}, Landroid/support/v7/view/menu/h;->isActionViewExpanded()Z

    move-result v12

    if-eqz v12, :cond_3

    move v4, v2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 12
    :cond_4
    iget-boolean v8, v0, Landroid/support/v7/widget/c;->k:Z

    if-eqz v8, :cond_6

    if-nez v9, :cond_5

    add-int/2addr v11, v10

    if-le v11, v4, :cond_6

    :cond_5
    add-int/lit8 v4, v4, -0x1

    :cond_6
    sub-int/2addr v4, v10

    .line 13
    iget-object v8, v0, Landroid/support/v7/widget/c;->u:Landroid/util/SparseBooleanArray;

    .line 14
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->clear()V

    .line 15
    iget-boolean v9, v0, Landroid/support/v7/widget/c;->q:Z

    if-eqz v9, :cond_7

    .line 16
    iget v9, v0, Landroid/support/v7/widget/c;->t:I

    div-int v10, v5, v9

    .line 17
    rem-int v11, v5, v9

    .line 18
    div-int/2addr v11, v10

    add-int/2addr v9, v11

    goto :goto_3

    :cond_7
    move v9, v2

    move v10, v9

    :goto_3
    move v11, v2

    move v13, v11

    :goto_4
    if-ge v11, v3, :cond_1d

    .line 19
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/support/v7/view/menu/h;

    .line 20
    invoke-virtual {v14}, Landroid/support/v7/view/menu/h;->m()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 21
    iget-object v15, v0, Landroid/support/v7/widget/c;->v:Landroid/view/View;

    invoke-virtual {v0, v14, v15, v7}, Landroid/support/v7/widget/c;->n(Landroid/support/v7/view/menu/h;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 22
    iget-object v12, v0, Landroid/support/v7/widget/c;->v:Landroid/view/View;

    if-nez v12, :cond_8

    .line 23
    iput-object v15, v0, Landroid/support/v7/widget/c;->v:Landroid/view/View;

    .line 24
    :cond_8
    iget-boolean v12, v0, Landroid/support/v7/widget/c;->q:Z

    if-eqz v12, :cond_9

    .line 25
    invoke-static {v15, v9, v10, v6, v2}, Landroid/support/v7/widget/ActionMenuView;->G(Landroid/view/View;IIII)I

    move-result v12

    sub-int/2addr v10, v12

    goto :goto_5

    .line 26
    :cond_9
    invoke-virtual {v15, v6, v6}, Landroid/view/View;->measure(II)V

    .line 27
    :goto_5
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    sub-int/2addr v5, v12

    if-nez v13, :cond_a

    move v13, v12

    .line 28
    :cond_a
    invoke-virtual {v14}, Landroid/support/v7/view/menu/h;->getGroupId()I

    move-result v12

    const/4 v15, 0x1

    if-eqz v12, :cond_b

    .line 29
    invoke-virtual {v8, v12, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 30
    :cond_b
    invoke-virtual {v14, v15}, Landroid/support/v7/view/menu/h;->s(Z)V

    move v0, v2

    move/from16 v17, v3

    goto/16 :goto_d

    .line 31
    :cond_c
    invoke-virtual {v14}, Landroid/support/v7/view/menu/h;->l()Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 32
    invoke-virtual {v14}, Landroid/support/v7/view/menu/h;->getGroupId()I

    move-result v12

    .line 33
    invoke-virtual {v8, v12}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    if-gtz v4, :cond_d

    if-eqz v15, :cond_f

    :cond_d
    if-lez v5, :cond_f

    .line 34
    iget-boolean v2, v0, Landroid/support/v7/widget/c;->q:Z

    if-eqz v2, :cond_e

    if-lez v10, :cond_f

    :cond_e
    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    move/from16 v16, v2

    if-eqz v2, :cond_16

    .line 35
    iget-object v2, v0, Landroid/support/v7/widget/c;->v:Landroid/view/View;

    invoke-virtual {v0, v14, v2, v7}, Landroid/support/v7/widget/c;->n(Landroid/support/v7/view/menu/h;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move/from16 v17, v3

    .line 36
    iget-object v3, v0, Landroid/support/v7/widget/c;->v:Landroid/view/View;

    if-nez v3, :cond_10

    .line 37
    iput-object v2, v0, Landroid/support/v7/widget/c;->v:Landroid/view/View;

    .line 38
    :cond_10
    iget-boolean v3, v0, Landroid/support/v7/widget/c;->q:Z

    if-eqz v3, :cond_11

    const/4 v3, 0x0

    .line 39
    invoke-static {v2, v9, v10, v6, v3}, Landroid/support/v7/widget/ActionMenuView;->G(Landroid/view/View;IIII)I

    move-result v18

    sub-int v10, v10, v18

    if-nez v18, :cond_12

    const/16 v16, 0x0

    goto :goto_7

    .line 40
    :cond_11
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 41
    :cond_12
    :goto_7
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v5, v2

    if-nez v13, :cond_13

    move v13, v2

    .line 42
    :cond_13
    iget-boolean v2, v0, Landroid/support/v7/widget/c;->q:Z

    if-eqz v2, :cond_14

    if-ltz v5, :cond_15

    goto :goto_8

    :cond_14
    add-int v2, v5, v13

    if-lez v2, :cond_15

    :goto_8
    const/4 v2, 0x1

    goto :goto_9

    :cond_15
    const/4 v2, 0x0

    :goto_9
    and-int v2, v16, v2

    goto :goto_a

    :cond_16
    move/from16 v17, v3

    :goto_a
    if-eqz v2, :cond_17

    if-eqz v12, :cond_17

    const/4 v3, 0x1

    .line 43
    invoke-virtual {v8, v12, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_c

    :cond_17
    if-eqz v15, :cond_1a

    const/4 v3, 0x0

    .line 44
    invoke-virtual {v8, v12, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v11, :cond_1a

    .line 45
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/support/v7/view/menu/h;

    .line 46
    invoke-virtual {v15}, Landroid/support/v7/view/menu/h;->getGroupId()I

    move-result v0

    if-ne v0, v12, :cond_19

    .line 47
    invoke-virtual {v15}, Landroid/support/v7/view/menu/h;->j()Z

    move-result v0

    if-eqz v0, :cond_18

    add-int/lit8 v4, v4, 0x1

    :cond_18
    const/4 v0, 0x0

    .line 48
    invoke-virtual {v15, v0}, Landroid/support/v7/view/menu/h;->s(Z)V

    :cond_19
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto :goto_b

    :cond_1a
    :goto_c
    if-eqz v2, :cond_1b

    add-int/lit8 v4, v4, -0x1

    .line 49
    :cond_1b
    invoke-virtual {v14, v2}, Landroid/support/v7/view/menu/h;->s(Z)V

    const/4 v0, 0x0

    goto :goto_d

    :cond_1c
    move v0, v2

    move/from16 v17, v3

    .line 50
    invoke-virtual {v14, v0}, Landroid/support/v7/view/menu/h;->s(Z)V

    :goto_d
    add-int/lit8 v11, v11, 0x1

    move v2, v0

    move/from16 v3, v17

    move-object/from16 v0, p0

    goto/16 :goto_4

    :cond_1d
    const/4 v2, 0x1

    return v2
.end method

.method public g(Landroid/content/Context;Landroid/support/v7/view/menu/g;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/b;->g(Landroid/content/Context;Landroid/support/v7/view/menu/g;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 3
    invoke-static {p1}, La/b/d/d/a;->a(Landroid/content/Context;)La/b/d/d/a;

    move-result-object p1

    .line 4
    iget-boolean v0, p0, Landroid/support/v7/widget/c;->l:Z

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, La/b/d/d/a;->g()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/c;->k:Z

    .line 6
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/c;->r:Z

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p1}, La/b/d/d/a;->b()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/c;->m:I

    .line 8
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/c;->p:Z

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p1}, La/b/d/d/a;->c()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/c;->o:I

    .line 10
    :cond_2
    iget p1, p0, Landroid/support/v7/widget/c;->m:I

    .line 11
    iget-boolean v0, p0, Landroid/support/v7/widget/c;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p0, Landroid/support/v7/widget/c;->h:Landroid/support/v7/widget/c$d;

    if-nez v0, :cond_4

    .line 13
    new-instance v0, Landroid/support/v7/widget/c$d;

    iget-object v2, p0, Landroid/support/v7/view/menu/b;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/c$d;-><init>(Landroid/support/v7/widget/c;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/c;->h:Landroid/support/v7/widget/c$d;

    .line 14
    iget-boolean v2, p0, Landroid/support/v7/widget/c;->j:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 15
    iget-object v2, p0, Landroid/support/v7/widget/c;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/l;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iput-object v1, p0, Landroid/support/v7/widget/c;->i:Landroid/graphics/drawable/Drawable;

    .line 17
    iput-boolean v3, p0, Landroid/support/v7/widget/c;->j:Z

    .line 18
    :cond_3
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 19
    iget-object v2, p0, Landroid/support/v7/widget/c;->h:Landroid/support/v7/widget/c$d;

    invoke-virtual {v2, v0, v0}, Landroid/widget/ImageView;->measure(II)V

    .line 20
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/c;->h:Landroid/support/v7/widget/c$d;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0

    .line 21
    :cond_5
    iput-object v1, p0, Landroid/support/v7/widget/c;->h:Landroid/support/v7/widget/c$d;

    .line 22
    :goto_0
    iput p1, p0, Landroid/support/v7/widget/c;->n:I

    const/high16 p1, 0x42600000    # 56.0f

    .line 23
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Landroid/support/v7/widget/c;->t:I

    .line 24
    iput-object v1, p0, Landroid/support/v7/widget/c;->v:Landroid/view/View;

    return-void
.end method

.method public h(Landroid/support/v7/view/menu/h;Landroid/support/v7/view/menu/n$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p2, p1, v0}, Landroid/support/v7/view/menu/n$a;->b(Landroid/support/v7/view/menu/h;I)V

    .line 2
    iget-object p1, p0, Landroid/support/v7/view/menu/b;->g:Landroid/support/v7/view/menu/n;

    check-cast p1, Landroid/support/v7/widget/ActionMenuView;

    .line 3
    check-cast p2, Landroid/support/v7/view/menu/ActionMenuItemView;

    .line 4
    invoke-virtual {p2, p1}, Landroid/support/v7/view/menu/ActionMenuItemView;->setItemInvoker(Landroid/support/v7/view/menu/g$b;)V

    .line 5
    iget-object p1, p0, Landroid/support/v7/widget/c;->z:Landroid/support/v7/widget/c$b;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Landroid/support/v7/widget/c$b;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/c$b;-><init>(Landroid/support/v7/widget/c;)V

    iput-object p1, p0, Landroid/support/v7/widget/c;->z:Landroid/support/v7/widget/c$b;

    .line 7
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/c;->z:Landroid/support/v7/widget/c$b;

    invoke-virtual {p2, p1}, Landroid/support/v7/view/menu/ActionMenuItemView;->setPopupCallback(Landroid/support/v7/view/menu/ActionMenuItemView$b;)V

    return-void
.end method

.method public k(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/b;->k(Z)V

    .line 2
    iget-object p1, p0, Landroid/support/v7/view/menu/b;->g:Landroid/support/v7/view/menu/n;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 3
    iget-object p1, p0, Landroid/support/v7/view/menu/b;->c:Landroid/support/v7/view/menu/g;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/support/v7/view/menu/g;->r()Ljava/util/ArrayList;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/h;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/h;->getSupportActionProvider()Landroid/support/v4/view/ActionProvider;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v3, p0}, Landroid/support/v4/view/ActionProvider;->setSubUiVisibilityListener(Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Landroid/support/v7/view/menu/b;->c:Landroid/support/v7/view/menu/g;

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Landroid/support/v7/view/menu/g;->v()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 10
    :goto_1
    iget-boolean v1, p0, Landroid/support/v7/widget/c;->k:Z

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 12
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/view/menu/h;

    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->isActionViewExpanded()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    goto :goto_2

    :cond_3
    if-lez v1, :cond_4

    move v0, v2

    :cond_4
    :goto_2
    if-eqz v0, :cond_7

    .line 13
    iget-object p1, p0, Landroid/support/v7/widget/c;->h:Landroid/support/v7/widget/c$d;

    if-nez p1, :cond_5

    .line 14
    new-instance p1, Landroid/support/v7/widget/c$d;

    iget-object v0, p0, Landroid/support/v7/view/menu/b;->a:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Landroid/support/v7/widget/c$d;-><init>(Landroid/support/v7/widget/c;Landroid/content/Context;)V

    iput-object p1, p0, Landroid/support/v7/widget/c;->h:Landroid/support/v7/widget/c$d;

    .line 15
    :cond_5
    iget-object p1, p0, Landroid/support/v7/widget/c;->h:Landroid/support/v7/widget/c$d;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 16
    iget-object v0, p0, Landroid/support/v7/view/menu/b;->g:Landroid/support/v7/view/menu/n;

    if-eq p1, v0, :cond_8

    if-eqz p1, :cond_6

    .line 17
    iget-object v0, p0, Landroid/support/v7/widget/c;->h:Landroid/support/v7/widget/c$d;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 18
    :cond_6
    iget-object p1, p0, Landroid/support/v7/view/menu/b;->g:Landroid/support/v7/view/menu/n;

    check-cast p1, Landroid/support/v7/widget/ActionMenuView;

    .line 19
    iget-object v0, p0, Landroid/support/v7/widget/c;->h:Landroid/support/v7/widget/c$d;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionMenuView;->C()Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 20
    :cond_7
    iget-object p1, p0, Landroid/support/v7/widget/c;->h:Landroid/support/v7/widget/c$d;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/view/menu/b;->g:Landroid/support/v7/view/menu/n;

    if-ne p1, v0, :cond_8

    .line 21
    check-cast v0, Landroid/view/ViewGroup;

    iget-object p1, p0, Landroid/support/v7/widget/c;->h:Landroid/support/v7/widget/c$d;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    :cond_8
    :goto_3
    iget-object p1, p0, Landroid/support/v7/view/menu/b;->g:Landroid/support/v7/view/menu/n;

    check-cast p1, Landroid/support/v7/widget/ActionMenuView;

    iget-boolean v0, p0, Landroid/support/v7/widget/c;->k:Z

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionMenuView;->setOverflowReserved(Z)V

    return-void
.end method

.method public l(Landroid/view/ViewGroup;I)Z
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/c;->h:Landroid/support/v7/widget/c$d;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/b;->l(Landroid/view/ViewGroup;I)Z

    move-result p1

    return p1
.end method

.method public n(Landroid/support/v7/view/menu/h;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/view/menu/b;->n(Landroid/support/v7/view/menu/h;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->isActionViewExpanded()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    check-cast p3, Landroid/support/v7/widget/ActionMenuView;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 7
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 8
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/ActionMenuView;->B(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$c;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-object v0
.end method

.method public o(ILandroid/support/v7/view/menu/h;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/support/v7/view/menu/h;->j()Z

    move-result p1

    return p1
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/b;->b(Landroid/support/v7/view/menu/s;)Z

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Landroid/support/v7/view/menu/b;->c:Landroid/support/v7/view/menu/g;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/g;->d(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public v()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/c;->y()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/c;->z()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public x()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/c;->h:Landroid/support/v7/widget/c$d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/c;->j:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/c;->i:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public y()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/c;->y:Landroid/support/v7/widget/c$c;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/support/v7/view/menu/b;->g:Landroid/support/v7/view/menu/n;

    if-eqz v2, :cond_0

    .line 2
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/support/v7/widget/c;->y:Landroid/support/v7/widget/c$c;

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/c;->w:Landroid/support/v7/widget/c$e;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/support/v7/view/menu/l;->b()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/c;->x:Landroid/support/v7/widget/c$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/view/menu/l;->b()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
