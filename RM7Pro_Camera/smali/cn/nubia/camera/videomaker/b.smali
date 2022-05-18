.class public Lcn/nubia/camera/videomaker/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/videomaker/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/videomaker/b$a;,
        Lcn/nubia/camera/videomaker/b$b;,
        Lcn/nubia/camera/videomaker/b$c;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "LooperShowDataAdapter"

.field private static final b:Ljava/lang/Object;


# instance fields
.field private c:Lcn/nubia/camera/videomaker/a;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn/nubia/camera/videomaker/a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Lcn/nubia/camera/videomaker/c$a;

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcn/nubia/camera/videomaker/b$b;

.field private m:Lcn/nubia/camera/videomaker/b$a;

.field private n:Lcn/nubia/camera/videomaker/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/nubia/camera/videomaker/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcn/nubia/camera/videomaker/b;->c:Lcn/nubia/camera/videomaker/a;

    .line 26
    iput-object v0, p0, Lcn/nubia/camera/videomaker/b;->d:Ljava/util/ArrayList;

    .line 27
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/videomaker/b;->e:Ljava/util/LinkedList;

    const/4 v1, 0x0

    .line 29
    iput-boolean v1, p0, Lcn/nubia/camera/videomaker/b;->f:Z

    .line 30
    iput-boolean v1, p0, Lcn/nubia/camera/videomaker/b;->g:Z

    .line 33
    iput v1, p0, Lcn/nubia/camera/videomaker/b;->i:I

    .line 34
    iput v1, p0, Lcn/nubia/camera/videomaker/b;->j:I

    .line 35
    iput v1, p0, Lcn/nubia/camera/videomaker/b;->k:I

    .line 36
    iput-object v0, p0, Lcn/nubia/camera/videomaker/b;->l:Lcn/nubia/camera/videomaker/b$b;

    .line 37
    iput-object v0, p0, Lcn/nubia/camera/videomaker/b;->m:Lcn/nubia/camera/videomaker/b$a;

    .line 38
    iput-object v0, p0, Lcn/nubia/camera/videomaker/b;->n:Lcn/nubia/camera/videomaker/b$c;

    .line 41
    iput-object p1, p0, Lcn/nubia/camera/videomaker/b;->d:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/videomaker/b;->i:I

    .line 43
    new-instance p1, Lcn/nubia/camera/videomaker/b$a;

    invoke-direct {p1, p0, v0}, Lcn/nubia/camera/videomaker/b$a;-><init>(Lcn/nubia/camera/videomaker/b;Lcn/nubia/camera/videomaker/b$1;)V

    iput-object p1, p0, Lcn/nubia/camera/videomaker/b;->m:Lcn/nubia/camera/videomaker/b$a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/videomaker/b;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcn/nubia/camera/videomaker/b;->f:Z

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/videomaker/b;)Ljava/util/LinkedList;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/camera/videomaker/b;->e:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/videomaker/b;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcn/nubia/camera/videomaker/b;->g:Z

    return p0
.end method

.method static synthetic d(Lcn/nubia/camera/videomaker/b;)Lcn/nubia/camera/videomaker/a;
    .locals 0

    .line 18
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/b;->e()Lcn/nubia/camera/videomaker/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d()Ljava/lang/Object;
    .locals 1

    .line 18
    sget-object v0, Lcn/nubia/camera/videomaker/b;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lcn/nubia/camera/videomaker/b;)I
    .locals 2

    .line 18
    iget v0, p0, Lcn/nubia/camera/videomaker/b;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/camera/videomaker/b;->k:I

    return v0
.end method

.method private e()Lcn/nubia/camera/videomaker/a;
    .locals 4

    .line 121
    iget v0, p0, Lcn/nubia/camera/videomaker/b;->j:I

    iget v1, p0, Lcn/nubia/camera/videomaker/b;->i:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 124
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/videomaker/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    new-instance v1, Lcn/nubia/camera/videomaker/a;

    iget v2, p0, Lcn/nubia/camera/videomaker/b;->j:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcn/nubia/camera/videomaker/b;->j:I

    iget-object v3, p0, Lcn/nubia/camera/videomaker/b;->h:Lcn/nubia/camera/videomaker/c$a;

    invoke-direct {v1, v2, v0, v3}, Lcn/nubia/camera/videomaker/a;-><init>(ILjava/lang/String;Lcn/nubia/camera/videomaker/c$a;)V

    return-object v1
.end method

.method static synthetic f(Lcn/nubia/camera/videomaker/b;)I
    .locals 0

    .line 18
    iget p0, p0, Lcn/nubia/camera/videomaker/b;->k:I

    return p0
.end method

.method private f()V
    .locals 3

    .line 130
    sget-object v0, Lcn/nubia/camera/videomaker/b;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/videomaker/b;->c:Lcn/nubia/camera/videomaker/a;

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v1}, Lcn/nubia/camera/videomaker/a;->b()V

    const/4 v1, 0x0

    .line 133
    iput-object v1, p0, Lcn/nubia/camera/videomaker/b;->c:Lcn/nubia/camera/videomaker/a;

    .line 135
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/videomaker/b;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/camera/videomaker/a;

    if-eqz v2, :cond_1

    .line 137
    invoke-virtual {v2}, Lcn/nubia/camera/videomaker/a;->b()V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/videomaker/b;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 141
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void

    :catchall_0
    move-exception v1

    .line 141
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic g(Lcn/nubia/camera/videomaker/b;)I
    .locals 0

    .line 18
    iget p0, p0, Lcn/nubia/camera/videomaker/b;->i:I

    return p0
.end method

.method static synthetic h(Lcn/nubia/camera/videomaker/b;)Lcn/nubia/camera/videomaker/b$a;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/camera/videomaker/b;->m:Lcn/nubia/camera/videomaker/b$a;

    return-object p0
.end method

.method static synthetic i(Lcn/nubia/camera/videomaker/b;)Lcn/nubia/camera/videomaker/b$c;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/camera/videomaker/b;->n:Lcn/nubia/camera/videomaker/b$c;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 82
    iget-boolean v0, p0, Lcn/nubia/camera/videomaker/b;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcn/nubia/camera/videomaker/b;->f:Z

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcn/nubia/camera/videomaker/b;->k:I

    .line 85
    new-instance v0, Lcn/nubia/camera/videomaker/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/videomaker/b$b;-><init>(Lcn/nubia/camera/videomaker/b;Lcn/nubia/camera/videomaker/b$1;)V

    iput-object v0, p0, Lcn/nubia/camera/videomaker/b;->l:Lcn/nubia/camera/videomaker/b$b;

    const-string v1, "LoadTask"

    .line 86
    invoke-virtual {v0, v1}, Lcn/nubia/camera/videomaker/b$b;->setName(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcn/nubia/camera/videomaker/b;->l:Lcn/nubia/camera/videomaker/b$b;

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/b$b;->start()V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/videomaker/b$c;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcn/nubia/camera/videomaker/b;->n:Lcn/nubia/camera/videomaker/b$c;

    return-void
.end method

.method public a(Lcn/nubia/camera/videomaker/c$a;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcn/nubia/camera/videomaker/b;->h:Lcn/nubia/camera/videomaker/c$a;

    return-void
.end method

.method public b()V
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcn/nubia/camera/videomaker/b;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcn/nubia/camera/videomaker/b;->f:Z

    .line 95
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/b;->f()V

    :cond_0
    return-void
.end method

.method public c()Lcn/nubia/camera/videomaker/a;
    .locals 2

    .line 101
    iget-boolean v0, p0, Lcn/nubia/camera/videomaker/b;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/videomaker/b;->c:Lcn/nubia/camera/videomaker/a;

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/a;->b()V

    .line 105
    :cond_1
    sget-object v0, Lcn/nubia/camera/videomaker/b;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/videomaker/b;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 108
    :try_start_1
    iput-boolean v1, p0, Lcn/nubia/camera/videomaker/b;->g:Z

    .line 109
    sget-object v1, Lcn/nubia/camera/videomaker/b;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    const/4 v1, 0x0

    .line 110
    iput-boolean v1, p0, Lcn/nubia/camera/videomaker/b;->g:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    :catch_0
    :try_start_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 115
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/videomaker/b;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/videomaker/a;

    iput-object v1, p0, Lcn/nubia/camera/videomaker/b;->c:Lcn/nubia/camera/videomaker/a;

    .line 116
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
