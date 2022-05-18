.class La/b/d/d/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/d/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field A:Landroid/support/v4/view/ActionProvider;

.field private B:Ljava/lang/CharSequence;

.field private C:Ljava/lang/CharSequence;

.field private D:Landroid/content/res/ColorStateList;

.field private E:Landroid/graphics/PorterDuff$Mode;

.field final synthetic F:La/b/d/d/d;

.field private a:Landroid/view/Menu;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Ljava/lang/CharSequence;

.field private l:Ljava/lang/CharSequence;

.field private m:I

.field private n:C

.field private o:I

.field private p:C

.field private q:I

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(La/b/d/d/d;Landroid/view/Menu;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/b/d/d/d$b;->F:La/b/d/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, La/b/d/d/d$b;->D:Landroid/content/res/ColorStateList;

    .line 3
    iput-object p1, p0, La/b/d/d/d$b;->E:Landroid/graphics/PorterDuff$Mode;

    .line 4
    iput-object p2, p0, La/b/d/d/d$b;->a:Landroid/view/Menu;

    .line 5
    invoke-virtual {p0}, La/b/d/d/d$b;->h()V

    return-void
.end method

.method private c(Ljava/lang/String;)C
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method private e(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, La/b/d/d/d$b;->F:La/b/d/d/d;

    iget-object v0, v0, La/b/d/d/d;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 4
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot instantiate class: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SupportMenuInflater"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private i(Landroid/view/MenuItem;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, La/b/d/d/d$b;->s:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, La/b/d/d/d$b;->t:Z

    .line 2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, La/b/d/d/d$b;->u:Z

    .line 3
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, La/b/d/d/d$b;->r:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 4
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, La/b/d/d/d$b;->l:Ljava/lang/CharSequence;

    .line 5
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, La/b/d/d/d$b;->m:I

    .line 6
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 7
    iget v0, p0, La/b/d/d/d$b;->v:I

    if-ltz v0, :cond_1

    .line 8
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 9
    :cond_1
    iget-object v0, p0, La/b/d/d/d$b;->z:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, La/b/d/d/d$b;->F:La/b/d/d/d;

    iget-object v0, v0, La/b/d/d/d;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    new-instance v0, La/b/d/d/d$a;

    iget-object v1, p0, La/b/d/d/d$b;->F:La/b/d/d/d;

    .line 12
    invoke-virtual {v1}, La/b/d/d/d;->b()Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, La/b/d/d/d$b;->z:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, La/b/d/d/d$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_3
    :goto_1
    instance-of v0, p1, Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_4

    move-object v1, p1

    check-cast v1, Landroid/support/v7/view/menu/h;

    .line 16
    :cond_4
    iget v1, p0, La/b/d/d/d$b;->r:I

    const/4 v4, 0x2

    if-lt v1, v4, :cond_6

    if-eqz v0, :cond_5

    .line 17
    move-object v0, p1

    check-cast v0, Landroid/support/v7/view/menu/h;

    invoke-virtual {v0, v3}, Landroid/support/v7/view/menu/h;->r(Z)V

    goto :goto_2

    .line 18
    :cond_5
    instance-of v0, p1, Landroid/support/v7/view/menu/i;

    if-eqz v0, :cond_6

    .line 19
    move-object v0, p1

    check-cast v0, Landroid/support/v7/view/menu/i;

    invoke-virtual {v0, v3}, Landroid/support/v7/view/menu/i;->g(Z)V

    .line 20
    :cond_6
    :goto_2
    iget-object v0, p0, La/b/d/d/d$b;->x:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 21
    sget-object v1, La/b/d/d/d;->e:[Ljava/lang/Class;

    iget-object v2, p0, La/b/d/d/d$b;->F:La/b/d/d/d;

    iget-object v2, v2, La/b/d/d/d;->a:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, La/b/d/d/d$b;->e(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 22
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move v2, v3

    .line 23
    :cond_7
    iget v0, p0, La/b/d/d/d$b;->w:I

    if-lez v0, :cond_9

    if-nez v2, :cond_8

    .line 24
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_3

    :cond_8
    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_9
    :goto_3
    iget-object v0, p0, La/b/d/d/d$b;->A:Landroid/support/v4/view/ActionProvider;

    if-eqz v0, :cond_a

    .line 27
    invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompat;->setActionProvider(Landroid/view/MenuItem;Landroid/support/v4/view/ActionProvider;)Landroid/view/MenuItem;

    .line 28
    :cond_a
    iget-object v0, p0, La/b/d/d/d$b;->B:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompat;->setContentDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, La/b/d/d/d$b;->C:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompat;->setTooltipText(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 30
    iget-char v0, p0, La/b/d/d/d$b;->n:C

    iget v1, p0, La/b/d/d/d$b;->o:I

    invoke-static {p1, v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setAlphabeticShortcut(Landroid/view/MenuItem;CI)V

    .line 31
    iget-char v0, p0, La/b/d/d/d$b;->p:C

    iget v1, p0, La/b/d/d/d$b;->q:I

    invoke-static {p1, v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setNumericShortcut(Landroid/view/MenuItem;CI)V

    .line 32
    iget-object v0, p0, La/b/d/d/d$b;->E:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_b

    .line 33
    invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompat;->setIconTintMode(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    .line 34
    :cond_b
    iget-object v0, p0, La/b/d/d/d$b;->D:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_c

    .line 35
    invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompat;->setIconTintList(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    :cond_c
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, La/b/d/d/d$b;->h:Z

    .line 2
    iget-object v0, p0, La/b/d/d/d$b;->a:Landroid/view/Menu;

    iget v1, p0, La/b/d/d/d$b;->b:I

    iget v2, p0, La/b/d/d/d$b;->i:I

    iget v3, p0, La/b/d/d/d$b;->j:I

    iget-object v4, p0, La/b/d/d/d$b;->k:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, La/b/d/d/d$b;->i(Landroid/view/MenuItem;)V

    return-void
.end method

.method public b()Landroid/view/SubMenu;
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, La/b/d/d/d$b;->h:Z

    .line 2
    iget-object v0, p0, La/b/d/d/d$b;->a:Landroid/view/Menu;

    iget v1, p0, La/b/d/d/d$b;->b:I

    iget v2, p0, La/b/d/d/d$b;->i:I

    iget v3, p0, La/b/d/d/d$b;->j:I

    iget-object v4, p0, La/b/d/d/d$b;->k:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, La/b/d/d/d$b;->i(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La/b/d/d/d$b;->h:Z

    return v0
.end method

.method public f(Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    iget-object v0, p0, La/b/d/d/d$b;->F:La/b/d/d/d;

    iget-object v0, v0, La/b/d/d/d;->c:Landroid/content/Context;

    sget-object v1, La/b/d/a/j;->D0:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    sget v0, La/b/d/a/j;->F0:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, La/b/d/d/d$b;->b:I

    .line 3
    sget v0, La/b/d/a/j;->H0:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, La/b/d/d/d$b;->c:I

    .line 4
    sget v0, La/b/d/a/j;->I0:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, La/b/d/d/d$b;->d:I

    .line 5
    sget v0, La/b/d/a/j;->J0:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, La/b/d/d/d$b;->e:I

    .line 6
    sget v0, La/b/d/a/j;->G0:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, La/b/d/d/d$b;->f:Z

    .line 7
    sget v0, La/b/d/a/j;->E0:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, La/b/d/d/d$b;->g:Z

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public g(Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    iget-object v0, p0, La/b/d/d/d$b;->F:La/b/d/d/d;

    iget-object v0, v0, La/b/d/d/d;->c:Landroid/content/Context;

    sget-object v1, La/b/d/a/j;->K0:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    sget v0, La/b/d/a/j;->N0:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, La/b/d/d/d$b;->i:I

    .line 3
    sget v0, La/b/d/a/j;->Q0:I

    iget v2, p0, La/b/d/d/d$b;->c:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 4
    sget v2, La/b/d/a/j;->R0:I

    iget v3, p0, La/b/d/d/d$b;->d:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/high16 v3, -0x10000

    and-int/2addr v0, v3

    const v3, 0xffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 5
    iput v0, p0, La/b/d/d/d$b;->j:I

    .line 6
    sget v0, La/b/d/a/j;->S0:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, La/b/d/d/d$b;->k:Ljava/lang/CharSequence;

    .line 7
    sget v0, La/b/d/a/j;->T0:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, La/b/d/d/d$b;->l:Ljava/lang/CharSequence;

    .line 8
    sget v0, La/b/d/a/j;->L0:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, La/b/d/d/d$b;->m:I

    .line 9
    sget v0, La/b/d/a/j;->U0:I

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, La/b/d/d/d$b;->c(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, La/b/d/d/d$b;->n:C

    .line 11
    sget v0, La/b/d/a/j;->b1:I

    const/16 v2, 0x1000

    .line 12
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, La/b/d/d/d$b;->o:I

    .line 13
    sget v0, La/b/d/a/j;->V0:I

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, La/b/d/d/d$b;->c(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, La/b/d/d/d$b;->p:C

    .line 15
    sget v0, La/b/d/a/j;->f1:I

    .line 16
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, La/b/d/d/d$b;->q:I

    .line 17
    sget v0, La/b/d/a/j;->W0:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput v0, p0, La/b/d/d/d$b;->r:I

    goto :goto_0

    .line 19
    :cond_0
    iget v0, p0, La/b/d/d/d$b;->e:I

    iput v0, p0, La/b/d/d/d$b;->r:I

    .line 20
    :goto_0
    sget v0, La/b/d/a/j;->O0:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, La/b/d/d/d$b;->s:Z

    .line 21
    sget v0, La/b/d/a/j;->P0:I

    iget-boolean v2, p0, La/b/d/d/d$b;->f:Z

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, La/b/d/d/d$b;->t:Z

    .line 22
    sget v0, La/b/d/a/j;->M0:I

    iget-boolean v2, p0, La/b/d/d/d$b;->g:Z

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, La/b/d/d/d$b;->u:Z

    .line 23
    sget v0, La/b/d/a/j;->g1:I

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, La/b/d/d/d$b;->v:I

    .line 24
    sget v0, La/b/d/a/j;->X0:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/b/d/d/d$b;->z:Ljava/lang/String;

    .line 25
    sget v0, La/b/d/a/j;->Y0:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, La/b/d/d/d$b;->w:I

    .line 26
    sget v0, La/b/d/a/j;->a1:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/b/d/d/d$b;->x:Ljava/lang/String;

    .line 27
    sget v0, La/b/d/a/j;->Z0:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/b/d/d/d$b;->y:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 28
    iget v5, p0, La/b/d/d/d$b;->w:I

    if-nez v5, :cond_2

    iget-object v5, p0, La/b/d/d/d$b;->x:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 29
    sget-object v3, La/b/d/d/d;->f:[Ljava/lang/Class;

    iget-object v5, p0, La/b/d/d/d$b;->F:La/b/d/d/d;

    iget-object v5, v5, La/b/d/d/d;->b:[Ljava/lang/Object;

    invoke-direct {p0, v0, v3, v5}, La/b/d/d/d$b;->e(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ActionProvider;

    iput-object v0, p0, La/b/d/d/d$b;->A:Landroid/support/v4/view/ActionProvider;

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    const-string v0, "SupportMenuInflater"

    const-string v3, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    .line 30
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_3
    iput-object v4, p0, La/b/d/d/d$b;->A:Landroid/support/v4/view/ActionProvider;

    .line 32
    :goto_2
    sget v0, La/b/d/a/j;->c1:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, La/b/d/d/d$b;->B:Ljava/lang/CharSequence;

    .line 33
    sget v0, La/b/d/a/j;->h1:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, La/b/d/d/d$b;->C:Ljava/lang/CharSequence;

    .line 34
    sget v0, La/b/d/a/j;->e1:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 35
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iget-object v2, p0, La/b/d/d/d$b;->E:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v2}, Landroid/support/v7/widget/u;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, La/b/d/d/d$b;->E:Landroid/graphics/PorterDuff$Mode;

    goto :goto_3

    .line 36
    :cond_4
    iput-object v4, p0, La/b/d/d/d$b;->E:Landroid/graphics/PorterDuff$Mode;

    .line 37
    :goto_3
    sget v0, La/b/d/a/j;->d1:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, La/b/d/d/d$b;->D:Landroid/content/res/ColorStateList;

    goto :goto_4

    .line 39
    :cond_5
    iput-object v4, p0, La/b/d/d/d$b;->D:Landroid/content/res/ColorStateList;

    .line 40
    :goto_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    iput-boolean v1, p0, La/b/d/d/d$b;->h:Z

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, La/b/d/d/d$b;->b:I

    .line 2
    iput v0, p0, La/b/d/d/d$b;->c:I

    .line 3
    iput v0, p0, La/b/d/d/d$b;->d:I

    .line 4
    iput v0, p0, La/b/d/d/d$b;->e:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, La/b/d/d/d$b;->f:Z

    .line 6
    iput-boolean v0, p0, La/b/d/d/d$b;->g:Z

    return-void
.end method
