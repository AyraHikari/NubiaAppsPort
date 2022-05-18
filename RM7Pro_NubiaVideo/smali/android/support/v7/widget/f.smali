.class Landroid/support/v7/widget/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/support/v7/widget/g;

.field private c:I

.field private d:Landroid/support/v7/widget/p0;

.field private e:Landroid/support/v7/widget/p0;

.field private f:Landroid/support/v7/widget/p0;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroid/support/v7/widget/f;->c:I

    .line 3
    iput-object p1, p0, Landroid/support/v7/widget/f;->a:Landroid/view/View;

    .line 4
    invoke-static {}, Landroid/support/v7/widget/g;->n()Landroid/support/v7/widget/g;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/f;->b:Landroid/support/v7/widget/g;

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/f;->f:Landroid/support/v7/widget/p0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v7/widget/p0;

    invoke-direct {v0}, Landroid/support/v7/widget/p0;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/f;->f:Landroid/support/v7/widget/p0;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/f;->f:Landroid/support/v7/widget/p0;

    .line 4
    invoke-virtual {v0}, Landroid/support/v7/widget/p0;->a()V

    .line 5
    iget-object v1, p0, Landroid/support/v7/widget/f;->a:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 6
    iput-boolean v2, v0, Landroid/support/v7/widget/p0;->d:Z

    .line 7
    iput-object v1, v0, Landroid/support/v7/widget/p0;->a:Landroid/content/res/ColorStateList;

    .line 8
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/f;->a:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9
    iput-boolean v2, v0, Landroid/support/v7/widget/p0;->c:Z

    .line 10
    iput-object v1, v0, Landroid/support/v7/widget/p0;->b:Landroid/graphics/PorterDuff$Mode;

    .line 11
    :cond_2
    iget-boolean v1, v0, Landroid/support/v7/widget/p0;->d:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Landroid/support/v7/widget/p0;->c:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1

    .line 12
    :cond_4
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/f;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/support/v7/widget/g;->B(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/p0;[I)V

    return v2
.end method

.method private k()Z
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-le v0, v3, :cond_1

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/f;->d:Landroid/support/v7/widget/p0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    if-ne v0, v3, :cond_2

    return v1

    :cond_2
    return v2
.end method


# virtual methods
.method b()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/f;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0}, Landroid/support/v7/widget/f;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Landroid/support/v7/widget/f;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/f;->e:Landroid/support/v7/widget/p0;

    if-eqz v1, :cond_1

    .line 5
    iget-object v2, p0, Landroid/support/v7/widget/f;->a:Landroid/view/View;

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 7
    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/g;->B(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/p0;[I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/f;->d:Landroid/support/v7/widget/p0;

    if-eqz v1, :cond_2

    .line 9
    iget-object v2, p0, Landroid/support/v7/widget/f;->a:Landroid/view/View;

    .line 10
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 11
    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/g;->B(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/p0;[I)V

    :cond_2
    :goto_0
    return-void
.end method

.method c()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/f;->e:Landroid/support/v7/widget/p0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/p0;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method d()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/f;->e:Landroid/support/v7/widget/p0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/p0;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method e(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/f;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, La/b/d/a/j;->E2:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroid/support/v7/widget/r0;->s(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/r0;

    move-result-object p1

    .line 2
    :try_start_0
    sget p2, La/b/d/a/j;->F2:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/r0;->p(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/r0;->l(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/f;->c:I

    .line 4
    iget-object p2, p0, Landroid/support/v7/widget/f;->b:Landroid/support/v7/widget/g;

    iget-object v0, p0, Landroid/support/v7/widget/f;->a:Landroid/view/View;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/widget/f;->c:I

    invoke-virtual {p2, v0, v2}, Landroid/support/v7/widget/g;->s(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/f;->h(Landroid/content/res/ColorStateList;)V

    .line 7
    :cond_0
    sget p2, La/b/d/a/j;->G2:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/r0;->p(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Landroid/support/v7/widget/f;->a:Landroid/view/View;

    .line 9
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/r0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 10
    invoke-static {v0, p2}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 11
    :cond_1
    sget p2, La/b/d/a/j;->H2:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/r0;->p(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Landroid/support/v7/widget/f;->a:Landroid/view/View;

    .line 13
    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/r0;->i(II)I

    move-result p2

    const/4 v1, 0x0

    .line 14
    invoke-static {p2, v1}, Landroid/support/v7/widget/u;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    .line 15
    invoke-static {v0, p2}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/r0;->t()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/support/v7/widget/r0;->t()V

    throw p2
.end method

.method f(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, -0x1

    .line 1
    iput p1, p0, Landroid/support/v7/widget/f;->c:I

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/f;->h(Landroid/content/res/ColorStateList;)V

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/f;->b()V

    return-void
.end method

.method g(I)V
    .locals 2

    .line 1
    iput p1, p0, Landroid/support/v7/widget/f;->c:I

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/f;->b:Landroid/support/v7/widget/g;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/f;->a:Landroid/view/View;

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/g;->s(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/f;->h(Landroid/content/res/ColorStateList;)V

    .line 5
    invoke-virtual {p0}, Landroid/support/v7/widget/f;->b()V

    return-void
.end method

.method h(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/f;->d:Landroid/support/v7/widget/p0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v7/widget/p0;

    invoke-direct {v0}, Landroid/support/v7/widget/p0;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/f;->d:Landroid/support/v7/widget/p0;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/f;->d:Landroid/support/v7/widget/p0;

    iput-object p1, v0, Landroid/support/v7/widget/p0;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Landroid/support/v7/widget/p0;->d:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Landroid/support/v7/widget/f;->d:Landroid/support/v7/widget/p0;

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/f;->b()V

    return-void
.end method

.method i(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/f;->e:Landroid/support/v7/widget/p0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v7/widget/p0;

    invoke-direct {v0}, Landroid/support/v7/widget/p0;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/f;->e:Landroid/support/v7/widget/p0;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/f;->e:Landroid/support/v7/widget/p0;

    iput-object p1, v0, Landroid/support/v7/widget/p0;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Landroid/support/v7/widget/p0;->d:Z

    .line 5
    invoke-virtual {p0}, Landroid/support/v7/widget/f;->b()V

    return-void
.end method

.method j(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/f;->e:Landroid/support/v7/widget/p0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v7/widget/p0;

    invoke-direct {v0}, Landroid/support/v7/widget/p0;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/f;->e:Landroid/support/v7/widget/p0;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/f;->e:Landroid/support/v7/widget/p0;

    iput-object p1, v0, Landroid/support/v7/widget/p0;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Landroid/support/v7/widget/p0;->c:Z

    .line 5
    invoke-virtual {p0}, Landroid/support/v7/widget/f;->b()V

    return-void
.end method
