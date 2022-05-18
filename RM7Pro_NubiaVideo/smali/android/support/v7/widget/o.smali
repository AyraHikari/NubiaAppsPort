.class Landroid/support/v7/widget/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private b:Landroid/support/v7/widget/p0;

.field private c:Landroid/support/v7/widget/p0;

.field private d:Landroid/support/v7/widget/p0;

.field private e:Landroid/support/v7/widget/p0;

.field private f:Landroid/support/v7/widget/p0;

.field private g:Landroid/support/v7/widget/p0;

.field private final h:Landroid/support/v7/widget/q;

.field private i:I

.field private j:Landroid/graphics/Typeface;

.field private k:Z


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/support/v7/widget/o;->i:I

    .line 3
    iput-object p1, p0, Landroid/support/v7/widget/o;->a:Landroid/widget/TextView;

    .line 4
    new-instance v0, Landroid/support/v7/widget/q;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/q;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/support/v7/widget/o;->h:Landroid/support/v7/widget/q;

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/p0;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/o;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/g;->B(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/p0;[I)V

    :cond_0
    return-void
.end method

.method private static d(Landroid/content/Context;Landroid/support/v7/widget/g;I)Landroid/support/v7/widget/p0;
    .locals 0

    .line 1
    invoke-virtual {p1, p0, p2}, Landroid/support/v7/widget/g;->s(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    new-instance p1, Landroid/support/v7/widget/p0;

    invoke-direct {p1}, Landroid/support/v7/widget/p0;-><init>()V

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p1, Landroid/support/v7/widget/p0;->d:Z

    .line 4
    iput-object p0, p1, Landroid/support/v7/widget/p0;->a:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private t(IF)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/o;->h:Landroid/support/v7/widget/q;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/q;->t(IF)V

    return-void
.end method

.method private u(Landroid/content/Context;Landroid/support/v7/widget/r0;)V
    .locals 5

    .line 1
    sget v0, La/b/d/a/j;->U1:I

    iget v1, p0, Landroid/support/v7/widget/o;->i:I

    invoke-virtual {p2, v0, v1}, Landroid/support/v7/widget/r0;->i(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/o;->i:I

    .line 2
    sget v0, La/b/d/a/j;->Y1:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/r0;->p(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_5

    sget v1, La/b/d/a/j;->Z1:I

    .line 3
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/r0;->p(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    sget p1, La/b/d/a/j;->T1:I

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/r0;->p(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    iput-boolean v2, p0, Landroid/support/v7/widget/o;->k:Z

    .line 6
    invoke-virtual {p2, p1, v3}, Landroid/support/v7/widget/r0;->i(II)I

    move-result p1

    if-eq p1, v3, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroid/support/v7/widget/o;->j:Landroid/graphics/Typeface;

    goto :goto_0

    .line 8
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroid/support/v7/widget/o;->j:Landroid/graphics/Typeface;

    goto :goto_0

    .line 9
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroid/support/v7/widget/o;->j:Landroid/graphics/Typeface;

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Landroid/support/v7/widget/o;->j:Landroid/graphics/Typeface;

    .line 11
    sget v1, La/b/d/a/j;->Z1:I

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/r0;->p(I)Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v1

    .line 12
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_8

    .line 13
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Landroid/support/v7/widget/o;->a:Landroid/widget/TextView;

    invoke-direct {p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    new-instance v1, Landroid/support/v7/widget/o$a;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/widget/o$a;-><init>(Landroid/support/v7/widget/o;Ljava/lang/ref/WeakReference;)V

    .line 15
    :try_start_0
    iget p1, p0, Landroid/support/v7/widget/o;->i:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/support/v7/widget/r0;->h(IILandroid/support/v4/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/o;->j:Landroid/graphics/Typeface;

    if-nez p1, :cond_7

    move v2, v3

    .line 16
    :cond_7
    iput-boolean v2, p0, Landroid/support/v7/widget/o;->k:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :catch_0
    :cond_8
    iget-object p1, p0, Landroid/support/v7/widget/o;->j:Landroid/graphics/Typeface;

    if-nez p1, :cond_9

    .line 18
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/r0;->m(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 19
    iget p2, p0, Landroid/support/v7/widget/o;->i:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/o;->j:Landroid/graphics/Typeface;

    :cond_9
    return-void
.end method


# virtual methods
.method b()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/o;->b:Landroid/support/v7/widget/p0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/o;->c:Landroid/support/v7/widget/p0;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/o;->d:Landroid/support/v7/widget/p0;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/o;->e:Landroid/support/v7/widget/p0;

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/o;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    aget-object v3, v0, v2

    iget-object v4, p0, Landroid/support/v7/widget/o;->b:Landroid/support/v7/widget/p0;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/o;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/p0;)V

    const/4 v3, 0x1

    .line 4
    aget-object v3, v0, v3

    iget-object v4, p0, Landroid/support/v7/widget/o;->c:Landroid/support/v7/widget/p0;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/o;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/p0;)V

    .line 5
    aget-object v3, v0, v1

    iget-object v4, p0, Landroid/support/v7/widget/o;->d:Landroid/support/v7/widget/p0;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/o;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/p0;)V

    const/4 v3, 0x3

    .line 6
    aget-object v0, v0, v3

    iget-object v3, p0, Landroid/support/v7/widget/o;->e:Landroid/support/v7/widget/p0;

    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/o;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/p0;)V

    .line 7
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_3

    .line 8
    iget-object v0, p0, Landroid/support/v7/widget/o;->f:Landroid/support/v7/widget/p0;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/o;->g:Landroid/support/v7/widget/p0;

    if-eqz v0, :cond_3

    .line 9
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/o;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 10
    aget-object v2, v0, v2

    iget-object v3, p0, Landroid/support/v7/widget/o;->f:Landroid/support/v7/widget/p0;

    invoke-direct {p0, v2, v3}, Landroid/support/v7/widget/o;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/p0;)V

    .line 11
    aget-object v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/o;->g:Landroid/support/v7/widget/p0;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/o;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/p0;)V

    :cond_3
    return-void
.end method

.method c()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/o;->h:Landroid/support/v7/widget/q;

    invoke-virtual {v0}, Landroid/support/v7/widget/q;->a()V

    return-void
.end method

.method e()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/o;->h:Landroid/support/v7/widget/q;

    invoke-virtual {v0}, Landroid/support/v7/widget/q;->g()I

    move-result v0

    return v0
.end method

.method f()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/o;->h:Landroid/support/v7/widget/q;

    invoke-virtual {v0}, Landroid/support/v7/widget/q;->h()I

    move-result v0

    return v0
.end method

.method g()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/o;->h:Landroid/support/v7/widget/q;

    invoke-virtual {v0}, Landroid/support/v7/widget/q;->i()I

    move-result v0

    return v0
.end method

.method h()[I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/o;->h:Landroid/support/v7/widget/q;

    invoke-virtual {v0}, Landroid/support/v7/widget/q;->j()[I

    move-result-object v0

    return-object v0
.end method

.method i()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/o;->h:Landroid/support/v7/widget/q;

    invoke-virtual {v0}, Landroid/support/v7/widget/q;->k()I

    move-result v0

    return v0
.end method

.method j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/o;->h:Landroid/support/v7/widget/q;

    invoke-virtual {v0}, Landroid/support/v7/widget/q;->n()Z

    move-result v0

    return v0
.end method

.method k(Landroid/util/AttributeSet;I)V
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1
    iget-object v3, v0, Landroid/support/v7/widget/o;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2
    invoke-static {}, Landroid/support/v7/widget/g;->n()Landroid/support/v7/widget/g;

    move-result-object v4

    .line 3
    sget-object v5, La/b/d/a/j;->U:[I

    const/4 v6, 0x0

    invoke-static {v3, v1, v5, v2, v6}, Landroid/support/v7/widget/r0;->s(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/r0;

    move-result-object v5

    .line 4
    sget v7, La/b/d/a/j;->V:I

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Landroid/support/v7/widget/r0;->l(II)I

    move-result v7

    .line 5
    sget v9, La/b/d/a/j;->Y:I

    invoke-virtual {v5, v9}, Landroid/support/v7/widget/r0;->p(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 6
    invoke-virtual {v5, v9, v6}, Landroid/support/v7/widget/r0;->l(II)I

    move-result v9

    .line 7
    invoke-static {v3, v4, v9}, Landroid/support/v7/widget/o;->d(Landroid/content/Context;Landroid/support/v7/widget/g;I)Landroid/support/v7/widget/p0;

    move-result-object v9

    iput-object v9, v0, Landroid/support/v7/widget/o;->b:Landroid/support/v7/widget/p0;

    .line 8
    :cond_0
    sget v9, La/b/d/a/j;->W:I

    invoke-virtual {v5, v9}, Landroid/support/v7/widget/r0;->p(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 9
    invoke-virtual {v5, v9, v6}, Landroid/support/v7/widget/r0;->l(II)I

    move-result v9

    .line 10
    invoke-static {v3, v4, v9}, Landroid/support/v7/widget/o;->d(Landroid/content/Context;Landroid/support/v7/widget/g;I)Landroid/support/v7/widget/p0;

    move-result-object v9

    iput-object v9, v0, Landroid/support/v7/widget/o;->c:Landroid/support/v7/widget/p0;

    .line 11
    :cond_1
    sget v9, La/b/d/a/j;->Z:I

    invoke-virtual {v5, v9}, Landroid/support/v7/widget/r0;->p(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 12
    invoke-virtual {v5, v9, v6}, Landroid/support/v7/widget/r0;->l(II)I

    move-result v9

    .line 13
    invoke-static {v3, v4, v9}, Landroid/support/v7/widget/o;->d(Landroid/content/Context;Landroid/support/v7/widget/g;I)Landroid/support/v7/widget/p0;

    move-result-object v9

    iput-object v9, v0, Landroid/support/v7/widget/o;->d:Landroid/support/v7/widget/p0;

    .line 14
    :cond_2
    sget v9, La/b/d/a/j;->X:I

    invoke-virtual {v5, v9}, Landroid/support/v7/widget/r0;->p(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 15
    invoke-virtual {v5, v9, v6}, Landroid/support/v7/widget/r0;->l(II)I

    move-result v9

    .line 16
    invoke-static {v3, v4, v9}, Landroid/support/v7/widget/o;->d(Landroid/content/Context;Landroid/support/v7/widget/g;I)Landroid/support/v7/widget/p0;

    move-result-object v9

    iput-object v9, v0, Landroid/support/v7/widget/o;->e:Landroid/support/v7/widget/p0;

    .line 17
    :cond_3
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x11

    if-lt v9, v10, :cond_5

    .line 18
    sget v10, La/b/d/a/j;->a0:I

    invoke-virtual {v5, v10}, Landroid/support/v7/widget/r0;->p(I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 19
    invoke-virtual {v5, v10, v6}, Landroid/support/v7/widget/r0;->l(II)I

    move-result v10

    .line 20
    invoke-static {v3, v4, v10}, Landroid/support/v7/widget/o;->d(Landroid/content/Context;Landroid/support/v7/widget/g;I)Landroid/support/v7/widget/p0;

    move-result-object v10

    iput-object v10, v0, Landroid/support/v7/widget/o;->f:Landroid/support/v7/widget/p0;

    .line 21
    :cond_4
    sget v10, La/b/d/a/j;->b0:I

    invoke-virtual {v5, v10}, Landroid/support/v7/widget/r0;->p(I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 22
    invoke-virtual {v5, v10, v6}, Landroid/support/v7/widget/r0;->l(II)I

    move-result v10

    .line 23
    invoke-static {v3, v4, v10}, Landroid/support/v7/widget/o;->d(Landroid/content/Context;Landroid/support/v7/widget/g;I)Landroid/support/v7/widget/p0;

    move-result-object v4

    iput-object v4, v0, Landroid/support/v7/widget/o;->g:Landroid/support/v7/widget/p0;

    .line 24
    :cond_5
    invoke-virtual {v5}, Landroid/support/v7/widget/r0;->t()V

    .line 25
    iget-object v4, v0, Landroid/support/v7/widget/o;->a:Landroid/widget/TextView;

    .line 26
    invoke-virtual {v4}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    instance-of v4, v4, Landroid/text/method/PasswordTransformationMethod;

    const/16 v10, 0x17

    const/4 v11, 0x0

    if-eq v7, v8, :cond_b

    .line 27
    sget-object v12, La/b/d/a/j;->R1:[I

    invoke-static {v3, v7, v12}, Landroid/support/v7/widget/r0;->q(Landroid/content/Context;I[I)Landroid/support/v7/widget/r0;

    move-result-object v7

    if-nez v4, :cond_6

    .line 28
    sget v12, La/b/d/a/j;->a2:I

    invoke-virtual {v7, v12}, Landroid/support/v7/widget/r0;->p(I)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 29
    invoke-virtual {v7, v12, v6}, Landroid/support/v7/widget/r0;->a(IZ)Z

    move-result v12

    const/4 v13, 0x1

    goto :goto_0

    :cond_6
    move v12, v6

    move v13, v12

    .line 30
    :goto_0
    invoke-direct {v0, v3, v7}, Landroid/support/v7/widget/o;->u(Landroid/content/Context;Landroid/support/v7/widget/r0;)V

    if-ge v9, v10, :cond_a

    .line 31
    sget v14, La/b/d/a/j;->V1:I

    invoke-virtual {v7, v14}, Landroid/support/v7/widget/r0;->p(I)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 32
    invoke-virtual {v7, v14}, Landroid/support/v7/widget/r0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    goto :goto_1

    :cond_7
    move-object v14, v11

    .line 33
    :goto_1
    sget v15, La/b/d/a/j;->W1:I

    invoke-virtual {v7, v15}, Landroid/support/v7/widget/r0;->p(I)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 34
    invoke-virtual {v7, v15}, Landroid/support/v7/widget/r0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    goto :goto_2

    :cond_8
    move-object v15, v11

    .line 35
    :goto_2
    sget v5, La/b/d/a/j;->X1:I

    invoke-virtual {v7, v5}, Landroid/support/v7/widget/r0;->p(I)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 36
    invoke-virtual {v7, v5}, Landroid/support/v7/widget/r0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    goto :goto_3

    :cond_9
    move-object v5, v11

    :goto_3
    move-object v11, v14

    goto :goto_4

    :cond_a
    move-object v5, v11

    move-object v15, v5

    .line 37
    :goto_4
    invoke-virtual {v7}, Landroid/support/v7/widget/r0;->t()V

    goto :goto_5

    :cond_b
    move v12, v6

    move v13, v12

    move-object v5, v11

    move-object v15, v5

    .line 38
    :goto_5
    sget-object v7, La/b/d/a/j;->R1:[I

    invoke-static {v3, v1, v7, v2, v6}, Landroid/support/v7/widget/r0;->s(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/r0;

    move-result-object v7

    if-nez v4, :cond_c

    .line 39
    sget v14, La/b/d/a/j;->a2:I

    invoke-virtual {v7, v14}, Landroid/support/v7/widget/r0;->p(I)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 40
    invoke-virtual {v7, v14, v6}, Landroid/support/v7/widget/r0;->a(IZ)Z

    move-result v12

    const/4 v13, 0x1

    :cond_c
    if-ge v9, v10, :cond_f

    .line 41
    sget v10, La/b/d/a/j;->V1:I

    invoke-virtual {v7, v10}, Landroid/support/v7/widget/r0;->p(I)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 42
    invoke-virtual {v7, v10}, Landroid/support/v7/widget/r0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 43
    :cond_d
    sget v10, La/b/d/a/j;->W1:I

    invoke-virtual {v7, v10}, Landroid/support/v7/widget/r0;->p(I)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 44
    invoke-virtual {v7, v10}, Landroid/support/v7/widget/r0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    .line 45
    :cond_e
    sget v10, La/b/d/a/j;->X1:I

    invoke-virtual {v7, v10}, Landroid/support/v7/widget/r0;->p(I)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 46
    invoke-virtual {v7, v10}, Landroid/support/v7/widget/r0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    :cond_f
    const/16 v10, 0x1c

    if-lt v9, v10, :cond_10

    .line 47
    sget v9, La/b/d/a/j;->S1:I

    .line 48
    invoke-virtual {v7, v9}, Landroid/support/v7/widget/r0;->p(I)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 49
    invoke-virtual {v7, v9, v8}, Landroid/support/v7/widget/r0;->e(II)I

    move-result v9

    if-nez v9, :cond_10

    .line 50
    iget-object v9, v0, Landroid/support/v7/widget/o;->a:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 51
    :cond_10
    invoke-direct {v0, v3, v7}, Landroid/support/v7/widget/o;->u(Landroid/content/Context;Landroid/support/v7/widget/r0;)V

    .line 52
    invoke-virtual {v7}, Landroid/support/v7/widget/r0;->t()V

    if-eqz v11, :cond_11

    .line 53
    iget-object v7, v0, Landroid/support/v7/widget/o;->a:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_11
    if-eqz v15, :cond_12

    .line 54
    iget-object v7, v0, Landroid/support/v7/widget/o;->a:Landroid/widget/TextView;

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_12
    if-eqz v5, :cond_13

    .line 55
    iget-object v7, v0, Landroid/support/v7/widget/o;->a:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_13
    if-nez v4, :cond_14

    if-eqz v13, :cond_14

    .line 56
    invoke-virtual {v0, v12}, Landroid/support/v7/widget/o;->o(Z)V

    .line 57
    :cond_14
    iget-object v4, v0, Landroid/support/v7/widget/o;->j:Landroid/graphics/Typeface;

    if-eqz v4, :cond_15

    .line 58
    iget-object v5, v0, Landroid/support/v7/widget/o;->a:Landroid/widget/TextView;

    iget v7, v0, Landroid/support/v7/widget/o;->i:I

    invoke-virtual {v5, v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 59
    :cond_15
    iget-object v4, v0, Landroid/support/v7/widget/o;->h:Landroid/support/v7/widget/q;

    invoke-virtual {v4, v1, v2}, Landroid/support/v7/widget/q;->o(Landroid/util/AttributeSet;I)V

    .line 60
    sget-boolean v2, Landroid/support/v4/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v2, :cond_17

    .line 61
    iget-object v2, v0, Landroid/support/v7/widget/o;->h:Landroid/support/v7/widget/q;

    invoke-virtual {v2}, Landroid/support/v7/widget/q;->k()I

    move-result v2

    if-eqz v2, :cond_17

    .line 62
    iget-object v2, v0, Landroid/support/v7/widget/o;->h:Landroid/support/v7/widget/q;

    .line 63
    invoke-virtual {v2}, Landroid/support/v7/widget/q;->j()[I

    move-result-object v2

    .line 64
    array-length v4, v2

    if-lez v4, :cond_17

    .line 65
    iget-object v4, v0, Landroid/support/v7/widget/o;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_16

    .line 66
    iget-object v2, v0, Landroid/support/v7/widget/o;->a:Landroid/widget/TextView;

    iget-object v4, v0, Landroid/support/v7/widget/o;->h:Landroid/support/v7/widget/q;

    .line 67
    invoke-virtual {v4}, Landroid/support/v7/widget/q;->h()I

    move-result v4

    iget-object v5, v0, Landroid/support/v7/widget/o;->h:Landroid/support/v7/widget/q;

    .line 68
    invoke-virtual {v5}, Landroid/support/v7/widget/q;->g()I

    move-result v5

    iget-object v7, v0, Landroid/support/v7/widget/o;->h:Landroid/support/v7/widget/q;

    .line 69
    invoke-virtual {v7}, Landroid/support/v7/widget/q;->i()I

    move-result v7

    .line 70
    invoke-virtual {v2, v4, v5, v7, v6}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_6

    .line 71
    :cond_16
    iget-object v4, v0, Landroid/support/v7/widget/o;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v6}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 72
    :cond_17
    :goto_6
    sget-object v2, La/b/d/a/j;->c0:[I

    invoke-static {v3, v1, v2}, Landroid/support/v7/widget/r0;->r(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/r0;

    move-result-object v1

    .line 73
    sget v2, La/b/d/a/j;->i0:I

    invoke-virtual {v1, v2, v8}, Landroid/support/v7/widget/r0;->e(II)I

    move-result v2

    .line 74
    sget v3, La/b/d/a/j;->j0:I

    invoke-virtual {v1, v3, v8}, Landroid/support/v7/widget/r0;->e(II)I

    move-result v3

    .line 75
    sget v4, La/b/d/a/j;->k0:I

    invoke-virtual {v1, v4, v8}, Landroid/support/v7/widget/r0;->e(II)I

    move-result v4

    .line 76
    invoke-virtual {v1}, Landroid/support/v7/widget/r0;->t()V

    if-eq v2, v8, :cond_18

    .line 77
    iget-object v1, v0, Landroid/support/v7/widget/o;->a:Landroid/widget/TextView;

    invoke-static {v1, v2}, Landroid/support/v4/widget/TextViewCompat;->setFirstBaselineToTopHeight(Landroid/widget/TextView;I)V

    :cond_18
    if-eq v3, v8, :cond_19

    .line 78
    iget-object v1, v0, Landroid/support/v7/widget/o;->a:Landroid/widget/TextView;

    invoke-static {v1, v3}, Landroid/support/v4/widget/TextViewCompat;->setLastBaselineToBottomHeight(Landroid/widget/TextView;I)V

    :cond_19
    if-eq v4, v8, :cond_1a

    .line 79
    iget-object v1, v0, Landroid/support/v7/widget/o;->a:Landroid/widget/TextView;

    invoke-static {v1, v4}, Landroid/support/v4/widget/TextViewCompat;->setLineHeight(Landroid/widget/TextView;I)V

    :cond_1a
    return-void
.end method

.method l(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/o;->k:Z

    if-eqz v0, :cond_0

    .line 2
    iput-object p2, p0, Landroid/support/v7/widget/o;->j:Landroid/graphics/Typeface;

    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 4
    iget v0, p0, Landroid/support/v7/widget/o;->i:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    return-void
.end method

.method m(ZIIII)V
    .locals 0

    .line 1
    sget-boolean p1, Landroid/support/v4/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/o;->c()V

    :cond_0
    return-void
.end method

.method n(Landroid/content/Context;I)V
    .locals 3

    .line 1
    sget-object v0, La/b/d/a/j;->R1:[I

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/r0;->q(Landroid/content/Context;I[I)Landroid/support/v7/widget/r0;

    move-result-object p2

    .line 2
    sget v0, La/b/d/a/j;->a2:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/r0;->p(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p2, v0, v2}, Landroid/support/v7/widget/r0;->a(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/o;->o(Z)V

    .line 4
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    sget v0, La/b/d/a/j;->V1:I

    .line 5
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/r0;->p(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/r0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Landroid/support/v7/widget/o;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 8
    :cond_1
    sget v0, La/b/d/a/j;->S1:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/r0;->p(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    .line 9
    invoke-virtual {p2, v0, v1}, Landroid/support/v7/widget/r0;->e(II)I

    move-result v0

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Landroid/support/v7/widget/o;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 11
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/o;->u(Landroid/content/Context;Landroid/support/v7/widget/r0;)V

    .line 12
    invoke-virtual {p2}, Landroid/support/v7/widget/r0;->t()V

    .line 13
    iget-object p1, p0, Landroid/support/v7/widget/o;->j:Landroid/graphics/Typeface;

    if-eqz p1, :cond_3

    .line 14
    iget-object p2, p0, Landroid/support/v7/widget/o;->a:Landroid/widget/TextView;

    iget v0, p0, Landroid/support/v7/widget/o;->i:I

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    return-void
.end method

.method o(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/o;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    return-void
.end method

.method p(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/o;->h:Landroid/support/v7/widget/q;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/q;->p(IIII)V

    return-void
.end method

.method q([II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/o;->h:Landroid/support/v7/widget/q;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/q;->q([II)V

    return-void
.end method

.method r(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/o;->h:Landroid/support/v7/widget/q;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/q;->r(I)V

    return-void
.end method

.method s(IF)V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v4/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/o;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/o;->t(IF)V

    :cond_0
    return-void
.end method
