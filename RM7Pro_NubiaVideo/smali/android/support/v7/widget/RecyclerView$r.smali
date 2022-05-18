.class public final Landroid/support/v7/widget/RecyclerView$r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "r"
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$z;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$z;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$z;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/widget/RecyclerView$z;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Landroid/support/v7/widget/RecyclerView$q;

.field private g:Landroid/support/v7/widget/RecyclerView$x;

.field final synthetic h:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$r;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->b:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    .line 5
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$r;->d:Ljava/util/List;

    const/4 p1, 0x2

    .line 6
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$r;->e:I

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$r;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$r;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method private c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->s(Landroid/support/v7/widget/RecyclerView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->s(Landroid/support/v7/widget/RecyclerView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 4
    :cond_0
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->t(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/g0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/g0;->a()Landroid/support/v4/view/AccessibilityDelegateCompat;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    :cond_1
    return-void
.end method

.method private r(Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 1

    .line 1
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$r;->s(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method

.method private s(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 4
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v1}, Landroid/support/v7/widget/RecyclerView$r;->s(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method A()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$r;->B(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method B(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$z;

    .line 2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$r;->b(Landroid/support/v7/widget/RecyclerView$z;)V

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public C(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->v()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->G()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->H()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->g()V

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$r;->D(Landroid/support/v7/widget/RecyclerView$z;)V

    return-void
.end method

.method D(Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$z;->v()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_9

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$z;->w()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$z;->F()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$z;->a(Landroid/support/v7/widget/RecyclerView$z;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$f;->l(Landroid/support/v7/widget/RecyclerView$z;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$z;->t()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$z;->s()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$w;->g(Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$z;->u()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$z;->r()Z

    move-result v0

    if-nez v0, :cond_5

    .line 7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8
    iget v3, p0, Landroid/support/v7/widget/RecyclerView$r;->e:I

    if-ne v0, v3, :cond_4

    if-lez v0, :cond_4

    .line 9
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$r;->B(I)V

    .line 10
    :cond_4
    iget v3, p0, Landroid/support/v7/widget/RecyclerView$r;->e:I

    if-ge v0, v3, :cond_5

    .line 11
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    if-nez v1, :cond_6

    .line 12
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$r;->b(Landroid/support/v7/widget/RecyclerView$z;)V

    .line 13
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$w;->p(Landroid/support/v7/widget/RecyclerView$z;)V

    return-void

    .line 14
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_9
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$z;->v()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_a
    move v1, v2

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method E(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView$z;->D(Landroid/support/v7/widget/RecyclerView$r;)V

    .line 3
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$z;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->j(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->b:Ljava/util/ArrayList;

    .line 6
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$z;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$z;->u()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$f;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_4
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method F()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$z;

    if-eqz v2, :cond_0

    const/16 v3, 0x200

    .line 3
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$z;->e(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method G(Landroid/support/v7/widget/RecyclerView$q;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->f:Landroid/support/v7/widget/RecyclerView$q;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$q;->c()V

    .line 3
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$r;->f:Landroid/support/v7/widget/RecyclerView$q;

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$f;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$q;->a(Landroid/support/v7/widget/RecyclerView$f;)V

    :cond_1
    return-void
.end method

.method H(Landroid/support/v7/widget/RecyclerView$x;)V
    .locals 0

    return-void
.end method

.method public I(I)V
    .locals 2

    .line 1
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$r;->e:I

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$r;->B(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method J(Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$z;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->j(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Landroid/support/v7/widget/RecyclerView$z;->b(Landroid/support/v7/widget/RecyclerView$z;Landroid/support/v7/widget/RecyclerView$r;)Landroid/support/v7/widget/RecyclerView$r;

    .line 5
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$z;->g()V

    return-void
.end method

.method K(Landroid/support/v7/widget/RecyclerView$z;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$z;->u()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p1, Landroid/support/v7/widget/RecyclerView$z;->b:I

    if-ltz v0, :cond_4

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$f;->c()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->o()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object v0

    iget v3, p1, Landroid/support/v7/widget/RecyclerView$z;->b:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$f;->e(I)I

    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$z;->m()I

    move-result v3

    if-eq v0, v3, :cond_1

    return v2

    .line 6
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$f;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$z;->l()J

    move-result-wide v3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object v0

    iget p1, p1, Landroid/support/v7/widget/RecyclerView$z;->b:I

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$f;->d(I)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    return v1

    .line 8
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method L(II)V
    .locals 4

    add-int/2addr p2, p1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$z;

    if-nez v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$z;->n()I

    move-result v3

    if-lt v3, p1, :cond_1

    if-ge v3, p2, :cond_1

    const/4 v3, 0x2

    .line 4
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$z;->e(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method b(Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$r;->j()Landroid/support/v7/widget/RecyclerView$q;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$q;->g(Landroid/support/v7/widget/RecyclerView$z;)V

    .line 3
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$r;->h(Landroid/support/v7/widget/RecyclerView$z;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$r;->A()V

    return-void
.end method

.method e()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$z;

    .line 3
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$z;->f()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    .line 5
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$r;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$z;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$z;->f()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 8
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$r;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$z;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$z;->f()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method f()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public g(I)I
    .locals 3

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->l()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/d;->m(I)I

    move-result p1

    return p1

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". State "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "item count is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->l()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method h(Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->u(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->u(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$s;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$s;->a(Landroid/support/v7/widget/RecyclerView$z;)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$f;->o(Landroid/support/v7/widget/RecyclerView$z;)V

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$w;->p(Landroid/support/v7/widget/RecyclerView$z;)V

    :cond_2
    return-void
.end method

.method i(I)Landroid/support/v7/widget/RecyclerView$z;
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_2

    .line 2
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$r;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$z;

    .line 3
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$z;->H()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$z;->n()I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 4
    invoke-virtual {v5, v4}, Landroid/support/v7/widget/RecyclerView$z;->e(I)V

    return-object v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$f;->f()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/d;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/d;->m(I)I

    move-result p1

    if-lez p1, :cond_4

    .line 7
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$f;->c()I

    move-result v3

    if-ge p1, v3, :cond_4

    .line 8
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/RecyclerView$f;->d(I)J

    move-result-wide v5

    :goto_1
    if-ge v2, v0, :cond_4

    .line 9
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$r;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$z;

    .line 10
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$z;->H()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$z;->l()J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-nez v3, :cond_3

    .line 11
    invoke-virtual {p1, v4}, Landroid/support/v7/widget/RecyclerView$z;->e(I)V

    return-object p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v1
.end method

.method j()Landroid/support/v7/widget/RecyclerView$q;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->f:Landroid/support/v7/widget/RecyclerView$q;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v7/widget/RecyclerView$q;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$q;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->f:Landroid/support/v7/widget/RecyclerView$q;

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->f:Landroid/support/v7/widget/RecyclerView$q;

    return-object v0
.end method

.method k()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/RecyclerView$z;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->d:Ljava/util/List;

    return-object v0
.end method

.method m(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$z;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    return-object p1
.end method

.method n(JIZ)Landroid/support/v7/widget/RecyclerView$z;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$z;

    .line 3
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$z;->l()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$z;->H()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$z;->m()I

    move-result v2

    if-ne p3, v2, :cond_1

    const/16 p1, 0x20

    .line 5
    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$z;->e(I)V

    .line 6
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$z;->u()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->o()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    const/16 p2, 0xe

    .line 8
    invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$z;->B(II)V

    :cond_0
    return-object v1

    :cond_1
    if-nez p4, :cond_2

    .line 9
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$r;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 10
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 11
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$r;->z(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_7

    .line 13
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$z;

    .line 14
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$z;->l()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_6

    .line 15
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$z;->m()I

    move-result v2

    if-ne p3, v2, :cond_5

    if-nez p4, :cond_4

    .line 16
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    return-object v1

    :cond_5
    if-nez p4, :cond_6

    .line 17
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$r;->B(I)V

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method o(IIZ)Landroid/support/v7/widget/RecyclerView$z;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$r;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$z;

    .line 3
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$z;->H()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$z;->n()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$z;->s()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView$w;->g(Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$z;->u()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 4
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$z;->m()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scrap view for position "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isn\'t dirty but has"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " wrong view type! (found "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$z;->m()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but expected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RecyclerView"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const/16 p1, 0x20

    .line 6
    invoke-virtual {v3, p1}, Landroid/support/v7/widget/RecyclerView$z;->e(I)V

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-nez p3, :cond_4

    .line 7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/r;->e(II)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$i;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView;->h0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/support/v7/widget/RecyclerView$i;->n(Landroid/support/v7/widget/RecyclerView$z;)V

    .line 9
    :cond_4
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_2
    if-ge v1, p2, :cond_7

    .line 10
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$z;

    .line 11
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->s()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->n()I

    move-result v2

    if-ne v2, p1, :cond_6

    if-nez p3, :cond_5

    .line 12
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    return-object v0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public p(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$r;->q(IZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method q(IZ)Landroid/view/View;
    .locals 8

    if-ltz p1, :cond_16

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->l()I

    move-result v0

    if-ge p1, v0, :cond_16

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->o()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$r;->i(I)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v0

    if-eqz v0, :cond_1

    move v4, v2

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    move v4, v3

    :goto_0
    if-nez v0, :cond_5

    const/4 v0, -0x1

    .line 4
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v7/widget/RecyclerView$r;->o(IIZ)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$r;->K(Landroid/support/v7/widget/RecyclerView$z;)Z

    move-result v5

    if-nez v5, :cond_4

    if-nez p2, :cond_6

    const/4 v5, 0x4

    .line 6
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView$z;->e(I)V

    .line 7
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->v()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-virtual {v5, v6, v3}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 9
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->G()V

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->H()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 11
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$z;->g()V

    .line 12
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$r;->D(Landroid/support/v7/widget/RecyclerView$z;)V

    goto :goto_2

    :cond_4
    move-object v1, v0

    move v4, v2

    goto :goto_2

    :cond_5
    move-object v1, v0

    :cond_6
    :goto_2
    if-nez v1, :cond_e

    .line 13
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/d;->m(I)I

    move-result v0

    if-ltz v0, :cond_d

    .line 14
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$f;->c()I

    move-result v5

    if-ge v0, v5, :cond_d

    .line 15
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/RecyclerView$f;->e(I)I

    move-result v5

    .line 16
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$f;->f()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 17
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$f;->d(I)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7, v5, p2}, Landroid/support/v7/widget/RecyclerView$r;->n(JIZ)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 18
    iput v0, v1, Landroid/support/v7/widget/RecyclerView$z;->b:I

    move v4, v2

    :cond_7
    if-nez v1, :cond_a

    .line 19
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$r;->g:Landroid/support/v7/widget/RecyclerView$x;

    if-eqz p2, :cond_a

    .line 20
    invoke-virtual {p2, p0, p1, v5}, Landroid/support/v7/widget/RecyclerView$x;->a(Landroid/support/v7/widget/RecyclerView$r;II)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 21
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p2}, Landroid/support/v7/widget/RecyclerView;->h0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 22
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$z;->F()Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_3

    .line 23
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_3
    if-nez v1, :cond_c

    .line 25
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$r;->j()Landroid/support/v7/widget/RecyclerView$q;

    move-result-object p2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$f;->e(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView$q;->d(I)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 26
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$z;->z()V

    .line 27
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->r()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 28
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$r;->r(Landroid/support/v7/widget/RecyclerView$z;)V

    :cond_b
    move-object v1, p2

    :cond_c
    if-nez v1, :cond_e

    .line 29
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p2}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object p2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/RecyclerView$f;->e(I)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Landroid/support/v7/widget/RecyclerView$f;->b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v1

    goto :goto_4

    .line 30
    :cond_d
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "(offset:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "state:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->l()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 31
    :cond_e
    :goto_4
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$w;->o()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$z;->q()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 32
    iput p1, v1, Landroid/support/v7/widget/RecyclerView$z;->f:I

    goto :goto_5

    .line 33
    :cond_f
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$z;->q()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$z;->x()Z

    move-result p2

    if-nez p2, :cond_11

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$z;->s()Z

    move-result p2

    if-eqz p2, :cond_10

    goto :goto_6

    :cond_10
    :goto_5
    move p1, v3

    goto :goto_7

    .line 34
    :cond_11
    :goto_6
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/d;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/d;->m(I)I

    move-result p2

    .line 35
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Landroid/support/v7/widget/RecyclerView$f;->a(Landroid/support/v7/widget/RecyclerView$z;I)V

    .line 36
    iget-object p2, v1, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$r;->c(Landroid/view/View;)V

    .line 37
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$w;->o()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 38
    iput p1, v1, Landroid/support/v7/widget/RecyclerView$z;->f:I

    :cond_12
    move p1, v2

    .line 39
    :goto_7
    iget-object p2, v1, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_13

    .line 40
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView$n;

    .line 41
    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    .line 42
    :cond_13
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 43
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView$n;

    .line 44
    iget-object v0, v1, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    .line 45
    :cond_14
    check-cast p2, Landroid/support/v7/widget/RecyclerView$n;

    .line 46
    :goto_8
    iput-object v1, p2, Landroid/support/v7/widget/RecyclerView$n;->a:Landroid/support/v7/widget/RecyclerView$z;

    if-eqz v4, :cond_15

    if-eqz p1, :cond_15

    goto :goto_9

    :cond_15
    move v2, v3

    .line 47
    :goto_9
    iput-boolean v2, p2, Landroid/support/v7/widget/RecyclerView$n;->d:Z

    .line 48
    iget-object p1, v1, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    return-object p1

    .line 49
    :cond_16
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid item position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "). Item count:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->l()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method t()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$z;

    .line 3
    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$n;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 4
    iput-boolean v3, v2, Landroid/support/v7/widget/RecyclerView$n;->c:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method u()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$f;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$z;

    if-eqz v2, :cond_0

    const/4 v3, 0x6

    .line 4
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$z;->e(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$r;->A()V

    :cond_2
    return-void
.end method

.method v(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$z;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$z;->n()I

    move-result v3

    if-lt v3, p1, :cond_0

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v2, p2, v3}, Landroid/support/v7/widget/RecyclerView$z;->y(IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method w(II)V
    .locals 8

    if-ge p1, p2, :cond_0

    const/4 v0, -0x1

    move v1, p1

    move v2, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move v2, p1

    move v1, p2

    .line 1
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_4

    .line 2
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$z;

    if-eqz v6, :cond_3

    .line 3
    iget v7, v6, Landroid/support/v7/widget/RecyclerView$z;->b:I

    if-lt v7, v1, :cond_3

    if-le v7, v2, :cond_1

    goto :goto_2

    :cond_1
    if-ne v7, p1, :cond_2

    sub-int v7, p2, p1

    .line 4
    invoke-virtual {v6, v7, v4}, Landroid/support/v7/widget/RecyclerView$z;->y(IZ)V

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {v6, v0, v4}, Landroid/support/v7/widget/RecyclerView$z;->y(IZ)V

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method x(IIZ)V
    .locals 4

    add-int v0, p1, p2

    .line 1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$z;

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$z;->n()I

    move-result v3

    if-lt v3, v0, :cond_0

    neg-int v3, p2

    .line 4
    invoke-virtual {v2, v3, p3}, Landroid/support/v7/widget/RecyclerView$z;->y(IZ)V

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$z;->n()I

    move-result v2

    if-lt v2, p1, :cond_1

    .line 6
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$r;->B(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method y(Landroid/support/v7/widget/RecyclerView$f;Landroid/support/v7/widget/RecyclerView$f;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$r;->d()V

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$r;->j()Landroid/support/v7/widget/RecyclerView$q;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$q;->f(Landroid/support/v7/widget/RecyclerView$f;Landroid/support/v7/widget/RecyclerView$f;Z)V

    return-void
.end method

.method z(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->i0(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Landroid/support/v7/widget/RecyclerView$z;->b(Landroid/support/v7/widget/RecyclerView$z;Landroid/support/v7/widget/RecyclerView$r;)Landroid/support/v7/widget/RecyclerView$r;

    .line 3
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$z;->g()V

    .line 4
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$r;->D(Landroid/support/v7/widget/RecyclerView$z;)V

    return-void
.end method
