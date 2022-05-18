.class public Lc/b/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/o/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/j$e;,
        Lc/b/a/j$d;,
        Lc/b/a/j$c;,
        Lc/b/a/j$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lc/b/a/o/g;

.field private final c:Lc/b/a/o/m;

.field private final d:Lc/b/a/g;

.field private final e:Lc/b/a/j$d;

.field private f:Lc/b/a/j$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/b/a/o/g;Lc/b/a/o/l;)V
    .locals 6

    .line 1
    new-instance v4, Lc/b/a/o/m;

    invoke-direct {v4}, Lc/b/a/o/m;-><init>()V

    new-instance v5, Lc/b/a/o/d;

    invoke-direct {v5}, Lc/b/a/o/d;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lc/b/a/j;-><init>(Landroid/content/Context;Lc/b/a/o/g;Lc/b/a/o/l;Lc/b/a/o/m;Lc/b/a/o/d;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lc/b/a/o/g;Lc/b/a/o/l;Lc/b/a/o/m;Lc/b/a/o/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lc/b/a/j;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lc/b/a/j;->b:Lc/b/a/o/g;

    .line 5
    iput-object p4, p0, Lc/b/a/j;->c:Lc/b/a/o/m;

    .line 6
    invoke-static {p1}, Lc/b/a/g;->i(Landroid/content/Context;)Lc/b/a/g;

    move-result-object p3

    iput-object p3, p0, Lc/b/a/j;->d:Lc/b/a/g;

    .line 7
    new-instance p3, Lc/b/a/j$d;

    invoke-direct {p3, p0}, Lc/b/a/j$d;-><init>(Lc/b/a/j;)V

    iput-object p3, p0, Lc/b/a/j;->e:Lc/b/a/j$d;

    .line 8
    new-instance p3, Lc/b/a/j$e;

    invoke-direct {p3, p4}, Lc/b/a/j$e;-><init>(Lc/b/a/o/m;)V

    invoke-virtual {p5, p1, p3}, Lc/b/a/o/d;->a(Landroid/content/Context;Lc/b/a/o/c$a;)Lc/b/a/o/c;

    move-result-object p1

    .line 9
    invoke-static {}, Lc/b/a/t/h;->h()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 10
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p4, Lc/b/a/j$a;

    invoke-direct {p4, p0, p2}, Lc/b/a/j$a;-><init>(Lc/b/a/j;Lc/b/a/o/g;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p2, p0}, Lc/b/a/o/g;->a(Lc/b/a/o/h;)V

    .line 12
    :goto_0
    invoke-interface {p2, p1}, Lc/b/a/o/g;->a(Lc/b/a/o/h;)V

    return-void
.end method

.method static synthetic c(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0

    .line 1
    invoke-static {p0}, Lc/b/a/j;->s(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lc/b/a/j;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/b/a/j;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic m(Lc/b/a/j;)Lc/b/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/b/a/j;->d:Lc/b/a/g;

    return-object p0
.end method

.method static synthetic n(Lc/b/a/j;)Lc/b/a/o/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/b/a/j;->c:Lc/b/a/o/m;

    return-object p0
.end method

.method static synthetic o(Lc/b/a/j;)Lc/b/a/o/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/b/a/j;->b:Lc/b/a/o/g;

    return-object p0
.end method

.method static synthetic p(Lc/b/a/j;)Lc/b/a/j$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/b/a/j;->e:Lc/b/a/j$d;

    return-object p0
.end method

.method static synthetic q(Lc/b/a/j;)Lc/b/a/j$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/b/a/j;->f:Lc/b/a/j$b;

    return-object p0
.end method

.method private static s(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private u(Ljava/lang/Class;)Lc/b/a/d;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lc/b/a/d<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/j;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lc/b/a/g;->e(Ljava/lang/Class;Landroid/content/Context;)Lc/b/a/n/j/l;

    move-result-object v3

    .line 2
    iget-object v0, p0, Lc/b/a/j;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lc/b/a/g;->b(Ljava/lang/Class;Landroid/content/Context;)Lc/b/a/n/j/l;

    move-result-object v4

    if-eqz p1, :cond_1

    if-nez v3, :cond_1

    if-eqz v4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". You must provide a Model of a type for"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " which there is a registered ModelLoader, if you are using a custom model, you must first call"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Glide#register with a ModelLoaderFactory for your custom model class"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lc/b/a/j;->e:Lc/b/a/j$d;

    new-instance v10, Lc/b/a/d;

    iget-object v5, p0, Lc/b/a/j;->a:Landroid/content/Context;

    iget-object v6, p0, Lc/b/a/j;->d:Lc/b/a/g;

    iget-object v7, p0, Lc/b/a/j;->c:Lc/b/a/o/m;

    iget-object v8, p0, Lc/b/a/j;->b:Lc/b/a/o/g;

    move-object v1, v10

    move-object v2, p1

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lc/b/a/d;-><init>(Ljava/lang/Class;Lc/b/a/n/j/l;Lc/b/a/n/j/l;Landroid/content/Context;Lc/b/a/g;Lc/b/a/o/m;Lc/b/a/o/g;Lc/b/a/j$d;)V

    invoke-virtual {v0, v10}, Lc/b/a/j$d;->a(Lc/b/a/e;)Lc/b/a/e;

    check-cast v10, Lc/b/a/d;

    return-object v10
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/b/a/j;->y()V

    return-void
.end method

.method public g()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/b/a/j;->x()V

    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/j;->c:Lc/b/a/o/m;

    invoke-virtual {v0}, Lc/b/a/o/m;->a()V

    return-void
.end method

.method public r()Lc/b/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lc/b/a/j;->u(Ljava/lang/Class;)Lc/b/a/d;

    move-result-object v0

    return-object v0
.end method

.method public t(Ljava/lang/String;)Lc/b/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lc/b/a/d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc/b/a/j;->r()Lc/b/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/b/a/c;->D(Ljava/lang/Object;)Lc/b/a/c;

    check-cast v0, Lc/b/a/d;

    return-object v0
.end method

.method public v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/j;->d:Lc/b/a/g;

    invoke-virtual {v0}, Lc/b/a/g;->h()V

    return-void
.end method

.method public w(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/j;->d:Lc/b/a/g;

    invoke-virtual {v0, p1}, Lc/b/a/g;->s(I)V

    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    invoke-static {}, Lc/b/a/t/h;->a()V

    .line 2
    iget-object v0, p0, Lc/b/a/j;->c:Lc/b/a/o/m;

    invoke-virtual {v0}, Lc/b/a/o/m;->b()V

    return-void
.end method

.method public y()V
    .locals 1

    .line 1
    invoke-static {}, Lc/b/a/t/h;->a()V

    .line 2
    iget-object v0, p0, Lc/b/a/j;->c:Lc/b/a/o/m;

    invoke-virtual {v0}, Lc/b/a/o/m;->e()V

    return-void
.end method

.method public z(Lc/b/a/n/j/l;Ljava/lang/Class;)Lc/b/a/j$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/b/a/n/j/l<",
            "TA;TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lc/b/a/j$c<",
            "TA;TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/b/a/j$c;

    invoke-direct {v0, p0, p1, p2}, Lc/b/a/j$c;-><init>(Lc/b/a/j;Lc/b/a/n/j/l;Ljava/lang/Class;)V

    return-object v0
.end method
