.class public Lc/c/a/f/a/h/f;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/f/a/h/f$e;,
        Lc/c/a/f/a/h/f$d;,
        Lc/c/a/f/a/h/f$c;,
        Lc/c/a/f/a/h/f$h;,
        Lc/c/a/f/a/h/f$k;,
        Lc/c/a/f/a/h/f$g;,
        Lc/c/a/f/a/h/f$j;,
        Lc/c/a/f/a/h/f$n;,
        Lc/c/a/f/a/h/f$f;,
        Lc/c/a/f/a/h/f$b;,
        Lc/c/a/f/a/h/f$i;,
        Lc/c/a/f/a/h/f$l;,
        Lc/c/a/f/a/h/f$m;
    }
.end annotation


# instance fields
.field private A:Lc/c/a/f/a/h/b;

.field private B:Lc/c/a/f/a/h/f$e;

.field private C:J

.field private D:Lc/c/a/f/a/h/g;

.field private final a:Lc/c/a/f/a/h/f$l;

.field private b:I

.field private c:Lc/c/a/f/a/h/f$k;

.field private d:Lc/c/a/f/a/h/f$i;

.field private e:Lc/c/a/f/a/h/f$j;

.field private f:Lc/c/a/f/a/g;

.field private g:Ljava/lang/Object;

.field private h:Lc/c/a/f/a/h/f$m;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:I

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private y:Z

.field private z:Z


# direct methods
.method constructor <init>(Lc/c/a/f/a/h/f$i;Lc/c/a/f/a/h/f$j;Lc/c/a/f/a/h/f$k;Lc/c/a/f/a/g;ILjava/lang/Object;Lc/c/a/f/a/h/b;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance v0, Lc/c/a/f/a/h/f$l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/f/a/h/f$l;-><init>(Lc/c/a/f/a/h/f$a;)V

    iput-object v0, p0, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/c/a/f/a/h/f;->x:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lc/c/a/f/a/h/f;->y:Z

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lc/c/a/f/a/h/f;->z:Z

    .line 6
    sget-object v2, Lc/c/a/f/a/h/b;->c:Lc/c/a/f/a/h/b;

    iput-object v2, p0, Lc/c/a/f/a/h/f;->A:Lc/c/a/f/a/h/b;

    .line 7
    new-instance v2, Lc/c/a/f/a/h/f$e;

    invoke-direct {v2, p0}, Lc/c/a/f/a/h/f$e;-><init>(Lc/c/a/f/a/h/f;)V

    iput-object v2, p0, Lc/c/a/f/a/h/f;->B:Lc/c/a/f/a/h/f$e;

    .line 8
    iput v1, p0, Lc/c/a/f/a/h/f;->s:I

    .line 9
    iput v1, p0, Lc/c/a/f/a/h/f;->t:I

    .line 10
    iput-boolean v0, p0, Lc/c/a/f/a/h/f;->u:Z

    .line 11
    iput p5, p0, Lc/c/a/f/a/h/f;->b:I

    .line 12
    iput-boolean v1, p0, Lc/c/a/f/a/h/f;->v:Z

    .line 13
    iput-object p1, p0, Lc/c/a/f/a/h/f;->d:Lc/c/a/f/a/h/f$i;

    .line 14
    iput-object p2, p0, Lc/c/a/f/a/h/f;->e:Lc/c/a/f/a/h/f$j;

    .line 15
    iput-object p3, p0, Lc/c/a/f/a/h/f;->c:Lc/c/a/f/a/h/f$k;

    .line 16
    iput-object p6, p0, Lc/c/a/f/a/h/f;->g:Ljava/lang/Object;

    .line 17
    iput-object p4, p0, Lc/c/a/f/a/h/f;->f:Lc/c/a/f/a/g;

    .line 18
    iput-object p7, p0, Lc/c/a/f/a/h/f;->A:Lc/c/a/f/a/h/b;

    return-void
.end method

.method static synthetic b(Lc/c/a/f/a/h/f;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lc/c/a/f/a/h/f;->j:Z

    return p1
.end method

.method private e()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lc/c/a/f/a/h/f;->d:Lc/c/a/f/a/h/f$i;

    iget-object v2, v1, Lc/c/a/f/a/h/f;->e:Lc/c/a/f/a/h/f$j;

    iget-object v3, v1, Lc/c/a/f/a/h/f;->c:Lc/c/a/f/a/h/f$k;

    invoke-static {v0, v2, v3}, Lc/c/a/f/a/h/e;->a(Lc/c/a/f/a/h/f$i;Lc/c/a/f/a/h/f$j;Lc/c/a/f/a/h/f$k;)Lc/c/a/f/a/h/g;

    move-result-object v0

    iput-object v0, v1, Lc/c/a/f/a/h/f;->D:Lc/c/a/f/a/h/g;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, v1, Lc/c/a/f/a/h/f;->p:Z

    .line 3
    iput-boolean v0, v1, Lc/c/a/f/a/h/f;->q:Z

    .line 4
    iput-boolean v0, v1, Lc/c/a/f/a/h/f;->v:Z

    move v4, v0

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v13, v11

    :goto_0
    const/4 v12, 0x0

    .line 5
    :cond_0
    :goto_1
    :try_start_0
    iget-object v14, v1, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 6
    :goto_2
    :try_start_1
    iget-boolean v15, v1, Lc/c/a/f/a/h/f;->i:Z

    if-eqz v15, :cond_1

    .line 7
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 8
    iget-object v2, v1, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    monitor-enter v2

    .line 9
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lc/c/a/f/a/h/f;->r()V

    .line 10
    invoke-direct/range {p0 .. p0}, Lc/c/a/f/a/h/f;->q()V

    .line 11
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 12
    :cond_1
    :try_start_3
    iget-object v15, v1, Lc/c/a/f/a/h/f;->x:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2

    iget-boolean v15, v1, Lc/c/a/f/a/h/f;->p:Z

    if-eqz v15, :cond_2

    .line 13
    iget-object v12, v1, Lc/c/a/f/a/h/f;->x:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Runnable;

    goto/16 :goto_7

    .line 14
    :cond_2
    iget-boolean v15, v1, Lc/c/a/f/a/h/f;->l:Z

    iget-boolean v2, v1, Lc/c/a/f/a/h/f;->k:Z

    if-eq v15, v2, :cond_3

    .line 15
    iput-boolean v2, v1, Lc/c/a/f/a/h/f;->l:Z

    .line 16
    iget-object v15, v1, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    const-string v15, "GLThread"

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPaused is now "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lc/c/a/f/a/h/f;->l:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " tid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v16, v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lc/c/a/h/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v2, v16

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    if-eqz v4, :cond_4

    const-string v0, "GLThread"

    const-string v3, "lostEglContext"

    .line 18
    invoke-static {v0, v3}, Lc/c/a/h/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-direct/range {p0 .. p0}, Lc/c/a/f/a/h/f;->r()V

    .line 20
    invoke-direct/range {p0 .. p0}, Lc/c/a/f/a/h/f;->q()V

    const/4 v4, 0x0

    :cond_4
    if-eqz v2, :cond_5

    .line 21
    iget-boolean v0, v1, Lc/c/a/f/a/h/f;->q:Z

    if-eqz v0, :cond_5

    const-string v0, "GLThread"

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releasing EGL surface because paused tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v15, v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc/c/a/h/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-direct/range {p0 .. p0}, Lc/c/a/f/a/h/f;->r()V

    goto :goto_4

    :cond_5
    move v15, v4

    .line 24
    :goto_4
    iget-boolean v0, v1, Lc/c/a/f/a/h/f;->m:Z

    if-nez v0, :cond_7

    iget-boolean v0, v1, Lc/c/a/f/a/h/f;->o:Z

    if-nez v0, :cond_7

    const-string v0, "GLThread"

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noticed surfaceView surface lost tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc/c/a/h/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-boolean v0, v1, Lc/c/a/f/a/h/f;->q:Z

    if-eqz v0, :cond_6

    .line 27
    invoke-direct/range {p0 .. p0}, Lc/c/a/f/a/h/f;->r()V

    :cond_6
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, v1, Lc/c/a/f/a/h/f;->o:Z

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, v1, Lc/c/a/f/a/h/f;->n:Z

    .line 30
    iget-object v0, v1, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 31
    :cond_7
    iget-boolean v0, v1, Lc/c/a/f/a/h/f;->m:Z

    if-eqz v0, :cond_8

    iget-boolean v0, v1, Lc/c/a/f/a/h/f;->o:Z

    if-eqz v0, :cond_8

    const-string v0, "GLThread"

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noticed surfaceView surface acquired tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc/c/a/h/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, v1, Lc/c/a/f/a/h/f;->o:Z

    .line 34
    iget-object v0, v1, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_8
    if-eqz v5, :cond_9

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, v1, Lc/c/a/f/a/h/f;->v:Z

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, v1, Lc/c/a/f/a/h/f;->w:Z

    .line 37
    iget-object v0, v1, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v5, 0x0

    .line 38
    :cond_9
    invoke-direct/range {p0 .. p0}, Lc/c/a/f/a/h/f;->j()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 39
    iget-boolean v0, v1, Lc/c/a/f/a/h/f;->p:Z

    if-nez v0, :cond_b

    .line 40
    iget-object v0, v1, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {v0, v1}, Lc/c/a/f/a/h/f$l;->c(Lc/c/a/f/a/h/f;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v0, :cond_b

    .line 41
    :try_start_4
    iget-object v0, v1, Lc/c/a/f/a/h/f;->D:Lc/c/a/f/a/h/g;

    iget-object v2, v1, Lc/c/a/f/a/h/f;->A:Lc/c/a/f/a/h/b;

    invoke-interface {v0, v2}, Lc/c/a/f/a/h/g;->f(Lc/c/a/f/a/h/b;)Lc/c/a/f/a/h/b;

    move-result-object v0

    iput-object v0, v1, Lc/c/a/f/a/h/f;->A:Lc/c/a/f/a/h/b;

    .line 42
    iget-object v2, v1, Lc/c/a/f/a/h/f;->h:Lc/c/a/f/a/h/f$m;

    if-eqz v2, :cond_a

    .line 43
    invoke-interface {v2, v0}, Lc/c/a/f/a/h/f$m;->a(Lc/c/a/f/a/h/b;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :cond_a
    const/4 v0, 0x1

    .line 44
    :try_start_5
    iput-boolean v0, v1, Lc/c/a/f/a/h/f;->p:Z

    .line 45
    iget-object v0, v1, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v6, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    .line 46
    iget-object v2, v1, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {v2, v1}, Lc/c/a/f/a/h/f$l;->a(Lc/c/a/f/a/h/f;)V

    .line 47
    throw v0

    .line 48
    :cond_b
    :goto_5
    iget-boolean v0, v1, Lc/c/a/f/a/h/f;->p:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Lc/c/a/f/a/h/f;->q:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, v1, Lc/c/a/f/a/h/f;->q:Z

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 50
    :cond_c
    iget-boolean v0, v1, Lc/c/a/f/a/h/f;->q:Z

    if-eqz v0, :cond_1c

    .line 51
    iget-boolean v0, v1, Lc/c/a/f/a/h/f;->y:Z

    if-eqz v0, :cond_d

    .line 52
    iget v0, v1, Lc/c/a/f/a/h/f;->s:I

    .line 53
    iget v2, v1, Lc/c/a/f/a/h/f;->t:I

    const/4 v3, 0x1

    .line 54
    iput-boolean v3, v1, Lc/c/a/f/a/h/f;->v:Z

    const-string v3, "GLThread"

    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "noticing that we want render notification tid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc/c/a/h/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 56
    iput-boolean v3, v1, Lc/c/a/f/a/h/f;->y:Z

    move v10, v0

    move v11, v2

    const/4 v7, 0x1

    const/4 v9, 0x1

    .line 57
    :cond_d
    iget-boolean v0, v1, Lc/c/a/f/a/h/f;->z:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, v1, Lc/c/a/f/a/h/f;->z:Z

    const/4 v7, 0x1

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    .line 59
    :goto_6
    iput-boolean v0, v1, Lc/c/a/f/a/h/f;->u:Z

    .line 60
    iget-object v2, v1, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 61
    iget-boolean v2, v1, Lc/c/a/f/a/h/f;->v:Z

    move v4, v15

    if-eqz v2, :cond_f

    const/4 v13, 0x1

    .line 62
    :cond_f
    :goto_7
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v12, :cond_10

    .line 63
    :try_start_6
    invoke-interface {v12}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_10
    if-eqz v7, :cond_12

    const-string v2, "GLThread"

    const-string v3, "egl createSurface"

    .line 64
    invoke-static {v2, v3}, Lc/c/a/h/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v2, v1, Lc/c/a/f/a/h/f;->D:Lc/c/a/f/a/h/g;

    iget-object v3, v1, Lc/c/a/f/a/h/f;->g:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lc/c/a/f/a/h/g;->e(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 66
    iget-object v2, v1, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/4 v3, 0x1

    .line 67
    :try_start_7
    iput-boolean v3, v1, Lc/c/a/f/a/h/f;->r:Z

    .line 68
    iget-object v3, v1, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 69
    monitor-exit v2

    move v7, v0

    goto :goto_8

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    .line 70
    :cond_11
    iget-object v2, v1, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const/4 v3, 0x1

    .line 71
    :try_start_9
    iput-boolean v3, v1, Lc/c/a/f/a/h/f;->r:Z

    .line 72
    iput-boolean v3, v1, Lc/c/a/f/a/h/f;->n:Z

    .line 73
    iget-object v3, v1, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 74
    monitor-exit v2

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0

    :cond_12
    :goto_8
    if-eqz v8, :cond_13

    move v8, v0

    :cond_13
    if-eqz v6, :cond_14

    const-string v2, "GLThread"

    const-string v3, "onSurfaceCreated"

    .line 75
    invoke-static {v2, v3}, Lc/c/a/h/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v2, v1, Lc/c/a/f/a/h/f;->f:Lc/c/a/f/a/g;

    invoke-interface {v2}, Lc/c/a/f/a/g;->b()V

    move v6, v0

    :cond_14
    if-eqz v9, :cond_15

    const-string v2, "GLThread"

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onSurfaceChanged("

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc/c/a/h/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v2, v1, Lc/c/a/f/a/h/f;->f:Lc/c/a/f/a/g;

    invoke-interface {v2, v10, v11}, Lc/c/a/f/a/g;->e(II)V

    move v9, v0

    .line 79
    :cond_15
    iget-object v2, v1, Lc/c/a/f/a/h/f;->B:Lc/c/a/f/a/h/f$e;

    invoke-virtual {v2}, Lc/c/a/f/a/h/f$e;->a()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 80
    invoke-virtual/range {p0 .. p0}, Lc/c/a/f/a/h/f;->d()I

    move-result v2

    if-nez v2, :cond_16

    .line 81
    iget-object v2, v1, Lc/c/a/f/a/h/f;->B:Lc/c/a/f/a/h/f$e;

    invoke-virtual {v2}, Lc/c/a/f/a/h/f$e;->c()Z

    move-result v2

    if-nez v2, :cond_17

    .line 82
    iget-object v2, v1, Lc/c/a/f/a/h/f;->f:Lc/c/a/f/a/g;

    invoke-interface {v2}, Lc/c/a/f/a/g;->d()V

    goto :goto_9

    .line 83
    :cond_16
    iget-object v2, v1, Lc/c/a/f/a/h/f;->f:Lc/c/a/f/a/g;

    invoke-interface {v2}, Lc/c/a/f/a/g;->d()V

    .line 84
    :cond_17
    :goto_9
    iget-object v2, v1, Lc/c/a/f/a/h/f;->D:Lc/c/a/f/a/h/g;

    iget-wide v14, v1, Lc/c/a/f/a/h/f;->C:J

    invoke-interface {v2, v14, v15}, Lc/c/a/f/a/h/g;->b(J)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Lc/c/a/f/a/h/f;->d()I

    move-result v2

    const/16 v3, 0x3000

    if-nez v2, :cond_19

    .line 86
    iget-object v2, v1, Lc/c/a/f/a/h/f;->B:Lc/c/a/f/a/h/f$e;

    invoke-virtual {v2}, Lc/c/a/f/a/h/f$e;->c()Z

    move-result v2

    if-nez v2, :cond_18

    .line 87
    iget-object v2, v1, Lc/c/a/f/a/h/f;->D:Lc/c/a/f/a/h/g;

    invoke-interface {v2}, Lc/c/a/f/a/h/g;->a()I

    move-result v2

    goto :goto_a

    :cond_18
    move v2, v3

    goto :goto_a

    .line 88
    :cond_19
    iget-object v2, v1, Lc/c/a/f/a/h/f;->D:Lc/c/a/f/a/h/g;

    invoke-interface {v2}, Lc/c/a/f/a/h/g;->a()I

    move-result v2

    .line 89
    :goto_a
    iget-object v14, v1, Lc/c/a/f/a/h/f;->B:Lc/c/a/f/a/h/f$e;

    invoke-virtual {v14}, Lc/c/a/f/a/h/f$e;->b()V

    if-eq v2, v3, :cond_1b

    const/16 v3, 0x300e

    if-eq v2, v3, :cond_1a

    const-string v3, "GLThread"

    const-string v14, "eglSwapBuffers"

    .line 90
    invoke-static {v3, v14, v2}, Lc/c/a/f/a/h/c;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    iget-object v2, v1, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    const/4 v3, 0x1

    .line 92
    :try_start_b
    iput-boolean v3, v1, Lc/c/a/f/a/h/f;->n:Z

    .line 93
    iget-object v14, v1, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 94
    monitor-exit v2

    goto :goto_b

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v0

    :cond_1a
    const/4 v3, 0x1

    const-string v2, "GLThread"

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "egl context lost tid="

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lc/c/a/h/a;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move v4, v3

    goto :goto_b

    :cond_1b
    const/4 v3, 0x1

    :goto_b
    if-eqz v13, :cond_0

    move v13, v0

    move v5, v3

    goto/16 :goto_1

    :cond_1c
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 96
    :try_start_d
    iget-object v2, v1, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    move v4, v15

    goto/16 :goto_2

    :catchall_4
    move-exception v0

    .line 97
    monitor-exit v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catchall_5
    move-exception v0

    .line 98
    iget-object v2, v1, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    monitor-enter v2

    .line 99
    :try_start_f
    invoke-direct/range {p0 .. p0}, Lc/c/a/f/a/h/f;->r()V

    .line 100
    invoke-direct/range {p0 .. p0}, Lc/c/a/f/a/h/f;->q()V

    .line 101
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 102
    throw v0

    :catchall_6
    move-exception v0

    .line 103
    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw v0
.end method

.method private j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/f/a/h/f;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc/c/a/f/a/h/f;->m:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc/c/a/f/a/h/f;->n:Z

    if-nez v0, :cond_0

    iget v0, p0, Lc/c/a/f/a/h/f;->s:I

    if-lez v0, :cond_0

    iget v0, p0, Lc/c/a/f/a/h/f;->t:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lc/c/a/f/a/h/f;->u:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private q()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/f/a/h/f;->p:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/c/a/f/a/h/f;->D:Lc/c/a/f/a/h/g;

    invoke-interface {v0}, Lc/c/a/f/a/h/g;->c()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lc/c/a/f/a/h/f;->p:Z

    .line 4
    iget-object v0, p0, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {v0, p0}, Lc/c/a/f/a/h/f$l;->a(Lc/c/a/f/a/h/f;)V

    :cond_0
    return-void
.end method

.method private r()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/f/a/h/f;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc/c/a/f/a/h/f;->q:Z

    .line 3
    iget-object v0, p0, Lc/c/a/f/a/h/f;->D:Lc/c/a/f/a/h/g;

    invoke-interface {v0}, Lc/c/a/f/a/h/g;->d()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/f/a/h/f;->p:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc/c/a/f/a/h/f;->q:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc/c/a/f/a/h/f;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Lc/c/a/f/a/h/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/h/f;->A:Lc/c/a/f/a/h/b;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/f/a/h/f;->b:I

    return v0
.end method

.method public f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc/c/a/h/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lc/c/a/f/a/h/f;->k:Z

    .line 4
    iget-object v1, p0, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 5
    :goto_0
    iget-boolean v1, p0, Lc/c/a/f/a/h/f;->j:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lc/c/a/f/a/h/f;->l:Z

    if-nez v1, :cond_0

    const-string v1, "GLThread"

    const-string v2, "onPause waiting for mPaused."

    .line 6
    invoke-static {v1, v2}, Lc/c/a/h/a;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    iget-object v1, p0, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lc/c/a/f/a/h/f;->B:Lc/c/a/f/a/h/f$e;

    invoke-virtual {v1}, Lc/c/a/f/a/h/f$e;->e()V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc/c/a/h/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lc/c/a/f/a/h/f;->k:Z

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Lc/c/a/f/a/h/f;->u:Z

    .line 5
    iput-boolean v1, p0, Lc/c/a/f/a/h/f;->w:Z

    .line 6
    iget-object v1, p0, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 7
    :goto_0
    iget-boolean v1, p0, Lc/c/a/f/a/h/f;->j:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lc/c/a/f/a/h/f;->l:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lc/c/a/f/a/h/f;->w:Z

    if-nez v1, :cond_0

    const-string v1, "GLThread"

    const-string v2, "onResume waiting for !mPaused."

    .line 8
    invoke-static {v1, v2}, Lc/c/a/h/a;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    iget-object v1, p0, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 10
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lc/c/a/f/a/h/f;->B:Lc/c/a/f/a/h/f$e;

    invoke-virtual {v1}, Lc/c/a/f/a/h/f$e;->d()V

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public h(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowResize  width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput p1, p0, Lc/c/a/f/a/h/f;->s:I

    .line 4
    iput p2, p0, Lc/c/a/f/a/h/f;->t:I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lc/c/a/f/a/h/f;->y:Z

    .line 6
    iput-boolean p1, p0, Lc/c/a/f/a/h/f;->u:Z

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lc/c/a/f/a/h/f;->w:Z

    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    if-ne p1, p0, :cond_0

    .line 9
    monitor-exit v0

    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 11
    :goto_0
    iget-boolean p1, p0, Lc/c/a/f/a/h/f;->j:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lc/c/a/f/a/h/f;->l:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lc/c/a/f/a/h/f;->w:Z

    if-nez p1, :cond_1

    .line 12
    invoke-virtual {p0}, Lc/c/a/f/a/h/f;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "GLThread"

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowResize waiting for render complete from tid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lc/c/a/h/a;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    iget-object p1, p0, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 15
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 16
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public i(Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/c/a/f/a/h/f;->x:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "r must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lc/c/a/f/a/h/f;->i:Z

    .line 3
    iget-object v1, p0, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    :goto_0
    iget-boolean v1, p0, Lc/c/a/f/a/h/f;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 5
    :try_start_1
    iget-object v1, p0, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public l()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lc/c/a/f/a/h/f;->m(J)V

    return-void
.end method

.method public m(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lc/c/a/f/a/h/f;->C:J

    .line 2
    iget-object p1, p0, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    monitor-enter p1

    const/4 p2, 0x1

    .line 3
    :try_start_0
    iput-boolean p2, p0, Lc/c/a/f/a/h/f;->u:Z

    .line 4
    iget-object p2, p0, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lc/c/a/f/a/h/f;->v:Z

    .line 5
    iput-boolean v1, p0, Lc/c/a/f/a/h/f;->u:Z

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lc/c/a/f/a/h/f;->w:Z

    .line 7
    iget-object v1, p0, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 8
    :goto_0
    iget-boolean v1, p0, Lc/c/a/f/a/h/f;->j:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lc/c/a/f/a/h/f;->l:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lc/c/a/f/a/h/f;->w:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lc/c/a/f/a/h/f;->a()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 9
    :try_start_1
    iget-object v1, p0, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 10
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 11
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public o(Lc/c/a/f/a/h/f$m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/f/a/h/f;->h:Lc/c/a/f/a/h/f$m;

    return-void
.end method

.method public p(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/h/f;->g:Ljava/lang/Object;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc/c/a/f/a/h/f;->z:Z

    .line 3
    :cond_0
    iput-object p1, p0, Lc/c/a/f/a/h/f;->g:Ljava/lang/Object;

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "starting tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLThread"

    invoke-static {v1, v0}, Lc/c/a/h/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-direct {p0}, Lc/c/a/f/a/h/f;->e()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    iget-object v0, p0, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {v0, p0}, Lc/c/a/f/a/h/f$l;->b(Lc/c/a/f/a/h/f;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, ""

    .line 5
    invoke-static {v1, v2, v0}, Lc/c/a/h/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 6
    :goto_2
    iget-object v1, p0, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {v1, p0}, Lc/c/a/f/a/h/f$l;->b(Lc/c/a/f/a/h/f;)V

    .line 7
    throw v0
.end method

.method public s()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceCreated tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc/c/a/h/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lc/c/a/f/a/h/f;->m:Z

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lc/c/a/f/a/h/f;->r:Z

    .line 5
    iget-object v1, p0, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 6
    :goto_0
    iget-boolean v1, p0, Lc/c/a/f/a/h/f;->o:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lc/c/a/f/a/h/f;->r:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lc/c/a/f/a/h/f;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 7
    :try_start_1
    iget-object v1, p0, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 9
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    .line 2
    iget-object v0, p0, Lc/c/a/f/a/h/f;->B:Lc/c/a/f/a/h/f$e;

    invoke-virtual {v0}, Lc/c/a/f/a/h/f$e;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public t()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    monitor-enter v0

    :try_start_0
    const-string v1, "GLThread"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceDestroyed tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc/c/a/h/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lc/c/a/f/a/h/f;->m:Z

    .line 4
    iget-object v1, p0, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 5
    :goto_0
    iget-boolean v1, p0, Lc/c/a/f/a/h/f;->o:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lc/c/a/f/a/h/f;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 6
    :try_start_1
    iget-object v1, p0, Lc/c/a/f/a/h/f;->a:Lc/c/a/f/a/h/f$l;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
