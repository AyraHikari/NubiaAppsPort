.class final Landroid/support/v7/view/menu/r;
.super Landroid/support/v7/view/menu/k;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/support/v7/view/menu/m;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static final v:I


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/support/v7/view/menu/g;

.field private final d:Landroid/support/v7/view/menu/f;

.field private final e:Z

.field private final f:I

.field private final g:I

.field private final h:I

.field final i:Landroid/support/v7/widget/d0;

.field final j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final k:Landroid/view/View$OnAttachStateChangeListener;

.field private l:Landroid/widget/PopupWindow$OnDismissListener;

.field private m:Landroid/view/View;

.field n:Landroid/view/View;

.field private o:Landroid/support/v7/view/menu/m$a;

.field p:Landroid/view/ViewTreeObserver;

.field private q:Z

.field private r:Z

.field private s:I

.field private t:I

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, La/b/d/a/g;->j:I

    sput v0, Landroid/support/v7/view/menu/r;->v:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/menu/g;Landroid/view/View;IIZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/support/v7/view/menu/k;-><init>()V

    .line 2
    new-instance v0, Landroid/support/v7/view/menu/r$a;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/r$a;-><init>(Landroid/support/v7/view/menu/r;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/r;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 3
    new-instance v0, Landroid/support/v7/view/menu/r$b;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/r$b;-><init>(Landroid/support/v7/view/menu/r;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/r;->k:Landroid/view/View$OnAttachStateChangeListener;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroid/support/v7/view/menu/r;->t:I

    .line 5
    iput-object p1, p0, Landroid/support/v7/view/menu/r;->b:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Landroid/support/v7/view/menu/r;->c:Landroid/support/v7/view/menu/g;

    .line 7
    iput-boolean p6, p0, Landroid/support/v7/view/menu/r;->e:Z

    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 9
    new-instance v1, Landroid/support/v7/view/menu/f;

    sget v2, Landroid/support/v7/view/menu/r;->v:I

    invoke-direct {v1, p2, v0, p6, v2}, Landroid/support/v7/view/menu/f;-><init>(Landroid/support/v7/view/menu/g;Landroid/view/LayoutInflater;ZI)V

    iput-object v1, p0, Landroid/support/v7/view/menu/r;->d:Landroid/support/v7/view/menu/f;

    .line 10
    iput p4, p0, Landroid/support/v7/view/menu/r;->g:I

    .line 11
    iput p5, p0, Landroid/support/v7/view/menu/r;->h:I

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    .line 13
    invoke-virtual {p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    sget v1, La/b/d/a/d;->d:I

    .line 14
    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p6

    .line 15
    invoke-static {v0, p6}, Ljava/lang/Math;->max(II)I

    move-result p6

    iput p6, p0, Landroid/support/v7/view/menu/r;->f:I

    .line 16
    iput-object p3, p0, Landroid/support/v7/view/menu/r;->m:Landroid/view/View;

    .line 17
    new-instance p3, Landroid/support/v7/widget/d0;

    const/4 p6, 0x0

    invoke-direct {p3, p1, p6, p4, p5}, Landroid/support/v7/widget/d0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p3, p0, Landroid/support/v7/view/menu/r;->i:Landroid/support/v7/widget/d0;

    .line 18
    invoke-virtual {p2, p0, p1}, Landroid/support/v7/view/menu/g;->b(Landroid/support/v7/view/menu/m;Landroid/content/Context;)V

    return-void
.end method

.method private z()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/view/menu/r;->h()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/view/menu/r;->q:Z

    const/4 v2, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/view/menu/r;->m:Landroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    iput-object v0, p0, Landroid/support/v7/view/menu/r;->n:Landroid/view/View;

    .line 4
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->i:Landroid/support/v7/widget/d0;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/b0;->B(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 5
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->i:Landroid/support/v7/widget/d0;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/b0;->C(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 6
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->i:Landroid/support/v7/widget/d0;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/b0;->A(Z)V

    .line 7
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->n:Landroid/view/View;

    .line 8
    iget-object v3, p0, Landroid/support/v7/view/menu/r;->p:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    .line 9
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/view/menu/r;->p:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_3

    .line 10
    iget-object v3, p0, Landroid/support/v7/view/menu/r;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 11
    :cond_3
    iget-object v3, p0, Landroid/support/v7/view/menu/r;->k:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 12
    iget-object v3, p0, Landroid/support/v7/view/menu/r;->i:Landroid/support/v7/widget/d0;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/b0;->s(Landroid/view/View;)V

    .line 13
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->i:Landroid/support/v7/widget/d0;

    iget v3, p0, Landroid/support/v7/view/menu/r;->t:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/b0;->w(I)V

    .line 14
    iget-boolean v0, p0, Landroid/support/v7/view/menu/r;->r:Z

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 15
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->d:Landroid/support/v7/view/menu/f;

    iget-object v4, p0, Landroid/support/v7/view/menu/r;->b:Landroid/content/Context;

    iget v5, p0, Landroid/support/v7/view/menu/r;->f:I

    invoke-static {v0, v3, v4, v5}, Landroid/support/v7/view/menu/k;->o(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/view/menu/r;->s:I

    .line 16
    iput-boolean v1, p0, Landroid/support/v7/view/menu/r;->r:Z

    .line 17
    :cond_4
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->i:Landroid/support/v7/widget/d0;

    iget v4, p0, Landroid/support/v7/view/menu/r;->s:I

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/b0;->v(I)V

    .line 18
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->i:Landroid/support/v7/widget/d0;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/b0;->z(I)V

    .line 19
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->i:Landroid/support/v7/widget/d0;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/k;->n()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/b0;->x(Landroid/graphics/Rect;)V

    .line 20
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->i:Landroid/support/v7/widget/d0;

    invoke-virtual {v0}, Landroid/support/v7/widget/b0;->c()V

    .line 21
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->i:Landroid/support/v7/widget/d0;

    invoke-virtual {v0}, Landroid/support/v7/widget/b0;->i()Landroid/widget/ListView;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 23
    iget-boolean v4, p0, Landroid/support/v7/view/menu/r;->u:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/support/v7/view/menu/r;->c:Landroid/support/v7/view/menu/g;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/g;->u()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 24
    iget-object v4, p0, Landroid/support/v7/view/menu/r;->b:Landroid/content/Context;

    .line 25
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, La/b/d/a/g;->i:I

    invoke-virtual {v4, v5, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x1020016

    .line 26
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 27
    iget-object v6, p0, Landroid/support/v7/view/menu/r;->c:Landroid/support/v7/view/menu/g;

    invoke-virtual {v6}, Landroid/support/v7/view/menu/g;->u()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :cond_5
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 29
    invoke-virtual {v0, v4, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 30
    :cond_6
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->i:Landroid/support/v7/widget/d0;

    iget-object v2, p0, Landroid/support/v7/view/menu/r;->d:Landroid/support/v7/view/menu/f;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/b0;->r(Landroid/widget/ListAdapter;)V

    .line 31
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->i:Landroid/support/v7/widget/d0;

    invoke-virtual {v0}, Landroid/support/v7/widget/b0;->c()V

    return v1

    :cond_7
    :goto_1
    return v2
.end method


# virtual methods
.method public a(Landroid/support/v7/view/menu/g;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->c:Landroid/support/v7/view/menu/g;

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/view/menu/r;->dismiss()V

    .line 3
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->o:Landroid/support/v7/view/menu/m$a;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/m$a;->a(Landroid/support/v7/view/menu/g;Z)V

    :cond_1
    return-void
.end method

.method public b(Landroid/support/v7/view/menu/s;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/support/v7/view/menu/g;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Landroid/support/v7/view/menu/l;

    iget-object v3, p0, Landroid/support/v7/view/menu/r;->b:Landroid/content/Context;

    iget-object v5, p0, Landroid/support/v7/view/menu/r;->n:Landroid/view/View;

    iget-boolean v6, p0, Landroid/support/v7/view/menu/r;->e:Z

    iget v7, p0, Landroid/support/v7/view/menu/r;->g:I

    iget v8, p0, Landroid/support/v7/view/menu/r;->h:I

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Landroid/support/v7/view/menu/l;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/g;Landroid/view/View;ZII)V

    .line 3
    iget-object v2, p0, Landroid/support/v7/view/menu/r;->o:Landroid/support/v7/view/menu/m$a;

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/l;->j(Landroid/support/v7/view/menu/m$a;)V

    .line 4
    invoke-static {p1}, Landroid/support/v7/view/menu/k;->x(Landroid/support/v7/view/menu/g;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/l;->g(Z)V

    .line 5
    iget-object v2, p0, Landroid/support/v7/view/menu/r;->l:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/l;->i(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Landroid/support/v7/view/menu/r;->l:Landroid/widget/PopupWindow$OnDismissListener;

    .line 7
    iget-object v2, p0, Landroid/support/v7/view/menu/r;->c:Landroid/support/v7/view/menu/g;

    invoke-virtual {v2, v1}, Landroid/support/v7/view/menu/g;->d(Z)V

    .line 8
    iget-object v2, p0, Landroid/support/v7/view/menu/r;->i:Landroid/support/v7/widget/d0;

    invoke-virtual {v2}, Landroid/support/v7/widget/b0;->k()I

    move-result v2

    .line 9
    iget-object v3, p0, Landroid/support/v7/view/menu/r;->i:Landroid/support/v7/widget/d0;

    invoke-virtual {v3}, Landroid/support/v7/widget/b0;->m()I

    move-result v3

    .line 10
    iget v4, p0, Landroid/support/v7/view/menu/r;->t:I

    iget-object v5, p0, Landroid/support/v7/view/menu/r;->m:Landroid/view/View;

    .line 11
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    .line 12
    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 13
    iget-object v4, p0, Landroid/support/v7/view/menu/r;->m:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 14
    :cond_0
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/view/menu/l;->n(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->o:Landroid/support/v7/view/menu/m$a;

    if-eqz v0, :cond_1

    .line 16
    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/m$a;->b(Landroid/support/v7/view/menu/g;)Z

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/support/v7/view/menu/r;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/view/menu/r;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->i:Landroid/support/v7/widget/d0;

    invoke-virtual {v0}, Landroid/support/v7/widget/b0;->dismiss()V

    :cond_0
    return-void
.end method

.method public f(Landroid/support/v7/view/menu/m$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/view/menu/r;->o:Landroid/support/v7/view/menu/m$a;

    return-void
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/view/menu/r;->q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/r;->i:Landroid/support/v7/widget/d0;

    invoke-virtual {v0}, Landroid/support/v7/widget/b0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Landroid/widget/ListView;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->i:Landroid/support/v7/widget/d0;

    invoke-virtual {v0}, Landroid/support/v7/widget/b0;->i()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public k(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Landroid/support/v7/view/menu/r;->r:Z

    .line 2
    iget-object p1, p0, Landroid/support/v7/view/menu/r;->d:Landroid/support/v7/view/menu/f;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/support/v7/view/menu/f;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public l(Landroid/support/v7/view/menu/g;)V
    .locals 0

    return-void
.end method

.method public onDismiss()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v7/view/menu/r;->q:Z

    .line 2
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->c:Landroid/support/v7/view/menu/g;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/g;->close()V

    .line 3
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->p:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/r;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/r;->p:Landroid/view/ViewTreeObserver;

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->p:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroid/support/v7/view/menu/r;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroid/support/v7/view/menu/r;->p:Landroid/view/ViewTreeObserver;

    .line 7
    :cond_1
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->n:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/view/menu/r;->k:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 8
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->l:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/view/menu/r;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public p(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/view/menu/r;->m:Landroid/view/View;

    return-void
.end method

.method public r(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->d:Landroid/support/v7/view/menu/f;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/f;->d(Z)V

    return-void
.end method

.method public s(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v7/view/menu/r;->t:I

    return-void
.end method

.method public t(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->i:Landroid/support/v7/widget/d0;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/b0;->y(I)V

    return-void
.end method

.method public u(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/view/menu/r;->l:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public v(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v7/view/menu/r;->u:Z

    return-void
.end method

.method public w(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/r;->i:Landroid/support/v7/widget/d0;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/b0;->H(I)V

    return-void
.end method
