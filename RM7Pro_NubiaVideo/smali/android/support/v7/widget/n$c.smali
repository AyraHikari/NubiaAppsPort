.class Landroid/support/v7/widget/n$c;
.super Landroid/support/v7/widget/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private I:Ljava/lang/CharSequence;

.field J:Landroid/widget/ListAdapter;

.field private final K:Landroid/graphics/Rect;

.field final synthetic L:Landroid/support/v7/widget/n;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/n;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/n$c;->L:Landroid/support/v7/widget/n;

    .line 2
    invoke-direct {p0, p2, p3, p4}, Landroid/support/v7/widget/b0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroid/support/v7/widget/n$c;->K:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/b0;->s(Landroid/view/View;)V

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/b0;->A(Z)V

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/b0;->F(I)V

    .line 7
    new-instance p2, Landroid/support/v7/widget/n$c$a;

    invoke-direct {p2, p0, p1}, Landroid/support/v7/widget/n$c$a;-><init>(Landroid/support/v7/widget/n$c;Landroid/support/v7/widget/n;)V

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/b0;->C(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic J(Landroid/support/v7/widget/n$c;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/support/v7/widget/b0;->c()V

    return-void
.end method


# virtual methods
.method K()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/b0;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroid/support/v7/widget/n$c;->L:Landroid/support/v7/widget/n;

    iget-object v1, v1, Landroid/support/v7/widget/n;->h:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/n$c;->L:Landroid/support/v7/widget/n;

    invoke-static {v0}, Landroid/support/v7/widget/x0;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/n$c;->L:Landroid/support/v7/widget/n;

    iget-object v0, v0, Landroid/support/v7/widget/n;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/n$c;->L:Landroid/support/v7/widget/n;

    iget-object v0, v0, Landroid/support/v7/widget/n;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    :goto_0
    move v1, v0

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/n$c;->L:Landroid/support/v7/widget/n;

    iget-object v0, v0, Landroid/support/v7/widget/n;->h:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 5
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/n$c;->L:Landroid/support/v7/widget/n;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getPaddingLeft()I

    move-result v0

    .line 6
    iget-object v2, p0, Landroid/support/v7/widget/n$c;->L:Landroid/support/v7/widget/n;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getPaddingRight()I

    move-result v2

    .line 7
    iget-object v3, p0, Landroid/support/v7/widget/n$c;->L:Landroid/support/v7/widget/n;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getWidth()I

    move-result v3

    .line 8
    iget-object v4, p0, Landroid/support/v7/widget/n$c;->L:Landroid/support/v7/widget/n;

    iget v5, v4, Landroid/support/v7/widget/n;->g:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_3

    .line 9
    iget-object v5, p0, Landroid/support/v7/widget/n$c;->J:Landroid/widget/ListAdapter;

    check-cast v5, Landroid/widget/SpinnerAdapter;

    .line 10
    invoke-virtual {p0}, Landroid/support/v7/widget/b0;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 11
    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/n;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v4

    .line 12
    iget-object v5, p0, Landroid/support/v7/widget/n$c;->L:Landroid/support/v7/widget/n;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 13
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Landroid/support/v7/widget/n$c;->L:Landroid/support/v7/widget/n;

    iget-object v6, v6, Landroid/support/v7/widget/n;->h:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2

    move v4, v5

    :cond_2
    sub-int v5, v3, v0

    sub-int/2addr v5, v2

    .line 14
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/b0;->v(I)V

    goto :goto_2

    :cond_3
    const/4 v4, -0x1

    if-ne v5, v4, :cond_4

    sub-int v4, v3, v0

    sub-int/2addr v4, v2

    .line 15
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/b0;->v(I)V

    goto :goto_2

    .line 16
    :cond_4
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/b0;->v(I)V

    .line 17
    :goto_2
    iget-object v4, p0, Landroid/support/v7/widget/n$c;->L:Landroid/support/v7/widget/n;

    invoke-static {v4}, Landroid/support/v7/widget/x0;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    sub-int/2addr v3, v2

    .line 18
    invoke-virtual {p0}, Landroid/support/v7/widget/b0;->n()I

    move-result v0

    sub-int/2addr v3, v0

    add-int/2addr v1, v3

    goto :goto_3

    :cond_5
    add-int/2addr v1, v0

    .line 19
    :goto_3
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/b0;->y(I)V

    return-void
.end method

.method public L()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/n$c;->I:Ljava/lang/CharSequence;

    return-object v0
.end method

.method M(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/n$c;->K:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public N(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/n$c;->I:Ljava/lang/CharSequence;

    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/b0;->h()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/n$c;->K()V

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/b0;->z(I)V

    .line 4
    invoke-super {p0}, Landroid/support/v7/widget/b0;->c()V

    .line 5
    invoke-virtual {p0}, Landroid/support/v7/widget/b0;->i()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 7
    iget-object v1, p0, Landroid/support/v7/widget/n$c;->L:Landroid/support/v7/widget/n;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/b0;->G(I)V

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/n$c;->L:Landroid/support/v7/widget/n;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    new-instance v1, Landroid/support/v7/widget/n$c$b;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/n$c$b;-><init>(Landroid/support/v7/widget/n$c;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 11
    new-instance v0, Landroid/support/v7/widget/n$c$c;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/n$c$c;-><init>(Landroid/support/v7/widget/n$c;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/b0;->B(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_1
    return-void
.end method

.method public r(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/widget/b0;->r(Landroid/widget/ListAdapter;)V

    .line 2
    iput-object p1, p0, Landroid/support/v7/widget/n$c;->J:Landroid/widget/ListAdapter;

    return-void
.end method
