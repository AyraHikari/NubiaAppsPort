.class public Lb/a/a/d/b;
.super Lb/a/a/d/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/d/b$a;
    }
.end annotation


# instance fields
.field private k:Lb/a/a/d/b$a;

.field private l:J

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lb/a/a/d/c;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lb/a/a/d/b;->l:J

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lb/a/a/d/b;->m:Z

    .line 4
    iput-boolean v0, p0, Lb/a/a/d/b;->n:Z

    .line 5
    iput-boolean v0, p0, Lb/a/a/d/b;->o:Z

    .line 6
    iput-object p1, p0, Lb/a/a/d/c;->c:Ljava/lang/String;

    .line 7
    new-instance p1, Lb/a/a/d/b$a;

    invoke-direct {p1, p0}, Lb/a/a/d/b$a;-><init>(Lb/a/a/d/b;)V

    iput-object p1, p0, Lb/a/a/d/b;->k:Lb/a/a/d/b$a;

    return-void
.end method

.method static synthetic f(Lb/a/a/d/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/a/a/d/b;->m:Z

    return p0
.end method

.method static synthetic g(Lb/a/a/d/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/a/a/d/b;->m:Z

    return p1
.end method

.method static synthetic h(Lb/a/a/d/b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lb/a/a/d/b;->l:J

    return-wide v0
.end method

.method static synthetic i(Lb/a/a/d/b;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lb/a/a/d/b;->l:J

    return-wide p1
.end method

.method static synthetic j(Lb/a/a/d/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/a/a/d/b;->o:Z

    return p0
.end method

.method static synthetic k(Lb/a/a/d/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/a/a/d/b;->o:Z

    return p1
.end method

.method static synthetic l(Lb/a/a/d/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/a/a/d/b;->n:Z

    return p0
.end method


# virtual methods
.method public m(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/a/a/d/b;->n:Z

    return-void
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lb/a/a/d/b;->m:Z

    return-void
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lb/a/a/d/b;->m:Z

    return-void
.end method

.method public p(J)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lb/a/a/d/b;->m:Z

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 2
    iput-wide p1, p0, Lb/a/a/d/b;->l:J

    return-void
.end method

.method public q(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    .line 1
    iput-wide v0, p0, Lb/a/a/d/c;->g:J

    .line 2
    invoke-virtual {p0, p1, p2}, Lb/a/a/d/b;->p(J)V

    return-void
.end method

.method public r(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    .line 1
    iput-wide v0, p0, Lb/a/a/d/c;->f:J

    .line 2
    invoke-virtual {p0, p1, p2}, Lb/a/a/d/b;->p(J)V

    return-void
.end method

.method public s()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lb/a/a/d/c;->d:Z

    .line 2
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lb/a/a/d/b;->k:Lb/a/a/d/b$a;

    const-string v2, "VideoLocalSource"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
