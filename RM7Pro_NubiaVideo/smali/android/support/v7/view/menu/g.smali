.class public Landroid/support/v7/view/menu/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/internal/view/SupportMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/menu/g$b;,
        Landroid/support/v7/view/menu/g$a;
    }
.end annotation


# static fields
.field private static final z:[I


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/res/Resources;

.field private c:Z

.field private d:Z

.field private e:Landroid/support/v7/view/menu/g$a;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/view/menu/h;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/view/menu/h;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/view/menu/h;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/view/menu/h;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:I

.field private m:Landroid/view/ContextMenu$ContextMenuInfo;

.field n:Ljava/lang/CharSequence;

.field o:Landroid/view/View;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/view/menu/h;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v7/view/menu/m;",
            ">;>;"
        }
    .end annotation
.end field

.field private w:Landroid/support/v7/view/menu/h;

.field private x:Z

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/view/menu/g;->z:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/support/v7/view/menu/g;->l:I

    .line 3
    iput-boolean v0, p0, Landroid/support/v7/view/menu/g;->p:Z

    .line 4
    iput-boolean v0, p0, Landroid/support/v7/view/menu/g;->q:Z

    .line 5
    iput-boolean v0, p0, Landroid/support/v7/view/menu/g;->r:Z

    .line 6
    iput-boolean v0, p0, Landroid/support/v7/view/menu/g;->s:Z

    .line 7
    iput-boolean v0, p0, Landroid/support/v7/view/menu/g;->t:Z

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/view/menu/g;->u:Ljava/util/ArrayList;

    .line 9
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/view/menu/g;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    iput-boolean v0, p0, Landroid/support/v7/view/menu/g;->x:Z

    .line 11
    iput-object p1, p0, Landroid/support/v7/view/menu/g;->a:Landroid/content/Context;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/view/menu/g;->b:Landroid/content/res/Resources;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/view/menu/g;->f:Ljava/util/ArrayList;

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/view/menu/g;->g:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Landroid/support/v7/view/menu/g;->h:Z

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/menu/g;->j:Ljava/util/ArrayList;

    .line 18
    iput-boolean p1, p0, Landroid/support/v7/view/menu/g;->k:Z

    .line 19
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/g;->T(Z)V

    return-void
.end method

.method private J(IZ)V
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/g;->G(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private P(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->y()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p5, :cond_0

    .line 2
    iput-object p5, p0, Landroid/support/v7/view/menu/g;->o:Landroid/view/View;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroid/support/v7/view/menu/g;->n:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_0
    if-lez p1, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/view/menu/g;->n:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 5
    iput-object p2, p0, Landroid/support/v7/view/menu/g;->n:Ljava/lang/CharSequence;

    :cond_2
    :goto_0
    if-lez p3, :cond_3

    .line 6
    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->s()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/g;->G(Z)V

    return-void
.end method

.method private T(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Landroid/support/v7/view/menu/g;->b:Landroid/content/res/Resources;

    .line 2
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Landroid/support/v7/view/menu/g;->a:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    iget-object v1, p0, Landroid/support/v7/view/menu/g;->a:Landroid/content/Context;

    .line 4
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewConfigurationCompat;->shouldShowMenuShortcutsWhenKeyboardPresent(Landroid/view/ViewConfiguration;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/view/menu/g;->d:Z

    return-void
.end method

.method private f(IIIILjava/lang/CharSequence;I)Landroid/support/v7/view/menu/h;
    .locals 9

    .line 1
    new-instance v8, Landroid/support/v7/view/menu/h;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/support/v7/view/menu/h;-><init>(Landroid/support/v7/view/menu/g;IIIILjava/lang/CharSequence;I)V

    return-object v8
.end method

.method private h(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->V()V

    .line 3
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/m;

    if-nez v2, :cond_1

    .line 5
    iget-object v2, p0, Landroid/support/v7/view/menu/g;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v2, p1}, Landroid/support/v7/view/menu/m;->k(Z)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->U()V

    return-void
.end method

.method private i(Landroid/support/v7/view/menu/s;Landroid/support/v7/view/menu/m;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-interface {p2, p1}, Landroid/support/v7/view/menu/m;->b(Landroid/support/v7/view/menu/s;)Z

    move-result v1

    .line 3
    :cond_1
    iget-object p2, p0, Landroid/support/v7/view/menu/g;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/m;

    if-nez v2, :cond_3

    .line 5
    iget-object v2, p0, Landroid/support/v7/view/menu/g;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-nez v1, :cond_2

    .line 6
    invoke-interface {v2, p1}, Landroid/support/v7/view/menu/m;->b(Landroid/support/v7/view/menu/s;)Z

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_4
    return v1
.end method

.method private static m(Ljava/util/ArrayList;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/view/menu/h;",
            ">;I)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/h;

    .line 3
    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->d()I

    move-result v1

    if-gt v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static x(I)I
    .locals 3

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    if-ltz v0, :cond_0

    .line 1
    sget-object v1, Landroid/support/v7/view/menu/g;->z:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2
    aget v0, v1, v0

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "order does not contain a valid category."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public A()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/view/menu/h;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/view/menu/g;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/g;->g:Ljava/util/ArrayList;

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4
    iget-object v3, p0, Landroid/support/v7/view/menu/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/h;

    .line 5
    invoke-virtual {v3}, Landroid/support/v7/view/menu/h;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/view/menu/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iput-boolean v1, p0, Landroid/support/v7/view/menu/g;->h:Z

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroid/support/v7/view/menu/g;->k:Z

    .line 8
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/view/menu/g;->x:Z

    return v0
.end method

.method C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/view/menu/g;->c:Z

    return v0
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/view/menu/g;->d:Z

    return v0
.end method

.method E(Landroid/support/v7/view/menu/h;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroid/support/v7/view/menu/g;->k:Z

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/g;->G(Z)V

    return-void
.end method

.method F(Landroid/support/v7/view/menu/h;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroid/support/v7/view/menu/g;->h:Z

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/g;->G(Z)V

    return-void
.end method

.method public G(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/view/menu/g;->p:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iput-boolean v1, p0, Landroid/support/v7/view/menu/g;->h:Z

    .line 3
    iput-boolean v1, p0, Landroid/support/v7/view/menu/g;->k:Z

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/g;->h(Z)V

    goto :goto_0

    .line 5
    :cond_1
    iput-boolean v1, p0, Landroid/support/v7/view/menu/g;->q:Z

    if-eqz p1, :cond_2

    .line 6
    iput-boolean v1, p0, Landroid/support/v7/view/menu/g;->r:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public H(Landroid/view/MenuItem;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v7/view/menu/g;->I(Landroid/view/MenuItem;Landroid/support/v7/view/menu/m;I)Z

    move-result p1

    return p1
.end method

.method public I(Landroid/view/MenuItem;Landroid/support/v7/view/menu/m;I)Z
    .locals 6

    .line 1
    check-cast p1, Landroid/support/v7/view/menu/h;

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 2
    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->i()Z

    move-result v1

    .line 4
    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->getSupportActionProvider()Landroid/support/v4/view/ActionProvider;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Landroid/support/v4/view/ActionProvider;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v0

    .line 6
    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->h()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->expandActionView()Z

    move-result p1

    or-int/2addr v1, p1

    if-eqz v1, :cond_8

    .line 8
    invoke-virtual {p0, v3}, Landroid/support/v7/view/menu/g;->d(Z)V

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->hasSubMenu()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_8

    .line 10
    invoke-virtual {p0, v3}, Landroid/support/v7/view/menu/g;->d(Z)V

    goto :goto_2

    :cond_4
    :goto_1
    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_5

    .line 11
    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/g;->d(Z)V

    .line 12
    :cond_5
    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->hasSubMenu()Z

    move-result p3

    if-nez p3, :cond_6

    .line 13
    new-instance p3, Landroid/support/v7/view/menu/s;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->s()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p0, p1}, Landroid/support/v7/view/menu/s;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/g;Landroid/support/v7/view/menu/h;)V

    invoke-virtual {p1, p3}, Landroid/support/v7/view/menu/h;->v(Landroid/support/v7/view/menu/s;)V

    .line 14
    :cond_6
    invoke-virtual {p1}, Landroid/support/v7/view/menu/h;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    check-cast p1, Landroid/support/v7/view/menu/s;

    if-eqz v4, :cond_7

    .line 15
    invoke-virtual {v2, p1}, Landroid/support/v4/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 16
    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/support/v7/view/menu/g;->i(Landroid/support/v7/view/menu/s;Landroid/support/v7/view/menu/m;)Z

    move-result p1

    or-int/2addr v1, p1

    if-nez v1, :cond_8

    .line 17
    invoke-virtual {p0, v3}, Landroid/support/v7/view/menu/g;->d(Z)V

    :cond_8
    :goto_2
    return v1

    :cond_9
    :goto_3
    return v0
.end method

.method public K(Landroid/support/v7/view/menu/m;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/m;

    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_0

    .line 3
    :cond_1
    iget-object v2, p0, Landroid/support/v7/view/menu/g;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public L(Landroid/support/v7/view/menu/g$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/view/menu/g;->e:Landroid/support/v7/view/menu/g$a;

    return-void
.end method

.method M(Landroid/view/MenuItem;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/support/v7/view/menu/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->V()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    .line 4
    iget-object v4, p0, Landroid/support/v7/view/menu/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/h;

    .line 5
    invoke-virtual {v4}, Landroid/support/v7/view/menu/h;->getGroupId()I

    move-result v5

    if-ne v5, v0, :cond_3

    .line 6
    invoke-virtual {v4}, Landroid/support/v7/view/menu/h;->k()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    invoke-virtual {v4}, Landroid/support/v7/view/menu/h;->isCheckable()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    if-ne v4, p1, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v2

    .line 8
    :goto_1
    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/h;->q(Z)V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->U()V

    return-void
.end method

.method protected N(I)Landroid/support/v7/view/menu/g;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/g;->P(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method protected O(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/view/menu/g;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/g;->P(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method protected Q(I)Landroid/support/v7/view/menu/g;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/g;->P(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method protected R(Ljava/lang/CharSequence;)Landroid/support/v7/view/menu/g;
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/g;->P(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method protected S(Landroid/view/View;)Landroid/support/v7/view/menu/g;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/g;->P(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public U()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/support/v7/view/menu/g;->p:Z

    .line 2
    iget-boolean v1, p0, Landroid/support/v7/view/menu/g;->q:Z

    if-eqz v1, :cond_0

    .line 3
    iput-boolean v0, p0, Landroid/support/v7/view/menu/g;->q:Z

    .line 4
    iget-boolean v0, p0, Landroid/support/v7/view/menu/g;->r:Z

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/g;->G(Z)V

    :cond_0
    return-void
.end method

.method public V()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/view/menu/g;->p:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/support/v7/view/menu/g;->p:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/support/v7/view/menu/g;->q:Z

    .line 4
    iput-boolean v0, p0, Landroid/support/v7/view/menu/g;->r:Z

    :cond_0
    return-void
.end method

.method protected a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 8

    .line 1
    invoke-static {p3}, Landroid/support/v7/view/menu/g;->x(I)I

    move-result v7

    .line 2
    iget v6, p0, Landroid/support/v7/view/menu/g;->l:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v7

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/g;->f(IIIILjava/lang/CharSequence;I)Landroid/support/v7/view/menu/h;

    move-result-object p1

    .line 3
    iget-object p2, p0, Landroid/support/v7/view/menu/g;->m:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p1, p2}, Landroid/support/v7/view/menu/h;->t(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 5
    :cond_0
    iget-object p2, p0, Landroid/support/v7/view/menu/g;->f:Ljava/util/ArrayList;

    invoke-static {p2, v7}, Landroid/support/v7/view/menu/g;->m(Ljava/util/ArrayList;I)I

    move-result p3

    invoke-virtual {p2, p3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p0, p2}, Landroid/support/v7/view/menu/g;->G(Z)V

    return-object p1
.end method

.method public add(I)Landroid/view/MenuItem;
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/support/v7/view/menu/g;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1

    .line 4
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/view/menu/g;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/view/menu/g;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/support/v7/view/menu/g;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p4, p5, p6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 3
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    and-int/lit8 p7, p7, 0x1

    if-nez p7, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/g;->removeGroup(I)V

    :cond_1
    :goto_1
    if-ge v1, v2, :cond_4

    .line 5
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/content/pm/ResolveInfo;

    .line 6
    new-instance v3, Landroid/content/Intent;

    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v4, :cond_2

    move-object v4, p6

    goto :goto_2

    :cond_2
    aget-object v4, p5, v4

    :goto_2
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 7
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, p1, p2, p3, v4}, Landroid/support/v7/view/menu/g;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 9
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    .line 10
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz p8, :cond_3

    .line 11
    iget p7, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz p7, :cond_3

    .line 12
    aput-object v3, p8, p7

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v2
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/support/v7/view/menu/g;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1

    .line 6
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/view/menu/g;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/view/menu/g;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Landroid/support/v7/view/menu/h;

    .line 4
    new-instance p2, Landroid/support/v7/view/menu/s;

    iget-object p3, p0, Landroid/support/v7/view/menu/g;->a:Landroid/content/Context;

    invoke-direct {p2, p3, p0, p1}, Landroid/support/v7/view/menu/s;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/g;Landroid/support/v7/view/menu/h;)V

    .line 5
    invoke-virtual {p1, p2}, Landroid/support/v7/view/menu/h;->v(Landroid/support/v7/view/menu/s;)V

    return-object p2
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/support/v7/view/menu/g;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/support/v7/view/menu/m;Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-interface {p1, p2, p0}, Landroid/support/v7/view/menu/m;->g(Landroid/content/Context;Landroid/support/v7/view/menu/g;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroid/support/v7/view/menu/g;->k:Z

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->e:Landroid/support/v7/view/menu/g$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Landroid/support/v7/view/menu/g$a;->a(Landroid/support/v7/view/menu/g;)V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->w:Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/g;->e(Landroid/support/v7/view/menu/h;)Z

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/g;->G(Z)V

    return-void
.end method

.method public clearHeader()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroid/support/v7/view/menu/g;->n:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/g;->G(Z)V

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/g;->d(Z)V

    return-void
.end method

.method public final d(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/view/menu/g;->t:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/support/v7/view/menu/g;->t:Z

    .line 3
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/m;

    if-nez v2, :cond_1

    .line 5
    iget-object v2, p0, Landroid/support/v7/view/menu/g;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v2, p0, p1}, Landroid/support/v7/view/menu/m;->a(Landroid/support/v7/view/menu/g;Z)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Landroid/support/v7/view/menu/g;->t:Z

    return-void
.end method

.method public e(Landroid/support/v7/view/menu/h;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/view/menu/g;->w:Landroid/support/v7/view/menu/h;

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->V()V

    .line 3
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/m;

    if-nez v3, :cond_2

    .line 5
    iget-object v3, p0, Landroid/support/v7/view/menu/g;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {v3, p0, p1}, Landroid/support/v7/view/menu/m;->e(Landroid/support/v7/view/menu/g;Landroid/support/v7/view/menu/h;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->U()V

    if-eqz v1, :cond_4

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Landroid/support/v7/view/menu/g;->w:Landroid/support/v7/view/menu/h;

    :cond_4
    :goto_1
    return v1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    iget-object v2, p0, Landroid/support/v7/view/menu/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/h;

    .line 3
    invoke-virtual {v2}, Landroid/support/v7/view/menu/h;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    return-object v2

    .line 4
    :cond_0
    invoke-virtual {v2}, Landroid/support/v7/view/menu/h;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v2}, Landroid/support/v7/view/menu/h;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method g(Landroid/support/v7/view/menu/g;Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->e:Landroid/support/v7/view/menu/g$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/g$a;->b(Landroid/support/v7/view/menu/g;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public hasVisibleItems()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/view/menu/g;->y:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 3
    iget-object v4, p0, Landroid/support/v7/view/menu/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/h;

    .line 4
    invoke-virtual {v4}, Landroid/support/v7/view/menu/h;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/view/menu/g;->o(ILandroid/view/KeyEvent;)Landroid/support/v7/view/menu/h;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public j(Landroid/support/v7/view/menu/h;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->V()V

    .line 3
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/m;

    if-nez v3, :cond_2

    .line 5
    iget-object v3, p0, Landroid/support/v7/view/menu/g;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {v3, p0, p1}, Landroid/support/v7/view/menu/m;->j(Landroid/support/v7/view/menu/g;Landroid/support/v7/view/menu/h;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->U()V

    if-eqz v1, :cond_4

    .line 8
    iput-object p1, p0, Landroid/support/v7/view/menu/g;->w:Landroid/support/v7/view/menu/h;

    :cond_4
    return v1
.end method

.method public k(I)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/view/menu/g;->l(II)I

    move-result p1

    return p1
.end method

.method public l(II)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->size()I

    move-result v0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    :goto_0
    if-ge p2, v0, :cond_2

    .line 2
    iget-object v1, p0, Landroid/support/v7/view/menu/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/h;

    .line 3
    invoke-virtual {v1}, Landroid/support/v7/view/menu/h;->getGroupId()I

    move-result v1

    if-ne v1, p1, :cond_1

    return p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public n(I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Landroid/support/v7/view/menu/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/h;

    .line 3
    invoke-virtual {v2}, Landroid/support/v7/view/menu/h;->getItemId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method o(ILandroid/view/KeyEvent;)Landroid/support/v7/view/menu/h;
    .locals 11

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->u:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Landroid/support/v7/view/menu/g;->p(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    .line 6
    new-instance v3, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v3}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 7
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p2, v4, :cond_1

    .line 9
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/view/menu/h;

    return-object p1

    .line 10
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->C()Z

    move-result v4

    move v6, v5

    :goto_0
    if-ge v6, p2, :cond_7

    .line 11
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/view/menu/h;

    if-eqz v4, :cond_2

    .line 12
    invoke-virtual {v7}, Landroid/support/v7/view/menu/h;->getAlphabeticShortcut()C

    move-result v8

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v7}, Landroid/support/v7/view/menu/h;->getNumericShortcut()C

    move-result v8

    .line 14
    :goto_1
    iget-object v9, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v10, v9, v5

    if-ne v8, v10, :cond_3

    and-int/lit8 v10, v1, 0x2

    if-eqz v10, :cond_5

    :cond_3
    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-ne v8, v9, :cond_4

    and-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_5

    :cond_4
    if-eqz v4, :cond_6

    const/16 v9, 0x8

    if-ne v8, v9, :cond_6

    const/16 v8, 0x43

    if-ne p1, v8, :cond_6

    :cond_5
    return-object v7

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    return-object v2
.end method

.method p(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/view/menu/h;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->C()Z

    move-result v0

    .line 2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v1

    .line 3
    new-instance v2, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v2}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 4
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v3

    const/16 v4, 0x43

    if-nez v3, :cond_0

    if-eq p2, v4, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v3, p0, Landroid/support/v7/view/menu/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_7

    .line 6
    iget-object v7, p0, Landroid/support/v7/view/menu/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/view/menu/h;

    .line 7
    invoke-virtual {v7}, Landroid/support/v7/view/menu/h;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 8
    invoke-virtual {v7}, Landroid/support/v7/view/menu/h;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    check-cast v8, Landroid/support/v7/view/menu/g;

    invoke-virtual {v8, p1, p2, p3}, Landroid/support/v7/view/menu/g;->p(Ljava/util/List;ILandroid/view/KeyEvent;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v7}, Landroid/support/v7/view/menu/h;->getAlphabeticShortcut()C

    move-result v8

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Landroid/support/v7/view/menu/h;->getNumericShortcut()C

    move-result v8

    :goto_1
    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v7}, Landroid/support/v7/view/menu/h;->getAlphabeticModifiers()I

    move-result v9

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Landroid/support/v7/view/menu/h;->getNumericModifiers()I

    move-result v9

    :goto_2
    const v10, 0x1100f

    and-int v11, v1, v10

    and-int/2addr v9, v10

    if-ne v11, v9, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    move v9, v5

    :goto_3
    if-eqz v9, :cond_6

    if-eqz v8, :cond_6

    .line 11
    iget-object v9, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v10, v9, v5

    if-eq v8, v10, :cond_5

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-eq v8, v9, :cond_5

    if-eqz v0, :cond_6

    const/16 v9, 0x8

    if-ne v8, v9, :cond_6

    if-ne p2, v4, :cond_6

    .line 12
    :cond_5
    invoke-virtual {v7}, Landroid/support/v7/view/menu/h;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 13
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public performIdentifierAction(II)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/g;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/view/menu/g;->H(Landroid/view/MenuItem;I)Z

    move-result p1

    return p1
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/view/menu/g;->o(ILandroid/view/KeyEvent;)Landroid/support/v7/view/menu/h;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p3}, Landroid/support/v7/view/menu/g;->H(Landroid/view/MenuItem;I)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p0, p2}, Landroid/support/v7/view/menu/g;->d(Z)V

    :cond_1
    return p1
.end method

.method public q()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->A()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Landroid/support/v7/view/menu/g;->k:Z

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Landroid/support/v7/view/menu/g;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/view/menu/m;

    if-nez v5, :cond_1

    .line 5
    iget-object v5, p0, Landroid/support/v7/view/menu/g;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v5}, Landroid/support/v7/view/menu/m;->d()Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_4

    .line 7
    iget-object v1, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 8
    iget-object v1, p0, Landroid/support/v7/view/menu/g;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_5

    .line 10
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/h;

    .line 11
    invoke-virtual {v4}, Landroid/support/v7/view/menu/h;->j()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 12
    iget-object v5, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 13
    :cond_3
    iget-object v5, p0, Landroid/support/v7/view/menu/g;->j:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 14
    :cond_4
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 15
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 16
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->A()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    :cond_5
    iput-boolean v2, p0, Landroid/support/v7/view/menu/g;->k:Z

    return-void
.end method

.method public r()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/view/menu/h;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->q()V

    .line 2
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public removeGroup(I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/g;->k(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroid/support/v7/view/menu/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    add-int/lit8 v4, v3, 0x1

    if-ge v3, v1, :cond_0

    .line 3
    iget-object v3, p0, Landroid/support/v7/view/menu/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/h;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/h;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 4
    invoke-direct {p0, v0, v2}, Landroid/support/v7/view/menu/g;->J(IZ)V

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/g;->G(Z)V

    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/g;->n(I)I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/view/menu/g;->J(IZ)V

    return-void
.end method

.method public s()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->a:Landroid/content/Context;

    return-object v0
.end method

.method public setGroupCheckable(IZZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Landroid/support/v7/view/menu/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/h;

    .line 3
    invoke-virtual {v2}, Landroid/support/v7/view/menu/h;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 4
    invoke-virtual {v2, p3}, Landroid/support/v7/view/menu/h;->r(Z)V

    .line 5
    invoke-virtual {v2, p2}, Landroid/support/v7/view/menu/h;->setCheckable(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v7/view/menu/g;->x:Z

    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Landroid/support/v7/view/menu/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/h;

    .line 3
    invoke-virtual {v2}, Landroid/support/v7/view/menu/h;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 4
    invoke-virtual {v2, p2}, Landroid/support/v7/view/menu/h;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v1, v0, :cond_1

    .line 2
    iget-object v4, p0, Landroid/support/v7/view/menu/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/h;

    .line 3
    invoke-virtual {v4}, Landroid/support/v7/view/menu/h;->getGroupId()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 4
    invoke-virtual {v4, p2}, Landroid/support/v7/view/menu/h;->w(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p0, v3}, Landroid/support/v7/view/menu/g;->G(Z)V

    :cond_2
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v7/view/menu/g;->c:Z

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/g;->G(Z)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public t()Landroid/support/v7/view/menu/h;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->w:Landroid/support/v7/view/menu/h;

    return-object v0
.end method

.method public u()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->n:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public v()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/view/menu/h;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/view/menu/g;->q()V

    .line 2
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/view/menu/g;->s:Z

    return v0
.end method

.method y()Landroid/content/res/Resources;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/g;->b:Landroid/content/res/Resources;

    return-object v0
.end method

.method public z()Landroid/support/v7/view/menu/g;
    .locals 0

    return-object p0
.end method
