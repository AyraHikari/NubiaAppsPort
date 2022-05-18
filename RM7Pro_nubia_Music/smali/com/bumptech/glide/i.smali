.class public Lcom/bumptech/glide/i;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/bumptech/glide/manager/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/i$d;,
        Lcom/bumptech/glide/i$c;,
        Lcom/bumptech/glide/i$b;,
        Lcom/bumptech/glide/i$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/bumptech/glide/manager/g;

.field private final c:Lcom/bumptech/glide/manager/k;

.field private final d:Lcom/bumptech/glide/manager/l;

.field private final e:Lcom/bumptech/glide/g;

.field private final f:Lcom/bumptech/glide/i$c;

.field private g:Lcom/bumptech/glide/i$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/manager/g;Lcom/bumptech/glide/manager/k;)V
    .locals 6

    .prologue
    .line 53
    new-instance v4, Lcom/bumptech/glide/manager/l;

    invoke-direct {v4}, Lcom/bumptech/glide/manager/l;-><init>()V

    new-instance v5, Lcom/bumptech/glide/manager/d;

    invoke-direct {v5}, Lcom/bumptech/glide/manager/d;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/i;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/g;Lcom/bumptech/glide/manager/k;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/d;)V

    .line 54
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/manager/g;Lcom/bumptech/glide/manager/k;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/d;)V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/i;->a:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/bumptech/glide/i;->b:Lcom/bumptech/glide/manager/g;

    .line 60
    iput-object p3, p0, Lcom/bumptech/glide/i;->c:Lcom/bumptech/glide/manager/k;

    .line 61
    iput-object p4, p0, Lcom/bumptech/glide/i;->d:Lcom/bumptech/glide/manager/l;

    .line 62
    invoke-static {p1}, Lcom/bumptech/glide/g;->a(Landroid/content/Context;)Lcom/bumptech/glide/g;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/i;->e:Lcom/bumptech/glide/g;

    .line 63
    new-instance v0, Lcom/bumptech/glide/i$c;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/i$c;-><init>(Lcom/bumptech/glide/i;)V

    iput-object v0, p0, Lcom/bumptech/glide/i;->f:Lcom/bumptech/glide/i$c;

    .line 65
    new-instance v0, Lcom/bumptech/glide/i$d;

    invoke-direct {v0, p4}, Lcom/bumptech/glide/i$d;-><init>(Lcom/bumptech/glide/manager/l;)V

    invoke-virtual {p5, p1, v0}, Lcom/bumptech/glide/manager/d;->a(Landroid/content/Context;Lcom/bumptech/glide/manager/c$a;)Lcom/bumptech/glide/manager/c;

    move-result-object v0

    .line 71
    invoke-static {}, Lcom/bumptech/glide/g/h;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/bumptech/glide/i$1;

    invoke-direct {v2, p0, p2}, Lcom/bumptech/glide/i$1;-><init>(Lcom/bumptech/glide/i;Lcom/bumptech/glide/manager/g;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    :goto_0
    invoke-interface {p2, v0}, Lcom/bumptech/glide/manager/g;->a(Lcom/bumptech/glide/manager/h;)V

    .line 82
    return-void

    .line 79
    :cond_0
    invoke-interface {p2, p0}, Lcom/bumptech/glide/manager/g;->a(Lcom/bumptech/glide/manager/h;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/bumptech/glide/i;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/i;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/Class;)Lcom/bumptech/glide/d;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bumptech/glide/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 625
    iget-object v0, p0, Lcom/bumptech/glide/i;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/b/l;

    move-result-object v2

    .line 626
    iget-object v0, p0, Lcom/bumptech/glide/i;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/bumptech/glide/g;->b(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/b/l;

    move-result-object v3

    .line 628
    if-eqz p1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 629
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". You must provide a Model of a type for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " which there is a registered ModelLoader, if you are using a custom model, you must first call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Glide#register with a ModelLoaderFactory for your custom model class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_0
    iget-object v9, p0, Lcom/bumptech/glide/i;->f:Lcom/bumptech/glide/i$c;

    new-instance v0, Lcom/bumptech/glide/d;

    iget-object v4, p0, Lcom/bumptech/glide/i;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/bumptech/glide/i;->e:Lcom/bumptech/glide/g;

    iget-object v6, p0, Lcom/bumptech/glide/i;->d:Lcom/bumptech/glide/manager/l;

    iget-object v7, p0, Lcom/bumptech/glide/i;->b:Lcom/bumptech/glide/manager/g;

    iget-object v8, p0, Lcom/bumptech/glide/i;->f:Lcom/bumptech/glide/i$c;

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/d;-><init>(Ljava/lang/Class;Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/load/b/l;Landroid/content/Context;Lcom/bumptech/glide/g;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/g;Lcom/bumptech/glide/i$c;)V

    invoke-virtual {v9, v0}, Lcom/bumptech/glide/i$c;->a(Lcom/bumptech/glide/e;)Lcom/bumptech/glide/e;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/d;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 43
    invoke-static {p0}, Lcom/bumptech/glide/i;->b(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/bumptech/glide/i;)Lcom/bumptech/glide/g;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/i;->e:Lcom/bumptech/glide/g;

    return-object v0
.end method

.method private static b(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 641
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/bumptech/glide/i;)Lcom/bumptech/glide/manager/l;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/i;->d:Lcom/bumptech/glide/manager/l;

    return-object v0
.end method

.method static synthetic d(Lcom/bumptech/glide/i;)Lcom/bumptech/glide/manager/g;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/i;->b:Lcom/bumptech/glide/manager/g;

    return-object v0
.end method

.method static synthetic e(Lcom/bumptech/glide/i;)Lcom/bumptech/glide/i$c;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/i;->f:Lcom/bumptech/glide/i$c;

    return-object v0
.end method

.method static synthetic f(Lcom/bumptech/glide/i;)Lcom/bumptech/glide/i$a;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/i;->g:Lcom/bumptech/glide/i$a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)Lcom/bumptech/glide/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/bumptech/glide/d",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/bumptech/glide/i;->e()Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/d;->a(Ljava/lang/Object;)Lcom/bumptech/glide/c;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/d;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/bumptech/glide/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/d",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/bumptech/glide/i;->d()Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/d;->a(Ljava/lang/Object;)Lcom/bumptech/glide/c;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/d;

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/b/l;Ljava/lang/Class;)Lcom/bumptech/glide/i$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/b/l",
            "<TA;TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/bumptech/glide/i$b",
            "<TA;TT;>;"
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Lcom/bumptech/glide/i$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/i$b;-><init>(Lcom/bumptech/glide/i;Lcom/bumptech/glide/load/b/l;Ljava/lang/Class;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/bumptech/glide/i;->e:Lcom/bumptech/glide/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/g;->e()V

    .line 96
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bumptech/glide/i;->e:Lcom/bumptech/glide/g;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->a(I)V

    .line 89
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcom/bumptech/glide/g/h;->a()V

    .line 148
    iget-object v0, p0, Lcom/bumptech/glide/i;->d:Lcom/bumptech/glide/manager/l;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/l;->a()V

    .line 149
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lcom/bumptech/glide/g/h;->a()V

    .line 180
    iget-object v0, p0, Lcom/bumptech/glide/i;->d:Lcom/bumptech/glide/manager/l;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/l;->b()V

    .line 181
    return-void
.end method

.method public d()Lcom/bumptech/glide/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/d",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/i;->a(Ljava/lang/Class;)Lcom/bumptech/glide/d;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/bumptech/glide/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/d",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/i;->a(Ljava/lang/Class;)Lcom/bumptech/glide/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/f/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/load/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/c;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/d;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/bumptech/glide/i;->d:Lcom/bumptech/glide/manager/l;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/l;->c()V

    .line 222
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/bumptech/glide/i;->c()V

    .line 204
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/bumptech/glide/i;->b()V

    .line 213
    return-void
.end method
