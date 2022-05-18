.class public Landroidx/fragment/app/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/h;
.implements Landroidx/lifecycle/t;
.implements Landroidx/savedstate/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/c$a;,
        Landroidx/fragment/app/c$c;,
        Landroidx/fragment/app/c$b;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/Object;


# instance fields
.field A:Z

.field B:Z

.field C:Z

.field D:Z

.field E:Landroid/view/ViewGroup;

.field F:Landroid/view/View;

.field G:Landroid/view/View;

.field H:Z

.field I:Z

.field J:Landroidx/fragment/app/c$a;

.field K:Ljava/lang/Runnable;

.field L:Z

.field M:Z

.field N:F

.field O:Landroid/view/LayoutInflater;

.field P:Z

.field Q:Landroidx/lifecycle/e$b;

.field R:Landroidx/lifecycle/i;

.field S:Landroidx/fragment/app/r;

.field T:Landroidx/lifecycle/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/m<",
            "Landroidx/lifecycle/h;",
            ">;"
        }
    .end annotation
.end field

.field U:Landroidx/savedstate/b;

.field private V:Ljava/lang/Boolean;

.field private W:Z

.field private X:I

.field b:I

.field c:Landroid/os/Bundle;

.field d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/lang/Boolean;

.field f:Ljava/lang/String;

.field g:Landroid/os/Bundle;

.field h:Landroidx/fragment/app/c;

.field i:Ljava/lang/String;

.field j:I

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field p:Z

.field q:I

.field r:Landroidx/fragment/app/j;

.field s:Landroidx/fragment/app/h;

.field t:Landroidx/fragment/app/j;

.field u:Landroidx/fragment/app/c;

.field v:I

.field w:I

.field x:Ljava/lang/String;

.field y:Z

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/fragment/app/c;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Landroidx/fragment/app/c;->b:I

    .line 117
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/c;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Landroidx/fragment/app/c;->i:Ljava/lang/String;

    .line 132
    iput-object v0, p0, Landroidx/fragment/app/c;->V:Ljava/lang/Boolean;

    .line 165
    new-instance v0, Landroidx/fragment/app/j;

    invoke-direct {v0}, Landroidx/fragment/app/j;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Landroidx/fragment/app/c;->D:Z

    .line 221
    iput-boolean v0, p0, Landroidx/fragment/app/c;->I:Z

    .line 230
    new-instance v0, Landroidx/fragment/app/c$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/c$1;-><init>(Landroidx/fragment/app/c;)V

    iput-object v0, p0, Landroidx/fragment/app/c;->K:Ljava/lang/Runnable;

    .line 260
    sget-object v0, Landroidx/lifecycle/e$b;->e:Landroidx/lifecycle/e$b;

    iput-object v0, p0, Landroidx/fragment/app/c;->Q:Landroidx/lifecycle/e$b;

    .line 267
    new-instance v0, Landroidx/lifecycle/m;

    invoke-direct {v0}, Landroidx/lifecycle/m;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/c;->T:Landroidx/lifecycle/m;

    .line 451
    invoke-direct {p0}, Landroidx/fragment/app/c;->ag()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/c;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ": make sure class name exists, is public, and has an empty constructor that is public"

    const-string v1, "Unable to instantiate fragment "

    .line 522
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 521
    invoke-static {p0, p1}, Landroidx/fragment/app/g;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 523
    invoke-virtual {p0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/c;

    if-eqz p2, :cond_0

    .line 525
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 526
    invoke-virtual {p0, p2}, Landroidx/fragment/app/c;->b(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    .line 541
    new-instance p2, Landroidx/fragment/app/c$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": calling Fragment constructor caused an exception"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/c$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p0

    .line 538
    new-instance p2, Landroidx/fragment/app/c$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": could not find Fragment constructor"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/c$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p0

    .line 534
    new-instance p2, Landroidx/fragment/app/c$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/c$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_3
    move-exception p0

    .line 530
    new-instance p2, Landroidx/fragment/app/c$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/c$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method private ag()V
    .locals 2

    .line 468
    new-instance v0, Landroidx/lifecycle/i;

    invoke-direct {v0, p0}, Landroidx/lifecycle/i;-><init>(Landroidx/lifecycle/h;)V

    iput-object v0, p0, Landroidx/fragment/app/c;->R:Landroidx/lifecycle/i;

    .line 469
    invoke-static {p0}, Landroidx/savedstate/b;->a(Landroidx/savedstate/c;)Landroidx/savedstate/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/c;->U:Landroidx/savedstate/b;

    .line 470
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 471
    iget-object v0, p0, Landroidx/fragment/app/c;->R:Landroidx/lifecycle/i;

    new-instance v1, Landroidx/fragment/app/Fragment$2;

    invoke-direct {v1, p0}, Landroidx/fragment/app/Fragment$2;-><init>(Landroidx/fragment/app/c;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/g;)V

    :cond_0
    return-void
.end method

.method private ah()Landroidx/fragment/app/c$a;
    .locals 1

    .line 2873
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    .line 2874
    new-instance v0, Landroidx/fragment/app/c$a;

    invoke-direct {v0}, Landroidx/fragment/app/c$a;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    .line 2876
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    return-object v0
.end method


# virtual methods
.method public A()V
    .locals 0

    return-void
.end method

.method public B()Ljava/lang/Object;
    .locals 1

    .line 2098
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2101
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/c$a;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public C()Ljava/lang/Object;
    .locals 2

    .line 2137
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2140
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/c$a;->h:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/c;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/c;->B()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    iget-object v0, v0, Landroidx/fragment/app/c$a;->h:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public D()Ljava/lang/Object;
    .locals 1

    .line 2177
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2180
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/c$a;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public E()Ljava/lang/Object;
    .locals 2

    .line 2215
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2218
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/c$a;->j:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/c;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/c;->D()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    iget-object v0, v0, Landroidx/fragment/app/c$a;->j:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public F()Ljava/lang/Object;
    .locals 1

    .line 2248
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2251
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/c$a;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public G()Ljava/lang/Object;
    .locals 2

    .line 2286
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2289
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/c$a;->l:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/c;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 2290
    invoke-virtual {p0}, Landroidx/fragment/app/c;->F()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    iget-object v0, v0, Landroidx/fragment/app/c$a;->l:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public H()Z
    .locals 1

    .line 2315
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/c$a;->n:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    iget-object v0, v0, Landroidx/fragment/app/c$a;->n:Ljava/lang/Boolean;

    .line 2316
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public I()Z
    .locals 1

    .line 2340
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/fragment/app/c$a;->m:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    iget-object v0, v0, Landroidx/fragment/app/c$a;->m:Ljava/lang/Boolean;

    .line 2341
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public J()V
    .locals 2

    .line 2431
    iget-object v0, p0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/j;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2433
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/j;

    iget-object v1, v1, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v1}, Landroidx/fragment/app/h;->m()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2434
    iget-object v0, p0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/j;

    iget-object v0, v0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->m()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/fragment/app/c$2;

    invoke-direct {v1, p0}, Landroidx/fragment/app/c$2;-><init>(Landroidx/fragment/app/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 2441
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/c;->K()V

    goto :goto_1

    .line 2432
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroidx/fragment/app/c;->ah()Landroidx/fragment/app/c$a;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/fragment/app/c$a;->q:Z

    :goto_1
    return-void
.end method

.method K()V
    .locals 3

    .line 2451
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2454
    iput-boolean v2, v0, Landroidx/fragment/app/c$a;->q:Z

    .line 2455
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    iget-object v0, v0, Landroidx/fragment/app/c$a;->r:Landroidx/fragment/app/c$c;

    .line 2456
    iget-object v2, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    iput-object v1, v2, Landroidx/fragment/app/c$a;->r:Landroidx/fragment/app/c$c;

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 2459
    invoke-interface {v1}, Landroidx/fragment/app/c$c;->a()V

    :cond_1
    return-void
.end method

.method L()V
    .locals 3

    .line 2558
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    iget-object v1, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/h;

    new-instance v2, Landroidx/fragment/app/c$3;

    invoke-direct {v2, p0}, Landroidx/fragment/app/c$3;-><init>(Landroidx/fragment/app/c;)V

    invoke-virtual {v0, v1, v2, p0}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/h;Landroidx/fragment/app/e;Landroidx/fragment/app/c;)V

    const/4 v0, 0x0

    .line 2573
    iput-boolean v0, p0, Landroidx/fragment/app/c;->W:Z

    .line 2574
    iget-object v0, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/c;->a(Landroid/content/Context;)V

    .line 2575
    iget-boolean v0, p0, Landroidx/fragment/app/c;->W:Z

    if-eqz v0, :cond_0

    return-void

    .line 2576
    :cond_0
    new-instance v0, Landroidx/fragment/app/s;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method M()V
    .locals 3

    .line 2628
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->n()V

    .line 2629
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->j()Z

    const/4 v0, 0x3

    .line 2630
    iput v0, p0, Landroidx/fragment/app/c;->b:I

    const/4 v0, 0x0

    .line 2631
    iput-boolean v0, p0, Landroidx/fragment/app/c;->W:Z

    .line 2632
    invoke-virtual {p0}, Landroidx/fragment/app/c;->s()V

    .line 2633
    iget-boolean v0, p0, Landroidx/fragment/app/c;->W:Z

    if-eqz v0, :cond_1

    .line 2637
    iget-object v0, p0, Landroidx/fragment/app/c;->R:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    .line 2638
    iget-object v0, p0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2639
    iget-object v0, p0, Landroidx/fragment/app/c;->S:Landroidx/fragment/app/r;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/r;->a(Landroidx/lifecycle/e$a;)V

    .line 2641
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->q()V

    return-void

    .line 2634
    :cond_1
    new-instance v0, Landroidx/fragment/app/s;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method N()V
    .locals 3

    .line 2645
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->n()V

    .line 2646
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->j()Z

    const/4 v0, 0x4

    .line 2647
    iput v0, p0, Landroidx/fragment/app/c;->b:I

    const/4 v0, 0x0

    .line 2648
    iput-boolean v0, p0, Landroidx/fragment/app/c;->W:Z

    .line 2649
    invoke-virtual {p0}, Landroidx/fragment/app/c;->t()V

    .line 2650
    iget-boolean v0, p0, Landroidx/fragment/app/c;->W:Z

    if-eqz v0, :cond_1

    .line 2654
    iget-object v0, p0, Landroidx/fragment/app/c;->R:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_RESUME:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    .line 2655
    iget-object v0, p0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2656
    iget-object v0, p0, Landroidx/fragment/app/c;->S:Landroidx/fragment/app/r;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_RESUME:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/r;->a(Landroidx/lifecycle/e$a;)V

    .line 2658
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->r()V

    .line 2659
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->j()Z

    return-void

    .line 2651
    :cond_1
    new-instance v0, Landroidx/fragment/app/s;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method O()V
    .locals 1

    .line 2663
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->n()V

    return-void
.end method

.method P()V
    .locals 2

    .line 2667
    iget-object v0, p0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/j;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/c;)Z

    move-result v0

    .line 2669
    iget-object v1, p0, Landroidx/fragment/app/c;->V:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 2670
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 2671
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/c;->V:Ljava/lang/Boolean;

    .line 2672
    invoke-virtual {p0, v0}, Landroidx/fragment/app/c;->d(Z)V

    .line 2673
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->x()V

    :cond_1
    return-void
.end method

.method Q()V
    .locals 1

    .line 2693
    invoke-virtual {p0}, Landroidx/fragment/app/c;->onLowMemory()V

    .line 2694
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->w()V

    return-void
.end method

.method R()V
    .locals 3

    .line 2775
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->s()V

    .line 2776
    iget-object v0, p0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2777
    iget-object v0, p0, Landroidx/fragment/app/c;->S:Landroidx/fragment/app/r;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_PAUSE:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/r;->a(Landroidx/lifecycle/e$a;)V

    .line 2779
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->R:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_PAUSE:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    const/4 v0, 0x3

    .line 2780
    iput v0, p0, Landroidx/fragment/app/c;->b:I

    const/4 v0, 0x0

    .line 2781
    iput-boolean v0, p0, Landroidx/fragment/app/c;->W:Z

    .line 2782
    invoke-virtual {p0}, Landroidx/fragment/app/c;->u()V

    .line 2783
    iget-boolean v0, p0, Landroidx/fragment/app/c;->W:Z

    if-eqz v0, :cond_1

    return-void

    .line 2784
    :cond_1
    new-instance v0, Landroidx/fragment/app/s;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method S()V
    .locals 3

    .line 2790
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->t()V

    .line 2791
    iget-object v0, p0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2792
    iget-object v0, p0, Landroidx/fragment/app/c;->S:Landroidx/fragment/app/r;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/r;->a(Landroidx/lifecycle/e$a;)V

    .line 2794
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->R:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    const/4 v0, 0x2

    .line 2795
    iput v0, p0, Landroidx/fragment/app/c;->b:I

    const/4 v0, 0x0

    .line 2796
    iput-boolean v0, p0, Landroidx/fragment/app/c;->W:Z

    .line 2797
    invoke-virtual {p0}, Landroidx/fragment/app/c;->v()V

    .line 2798
    iget-boolean v0, p0, Landroidx/fragment/app/c;->W:Z

    if-eqz v0, :cond_1

    return-void

    .line 2799
    :cond_1
    new-instance v0, Landroidx/fragment/app/s;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method T()V
    .locals 3

    .line 2805
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->u()V

    .line 2806
    iget-object v0, p0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2807
    iget-object v0, p0, Landroidx/fragment/app/c;->S:Landroidx/fragment/app/r;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/r;->a(Landroidx/lifecycle/e$a;)V

    :cond_0
    const/4 v0, 0x1

    .line 2809
    iput v0, p0, Landroidx/fragment/app/c;->b:I

    const/4 v0, 0x0

    .line 2810
    iput-boolean v0, p0, Landroidx/fragment/app/c;->W:Z

    .line 2811
    invoke-virtual {p0}, Landroidx/fragment/app/c;->w()V

    .line 2812
    iget-boolean v1, p0, Landroidx/fragment/app/c;->W:Z

    if-eqz v1, :cond_1

    .line 2820
    invoke-static {p0}, Landroidx/g/a/a;->a(Landroidx/lifecycle/h;)Landroidx/g/a/a;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/g/a/a;->a()V

    .line 2821
    iput-boolean v0, p0, Landroidx/fragment/app/c;->p:Z

    return-void

    .line 2813
    :cond_1
    new-instance v0, Landroidx/fragment/app/s;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method U()V
    .locals 3

    .line 2825
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->v()V

    .line 2826
    iget-object v0, p0, Landroidx/fragment/app/c;->R:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    const/4 v0, 0x0

    .line 2827
    iput v0, p0, Landroidx/fragment/app/c;->b:I

    .line 2828
    iput-boolean v0, p0, Landroidx/fragment/app/c;->W:Z

    .line 2829
    iput-boolean v0, p0, Landroidx/fragment/app/c;->P:Z

    .line 2830
    invoke-virtual {p0}, Landroidx/fragment/app/c;->x()V

    .line 2831
    iget-boolean v0, p0, Landroidx/fragment/app/c;->W:Z

    if-eqz v0, :cond_0

    return-void

    .line 2832
    :cond_0
    new-instance v0, Landroidx/fragment/app/s;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method V()V
    .locals 3

    const/4 v0, 0x0

    .line 2838
    iput-boolean v0, p0, Landroidx/fragment/app/c;->W:Z

    .line 2839
    invoke-virtual {p0}, Landroidx/fragment/app/c;->z()V

    const/4 v0, 0x0

    .line 2840
    iput-object v0, p0, Landroidx/fragment/app/c;->O:Landroid/view/LayoutInflater;

    .line 2841
    iget-boolean v0, p0, Landroidx/fragment/app/c;->W:Z

    if-eqz v0, :cond_1

    .line 2849
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2850
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->v()V

    .line 2851
    new-instance v0, Landroidx/fragment/app/j;

    invoke-direct {v0}, Landroidx/fragment/app/j;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    :cond_0
    return-void

    .line 2842
    :cond_1
    new-instance v0, Landroidx/fragment/app/s;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method W()I
    .locals 1

    .line 2880
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2883
    :cond_0
    iget v0, v0, Landroidx/fragment/app/c$a;->d:I

    return v0
.end method

.method X()I
    .locals 1

    .line 2894
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2897
    :cond_0
    iget v0, v0, Landroidx/fragment/app/c$a;->e:I

    return v0
.end method

.method Y()I
    .locals 1

    .line 2910
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2913
    :cond_0
    iget v0, v0, Landroidx/fragment/app/c$a;->f:I

    return v0
.end method

.method Z()Landroidx/core/app/f;
    .locals 1

    .line 2917
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2920
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/c$a;->o:Landroidx/core/app/f;

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1659
    iget p3, p0, Landroidx/fragment/app/c;->X:I

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 1660
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(IZI)Landroid/view/animation/Animation;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method a(Ljava/lang/String;)Landroidx/fragment/app/c;
    .locals 1

    .line 2551
    iget-object v0, p0, Landroidx/fragment/app/c;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2554
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->b(Ljava/lang/String;)Landroidx/fragment/app/c;

    move-result-object p1

    return-object p1
.end method

.method a(I)V
    .locals 1

    .line 2887
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 2890
    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/c;->ah()Landroidx/fragment/app/c$a;

    move-result-object v0

    iput p1, v0, Landroidx/fragment/app/c$a;->d:I

    return-void
.end method

.method a(II)V
    .locals 1

    .line 2901
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 2904
    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/c;->ah()Landroidx/fragment/app/c$a;

    .line 2905
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    iput p1, v0, Landroidx/fragment/app/c$a;->e:I

    .line 2906
    iget-object p1, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    iput p2, p1, Landroidx/fragment/app/c$a;->f:I

    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public a(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method a(Landroid/animation/Animator;)V
    .locals 1

    .line 2942
    invoke-direct {p0}, Landroidx/fragment/app/c;->ah()Landroidx/fragment/app/c$a;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/c$a;->b:Landroid/animation/Animator;

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 1540
    iput-boolean p1, p0, Landroidx/fragment/app/c;->W:Z

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 1502
    iput-boolean p1, p0, Landroidx/fragment/app/c;->W:Z

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    const/4 p1, 0x1

    .line 1523
    iput-boolean p1, p0, Landroidx/fragment/app/c;->W:Z

    .line 1524
    iget-object p1, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/h;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/h;->k()Landroid/app/Activity;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1526
    iput-boolean v0, p0, Landroidx/fragment/app/c;->W:Z

    .line 1527
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->a(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1

    const/4 p1, 0x1

    .line 1484
    iput-boolean p1, p0, Landroidx/fragment/app/c;->W:Z

    .line 1485
    iget-object p1, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/h;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/h;->k()Landroid/app/Activity;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1487
    iput-boolean v0, p0, Landroidx/fragment/app/c;->W:Z

    .line 1488
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/c;->a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method a(Landroid/content/res/Configuration;)V
    .locals 1

    .line 2688
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2689
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method final a(Landroid/os/Bundle;)V
    .locals 2

    .line 547
    iget-object v0, p0, Landroidx/fragment/app/c;->d:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 548
    iget-object v1, p0, Landroidx/fragment/app/c;->G:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    .line 549
    iput-object v0, p0, Landroidx/fragment/app/c;->d:Landroid/util/SparseArray;

    :cond_0
    const/4 v0, 0x0

    .line 551
    iput-boolean v0, p0, Landroidx/fragment/app/c;->W:Z

    .line 552
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->i(Landroid/os/Bundle;)V

    .line 553
    iget-boolean p1, p0, Landroidx/fragment/app/c;->W:Z

    if-eqz p1, :cond_2

    .line 557
    iget-object p1, p0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 558
    iget-object p1, p0, Landroidx/fragment/app/c;->S:Landroidx/fragment/app/r;

    sget-object v0, Landroidx/lifecycle/e$a;->ON_CREATE:Landroidx/lifecycle/e$a;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/r;->a(Landroidx/lifecycle/e$a;)V

    :cond_1
    return-void

    .line 554
    :cond_2
    new-instance p1, Landroidx/fragment/app/s;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/fragment/app/s;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 1

    .line 2938
    invoke-direct {p0}, Landroidx/fragment/app/c;->ah()Landroidx/fragment/app/c$a;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/c$a;->a:Landroid/view/View;

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method a(Landroidx/fragment/app/c$c;)V
    .locals 2

    .line 2856
    invoke-direct {p0}, Landroidx/fragment/app/c;->ah()Landroidx/fragment/app/c$a;

    .line 2857
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    iget-object v0, v0, Landroidx/fragment/app/c$a;->r:Landroidx/fragment/app/c$c;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 2860
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    iget-object v0, v0, Landroidx/fragment/app/c$a;->r:Landroidx/fragment/app/c$c;

    if-nez v0, :cond_1

    goto :goto_0

    .line 2861
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2864
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    iget-boolean v0, v0, Landroidx/fragment/app/c$a;->q:Z

    if-eqz v0, :cond_3

    .line 2865
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    iput-object p1, v0, Landroidx/fragment/app/c$a;->r:Landroidx/fragment/app/c$c;

    :cond_3
    if-eqz p1, :cond_4

    .line 2868
    invoke-interface {p1}, Landroidx/fragment/app/c$c;->b()V

    :cond_4
    return-void
.end method

.method public a(Landroidx/fragment/app/c;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 2474
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2475
    iget v0, p0, Landroidx/fragment/app/c;->v:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mContainerId=#"

    .line 2476
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2477
    iget v0, p0, Landroidx/fragment/app/c;->w:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTag="

    .line 2478
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/c;->x:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2479
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/c;->b:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWho="

    .line 2480
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/c;->f:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackStackNesting="

    .line 2481
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/c;->q:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2482
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/c;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRemoving="

    .line 2483
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/c;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFromLayout="

    .line 2484
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/c;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mInLayout="

    .line 2485
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/c;->n:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2486
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/c;->y:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDetached="

    .line 2487
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/c;->z:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMenuVisible="

    .line 2488
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/c;->D:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasMenu="

    .line 2489
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/c;->C:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2490
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/c;->A:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mUserVisibleHint="

    .line 2491
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/c;->I:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2492
    iget-object v0, p0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/j;

    if-eqz v0, :cond_0

    .line 2493
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2494
    iget-object v0, p0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/j;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2496
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/h;

    if-eqz v0, :cond_1

    .line 2497
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2498
    iget-object v0, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/h;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2500
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/c;->u:Landroidx/fragment/app/c;

    if-eqz v0, :cond_2

    .line 2501
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2502
    iget-object v0, p0, Landroidx/fragment/app/c;->u:Landroidx/fragment/app/c;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2504
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/c;->g:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 2505
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/c;->g:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2507
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 2508
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2509
    iget-object v0, p0, Landroidx/fragment/app/c;->c:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2511
    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/c;->d:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 2512
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2513
    iget-object v0, p0, Landroidx/fragment/app/c;->d:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2515
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/c;->f()Landroidx/fragment/app/c;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2517
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTarget="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mTargetRequestCode="

    .line 2518
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2519
    iget v0, p0, Landroidx/fragment/app/c;->j:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2521
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/c;->W()I

    move-result v0

    if-eqz v0, :cond_7

    .line 2522
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/c;->W()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2524
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/c;->E:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 2525
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/c;->E:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2527
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 2528
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2530
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/c;->G:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 2531
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2533
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/c;->ab()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2534
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    .line 2535
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2536
    invoke-virtual {p0}, Landroidx/fragment/app/c;->ab()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2537
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    .line 2538
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2539
    invoke-virtual {p0}, Landroidx/fragment/app/c;->ad()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2541
    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/c;->g()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2542
    invoke-static {p0}, Landroidx/g/a/a;->a(Landroidx/lifecycle/h;)Landroidx/g/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/g/a/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2544
    :cond_c
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2546
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/j;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method final a()Z
    .locals 1

    .line 563
    iget v0, p0, Landroidx/fragment/app/c;->q:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method aa()Landroidx/core/app/f;
    .locals 1

    .line 2924
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2927
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/c$a;->p:Landroidx/core/app/f;

    return-object v0
.end method

.method ab()Landroid/view/View;
    .locals 1

    .line 2931
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2934
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/c$a;->a:Landroid/view/View;

    return-object v0
.end method

.method ac()Landroid/animation/Animator;
    .locals 1

    .line 2946
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2949
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/c$a;->b:Landroid/animation/Animator;

    return-object v0
.end method

.method ad()I
    .locals 1

    .line 2953
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2956
    :cond_0
    iget v0, v0, Landroidx/fragment/app/c$a;->c:I

    return v0
.end method

.method ae()Z
    .locals 1

    .line 2964
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2967
    :cond_0
    iget-boolean v0, v0, Landroidx/fragment/app/c$a;->q:Z

    return v0
.end method

.method af()Z
    .locals 1

    .line 2971
    iget-object v0, p0, Landroidx/fragment/app/c;->J:Landroidx/fragment/app/c$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2974
    :cond_0
    iget-boolean v0, v0, Landroidx/fragment/app/c$a;->s:Z

    return v0
.end method

.method public b(IZI)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Landroidx/lifecycle/e;
    .locals 1

    .line 283
    iget-object v0, p0, Landroidx/fragment/app/c;->R:Landroidx/lifecycle/i;

    return-object v0
.end method

.method b(I)V
    .locals 1

    .line 2960
    invoke-direct {p0}, Landroidx/fragment/app/c;->ah()Landroidx/fragment/app/c$a;

    move-result-object v0

    iput p1, v0, Landroidx/fragment/app/c$a;->c:I

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    .line 624
    iget-object v0, p0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/j;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/c;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 625
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment already added and state has been saved"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 627
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/c;->g:Landroid/os/Bundle;

    return-void
.end method

.method b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 1

    .line 2597
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->n()V

    const/4 v0, 0x1

    .line 2598
    iput-boolean v0, p0, Landroidx/fragment/app/c;->p:Z

    .line 2599
    new-instance v0, Landroidx/fragment/app/r;

    invoke-direct {v0}, Landroidx/fragment/app/r;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/c;->S:Landroidx/fragment/app/r;

    .line 2600
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/c;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 2603
    iget-object p1, p0, Landroidx/fragment/app/c;->S:Landroidx/fragment/app/r;

    invoke-virtual {p1}, Landroidx/fragment/app/r;->a()V

    .line 2605
    iget-object p1, p0, Landroidx/fragment/app/c;->T:Landroidx/lifecycle/m;

    iget-object p2, p0, Landroidx/fragment/app/c;->S:Landroidx/fragment/app/r;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/m;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 2607
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/c;->S:Landroidx/fragment/app/r;

    invoke-virtual {p1}, Landroidx/fragment/app/r;->c()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2611
    iput-object p1, p0, Landroidx/fragment/app/c;->S:Landroidx/fragment/app/r;

    :goto_0
    return-void

    .line 2608
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method b(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2

    .line 2708
    iget-boolean v0, p0, Landroidx/fragment/app/c;->y:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2709
    iget-boolean v0, p0, Landroidx/fragment/app/c;->C:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/c;->D:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2711
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/c;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2713
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/j;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1
    return v1
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    .line 1380
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->e(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1
.end method

.method public c()Landroidx/lifecycle/s;
    .locals 2

    .line 361
    iget-object v0, p0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/j;

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0, p0}, Landroidx/fragment/app/j;->b(Landroidx/fragment/app/c;)Landroidx/lifecycle/s;

    move-result-object v0

    return-object v0

    .line 362
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method c(Landroid/view/Menu;)Z
    .locals 2

    .line 2720
    iget-boolean v0, p0, Landroidx/fragment/app/c;->y:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2721
    iget-boolean v0, p0, Landroidx/fragment/app/c;->C:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/c;->D:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2723
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->a(Landroid/view/Menu;)V

    .line 2725
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->a(Landroid/view/Menu;)Z

    move-result p1

    or-int/2addr v1, p1

    :cond_1
    return v1
.end method

.method c(Landroid/view/MenuItem;)Z
    .locals 2

    .line 2731
    iget-boolean v0, p0, Landroidx/fragment/app/c;->y:Z

    if-nez v0, :cond_1

    .line 2732
    iget-boolean v0, p0, Landroidx/fragment/app/c;->C:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/c;->D:Z

    if-eqz v0, :cond_0

    .line 2733
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2737
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->a(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method d(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    .line 1412
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->c(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 1413
    iput-object p1, p0, Landroidx/fragment/app/c;->O:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method d(Landroid/view/Menu;)V
    .locals 1

    .line 2757
    iget-boolean v0, p0, Landroidx/fragment/app/c;->y:Z

    if-nez v0, :cond_1

    .line 2758
    iget-boolean v0, p0, Landroidx/fragment/app/c;->C:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/c;->D:Z

    if-eqz v0, :cond_0

    .line 2759
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->b(Landroid/view/Menu;)V

    .line 2761
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->b(Landroid/view/Menu;)V

    :cond_1
    return-void
.end method

.method public d(Z)V
    .locals 0

    return-void
.end method

.method public final d()Z
    .locals 1

    .line 663
    iget-object v0, p0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 666
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/j;->h()Z

    move-result v0

    return v0
.end method

.method d(Landroid/view/MenuItem;)Z
    .locals 2

    .line 2745
    iget-boolean v0, p0, Landroidx/fragment/app/c;->y:Z

    if-nez v0, :cond_1

    .line 2746
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->b(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2749
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->b(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public e(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1430
    iget-object p1, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/h;

    if-eqz p1, :cond_0

    .line 1434
    invoke-virtual {p1}, Landroidx/fragment/app/h;->e()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 1435
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->A()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/f/f;->a(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    return-object p1

    .line 1431
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e()Landroidx/savedstate/a;
    .locals 1

    .line 370
    iget-object v0, p0, Landroidx/fragment/app/c;->U:Landroidx/savedstate/b;

    invoke-virtual {v0}, Landroidx/savedstate/b;->a()Landroidx/savedstate/a;

    move-result-object v0

    return-object v0
.end method

.method e(Z)V
    .locals 1

    .line 2678
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->b(Z)V

    .line 2679
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->a(Z)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 570
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Landroidx/fragment/app/c;
    .locals 2

    .line 736
    iget-object v0, p0, Landroidx/fragment/app/c;->h:Landroidx/fragment/app/c;

    if-eqz v0, :cond_0

    return-object v0

    .line 740
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/j;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/c;->i:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 742
    iget-object v0, v0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v1, p0, Landroidx/fragment/app/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/c;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public f(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    .line 1603
    iput-boolean v0, p0, Landroidx/fragment/app/c;->W:Z

    .line 1604
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->g(Landroid/os/Bundle;)V

    .line 1605
    iget-object p1, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/j;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1606
    iget-object p1, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {p1}, Landroidx/fragment/app/j;->o()V

    :cond_0
    return-void
.end method

.method f(Z)V
    .locals 1

    .line 2683
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->c(Z)V

    .line 2684
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->b(Z)V

    return-void
.end method

.method public g()Landroid/content/Context;
    .locals 1

    .line 761
    iget-object v0, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/h;->l()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method g(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "android:support:fragments"

    .line 1624
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1627
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->a(Landroid/os/Parcelable;)V

    .line 1628
    iget-object p1, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {p1}, Landroidx/fragment/app/j;->o()V

    :cond_0
    return-void
.end method

.method g(Z)V
    .locals 1

    .line 2978
    invoke-direct {p0}, Landroidx/fragment/app/c;->ah()Landroidx/fragment/app/c$a;

    move-result-object v0

    iput-boolean p1, v0, Landroidx/fragment/app/c$a;->s:Z

    return-void
.end method

.method public final h()Landroid/content/Context;
    .locals 3

    .line 772
    invoke-virtual {p0}, Landroidx/fragment/app/c;->g()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 774
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to a context."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    .line 1720
    iput-boolean p1, p0, Landroidx/fragment/app/c;->W:Z

    return-void
.end method

.method public final hashCode()I
    .locals 1

    .line 577
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Landroidx/fragment/app/d;
    .locals 1

    .line 788
    iget-object v0, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/h;->k()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/d;

    :goto_0
    return-object v0
.end method

.method public i(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    .line 1736
    iput-boolean p1, p0, Landroidx/fragment/app/c;->W:Z

    return-void
.end method

.method public final j()Landroidx/fragment/app/d;
    .locals 3

    .line 800
    invoke-virtual {p0}, Landroidx/fragment/app/c;->i()Landroidx/fragment/app/d;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 802
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to an activity."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final k()Ljava/lang/Object;
    .locals 1

    .line 815
    iget-object v0, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/h;->j()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method k(Landroid/os/Bundle;)V
    .locals 2

    .line 2582
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->n()V

    const/4 v0, 0x1

    .line 2583
    iput v0, p0, Landroidx/fragment/app/c;->b:I

    const/4 v1, 0x0

    .line 2584
    iput-boolean v1, p0, Landroidx/fragment/app/c;->W:Z

    .line 2585
    iget-object v1, p0, Landroidx/fragment/app/c;->U:Landroidx/savedstate/b;

    invoke-virtual {v1, p1}, Landroidx/savedstate/b;->a(Landroid/os/Bundle;)V

    .line 2586
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->f(Landroid/os/Bundle;)V

    .line 2587
    iput-boolean v0, p0, Landroidx/fragment/app/c;->P:Z

    .line 2588
    iget-boolean p1, p0, Landroidx/fragment/app/c;->W:Z

    if-eqz p1, :cond_0

    .line 2592
    iget-object p1, p0, Landroidx/fragment/app/c;->R:Landroidx/lifecycle/i;

    sget-object v0, Landroidx/lifecycle/e$a;->ON_CREATE:Landroidx/lifecycle/e$a;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    return-void

    .line 2589
    :cond_0
    new-instance p1, Landroidx/fragment/app/s;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " did not call through to super.onCreate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/fragment/app/s;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l()Landroid/content/res/Resources;
    .locals 1

    .line 838
    invoke-virtual {p0}, Landroidx/fragment/app/c;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method l(Landroid/os/Bundle;)V
    .locals 2

    .line 2616
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->n()V

    const/4 v0, 0x2

    .line 2617
    iput v0, p0, Landroidx/fragment/app/c;->b:I

    const/4 v0, 0x0

    .line 2618
    iput-boolean v0, p0, Landroidx/fragment/app/c;->W:Z

    .line 2619
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->h(Landroid/os/Bundle;)V

    .line 2620
    iget-boolean p1, p0, Landroidx/fragment/app/c;->W:Z

    if-eqz p1, :cond_0

    .line 2624
    iget-object p1, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {p1}, Landroidx/fragment/app/j;->p()V

    return-void

    .line 2621
    :cond_0
    new-instance p1, Landroidx/fragment/app/s;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " did not call through to super.onActivityCreated()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/fragment/app/s;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m()Landroidx/fragment/app/i;
    .locals 1

    .line 890
    iget-object v0, p0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/j;

    return-object v0
.end method

.method m(Landroid/os/Bundle;)V
    .locals 2

    .line 2766
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->j(Landroid/os/Bundle;)V

    .line 2767
    iget-object v0, p0, Landroidx/fragment/app/c;->U:Landroidx/savedstate/b;

    invoke-virtual {v0, p1}, Landroidx/savedstate/b;->b(Landroid/os/Bundle;)V

    .line 2768
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->m()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:support:fragments"

    .line 2770
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public final n()Landroidx/fragment/app/i;
    .locals 3

    .line 922
    iget-object v0, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    return-object v0

    .line 923
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has not been attached yet."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final o()Landroidx/fragment/app/c;
    .locals 1

    .line 934
    iget-object v0, p0, Landroidx/fragment/app/c;->u:Landroidx/fragment/app/c;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    .line 1804
    iput-boolean p1, p0, Landroidx/fragment/app/c;->W:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 1999
    invoke-virtual {p0}, Landroidx/fragment/app/c;->j()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/d;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    .line 1844
    iput-boolean v0, p0, Landroidx/fragment/app/c;->W:Z

    return-void
.end method

.method public final p()Z
    .locals 1

    .line 1073
    iget-boolean v0, p0, Landroidx/fragment/app/c;->A:Z

    return v0
.end method

.method public q()Landroid/view/View;
    .locals 1

    .line 1686
    iget-object v0, p0, Landroidx/fragment/app/c;->F:Landroid/view/View;

    return-object v0
.end method

.method public final r()Landroid/view/View;
    .locals 3

    .line 1697
    invoke-virtual {p0}, Landroidx/fragment/app/c;->q()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1699
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not return a View from onCreateView() or this was called before onCreateView()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public s()V
    .locals 1

    const/4 v0, 0x1

    .line 1746
    iput-boolean v0, p0, Landroidx/fragment/app/c;->W:Z

    return-void
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x1

    .line 1757
    iput-boolean v0, p0, Landroidx/fragment/app/c;->W:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 583
    invoke-static {p0, v0}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, " ("

    .line 584
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    iget-object v1, p0, Landroidx/fragment/app/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 586
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget v1, p0, Landroidx/fragment/app/c;->v:I

    if-eqz v1, :cond_0

    const-string v1, " id=0x"

    .line 588
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    iget v1, p0, Landroidx/fragment/app/c;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/c;->x:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    .line 592
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    iget-object v1, p0, Landroidx/fragment/app/c;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x7d

    .line 595
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 1

    const/4 v0, 0x1

    .line 1828
    iput-boolean v0, p0, Landroidx/fragment/app/c;->W:Z

    return-void
.end method

.method public v()V
    .locals 1

    const/4 v0, 0x1

    .line 1838
    iput-boolean v0, p0, Landroidx/fragment/app/c;->W:Z

    return-void
.end method

.method public w()V
    .locals 1

    const/4 v0, 0x1

    .line 1858
    iput-boolean v0, p0, Landroidx/fragment/app/c;->W:Z

    return-void
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x1

    .line 1867
    iput-boolean v0, p0, Landroidx/fragment/app/c;->W:Z

    return-void
.end method

.method y()V
    .locals 3

    .line 1877
    invoke-direct {p0}, Landroidx/fragment/app/c;->ag()V

    .line 1878
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/c;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1879
    iput-boolean v0, p0, Landroidx/fragment/app/c;->k:Z

    .line 1880
    iput-boolean v0, p0, Landroidx/fragment/app/c;->l:Z

    .line 1881
    iput-boolean v0, p0, Landroidx/fragment/app/c;->m:Z

    .line 1882
    iput-boolean v0, p0, Landroidx/fragment/app/c;->n:Z

    .line 1883
    iput-boolean v0, p0, Landroidx/fragment/app/c;->o:Z

    .line 1884
    iput v0, p0, Landroidx/fragment/app/c;->q:I

    const/4 v1, 0x0

    .line 1885
    iput-object v1, p0, Landroidx/fragment/app/c;->r:Landroidx/fragment/app/j;

    .line 1886
    new-instance v2, Landroidx/fragment/app/j;

    invoke-direct {v2}, Landroidx/fragment/app/j;-><init>()V

    iput-object v2, p0, Landroidx/fragment/app/c;->t:Landroidx/fragment/app/j;

    .line 1887
    iput-object v1, p0, Landroidx/fragment/app/c;->s:Landroidx/fragment/app/h;

    .line 1888
    iput v0, p0, Landroidx/fragment/app/c;->v:I

    .line 1889
    iput v0, p0, Landroidx/fragment/app/c;->w:I

    .line 1890
    iput-object v1, p0, Landroidx/fragment/app/c;->x:Ljava/lang/String;

    .line 1891
    iput-boolean v0, p0, Landroidx/fragment/app/c;->y:Z

    .line 1892
    iput-boolean v0, p0, Landroidx/fragment/app/c;->z:Z

    return-void
.end method

.method public z()V
    .locals 1

    const/4 v0, 0x1

    .line 1901
    iput-boolean v0, p0, Landroidx/fragment/app/c;->W:Z

    return-void
.end method
