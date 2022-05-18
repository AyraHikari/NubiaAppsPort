.class Landroidx/core/f/u$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/f/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# static fields
.field private static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroidx/core/f/u$g;->a:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 4237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4245
    iput-object v0, p0, Landroidx/core/f/u$g;->b:Ljava/util/WeakHashMap;

    .line 4250
    iput-object v0, p0, Landroidx/core/f/u$g;->c:Landroid/util/SparseArray;

    .line 4256
    iput-object v0, p0, Landroidx/core/f/u$g;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .line 4259
    iget-object v0, p0, Landroidx/core/f/u$g;->c:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 4260
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/core/f/u$g;->c:Landroid/util/SparseArray;

    .line 4262
    :cond_0
    iget-object v0, p0, Landroidx/core/f/u$g;->c:Landroid/util/SparseArray;

    return-object v0
.end method

.method static a(Landroid/view/View;)Landroidx/core/f/u$g;
    .locals 2

    .line 4266
    sget v0, Landroidx/core/a$b;->N:I

    .line 4267
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/f/u$g;

    if-nez v0, :cond_0

    .line 4269
    new-instance v0, Landroidx/core/f/u$g;

    invoke-direct {v0}, Landroidx/core/f/u$g;-><init>()V

    .line 4270
    sget v1, Landroidx/core/a$b;->N:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private b(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;
    .locals 4

    .line 4295
    iget-object v0, p0, Landroidx/core/f/u$g;->b:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4298
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 4299
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 4301
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 4302
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4303
    invoke-direct {p0, v3, p2}, Landroidx/core/f/u$g;->b(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4309
    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/core/f/u$g;->c(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-object p1

    :cond_3
    :goto_1
    return-object v1
.end method

.method private b()V
    .locals 6

    .line 4394
    iget-object v0, p0, Landroidx/core/f/u$g;->b:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_0

    .line 4395
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 4397
    :cond_0
    sget-object v0, Landroidx/core/f/u$g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 4400
    :cond_1
    monitor-enter v0

    .line 4401
    :try_start_0
    iget-object v1, p0, Landroidx/core/f/u$g;->b:Ljava/util/WeakHashMap;

    if-nez v1, :cond_2

    .line 4402
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Landroidx/core/f/u$g;->b:Ljava/util/WeakHashMap;

    .line 4404
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_5

    .line 4405
    sget-object v2, Landroidx/core/f/u$g;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 4406
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-nez v3, :cond_3

    .line 4408
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 4410
    :cond_3
    iget-object v2, p0, Landroidx/core/f/u$g;->b:Ljava/util/WeakHashMap;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4411
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 4412
    :goto_1
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_4

    .line 4413
    iget-object v3, p0, Landroidx/core/f/u$g;->b:Ljava/util/WeakHashMap;

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4414
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4418
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private c(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 4

    .line 4354
    sget v0, Landroidx/core/a$b;->O:I

    .line 4356
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 4358
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 4359
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/f/u$f;

    invoke-interface {v3, p1, p2}, Landroidx/core/f/u$f;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method a(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 4321
    iget-object v0, p0, Landroidx/core/f/u$g;->d:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4322
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return v1

    .line 4325
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/core/f/u$g;->d:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 4330
    invoke-direct {p0}, Landroidx/core/f/u$g;->a()Landroid/util/SparseArray;

    move-result-object v2

    .line 4331
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 4332
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_1

    .line 4334
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 4335
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_1
    if-nez v0, :cond_2

    .line 4339
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    :cond_2
    if-eqz v0, :cond_4

    .line 4342
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3

    .line 4343
    invoke-static {v0}, Landroidx/core/f/u;->s(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4344
    invoke-direct {p0, v0, p1}, Landroidx/core/f/u$g;->c(Landroid/view/View;Landroid/view/KeyEvent;)Z

    :cond_3
    return v4

    :cond_4
    return v1
.end method

.method a(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 2

    .line 4276
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 4277
    invoke-direct {p0}, Landroidx/core/f/u$g;->b()V

    .line 4280
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/core/f/u$g;->b(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;

    move-result-object p1

    .line 4284
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 4285
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    if-eqz p1, :cond_1

    .line 4286
    invoke-static {p2}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4287
    invoke-direct {p0}, Landroidx/core/f/u$g;->a()Landroid/util/SparseArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
