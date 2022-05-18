.class public Landroid/support/v7/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$l;,
        Landroid/support/v7/widget/RecyclerView$i;,
        Landroid/support/v7/widget/RecyclerView$j;,
        Landroid/support/v7/widget/RecyclerView$w;,
        Landroid/support/v7/widget/RecyclerView$u;,
        Landroid/support/v7/widget/RecyclerView$g;,
        Landroid/support/v7/widget/RecyclerView$v;,
        Landroid/support/v7/widget/RecyclerView$h;,
        Landroid/support/v7/widget/RecyclerView$n;,
        Landroid/support/v7/widget/RecyclerView$z;,
        Landroid/support/v7/widget/RecyclerView$s;,
        Landroid/support/v7/widget/RecyclerView$p;,
        Landroid/support/v7/widget/RecyclerView$o;,
        Landroid/support/v7/widget/RecyclerView$k;,
        Landroid/support/v7/widget/RecyclerView$m;,
        Landroid/support/v7/widget/RecyclerView$f;,
        Landroid/support/v7/widget/RecyclerView$x;,
        Landroid/support/v7/widget/RecyclerView$r;,
        Landroid/support/v7/widget/RecyclerView$q;,
        Landroid/support/v7/widget/RecyclerView$t;,
        Landroid/support/v7/widget/RecyclerView$y;
    }
.end annotation


# static fields
.field private static final W:Z

.field private static final a0:Landroid/view/animation/Interpolator;


# instance fields
.field private A:Landroid/support/v4/widget/EdgeEffectCompat;

.field B:Landroid/support/v7/widget/RecyclerView$i;

.field private C:I

.field private D:I

.field private E:Landroid/view/VelocityTracker;

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private final K:I

.field private final L:I

.field private final M:Landroid/support/v7/widget/RecyclerView$y;

.field final N:Landroid/support/v7/widget/RecyclerView$w;

.field private O:Landroid/support/v7/widget/RecyclerView$p;

.field P:Z

.field Q:Z

.field private R:Landroid/support/v7/widget/RecyclerView$i$b;

.field private S:Z

.field private T:Landroid/support/v7/widget/g0;

.field private final U:[I

.field private V:Ljava/lang/Runnable;

.field private final a:Landroid/support/v7/widget/RecyclerView$t;

.field final b:Landroid/support/v7/widget/RecyclerView$r;

.field private c:Landroid/support/v7/widget/RecyclerView$u;

.field d:Landroid/support/v7/widget/d;

.field e:Landroid/support/v7/widget/r;

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private final h:Ljava/lang/Runnable;

.field private final i:Landroid/graphics/Rect;

.field private j:Landroid/support/v7/widget/RecyclerView$f;

.field private k:Landroid/support/v7/widget/RecyclerView$m;

.field private l:Landroid/support/v7/widget/RecyclerView$s;

.field private final m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$k;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$o;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/support/v7/widget/RecyclerView$o;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private final u:Landroid/view/accessibility/AccessibilityManager;

.field private v:Z

.field private w:Z

.field private x:Landroid/support/v4/widget/EdgeEffectCompat;

.field private y:Landroid/support/v4/widget/EdgeEffectCompat;

.field private z:Landroid/support/v4/widget/EdgeEffectCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->W:Z

    .line 2
    new-instance v0, Landroid/support/v7/widget/RecyclerView$c;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$c;-><init>()V

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->a0:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p2, Landroid/support/v7/widget/RecyclerView$t;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Landroid/support/v7/widget/RecyclerView$t;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$a;)V

    iput-object p2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$t;

    .line 4
    new-instance p2, Landroid/support/v7/widget/RecyclerView$r;

    invoke-direct {p2, p0}, Landroid/support/v7/widget/RecyclerView$r;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object p2, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/support/v7/widget/RecyclerView;->f:Ljava/util/List;

    .line 6
    new-instance p2, Landroid/support/v7/widget/RecyclerView$a;

    invoke-direct {p2, p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object p2, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljava/lang/Runnable;

    .line 7
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/support/v7/widget/RecyclerView;->m:Ljava/util/ArrayList;

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/support/v7/widget/RecyclerView;->n:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 10
    iput-boolean p2, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    .line 11
    iput-boolean p2, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    .line 12
    new-instance v0, Landroid/support/v7/widget/t;

    invoke-direct {v0}, Landroid/support/v7/widget/t;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$i;

    .line 13
    iput p2, p0, Landroid/support/v7/widget/RecyclerView;->C:I

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->D:I

    .line 15
    new-instance v0, Landroid/support/v7/widget/RecyclerView$y;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$y;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Landroid/support/v7/widget/RecyclerView$y;

    .line 16
    new-instance v0, Landroid/support/v7/widget/RecyclerView$w;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$w;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    .line 17
    iput-boolean p2, p0, Landroid/support/v7/widget/RecyclerView;->P:Z

    .line 18
    iput-boolean p2, p0, Landroid/support/v7/widget/RecyclerView;->Q:Z

    .line 19
    new-instance v0, Landroid/support/v7/widget/RecyclerView$j;

    invoke-direct {v0, p0, p3}, Landroid/support/v7/widget/RecyclerView$j;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$a;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->R:Landroid/support/v7/widget/RecyclerView$i$b;

    .line 20
    iput-boolean p2, p0, Landroid/support/v7/widget/RecyclerView;->S:Z

    const/4 p3, 0x2

    new-array v0, p3, [I

    .line 21
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->U:[I

    .line 22
    new-instance v0, Landroid/support/v7/widget/RecyclerView$b;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$b;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->V:Ljava/lang/Runnable;

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    .line 24
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    .line 26
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    .line 27
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    .line 28
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, p3, :cond_0

    move p2, v0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 29
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$i;

    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->R:Landroid/support/v7/widget/RecyclerView$i$b;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView$i;->E(Landroid/support/v7/widget/RecyclerView$i$b;)V

    .line 30
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k0()V

    .line 31
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->l0()V

    .line 32
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_1

    .line 33
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 34
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/view/accessibility/AccessibilityManager;

    .line 35
    new-instance p1, Landroid/support/v7/widget/g0;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/g0;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroid/support/v7/widget/g0;)V

    return-void
.end method

.method static synthetic A(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->S:Z

    return p1
.end method

.method private A0()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->s()V

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->o0()V

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$m;->u0(Landroid/support/v7/widget/RecyclerView;)V

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$m;->W0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->q()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->j()V

    .line 8
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->P:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->Q:Z

    if-eqz v3, :cond_4

    :cond_2
    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->Q:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->P0()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v2

    .line 9
    :goto_2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->q:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$i;

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-nez v4, :cond_5

    if-nez v0, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView$m;->a(Landroid/support/v7/widget/RecyclerView$m;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$f;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$f;->f()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    move v4, v2

    goto :goto_3

    :cond_7
    move v4, v1

    :goto_3
    invoke-static {v3, v4}, Landroid/support/v7/widget/RecyclerView$w;->j(Landroid/support/v7/widget/RecyclerView$w;Z)Z

    .line 10
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView$w;->i(Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->z0()Z

    move-result v0

    if-eqz v0, :cond_8

    move v1, v2

    :cond_8
    invoke-static {v3, v1}, Landroid/support/v7/widget/RecyclerView$w;->f(Landroid/support/v7/widget/RecyclerView$w;Z)Z

    return-void
.end method

.method static synthetic B(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->F0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private B0(Landroid/support/v4/util/ArrayMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 3
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v4

    .line 4
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$w;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$l;

    .line 5
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$w;->o()Z

    move-result v5

    if-nez v5, :cond_0

    .line 6
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    invoke-virtual {p1, v2}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 8
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v3, v2, v4}, Landroid/support/v7/widget/RecyclerView$m;->L0(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$r;)V

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    .line 9
    invoke-direct {p0, v3}, Landroid/support/v7/widget/RecyclerView;->K(Landroid/support/v7/widget/RecyclerView$l;)V

    goto :goto_1

    .line 10
    :cond_2
    new-instance v9, Landroid/support/v7/widget/RecyclerView$l;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroid/support/v7/widget/RecyclerView$l;-><init>(Landroid/support/v7/widget/RecyclerView$z;IIII)V

    invoke-direct {p0, v9}, Landroid/support/v7/widget/RecyclerView;->K(Landroid/support/v7/widget/RecyclerView$l;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method static synthetic C(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->S(Landroid/view/View;)V

    return-void
.end method

.method private C0(II)V
    .locals 3

    if-gez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->Z()V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v1, p1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a0()V

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    :cond_1
    :goto_0
    if-gez p2, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b0()V

    .line 6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v1, p2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    goto :goto_1

    :cond_2
    if-lez p2, :cond_3

    .line 7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->Y()V

    .line 8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    .line 9
    :cond_4
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method static synthetic D(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->T(Landroid/view/View;)V

    return-void
.end method

.method static synthetic E(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private E0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 3
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 4
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_3
    if-eqz v0, :cond_4

    .line 5
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method static synthetic F(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->detachViewFromParent(I)V

    return-void
.end method

.method private F0(Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->X()V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/r;->q(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object p1

    .line 4
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$r;->J(Landroid/support/v7/widget/RecyclerView$z;)V

    .line 5
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$r;->D(Landroid/support/v7/widget/RecyclerView$z;)V

    :cond_0
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->H0(Z)V

    return v0
.end method

.method private G(Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->h0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$r;->J(Landroid/support/v7/widget/RecyclerView$z;)V

    .line 4
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$z;->w()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    const/4 v1, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/support/v7/widget/r;->c(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    .line 6
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {p1, v0, v2}, Landroid/support/v7/widget/r;->b(Landroid/view/View;Z)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/r;->k(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method private G0(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private H(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private I(Landroid/support/v7/widget/RecyclerView$z;Landroid/graphics/Rect;II)V
    .locals 8

    .line 1
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 2
    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-ne v1, p3, :cond_0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-eq v1, p4, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$z;->C(Z)V

    .line 4
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$i;

    iget v4, p2, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    move-object v3, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/RecyclerView$i;->c(Landroid/support/v7/widget/RecyclerView$z;IIII)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->y0()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$z;->C(Z)V

    .line 7
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView$i;->a(Landroid/support/v7/widget/RecyclerView$z;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->y0()V

    :cond_2
    :goto_0
    return-void
.end method

.method private J(Landroid/support/v7/widget/RecyclerView$z;Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 9

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$z;->C(Z)V

    .line 2
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->G(Landroid/support/v7/widget/RecyclerView$z;)V

    .line 3
    iput-object p2, p1, Landroid/support/v7/widget/RecyclerView$z;->g:Landroid/support/v7/widget/RecyclerView$z;

    .line 4
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$r;->J(Landroid/support/v7/widget/RecyclerView$z;)V

    .line 5
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 6
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$z;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p2, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 9
    iget-object v2, p2, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 10
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView$z;->C(Z)V

    .line 11
    iput-object p1, p2, Landroid/support/v7/widget/RecyclerView$z;->h:Landroid/support/v7/widget/RecyclerView$z;

    move v7, v1

    move v8, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v5

    move v8, v6

    .line 12
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$i;

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Landroid/support/v7/widget/RecyclerView$i;->b(Landroid/support/v7/widget/RecyclerView$z;Landroid/support/v7/widget/RecyclerView$z;IIII)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->y0()V

    :cond_2
    return-void
.end method

.method private K(Landroid/support/v7/widget/RecyclerView$l;)V
    .locals 8

    .line 1
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$l;->a:Landroid/support/v7/widget/RecyclerView$z;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    .line 2
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->G(Landroid/support/v7/widget/RecyclerView$z;)V

    .line 3
    iget v4, p1, Landroid/support/v7/widget/RecyclerView$l;->b:I

    .line 4
    iget v5, p1, Landroid/support/v7/widget/RecyclerView$l;->c:I

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    const/4 v0, 0x0

    if-ne v4, v6, :cond_1

    if-eq v5, v7, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$l;->a:Landroid/support/v7/widget/RecyclerView$z;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$z;->C(Z)V

    .line 8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$i;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$l;->a:Landroid/support/v7/widget/RecyclerView$z;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$i;->d(Landroid/support/v7/widget/RecyclerView$z;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->y0()V

    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$l;->a:Landroid/support/v7/widget/RecyclerView$z;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView$z;->C(Z)V

    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v7

    invoke-virtual {v1, v6, v7, v0, v2}, Landroid/view/View;->layout(IIII)V

    .line 12
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$i;

    iget-object v3, p1, Landroid/support/v7/widget/RecyclerView$l;->a:Landroid/support/v7/widget/RecyclerView$z;

    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/RecyclerView$i;->c(Landroid/support/v7/widget/RecyclerView$z;IIII)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->y0()V

    :cond_2
    :goto_1
    return-void
.end method

.method private K0(Landroid/support/v7/widget/RecyclerView$f;ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$f;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$f;->q(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$f;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$f;->k(Landroid/support/v7/widget/RecyclerView;)V

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_4

    .line 4
    :cond_1
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$i;

    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$i;->o()V

    .line 6
    :cond_2
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    if-eqz p3, :cond_3

    .line 7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {p3, v0}, Landroid/support/v7/widget/RecyclerView$m;->J0(Landroid/support/v7/widget/RecyclerView$r;)V

    .line 8
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {p3, v0}, Landroid/support/v7/widget/RecyclerView$m;->K0(Landroid/support/v7/widget/RecyclerView$r;)V

    .line 9
    :cond_3
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$r;->d()V

    .line 10
    :cond_4
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/d;

    invoke-virtual {p3}, Landroid/support/v7/widget/d;->s()V

    .line 11
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$f;

    .line 12
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$f;

    if-eqz p1, :cond_5

    .line 13
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$f;->p(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 14
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView$f;->h(Landroid/support/v7/widget/RecyclerView;)V

    .line 15
    :cond_5
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    if-eqz p1, :cond_6

    .line 16
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$f;

    invoke-virtual {p1, p3, v0}, Landroid/support/v7/widget/RecyclerView$m;->g0(Landroid/support/v7/widget/RecyclerView$f;Landroid/support/v7/widget/RecyclerView$f;)V

    .line 17
    :cond_6
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$f;

    invoke-virtual {p1, p3, v0, p2}, Landroid/support/v7/widget/RecyclerView$r;->y(Landroid/support/v7/widget/RecyclerView$f;Landroid/support/v7/widget/RecyclerView$f;Z)V

    .line 18
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/support/v7/widget/RecyclerView$w;->d(Landroid/support/v7/widget/RecyclerView$w;Z)Z

    .line 19
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->o0()V

    return-void
.end method

.method private L0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->j()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/r;->i(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$z;->F()Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x200

    .line 6
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$z;->e(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$r;->F()V

    return-void
.end method

.method private M()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 3
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->E0()V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method private O(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    .line 4
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result p1

    or-int/2addr v0, p1

    .line 5
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    if-lez p2, :cond_2

    .line 6
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result p1

    or-int/2addr v0, p1

    .line 7
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    if-gez p2, :cond_3

    .line 8
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_3
    if-eqz v0, :cond_4

    .line 9
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private O0()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Landroid/support/v7/widget/RecyclerView$y;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$y;->k()V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$m;->V0()V

    :cond_0
    return-void
.end method

.method private P()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private P0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$i;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private Q(II)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    .line 5
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result p1

    :cond_0
    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    .line 6
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result p2

    .line 7
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method private R(II)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->g()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_6

    .line 2
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/r;->f(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$z;->F()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 4
    :cond_3
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$z;->n()I

    move-result v4

    if-lt v4, p1, :cond_5

    if-le v4, p2, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    return v1

    :cond_6
    return v2
.end method

.method private S(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$f;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$f;->m(Landroid/support/v7/widget/RecyclerView$z;)V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->v0(Landroid/view/View;)V

    return-void
.end method

.method private T(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$f;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$f;->n(Landroid/support/v7/widget/RecyclerView$z;)V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->w0(Landroid/view/View;)V

    return-void
.end method

.method private V(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$o;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 3
    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$o;

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v1, p0, p1}, Landroid/support/v7/widget/RecyclerView$o;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    if-ne v0, v2, :cond_2

    .line 5
    :cond_1
    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$o;

    :cond_2
    return v2

    :cond_3
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_5

    .line 7
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->n:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$o;

    .line 8
    invoke-interface {v4, p0, p1}, Landroid/support/v7/widget/RecyclerView$o;->b(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 9
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$o;

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method private W(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 2
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$o;

    .line 3
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    .line 4
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->n:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$o;

    .line 5
    invoke-interface {v5, p0, p1}, Landroid/support/v7/widget/RecyclerView$o;->b(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eq v0, v1, :cond_2

    .line 6
    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$o;

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/support/v7/widget/RecyclerView;->q:Z

    return p0
.end method

.method static synthetic c(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$m;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    return-object p0
.end method

.method private c0([I)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->g()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    aput v2, p1, v2

    .line 3
    aput v2, p1, v1

    return-void

    :cond_0
    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    move v5, v2

    :goto_0
    if-ge v5, v0, :cond_4

    .line 4
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/r;->f(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v6

    .line 5
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$z;->F()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$z;->n()I

    move-result v6

    if-ge v6, v3, :cond_2

    move v3, v6

    :cond_2
    if-le v6, v4, :cond_3

    move v4, v6

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7
    :cond_4
    aput v3, p1, v2

    .line 8
    aput v4, p1, v1

    return-void
.end method

.method static synthetic d(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    return p0
.end method

.method static synthetic e()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->a0:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic f(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->P()V

    return-void
.end method

.method private f0(Landroid/support/v7/widget/RecyclerView$z;)I
    .locals 1

    const/16 v0, 0x208

    .line 1
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$z;->o(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/d;

    iget p1, p1, Landroid/support/v7/widget/RecyclerView$z;->b:I

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/d;->e(I)I

    move-result p1

    return p1
.end method

.method static synthetic g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$f;

    return-object p0
.end method

.method static synthetic h(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    return p0
.end method

.method static synthetic i(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    return p1
.end method

.method static i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/support/v7/widget/RecyclerView$n;

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Landroid/support/v7/widget/RecyclerView$z;

    return-object p0
.end method

.method static synthetic j(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->P0()Z

    move-result p0

    return p0
.end method

.method static synthetic k(Landroid/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->m:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic l(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->O(II)V

    return-void
.end method

.method private l0()V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v7/widget/r;

    new-instance v1, Landroid/support/v7/widget/RecyclerView$d;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerView$d;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/r;-><init>(Landroid/support/v7/widget/r$b;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    return-void
.end method

.method static synthetic m(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->p0(II)V

    return-void
.end method

.method static synthetic n(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method static synthetic o(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    return p0
.end method

.method static synthetic p(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method private p0(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->O:Landroid/support/v7/widget/RecyclerView$p;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$p;->b(Landroid/support/v7/widget/RecyclerView;II)V

    :cond_0
    return-void
.end method

.method static synthetic q(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->L0()V

    return-void
.end method

.method static synthetic r()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->W:Z

    return v0
.end method

.method static synthetic s(Landroid/support/v7/widget/RecyclerView;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->u:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method private setScrollState(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->C:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->C:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 3
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->O0()V

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->O:Landroid/support/v7/widget/RecyclerView$p;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/RecyclerView$p;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 6
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$m;->E0(I)V

    :cond_3
    return-void
.end method

.method static synthetic t(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/g0;

    return-object p0
.end method

.method static synthetic u(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$s;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$s;

    return-object p0
.end method

.method static synthetic v(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->H(Landroid/view/View;)V

    return-void
.end method

.method static synthetic w(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->G0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic x(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->Q(II)V

    return-void
.end method

.method private x0(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->D:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->D:I

    .line 4
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->H:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->F:I

    .line 5
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->G:I

    :cond_1
    return-void
.end method

.method static synthetic y(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$z;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->f0(Landroid/support/v7/widget/RecyclerView$z;)I

    move-result p0

    return p0
.end method

.method private y0()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->S:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->V:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->S:Z

    :cond_0
    return-void
.end method

.method static synthetic z(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$y;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->M:Landroid/support/v7/widget/RecyclerView$y;

    return-object p0
.end method

.method private z0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$m;->W0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method D0()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->g()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_7

    .line 2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/r;->f(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 3
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$z;->F()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$z;->u()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$z;->s()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$z;->x()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$f;

    iget v4, v2, Landroid/support/v7/widget/RecyclerView$z;->b:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$f;->e(I)I

    move-result v3

    .line 7
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$z;->m()I

    move-result v4

    if-ne v4, v3, :cond_4

    .line 8
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$z;->r()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->P0()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_3

    .line 10
    :cond_3
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$f;

    iget v4, v2, Landroid/support/v7/widget/RecyclerView$z;->b:I

    invoke-virtual {v3, v2, v4}, Landroid/support/v7/widget/RecyclerView$f;->a(Landroid/support/v7/widget/RecyclerView$z;I)V

    goto :goto_3

    :cond_4
    const/4 v3, 0x4

    .line 11
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$z;->e(I)V

    .line 12
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_3

    .line 13
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method H0(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$f;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->U()V

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->r:Z

    .line 5
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    :cond_1
    return-void
.end method

.method I0()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->j()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/r;->i(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$z;->F()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$z;->A()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method J0(II)Z
    .locals 13

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->P()V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$f;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->X()V

    .line 4
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0, p1, v3, v4}, Landroid/support/v7/widget/RecyclerView$m;->S0(ILandroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)I

    move-result v0

    sub-int v3, p1, v0

    goto :goto_0

    :cond_0
    move v0, v2

    move v3, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 6
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v4, p2, v5, v6}, Landroid/support/v7/widget/RecyclerView$m;->T0(ILandroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)I

    move-result v4

    sub-int v5, p2, v4

    goto :goto_1

    :cond_1
    move v4, v2

    move v5, v4

    .line 7
    :goto_1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->P0()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 8
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v6}, Landroid/support/v7/widget/r;->g()I

    move-result v6

    move v7, v2

    :goto_2
    if-ge v7, v6, :cond_5

    .line 9
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v8, v7}, Landroid/support/v7/widget/r;->f(I)Landroid/view/View;

    move-result-object v8

    .line 10
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/RecyclerView;->h0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 11
    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$z;->h:Landroid/support/v7/widget/RecyclerView$z;

    if-eqz v9, :cond_4

    if-eqz v9, :cond_2

    .line 12
    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    goto :goto_3

    :cond_2
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_4

    .line 13
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 14
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    .line 15
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v11

    if-ne v10, v11, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v11

    if-eq v8, v11, :cond_4

    .line 16
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v11, v10

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v12, v8

    invoke-virtual {v9, v10, v8, v11, v12}, Landroid/view/View;->layout(IIII)V

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 17
    :cond_5
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    .line 18
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->H0(Z)V

    goto :goto_4

    :cond_6
    move v0, v2

    move v3, v0

    move v4, v3

    move v5, v4

    .line 19
    :goto_4
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->m:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 21
    :cond_7
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_8

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->O(II)V

    .line 23
    invoke-direct {p0, v3, v5}, Landroid/support/v7/widget/RecyclerView;->C0(II)V

    :cond_8
    if-nez v0, :cond_9

    if-eqz v4, :cond_a

    .line 24
    :cond_9
    invoke-direct {p0, v0, v4}, Landroid/support/v7/widget/RecyclerView;->p0(II)V

    .line 25
    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_b

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_b
    if-nez v0, :cond_d

    if-eqz v4, :cond_c

    goto :goto_5

    :cond_c
    move v1, v2

    :cond_d
    :goto_5
    return v1
.end method

.method L(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public M0(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    if-nez v0, :cond_0

    const-string p1, "RecyclerView"

    const-string p2, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$m;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move p1, v1

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$m;->m()Z

    move-result v0

    if-nez v0, :cond_2

    move p2, v1

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    .line 5
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Landroid/support/v7/widget/RecyclerView$y;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$y;->g(II)V

    :cond_4
    return-void
.end method

.method N()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->j()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/r;->i(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$z;->F()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$z;->f()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$r;->e()V

    return-void
.end method

.method public N0()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->O0()V

    return-void
.end method

.method Q0(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->j()I

    move-result v0

    add-int v1, p1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/r;->i(I)Landroid/view/View;

    move-result-object v3

    .line 3
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 4
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$z;->F()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget v5, v4, Landroid/support/v7/widget/RecyclerView$z;->b:I

    if-lt v5, p1, :cond_2

    if-ge v5, v1, :cond_2

    const/4 v5, 0x2

    .line 6
    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$z;->e(I)V

    .line 7
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->P0()Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x40

    .line 8
    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$z;->e(I)V

    .line 9
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$n;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$n;->c:Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$r;->L(II)V

    return-void
.end method

.method U()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$f;

    const-string v2, "RecyclerView"

    if-nez v1, :cond_0

    const-string v1, "No adapter attached; skipping layout"

    .line 2
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    if-nez v1, :cond_1

    const-string v1, "No layout manager attached; skipping layout"

    .line 4
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->X()V

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->w:Z

    .line 8
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->A0()V

    .line 9
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView$w;->i(Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->Q:Z

    if-eqz v3, :cond_2

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->P0()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v3}, Landroid/support/v4/util/ArrayMap;-><init>()V

    goto :goto_0

    :cond_2
    move-object v3, v4

    :goto_0
    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$w;->d:Landroid/support/v4/util/ArrayMap;

    const/4 v2, 0x0

    .line 10
    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView;->Q:Z

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView;->P:Z

    .line 11
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView$w;->e(Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v5

    invoke-static {v3, v5}, Landroid/support/v7/widget/RecyclerView$w;->h(Landroid/support/v7/widget/RecyclerView$w;Z)Z

    .line 12
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$f;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$f;->c()I

    move-result v5

    iput v5, v3, Landroid/support/v7/widget/RecyclerView$w;->f:I

    .line 13
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->U:[I

    invoke-direct {v0, v3}, Landroid/support/v7/widget/RecyclerView;->c0([I)V

    .line 14
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView$w;->i(Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 15
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$w;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3}, Landroid/support/v4/util/SimpleArrayMap;->clear()V

    .line 16
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3}, Landroid/support/v4/util/SimpleArrayMap;->clear()V

    .line 17
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v3}, Landroid/support/v7/widget/r;->g()I

    move-result v3

    move v5, v2

    :goto_1
    if-ge v5, v3, :cond_5

    .line 18
    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/r;->f(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v6

    .line 19
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$z;->F()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$z;->s()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$f;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$f;->f()Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    .line 20
    :cond_3
    iget-object v7, v6, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    .line 21
    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v13, v8, Landroid/support/v7/widget/RecyclerView$w;->b:Landroid/support/v4/util/ArrayMap;

    new-instance v14, Landroid/support/v7/widget/RecyclerView$l;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v12

    move-object v7, v14

    move-object v8, v6

    invoke-direct/range {v7 .. v12}, Landroid/support/v7/widget/RecyclerView$l;-><init>(Landroid/support/v7/widget/RecyclerView$z;IIII)V

    invoke-virtual {v13, v6, v14}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 22
    :cond_5
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView$w;->e(Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->I0()V

    .line 24
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$w;->d:Landroid/support/v4/util/ArrayMap;

    if-eqz v3, :cond_7

    .line 25
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v3}, Landroid/support/v7/widget/r;->g()I

    move-result v3

    move v5, v2

    :goto_3
    if-ge v5, v3, :cond_7

    .line 26
    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/r;->f(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v6

    .line 27
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$z;->r()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$z;->u()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$z;->F()Z

    move-result v7

    if-nez v7, :cond_6

    .line 28
    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView;->g0(Landroid/support/v7/widget/RecyclerView$z;)J

    move-result-wide v7

    .line 29
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$w;->d:Landroid/support/v4/util/ArrayMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v7, v6}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$w;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 31
    :cond_7
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView$w;->c(Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v3

    .line 32
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-static {v5, v2}, Landroid/support/v7/widget/RecyclerView$w;->d(Landroid/support/v7/widget/RecyclerView$w;Z)Z

    .line 33
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$m;->y0(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)V

    .line 34
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-static {v5, v3}, Landroid/support/v7/widget/RecyclerView$w;->d(Landroid/support/v7/widget/RecyclerView$w;Z)Z

    .line 35
    new-instance v3, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v3}, Landroid/support/v4/util/ArrayMap;-><init>()V

    move v5, v2

    .line 36
    :goto_4
    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v6}, Landroid/support/v7/widget/r;->g()I

    move-result v6

    if-ge v5, v6, :cond_c

    .line 37
    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/r;->f(I)Landroid/view/View;

    move-result-object v6

    .line 38
    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$z;->F()Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_7

    :cond_8
    move v7, v2

    .line 39
    :goto_5
    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$w;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v8}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_a

    .line 40
    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$w;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$z;

    .line 41
    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    if-ne v8, v6, :cond_9

    move v7, v1

    goto :goto_6

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_a
    move v7, v2

    :goto_6
    if-nez v7, :cond_b

    .line 42
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v6, v7}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 43
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->N()V

    .line 44
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/d;

    invoke-virtual {v5}, Landroid/support/v7/widget/d;->i()V

    goto :goto_9

    .line 45
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->N()V

    .line 46
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/d;

    invoke-virtual {v3}, Landroid/support/v7/widget/d;->j()V

    .line 47
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$w;->d:Landroid/support/v4/util/ArrayMap;

    if-eqz v3, :cond_f

    .line 48
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v3}, Landroid/support/v7/widget/r;->g()I

    move-result v3

    move v5, v2

    :goto_8
    if-ge v5, v3, :cond_f

    .line 49
    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/r;->f(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v6

    .line 50
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$z;->r()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$z;->u()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$z;->F()Z

    move-result v7

    if-nez v7, :cond_e

    .line 51
    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView;->g0(Landroid/support/v7/widget/RecyclerView$z;)J

    move-result-wide v7

    .line 52
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$w;->d:Landroid/support/v4/util/ArrayMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v7, v6}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$w;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_f
    move-object v3, v4

    .line 54
    :goto_9
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$f;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$f;->c()I

    move-result v6

    iput v6, v5, Landroid/support/v7/widget/RecyclerView$w;->f:I

    .line 55
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-static {v5, v2}, Landroid/support/v7/widget/RecyclerView$w;->a(Landroid/support/v7/widget/RecyclerView$w;I)I

    .line 56
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-static {v5, v2}, Landroid/support/v7/widget/RecyclerView$w;->h(Landroid/support/v7/widget/RecyclerView$w;Z)Z

    .line 57
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$m;->y0(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)V

    .line 58
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-static {v5, v2}, Landroid/support/v7/widget/RecyclerView$w;->d(Landroid/support/v7/widget/RecyclerView$w;Z)Z

    .line 59
    iput-object v4, v0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/RecyclerView$u;

    .line 60
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView$w;->i(Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$i;

    if-eqz v6, :cond_10

    move v6, v1

    goto :goto_a

    :cond_10
    move v6, v2

    :goto_a
    invoke-static {v5, v6}, Landroid/support/v7/widget/RecyclerView$w;->j(Landroid/support/v7/widget/RecyclerView$w;Z)Z

    .line 61
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView$w;->i(Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 62
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$w;->d:Landroid/support/v4/util/ArrayMap;

    if-eqz v5, :cond_11

    new-instance v5, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v5}, Landroid/support/v4/util/ArrayMap;-><init>()V

    goto :goto_b

    :cond_11
    move-object v5, v4

    .line 63
    :goto_b
    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v6}, Landroid/support/v7/widget/r;->g()I

    move-result v6

    move v7, v2

    :goto_c
    if-ge v7, v6, :cond_14

    .line 64
    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v8, v7}, Landroid/support/v7/widget/r;->f(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v8

    .line 65
    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$z;->F()Z

    move-result v9

    if-eqz v9, :cond_12

    goto :goto_d

    .line 66
    :cond_12
    iget-object v9, v8, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    .line 67
    invoke-virtual {v0, v8}, Landroid/support/v7/widget/RecyclerView;->g0(Landroid/support/v7/widget/RecyclerView$z;)J

    move-result-wide v10

    if-eqz v5, :cond_13

    .line 68
    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v12, v12, Landroid/support/v7/widget/RecyclerView$w;->d:Landroid/support/v4/util/ArrayMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_13

    .line 69
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v9, v8}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 70
    :cond_13
    iget-object v10, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v15, v10, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v4/util/ArrayMap;

    new-instance v14, Landroid/support/v7/widget/RecyclerView$l;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v13

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v16

    move-object v9, v14

    move-object v10, v8

    move-object v4, v14

    move/from16 v14, v16

    invoke-direct/range {v9 .. v14}, Landroid/support/v7/widget/RecyclerView$l;-><init>(Landroid/support/v7/widget/RecyclerView$z;IIII)V

    invoke-virtual {v15, v8, v4}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    goto :goto_c

    .line 71
    :cond_14
    invoke-direct {v0, v3}, Landroid/support/v7/widget/RecyclerView;->B0(Landroid/support/v4/util/ArrayMap;)V

    .line 72
    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$w;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_e
    if-ltz v4, :cond_16

    .line 73
    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$w;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$z;

    .line 74
    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 75
    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$w;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$l;

    .line 76
    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$w;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/support/v4/util/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 77
    iget-object v7, v6, Landroid/support/v7/widget/RecyclerView$l;->a:Landroid/support/v7/widget/RecyclerView$z;

    iget-object v8, v7, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    .line 78
    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v8, v7}, Landroid/support/v7/widget/RecyclerView$r;->J(Landroid/support/v7/widget/RecyclerView$z;)V

    .line 79
    invoke-direct {v0, v6}, Landroid/support/v7/widget/RecyclerView;->K(Landroid/support/v7/widget/RecyclerView$l;)V

    :cond_15
    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    .line 80
    :cond_16
    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v4

    if-lez v4, :cond_1a

    sub-int/2addr v4, v1

    :goto_f
    if-ltz v4, :cond_1a

    .line 81
    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$z;

    .line 82
    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView$l;

    .line 83
    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$w;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v8}, Landroid/support/v4/util/SimpleArrayMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_17

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$w;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    .line 84
    :cond_17
    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v8, v4}, Landroid/support/v4/util/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    if-eqz v3, :cond_18

    .line 85
    iget-object v8, v6, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    goto :goto_10

    :cond_18
    const/4 v8, 0x0

    .line 86
    :goto_10
    iget v9, v7, Landroid/support/v7/widget/RecyclerView$l;->b:I

    iget v7, v7, Landroid/support/v7/widget/RecyclerView$l;->c:I

    invoke-direct {v0, v6, v8, v9, v7}, Landroid/support/v7/widget/RecyclerView;->I(Landroid/support/v7/widget/RecyclerView$z;Landroid/graphics/Rect;II)V

    :cond_19
    add-int/lit8 v4, v4, -0x1

    goto :goto_f

    .line 87
    :cond_1a
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v3

    move v4, v2

    :goto_11
    if-ge v4, v3, :cond_1d

    .line 88
    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Landroid/support/v7/widget/RecyclerView$z;

    .line 89
    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$w;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$l;

    .line 90
    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$w;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v7, v8}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView$l;

    if-eqz v7, :cond_1c

    if-eqz v6, :cond_1c

    .line 91
    iget v9, v7, Landroid/support/v7/widget/RecyclerView$l;->b:I

    iget v10, v6, Landroid/support/v7/widget/RecyclerView$l;->b:I

    if-ne v9, v10, :cond_1b

    iget v9, v7, Landroid/support/v7/widget/RecyclerView$l;->c:I

    iget v10, v6, Landroid/support/v7/widget/RecyclerView$l;->c:I

    if-eq v9, v10, :cond_1c

    .line 92
    :cond_1b
    invoke-virtual {v8, v2}, Landroid/support/v7/widget/RecyclerView$z;->C(Z)V

    .line 93
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$i;

    iget v10, v7, Landroid/support/v7/widget/RecyclerView$l;->b:I

    iget v11, v7, Landroid/support/v7/widget/RecyclerView$l;->c:I

    iget v12, v6, Landroid/support/v7/widget/RecyclerView$l;->b:I

    iget v6, v6, Landroid/support/v7/widget/RecyclerView$l;->c:I

    move-object v7, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Landroid/support/v7/widget/RecyclerView$i;->c(Landroid/support/v7/widget/RecyclerView$z;IIII)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 94
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->y0()V

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 95
    :cond_1d
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$w;->d:Landroid/support/v4/util/ArrayMap;

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v3

    goto :goto_12

    :cond_1e
    move v3, v2

    :goto_12
    sub-int/2addr v3, v1

    :goto_13
    if-ltz v3, :cond_21

    .line 96
    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$w;->d:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 97
    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$w;->d:Landroid/support/v4/util/ArrayMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$z;

    .line 98
    iget-object v8, v4, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    .line 99
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$z;->F()Z

    move-result v8

    if-eqz v8, :cond_1f

    goto :goto_14

    .line 100
    :cond_1f
    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView$r;->a(Landroid/support/v7/widget/RecyclerView$r;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_20

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView$r;->a(Landroid/support/v7/widget/RecyclerView$r;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 101
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$z;

    invoke-direct {v0, v4, v6}, Landroid/support/v7/widget/RecyclerView;->J(Landroid/support/v7/widget/RecyclerView$z;Landroid/support/v7/widget/RecyclerView$z;)V

    :cond_20
    :goto_14
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .line 102
    :cond_21
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->H0(Z)V

    .line 103
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$m;->K0(Landroid/support/v7/widget/RecyclerView$r;)V

    .line 104
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iget v4, v3, Landroid/support/v7/widget/RecyclerView$w;->f:I

    invoke-static {v3, v4}, Landroid/support/v7/widget/RecyclerView$w;->k(Landroid/support/v7/widget/RecyclerView$w;I)I

    .line 105
    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView;->v:Z

    .line 106
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-static {v3, v2}, Landroid/support/v7/widget/RecyclerView$w;->j(Landroid/support/v7/widget/RecyclerView$w;Z)Z

    .line 107
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-static {v3, v2}, Landroid/support/v7/widget/RecyclerView$w;->f(Landroid/support/v7/widget/RecyclerView$w;Z)Z

    .line 108
    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView;->w:Z

    .line 109
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    invoke-static {v3, v2}, Landroid/support/v7/widget/RecyclerView$m;->b(Landroid/support/v7/widget/RecyclerView$m;Z)Z

    .line 110
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView$r;->a(Landroid/support/v7/widget/RecyclerView$r;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 111
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView$r;->a(Landroid/support/v7/widget/RecyclerView$r;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 112
    :cond_22
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/v7/widget/RecyclerView$w;->d:Landroid/support/v4/util/ArrayMap;

    .line 113
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->U:[I

    aget v4, v3, v2

    aget v1, v3, v1

    invoke-direct {v0, v4, v1}, Landroid/support/v7/widget/RecyclerView;->R(II)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 114
    invoke-direct {v0, v2, v2}, Landroid/support/v7/widget/RecyclerView;->p0(II)V

    :cond_23
    return-void
.end method

.method X()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    :cond_0
    return-void
.end method

.method Y()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 3
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    :goto_0
    return-void
.end method

.method Z()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 3
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    :goto_0
    return-void
.end method

.method a(II)V
    .locals 2

    if-gez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->Z()V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a0()V

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    :cond_1
    :goto_0
    if-gez p2, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b0()V

    .line 6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_1

    :cond_2
    if-lez p2, :cond_3

    .line 7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->Y()V

    .line 8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    .line 9
    :cond_4
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method a0()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 3
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    :goto_0
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$m;->h0(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    return-void
.end method

.method b0()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 3
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    :goto_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    check-cast p1, Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$m;->n(Landroid/support/v7/widget/RecyclerView$n;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$m;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$m;->o(Landroid/support/v7/widget/RecyclerView$w;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$m;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$m;->p(Landroid/support/v7/widget/RecyclerView$w;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$m;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$m;->q(Landroid/support/v7/widget/RecyclerView$w;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$m;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$m;->r(Landroid/support/v7/widget/RecyclerView$w;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$m;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$m;->s(Landroid/support/v7/widget/RecyclerView$w;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$m;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$m;->t(Landroid/support/v7/widget/RecyclerView$w;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method d0(IZ)Landroid/support/v7/widget/RecyclerView$z;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->j()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/r;->i(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$z;->u()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p2, :cond_0

    .line 4
    iget v3, v2, Landroid/support/v7/widget/RecyclerView$z;->b:I

    if-ne v3, p1, :cond_1

    return-object v2

    .line 5
    :cond_0
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$z;->n()I

    move-result v3

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->m:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$k;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v3, p1, p0, v4}, Landroid/support/v7/widget/RecyclerView$k;->f(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$w;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/support/v4/widget/EdgeEffectCompat;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 6
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const/high16 v4, 0x43870000    # 270.0f

    .line 7
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v4, v3

    int-to-float v3, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    .line 10
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_3

    :cond_3
    move v3, v1

    .line 11
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 13
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    if-eqz v4, :cond_4

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15
    :cond_4
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v4, :cond_5

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v2

    goto :goto_4

    :cond_5
    move v4, v1

    :goto_4
    or-int/2addr v3, v4

    .line 16
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 17
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_9

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    .line 20
    iget-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    goto :goto_5

    :cond_7
    move v5, v1

    :goto_5
    const/high16 v6, 0x42b40000    # 90.0f

    .line 21
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v5, v5

    int-to-float v5, v5

    neg-int v4, v4

    int-to-float v4, v4

    .line 22
    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 23
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v4, :cond_8

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v2

    goto :goto_6

    :cond_8
    move v4, v1

    :goto_6
    or-int/2addr v3, v4

    .line 24
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 25
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_c

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/high16 v4, 0x43340000    # 180.0f

    .line 27
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 28
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    if-eqz v4, :cond_a

    .line 29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    .line 30
    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 31
    :goto_7
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v4, :cond_b

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v1, v2

    :cond_b
    or-int/2addr v3, v1

    .line 32
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_c
    if-nez v3, :cond_d

    .line 33
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$i;

    if-eqz p1, :cond_d

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->m:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_d

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$i;->u()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_8

    :cond_d
    move v2, v3

    :goto_8
    if-eqz v2, :cond_e

    .line 34
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_e
    return-void
.end method

.method public e0(II)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "RecyclerView"

    const-string p2, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$m;->l()Z

    move-result v0

    .line 4
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$m;->m()Z

    move-result v2

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    if-ge v0, v3, :cond_2

    :cond_1
    move p1, v1

    :cond_2
    if-eqz v2, :cond_3

    .line 6
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->K:I

    if-ge v0, v2, :cond_4

    :cond_3
    move p2, v1

    .line 7
    :cond_4
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    neg-int v2, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 8
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    neg-int v2, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-nez p1, :cond_6

    if-eqz p2, :cond_5

    goto :goto_0

    :cond_5
    return v1

    .line 9
    :cond_6
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->M:Landroid/support/v7/widget/RecyclerView$y;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$y;->e(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$m;->s0(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$f;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->X()V

    .line 6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/support/v7/widget/RecyclerView$m;->l0(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->H0(Z)V

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method g0(Landroid/support/v7/widget/RecyclerView$z;)J
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$f;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$z;->l()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/support/v7/widget/RecyclerView$z;->b:I

    int-to-long v0, p1

    :goto_0
    return-wide v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$m;->x()Landroid/support/v7/widget/RecyclerView$n;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/RecyclerView$m;->y(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$n;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RecyclerView has no LayoutManager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$m;->z(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$n;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RecyclerView has no LayoutManager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAdapter()Landroid/support/v7/widget/RecyclerView$f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$f;

    return-object v0
.end method

.method public getCompatAccessibilityDelegate()Landroid/support/v7/widget/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/g0;

    return-object v0
.end method

.method public getItemAnimator()Landroid/support/v7/widget/RecyclerView$i;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$i;

    return-object v0
.end method

.method public getLayoutManager()Landroid/support/v7/widget/RecyclerView$m;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    return-object v0
.end method

.method public getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$q;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$r;->j()Landroid/support/v7/widget/RecyclerView$q;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->C:I

    return v0
.end method

.method public h0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a direct child of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object p1

    return-object p1
.end method

.method j0(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$n;

    .line 2
    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$n;->c:Z

    if-nez v1, :cond_0

    .line 3
    iget-object p1, v0, Landroid/support/v7/widget/RecyclerView$n;->b:Landroid/graphics/Rect;

    return-object p1

    .line 4
    :cond_0
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$n;->b:Landroid/graphics/Rect;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 6
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->m:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    .line 7
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 8
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->m:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$k;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v5, v6, p1, p0, v7}, Landroid/support/v7/widget/RecyclerView$k;->b(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$w;)V

    .line 9
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 10
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v7, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v7

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 11
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v7, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v7

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 12
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_1
    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$n;->c:Z

    return-object v1
.end method

.method k0()V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v7/widget/d;

    new-instance v1, Landroid/support/v7/widget/RecyclerView$e;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerView$e;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/d;-><init>(Landroid/support/v7/widget/d$a;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/d;

    return-void
.end method

.method m0()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Landroid/support/v4/widget/EdgeEffectCompat;

    return-void
.end method

.method n0()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->j()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/r;->i(I)Landroid/view/View;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$n;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/RecyclerView$n;->c:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$r;->t()V

    return-void
.end method

.method o0()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->j()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/r;->i(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$z;->F()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x6

    .line 4
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$z;->e(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->n0()V

    .line 6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$r;->u()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Z

    .line 4
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1, p0}, Landroid/support/v7/widget/RecyclerView$m;->i0(Landroid/support/v7/widget/RecyclerView;)V

    .line 6
    :cond_0
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->S:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$i;->o()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Z

    .line 5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->N0()V

    .line 6
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Z

    .line 7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$m;->k0(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;)V

    .line 9
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->V:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$k;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v2, p1, p0, v3}, Landroid/support/v7/widget/RecyclerView$k;->d(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$w;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->W(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->M()V

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$m;->l()Z

    move-result v0

    .line 4
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$m;->m()Z

    move-result v2

    .line 5
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/view/VelocityTracker;

    if-nez v3, :cond_1

    .line 6
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/view/VelocityTracker;

    .line 7
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 8
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    .line 9
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    if-eqz v3, :cond_c

    if-eq v3, v1, :cond_b

    if-eq v3, v5, :cond_5

    const/4 v0, 0x3

    if-eq v3, v0, :cond_4

    const/4 v0, 0x5

    if-eq v3, v0, :cond_3

    const/4 v0, 0x6

    if-eq v3, v0, :cond_2

    goto/16 :goto_3

    .line 10
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->x0(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 11
    :cond_3
    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->D:I

    .line 12
    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->H:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->F:I

    .line 13
    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->G:I

    goto/16 :goto_3

    .line 14
    :cond_4
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->M()V

    goto/16 :goto_3

    .line 15
    :cond_5
    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->D:I

    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    if-gez v3, :cond_6

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->D:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecyclerView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 17
    :cond_6
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    add-float/2addr v4, v7

    float-to-int v4, v4

    .line 18
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    .line 19
    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->C:I

    if-eq v3, v1, :cond_d

    .line 20
    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->F:I

    sub-int/2addr v4, v3

    .line 21
    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->G:I

    sub-int/2addr p1, v3

    const/4 v3, -0x1

    if-eqz v0, :cond_8

    .line 22
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    if-le v0, v5, :cond_8

    .line 23
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->F:I

    if-gez v4, :cond_7

    move v4, v3

    goto :goto_0

    :cond_7
    move v4, v1

    :goto_0
    mul-int/2addr v5, v4

    add-int/2addr v0, v5

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->H:I

    move v0, v1

    goto :goto_1

    :cond_8
    move v0, v6

    :goto_1
    if-eqz v2, :cond_a

    .line 24
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    if-le v2, v4, :cond_a

    .line 25
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->G:I

    if-gez p1, :cond_9

    goto :goto_2

    :cond_9
    move v3, v1

    :goto_2
    mul-int/2addr v4, v3

    add-int/2addr v0, v4

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    move v0, v1

    :cond_a
    if-eqz v0, :cond_d

    .line 26
    invoke-direct {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto :goto_3

    .line 27
    :cond_b
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_3

    .line 28
    :cond_c
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->D:I

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->H:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->F:I

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->G:I

    .line 31
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->C:I

    if-ne p1, v5, :cond_d

    .line 32
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 33
    invoke-direct {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 34
    :cond_d
    :goto_3
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->C:I

    if-ne p1, v1, :cond_e

    goto :goto_4

    :cond_e
    move v1, v6

    :goto_4
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->X()V

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->U()V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->H0(Z)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->q:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->X()V

    .line 3
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->A0()V

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$w;->e(Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView$w;->h(Landroid/support/v7/widget/RecyclerView$w;Z)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->j()V

    .line 7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$w;->h(Landroid/support/v7/widget/RecyclerView$w;Z)Z

    .line 8
    :goto_0
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Z

    .line 9
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->H0(Z)V

    .line 10
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$f;

    if-eqz v0, :cond_2

    .line 11
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$f;->c()I

    move-result v0

    iput v0, v2, Landroid/support/v7/widget/RecyclerView$w;->f:I

    goto :goto_1

    .line 12
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$w;->f:I

    .line 13
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    if-nez v0, :cond_3

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->Q(II)V

    goto :goto_2

    .line 15
    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0, v2, v3, p1, p2}, Landroid/support/v7/widget/RecyclerView$m;->z0(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$w;II)V

    .line 16
    :goto_2
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-static {p1, v1}, Landroid/support/v7/widget/RecyclerView$w;->h(Landroid/support/v7/widget/RecyclerView$w;Z)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/support/v7/widget/RecyclerView$u;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/RecyclerView$u;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/RecyclerView$u;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$m;->C0(Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v7/widget/RecyclerView$u;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView$u;-><init>(Landroid/os/Parcelable;)V

    .line 2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/RecyclerView$u;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$u;->a(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$u;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$m;->D0()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/os/Parcelable;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/os/Parcelable;

    :goto_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->m0()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->V(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->M()V

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$m;->l()Z

    move-result v0

    .line 4
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$m;->m()Z

    move-result v2

    .line 5
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/view/VelocityTracker;

    if-nez v3, :cond_1

    .line 6
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/view/VelocityTracker;

    .line 7
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 8
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    .line 9
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    if-eqz v3, :cond_15

    if-eq v3, v1, :cond_f

    const/4 v7, 0x2

    if-eq v3, v7, :cond_5

    const/4 v0, 0x3

    if-eq v3, v0, :cond_4

    const/4 v0, 0x5

    if-eq v3, v0, :cond_3

    const/4 v0, 0x6

    if-eq v3, v0, :cond_2

    goto/16 :goto_6

    .line 10
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->x0(Landroid/view/MotionEvent;)V

    goto/16 :goto_6

    .line 11
    :cond_3
    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->D:I

    .line 12
    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->H:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->F:I

    .line 13
    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    add-float/2addr p1, v5

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->G:I

    goto/16 :goto_6

    .line 14
    :cond_4
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->M()V

    goto/16 :goto_6

    .line 15
    :cond_5
    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->D:I

    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    if-gez v3, :cond_6

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->D:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecyclerView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 17
    :cond_6
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 18
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    add-float/2addr p1, v5

    float-to-int p1, p1

    .line 19
    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->C:I

    if-eq v3, v1, :cond_b

    .line 20
    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->F:I

    sub-int v3, v4, v3

    .line 21
    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->G:I

    sub-int v5, p1, v5

    const/4 v7, -0x1

    if-eqz v0, :cond_8

    .line 22
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    if-le v8, v9, :cond_8

    .line 23
    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->F:I

    if-gez v3, :cond_7

    move v3, v7

    goto :goto_0

    :cond_7
    move v3, v1

    :goto_0
    mul-int/2addr v9, v3

    add-int/2addr v8, v9

    iput v8, p0, Landroid/support/v7/widget/RecyclerView;->H:I

    move v3, v1

    goto :goto_1

    :cond_8
    move v3, v6

    :goto_1
    if-eqz v2, :cond_a

    .line 24
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    if-le v8, v9, :cond_a

    .line 25
    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->G:I

    if-gez v5, :cond_9

    goto :goto_2

    :cond_9
    move v7, v1

    :goto_2
    mul-int/2addr v9, v7

    add-int/2addr v3, v9

    iput v3, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    move v3, v1

    :cond_a
    if-eqz v3, :cond_b

    .line 26
    invoke-direct {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 27
    :cond_b
    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->C:I

    if-ne v3, v1, :cond_e

    .line 28
    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->H:I

    sub-int v3, v4, v3

    .line 29
    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    sub-int v5, p1, v5

    if-eqz v0, :cond_c

    neg-int v0, v3

    goto :goto_3

    :cond_c
    move v0, v6

    :goto_3
    if-eqz v2, :cond_d

    neg-int v6, v5

    .line 30
    :cond_d
    invoke-virtual {p0, v0, v6}, Landroid/support/v7/widget/RecyclerView;->J0(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 31
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 32
    :cond_e
    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->H:I

    .line 33
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    goto :goto_6

    .line 34
    :cond_f
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 p1, 0x0

    if-eqz v0, :cond_10

    .line 35
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/view/VelocityTracker;

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->D:I

    invoke-static {v0, v3}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    neg-float v0, v0

    goto :goto_4

    :cond_10
    move v0, p1

    :goto_4
    if-eqz v2, :cond_11

    .line 36
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/view/VelocityTracker;

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->D:I

    invoke-static {v2, v3}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v2

    neg-float v2, v2

    goto :goto_5

    :cond_11
    move v2, p1

    :goto_5
    cmpl-float v3, v0, p1

    if-nez v3, :cond_12

    cmpl-float p1, v2, p1

    if-eqz p1, :cond_13

    :cond_12
    float-to-int p1, v0

    float-to-int v0, v2

    .line 37
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->e0(II)Z

    move-result p1

    if-nez p1, :cond_14

    .line 38
    :cond_13
    invoke-direct {p0, v6}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 39
    :cond_14
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 40
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->E0()V

    goto :goto_6

    .line 41
    :cond_15
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->D:I

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->H:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->F:I

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v5

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->G:I

    :goto_6
    return v1
.end method

.method public q0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->g()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/r;->f(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->g()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/r;->f(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->h()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->F()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->T(Landroid/view/View;)V

    .line 7
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0, p0, v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$m;->A0(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$w;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/graphics/Rect;

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$m;->P0(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Z

    :goto_0
    return-void
.end method

.method s0(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->j()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/r;->i(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$z;->F()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v3, Landroid/support/v7/widget/RecyclerView$z;->b:I

    if-lt v4, p1, :cond_0

    .line 4
    invoke-virtual {v3, p2, v1}, Landroid/support/v7/widget/RecyclerView$z;->y(IZ)V

    .line 5
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/support/v7/widget/RecyclerView$w;->d(Landroid/support/v7/widget/RecyclerView$w;Z)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$r;->v(II)V

    .line 7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public scrollBy(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    if-nez v0, :cond_0

    const-string p1, "RecyclerView"

    const-string p2, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$m;->l()Z

    move-result v0

    .line 4
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$m;->m()Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_4

    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move p2, v2

    .line 5
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->J0(II)Z

    :cond_4
    return-void
.end method

.method public scrollTo(II)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "RecyclerView does not support scrolling to an absolute position."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAccessibilityDelegateCompat(Landroid/support/v7/widget/g0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/g0;

    .line 2
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$f;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->K0(Landroid/support/v7/widget/RecyclerView$f;ZZ)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    if-eq p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->m0()V

    .line 3
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 5
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->q:Z

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    return-void
.end method

.method public setItemAnimator(Landroid/support/v7/widget/RecyclerView$i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$i;->o()V

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$i;->E(Landroid/support/v7/widget/RecyclerView$i$b;)V

    .line 4
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$i;

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->R:Landroid/support/v7/widget/RecyclerView$i$b;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$i;->E(Landroid/support/v7/widget/RecyclerView$i$b;)V

    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$r;->I(I)V

    return-void
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$m;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_2

    .line 2
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->p:Z

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$m;->k0(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$r;)V

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$m;->U0(Landroid/support/v7/widget/RecyclerView;)V

    .line 5
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$r;->d()V

    .line 6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->n()V

    .line 7
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    if-eqz p1, :cond_4

    .line 8
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_3

    .line 9
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView$m;->U0(Landroid/support/v7/widget/RecyclerView;)V

    .line 10
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->p:Z

    if-eqz p1, :cond_4

    .line 11
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView$m;->i0(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0

    .line 12
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already attached to a RecyclerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$m;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setOnScrollListener(Landroid/support/v7/widget/RecyclerView$p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->O:Landroid/support/v7/widget/RecyclerView$p;

    return-void
.end method

.method public setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$q;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$r;->G(Landroid/support/v7/widget/RecyclerView$q;)V

    return-void
.end method

.method public setRecyclerListener(Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->l:Landroid/support/v7/widget/RecyclerView$s;

    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; using default value"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RecyclerView"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    :goto_1
    return-void
.end method

.method public setViewCacheExtension(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$r;->H(Landroid/support/v7/widget/RecyclerView$x;)V

    return-void
.end method

.method t0(II)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->j()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, p2, :cond_0

    const/4 v2, -0x1

    move v3, p1

    move v4, p2

    goto :goto_0

    :cond_0
    move v4, p1

    move v3, p2

    move v2, v1

    :goto_0
    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v0, :cond_4

    .line 2
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/r;->i(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 3
    iget v8, v7, Landroid/support/v7/widget/RecyclerView$z;->b:I

    if-lt v8, v3, :cond_3

    if-le v8, v4, :cond_1

    goto :goto_3

    :cond_1
    if-ne v8, p1, :cond_2

    sub-int v8, p2, p1

    .line 4
    invoke-virtual {v7, v8, v5}, Landroid/support/v7/widget/RecyclerView$z;->y(IZ)V

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {v7, v2, v5}, Landroid/support/v7/widget/RecyclerView$z;->y(IZ)V

    .line 6
    :goto_2
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-static {v7, v1}, Landroid/support/v7/widget/RecyclerView$w;->d(Landroid/support/v7/widget/RecyclerView$w;Z)Z

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 7
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$r;->w(II)V

    .line 8
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method u0(IIZ)V
    .locals 7

    add-int v0, p1, p2

    .line 1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v1}, Landroid/support/v7/widget/r;->j()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/r;->i(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$z;->F()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4
    iget v4, v3, Landroid/support/v7/widget/RecyclerView$z;->b:I

    const/4 v5, 0x1

    if-lt v4, v0, :cond_0

    neg-int v4, p2

    .line 5
    invoke-virtual {v3, v4, p3}, Landroid/support/v7/widget/RecyclerView$z;->y(IZ)V

    .line 6
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-static {v3, v5}, Landroid/support/v7/widget/RecyclerView$w;->d(Landroid/support/v7/widget/RecyclerView$w;Z)Z

    goto :goto_1

    :cond_0
    if-lt v4, p1, :cond_1

    add-int/lit8 v4, p1, -0x1

    neg-int v6, p2

    .line 7
    invoke-virtual {v3, v4, v6, p3}, Landroid/support/v7/widget/RecyclerView$z;->j(IIZ)V

    .line 8
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-static {v3, v5}, Landroid/support/v7/widget/RecyclerView$w;->d(Landroid/support/v7/widget/RecyclerView$w;Z)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$r;->x(IIZ)V

    .line 10
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public v0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public w0(Landroid/view/View;)V
    .locals 0

    return-void
.end method
