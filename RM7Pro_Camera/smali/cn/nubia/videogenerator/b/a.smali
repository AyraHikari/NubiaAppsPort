.class public Lcn/nubia/videogenerator/b/a;
.super Lcn/nubia/videogenerator/codec/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/videogenerator/b/a$a;,
        Lcn/nubia/videogenerator/b/a$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "FrameFilter"


# instance fields
.field private b:J

.field private c:J

.field private d:I

.field private e:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcn/nubia/videogenerator/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Lcn/nubia/videogenerator/b/a$b;

.field private i:Lcn/nubia/videogenerator/b/a$a;

.field private j:Lcn/nubia/videogenerator/a/g;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/d;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 27
    iput-wide v0, p0, Lcn/nubia/videogenerator/b/a;->b:J

    const-wide v0, 0x7fffffffffffffffL

    .line 28
    iput-wide v0, p0, Lcn/nubia/videogenerator/b/a;->c:J

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcn/nubia/videogenerator/b/a;->d:I

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/videogenerator/b/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/videogenerator/b/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    iput v1, p0, Lcn/nubia/videogenerator/b/a;->l:I

    .line 38
    iput v1, p0, Lcn/nubia/videogenerator/b/a;->m:I

    .line 115
    new-instance v0, Lcn/nubia/videogenerator/b/a$1;

    invoke-direct {v0, p0}, Lcn/nubia/videogenerator/b/a$1;-><init>(Lcn/nubia/videogenerator/b/a;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/b/a;->n:Ljava/lang/Runnable;

    .line 50
    iput-object p1, p0, Lcn/nubia/videogenerator/b/a;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/d;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 27
    iput-wide v0, p0, Lcn/nubia/videogenerator/b/a;->b:J

    const-wide v0, 0x7fffffffffffffffL

    .line 28
    iput-wide v0, p0, Lcn/nubia/videogenerator/b/a;->c:J

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcn/nubia/videogenerator/b/a;->d:I

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/videogenerator/b/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/videogenerator/b/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    iput v1, p0, Lcn/nubia/videogenerator/b/a;->l:I

    .line 38
    iput v1, p0, Lcn/nubia/videogenerator/b/a;->m:I

    .line 115
    new-instance v0, Lcn/nubia/videogenerator/b/a$1;

    invoke-direct {v0, p0}, Lcn/nubia/videogenerator/b/a$1;-><init>(Lcn/nubia/videogenerator/b/a;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/b/a;->n:Ljava/lang/Runnable;

    .line 54
    iput-object p1, p0, Lcn/nubia/videogenerator/b/a;->k:Ljava/lang/String;

    .line 55
    iput p2, p0, Lcn/nubia/videogenerator/b/a;->l:I

    .line 56
    iput p3, p0, Lcn/nubia/videogenerator/b/a;->m:I

    return-void
.end method

.method static synthetic a(Lcn/nubia/videogenerator/b/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/videogenerator/b/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/videogenerator/b/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/videogenerator/b/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcn/nubia/videogenerator/b/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcn/nubia/videogenerator/b/a;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/videogenerator/b/a;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/videogenerator/b/a;)J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcn/nubia/videogenerator/b/a;->b:J

    return-wide v0
.end method

.method static synthetic e(Lcn/nubia/videogenerator/b/a;)J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcn/nubia/videogenerator/b/a;->c:J

    return-wide v0
.end method

.method static synthetic f(Lcn/nubia/videogenerator/b/a;)I
    .locals 0

    .line 25
    iget p0, p0, Lcn/nubia/videogenerator/b/a;->d:I

    return p0
.end method

.method static synthetic g(Lcn/nubia/videogenerator/b/a;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/videogenerator/b/a;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/videogenerator/b/a;)Lcn/nubia/videogenerator/a/g;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/videogenerator/b/a;->j:Lcn/nubia/videogenerator/a/g;

    return-object p0
.end method

.method static synthetic i(Lcn/nubia/videogenerator/b/a;)Lcn/nubia/videogenerator/b/a$b;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/videogenerator/b/a;->h:Lcn/nubia/videogenerator/b/a$b;

    return-object p0
.end method

.method static synthetic j(Lcn/nubia/videogenerator/b/a;)Lcn/nubia/videogenerator/b/a$a;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/videogenerator/b/a;->i:Lcn/nubia/videogenerator/b/a$a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 85
    iget-wide v0, p0, Lcn/nubia/videogenerator/b/a;->b:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcn/nubia/videogenerator/b/a;->c:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/b/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 90
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcn/nubia/videogenerator/b/a;->n:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 86
    :cond_1
    :goto_0
    sget-object v0, Lcn/nubia/videogenerator/b/a;->a:Ljava/lang/String;

    const-string v1, "pass time windows is not set"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcn/nubia/videogenerator/b/a;->d:I

    return-void
.end method

.method public a(JJ)V
    .locals 0

    .line 76
    iput-wide p1, p0, Lcn/nubia/videogenerator/b/a;->b:J

    .line 77
    iput-wide p3, p0, Lcn/nubia/videogenerator/b/a;->c:J

    return-void
.end method

.method public a(Lcn/nubia/videogenerator/a/g;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcn/nubia/videogenerator/b/a;->j:Lcn/nubia/videogenerator/a/g;

    return-void
.end method

.method public a(Lcn/nubia/videogenerator/b/a$b;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcn/nubia/videogenerator/b/a;->h:Lcn/nubia/videogenerator/b/a$b;

    return-void
.end method

.method public a(Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcn/nubia/videogenerator/a/a;",
            ">;)V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcn/nubia/videogenerator/b/a;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public b()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcn/nubia/videogenerator/b/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
