.class Lc/b/a/r/h/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/r/h/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/r/h/k$a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/a/r/h/h;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lc/b/a/r/h/k$a$a;

.field private d:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/b/a/r/h/k$a;->b:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lc/b/a/r/h/k$a;->a:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lc/b/a/r/h/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/b/a/r/h/k$a;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/b/a/r/h/k$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lc/b/a/r/h/k$a;->g()I

    move-result v0

    .line 3
    invoke-direct {p0}, Lc/b/a/r/h/k$a;->f()I

    move-result v1

    .line 4
    invoke-direct {p0, v0}, Lc/b/a/r/h/k$a;->h(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1}, Lc/b/a/r/h/k$a;->h(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0, v0, v1}, Lc/b/a/r/h/k$a;->i(II)V

    .line 6
    iget-object v0, p0, Lc/b/a/r/h/k$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Lc/b/a/r/h/k$a;->c:Lc/b/a/r/h/k$a$a;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lc/b/a/r/h/k$a;->c:Lc/b/a/r/h/k$a$a;

    :cond_3
    :goto_0
    return-void
.end method

.method private c()Landroid/graphics/Point;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/r/h/k$a;->d:Landroid/graphics/Point;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lc/b/a/r/h/k$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_1

    .line 5
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lc/b/a/r/h/k$a;->d:Landroid/graphics/Point;

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lc/b/a/r/h/k$a;->d:Landroid/graphics/Point;

    .line 8
    :goto_0
    iget-object v0, p0, Lc/b/a/r/h/k$a;->d:Landroid/graphics/Point;

    return-object v0
.end method

.method private e(IZ)I
    .locals 1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 1
    invoke-direct {p0}, Lc/b/a/r/h/k$a;->c()Landroid/graphics/Point;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 2
    iget p1, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/graphics/Point;->x:I

    :cond_1
    :goto_0
    return p1
.end method

.method private f()I
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/r/h/k$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lc/b/a/r/h/k$a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lc/b/a/r/h/k$a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lc/b/a/r/h/k$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lc/b/a/r/h/k$a;->e(IZ)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private g()I
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/r/h/k$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lc/b/a/r/h/k$a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-direct {p0, v1}, Lc/b/a/r/h/k$a;->h(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lc/b/a/r/h/k$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {p0, v0, v1}, Lc/b/a/r/h/k$a;->e(IZ)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method private h(I)Z
    .locals 1

    if-gtz p1, :cond_1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private i(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/r/h/k$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/a/r/h/h;

    .line 2
    invoke-interface {v1, p1, p2}, Lc/b/a/r/h/h;->h(II)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lc/b/a/r/h/k$a;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public d(Lc/b/a/r/h/h;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lc/b/a/r/h/k$a;->g()I

    move-result v0

    .line 2
    invoke-direct {p0}, Lc/b/a/r/h/k$a;->f()I

    move-result v1

    .line 3
    invoke-direct {p0, v0}, Lc/b/a/r/h/k$a;->h(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lc/b/a/r/h/k$a;->h(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {p1, v0, v1}, Lc/b/a/r/h/h;->h(II)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lc/b/a/r/h/k$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lc/b/a/r/h/k$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    iget-object p1, p0, Lc/b/a/r/h/k$a;->c:Lc/b/a/r/h/k$a$a;

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lc/b/a/r/h/k$a;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 9
    new-instance v0, Lc/b/a/r/h/k$a$a;

    invoke-direct {v0, p0}, Lc/b/a/r/h/k$a$a;-><init>(Lc/b/a/r/h/k$a;)V

    iput-object v0, p0, Lc/b/a/r/h/k$a;->c:Lc/b/a/r/h/k$a$a;

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    :goto_0
    return-void
.end method
