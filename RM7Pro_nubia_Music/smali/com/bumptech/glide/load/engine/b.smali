.class public Lcom/bumptech/glide/load/engine/b;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/b/h$a;
.implements Lcom/bumptech/glide/load/engine/d;
.implements Lcom/bumptech/glide/load/engine/g$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/b$a;,
        Lcom/bumptech/glide/load/engine/b$d;,
        Lcom/bumptech/glide/load/engine/b$e;,
        Lcom/bumptech/glide/load/engine/b$b;,
        Lcom/bumptech/glide/load/engine/b$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/b;",
            "Lcom/bumptech/glide/load/engine/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/engine/f;

.field private final c:Lcom/bumptech/glide/load/engine/b/h;

.field private final d:Lcom/bumptech/glide/load/engine/b$a;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/b;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bumptech/glide/load/engine/g",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/bumptech/glide/load/engine/j;

.field private final g:Lcom/bumptech/glide/load/engine/b$b;

.field private h:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/bumptech/glide/load/engine/g",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/b/h;Lcom/bumptech/glide/load/engine/b/a$a;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/load/engine/b;-><init>(Lcom/bumptech/glide/load/engine/b/h;Lcom/bumptech/glide/load/engine/b/a$a;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;Lcom/bumptech/glide/load/engine/f;Ljava/util/Map;Lcom/bumptech/glide/load/engine/b$a;Lcom/bumptech/glide/load/engine/j;)V

    .line 64
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/b/h;Lcom/bumptech/glide/load/engine/b/a$a;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;Lcom/bumptech/glide/load/engine/f;Ljava/util/Map;Lcom/bumptech/glide/load/engine/b$a;Lcom/bumptech/glide/load/engine/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/b/h;",
            "Lcom/bumptech/glide/load/engine/b/a$a;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/b;",
            "Lcom/bumptech/glide/load/engine/c;",
            ">;",
            "Lcom/bumptech/glide/load/engine/f;",
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/b;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/bumptech/glide/load/engine/g",
            "<*>;>;>;",
            "Lcom/bumptech/glide/load/engine/b$a;",
            "Lcom/bumptech/glide/load/engine/j;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/b;->c:Lcom/bumptech/glide/load/engine/b/h;

    .line 72
    new-instance v0, Lcom/bumptech/glide/load/engine/b$b;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/engine/b$b;-><init>(Lcom/bumptech/glide/load/engine/b/a$a;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/b;->g:Lcom/bumptech/glide/load/engine/b$b;

    .line 74
    if-nez p7, :cond_0

    .line 75
    new-instance p7, Ljava/util/HashMap;

    invoke-direct {p7}, Ljava/util/HashMap;-><init>()V

    .line 77
    :cond_0
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/b;->e:Ljava/util/Map;

    .line 79
    if-nez p6, :cond_1

    .line 80
    new-instance p6, Lcom/bumptech/glide/load/engine/f;

    invoke-direct {p6}, Lcom/bumptech/glide/load/engine/f;-><init>()V

    .line 82
    :cond_1
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/b;->b:Lcom/bumptech/glide/load/engine/f;

    .line 84
    if-nez p5, :cond_2

    .line 85
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 87
    :cond_2
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/b;->a:Ljava/util/Map;

    .line 89
    if-nez p8, :cond_3

    .line 90
    new-instance p8, Lcom/bumptech/glide/load/engine/b$a;

    invoke-direct {p8, p3, p4, p0}, Lcom/bumptech/glide/load/engine/b$a;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/bumptech/glide/load/engine/d;)V

    .line 92
    :cond_3
    iput-object p8, p0, Lcom/bumptech/glide/load/engine/b;->d:Lcom/bumptech/glide/load/engine/b$a;

    .line 94
    if-nez p9, :cond_4

    .line 95
    new-instance p9, Lcom/bumptech/glide/load/engine/j;

    invoke-direct {p9}, Lcom/bumptech/glide/load/engine/j;-><init>()V

    .line 97
    :cond_4
    iput-object p9, p0, Lcom/bumptech/glide/load/engine/b;->f:Lcom/bumptech/glide/load/engine/j;

    .line 99
    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/b/h;->a(Lcom/bumptech/glide/load/engine/b/h$a;)V

    .line 100
    return-void
.end method

.method private a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/load/engine/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b;",
            ")",
            "Lcom/bumptech/glide/load/engine/g",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->c:Lcom/bumptech/glide/load/engine/b/h;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/b/h;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/load/engine/i;

    move-result-object v0

    .line 235
    if-nez v0, :cond_0

    .line 236
    const/4 v0, 0x0

    .line 243
    :goto_0
    return-object v0

    .line 237
    :cond_0
    instance-of v1, v0, Lcom/bumptech/glide/load/engine/g;

    if-eqz v1, :cond_1

    .line 239
    check-cast v0, Lcom/bumptech/glide/load/engine/g;

    goto :goto_0

    .line 241
    :cond_1
    new-instance v1, Lcom/bumptech/glide/load/engine/g;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/load/engine/g;-><init>(Lcom/bumptech/glide/load/engine/i;Z)V

    move-object v0, v1

    goto :goto_0
.end method

.method private a(Lcom/bumptech/glide/load/b;Z)Lcom/bumptech/glide/load/engine/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b;",
            "Z)",
            "Lcom/bumptech/glide/load/engine/g",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 199
    if-nez p2, :cond_0

    .line 214
    :goto_0
    return-object v1

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 205
    if-eqz v0, :cond_2

    .line 206
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/g;

    .line 207
    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/g;->e()V

    :goto_1
    move-object v1, v0

    .line 214
    goto :goto_0

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/b;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;JLcom/bumptech/glide/load/b;)V
    .locals 5

    .prologue
    .line 195
    const-string v0, "Engine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/bumptech/glide/g/d;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method private b(Lcom/bumptech/glide/load/b;Z)Lcom/bumptech/glide/load/engine/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b;",
            "Z)",
            "Lcom/bumptech/glide/load/engine/g",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 218
    if-nez p2, :cond_1

    .line 219
    const/4 v0, 0x0

    .line 227
    :cond_0
    :goto_0
    return-object v0

    .line 222
    :cond_1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/b;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/load/engine/g;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/g;->e()V

    .line 225
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/b;->e:Ljava/util/Map;

    new-instance v2, Lcom/bumptech/glide/load/engine/b$e;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/b;->b()Ljava/lang/ref/ReferenceQueue;

    move-result-object v3

    invoke-direct {v2, p1, v0, v3}, Lcom/bumptech/glide/load/engine/b$e;-><init>(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/g;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private b()Ljava/lang/ref/ReferenceQueue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/bumptech/glide/load/engine/g",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->h:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/b;->h:Ljava/lang/ref/ReferenceQueue;

    .line 304
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 305
    new-instance v1, Lcom/bumptech/glide/load/engine/b$d;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/b;->e:Ljava/util/Map;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/b;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/engine/b$d;-><init>(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->h:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/b;IILcom/bumptech/glide/load/a/c;Lcom/bumptech/glide/e/b;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/resource/e/c;Lcom/bumptech/glide/Priority;ZLcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/request/f;)Lcom/bumptech/glide/load/engine/b$c;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/b;",
            "II",
            "Lcom/bumptech/glide/load/a/c",
            "<TT;>;",
            "Lcom/bumptech/glide/e/b",
            "<TT;TZ;>;",
            "Lcom/bumptech/glide/load/f",
            "<TZ;>;",
            "Lcom/bumptech/glide/load/resource/e/c",
            "<TZ;TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Z",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Lcom/bumptech/glide/request/f;",
            ")",
            "Lcom/bumptech/glide/load/engine/b$c;"
        }
    .end annotation

    .prologue
    .line 145
    invoke-static {}, Lcom/bumptech/glide/g/h;->a()V

    .line 146
    invoke-static {}, Lcom/bumptech/glide/g/d;->a()J

    move-result-wide v14

    .line 148
    invoke-interface/range {p4 .. p4}, Lcom/bumptech/glide/load/a/c;->b()Ljava/lang/String;

    move-result-object v3

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/b;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-interface/range {p5 .. p5}, Lcom/bumptech/glide/e/b;->a()Lcom/bumptech/glide/load/d;

    move-result-object v7

    invoke-interface/range {p5 .. p5}, Lcom/bumptech/glide/e/b;->b()Lcom/bumptech/glide/load/d;

    move-result-object v8

    invoke-interface/range {p5 .. p5}, Lcom/bumptech/glide/e/b;->d()Lcom/bumptech/glide/load/e;

    move-result-object v10

    invoke-interface/range {p5 .. p5}, Lcom/bumptech/glide/e/b;->c()Lcom/bumptech/glide/load/a;

    move-result-object v12

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v9, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v12}, Lcom/bumptech/glide/load/engine/f;->a(Ljava/lang/String;Lcom/bumptech/glide/load/b;IILcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/e;Lcom/bumptech/glide/load/resource/e/c;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/load/engine/e;

    move-result-object v3

    .line 153
    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-direct {v0, v3, v1}, Lcom/bumptech/glide/load/engine/b;->b(Lcom/bumptech/glide/load/b;Z)Lcom/bumptech/glide/load/engine/g;

    move-result-object v2

    .line 154
    if-eqz v2, :cond_1

    .line 155
    move-object/from16 v0, p11

    invoke-interface {v0, v2}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/engine/i;)V

    .line 156
    const-string v2, "Engine"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    const-string v2, "Loaded resource from cache"

    invoke-static {v2, v14, v15, v3}, Lcom/bumptech/glide/load/engine/b;->a(Ljava/lang/String;JLcom/bumptech/glide/load/b;)V

    .line 159
    :cond_0
    const/4 v2, 0x0

    .line 191
    :goto_0
    return-object v2

    .line 162
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-direct {v0, v3, v1}, Lcom/bumptech/glide/load/engine/b;->a(Lcom/bumptech/glide/load/b;Z)Lcom/bumptech/glide/load/engine/g;

    move-result-object v2

    .line 163
    if-eqz v2, :cond_3

    .line 164
    move-object/from16 v0, p11

    invoke-interface {v0, v2}, Lcom/bumptech/glide/request/f;->a(Lcom/bumptech/glide/load/engine/i;)V

    .line 165
    const-string v2, "Engine"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    const-string v2, "Loaded resource from active resources"

    invoke-static {v2, v14, v15, v3}, Lcom/bumptech/glide/load/engine/b;->a(Ljava/lang/String;JLcom/bumptech/glide/load/b;)V

    .line 168
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 171
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/b;->a:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/engine/c;

    .line 172
    if-eqz v2, :cond_5

    .line 173
    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/load/engine/c;->a(Lcom/bumptech/glide/request/f;)V

    .line 174
    const-string v4, "Engine"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 175
    const-string v4, "Added to existing load"

    invoke-static {v4, v14, v15, v3}, Lcom/bumptech/glide/load/engine/b;->a(Ljava/lang/String;JLcom/bumptech/glide/load/b;)V

    .line 177
    :cond_4
    new-instance v3, Lcom/bumptech/glide/load/engine/b$c;

    move-object/from16 v0, p11

    invoke-direct {v3, v0, v2}, Lcom/bumptech/glide/load/engine/b$c;-><init>(Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/load/engine/c;)V

    move-object v2, v3

    goto :goto_0

    .line 180
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/b;->d:Lcom/bumptech/glide/load/engine/b$a;

    move/from16 v0, p9

    invoke-virtual {v2, v3, v0}, Lcom/bumptech/glide/load/engine/b$a;->a(Lcom/bumptech/glide/load/b;Z)Lcom/bumptech/glide/load/engine/c;

    move-result-object v13

    .line 181
    new-instance v2, Lcom/bumptech/glide/load/engine/a;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bumptech/glide/load/engine/b;->g:Lcom/bumptech/glide/load/engine/b$b;

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v11, p10

    move-object/from16 v12, p8

    invoke-direct/range {v2 .. v12}, Lcom/bumptech/glide/load/engine/a;-><init>(Lcom/bumptech/glide/load/engine/e;IILcom/bumptech/glide/load/a/c;Lcom/bumptech/glide/e/b;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/resource/e/c;Lcom/bumptech/glide/load/engine/a$a;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;)V

    .line 183
    new-instance v4, Lcom/bumptech/glide/load/engine/EngineRunnable;

    move-object/from16 v0, p8

    invoke-direct {v4, v13, v2, v0}, Lcom/bumptech/glide/load/engine/EngineRunnable;-><init>(Lcom/bumptech/glide/load/engine/EngineRunnable$a;Lcom/bumptech/glide/load/engine/a;Lcom/bumptech/glide/Priority;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/b;->a:Ljava/util/Map;

    invoke-interface {v2, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    move-object/from16 v0, p11

    invoke-virtual {v13, v0}, Lcom/bumptech/glide/load/engine/c;->a(Lcom/bumptech/glide/request/f;)V

    .line 186
    invoke-virtual {v13, v4}, Lcom/bumptech/glide/load/engine/c;->a(Lcom/bumptech/glide/load/engine/EngineRunnable;)V

    .line 188
    const-string v2, "Engine"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 189
    const-string v2, "Started new load"

    invoke-static {v2, v14, v15, v3}, Lcom/bumptech/glide/load/engine/b;->a(Ljava/lang/String;JLcom/bumptech/glide/load/b;)V

    .line 191
    :cond_6
    new-instance v2, Lcom/bumptech/glide/load/engine/b$c;

    move-object/from16 v0, p11

    invoke-direct {v2, v0, v13}, Lcom/bumptech/glide/load/engine/b$c;-><init>(Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/load/engine/c;)V

    goto/16 :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->g:Lcom/bumptech/glide/load/engine/b$b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/b$b;->a()Lcom/bumptech/glide/load/engine/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/b/a;->a()V

    .line 299
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b;",
            "Lcom/bumptech/glide/load/engine/g",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 258
    invoke-static {}, Lcom/bumptech/glide/g/h;->a()V

    .line 260
    if-eqz p2, :cond_0

    .line 261
    invoke-virtual {p2, p1, p0}, Lcom/bumptech/glide/load/engine/g;->a(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/g$a;)V

    .line 263
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->e:Ljava/util/Map;

    new-instance v1, Lcom/bumptech/glide/load/engine/b$e;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/b;->b()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/bumptech/glide/load/engine/b$e;-><init>(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/g;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/c;Lcom/bumptech/glide/load/b;)V
    .locals 1

    .prologue
    .line 273
    invoke-static {}, Lcom/bumptech/glide/g/h;->a()V

    .line 274
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/c;

    .line 275
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_0
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/i;)V
    .locals 2

    .prologue
    .line 247
    invoke-static {}, Lcom/bumptech/glide/g/h;->a()V

    .line 248
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/g;

    if-eqz v0, :cond_0

    .line 249
    check-cast p1, Lcom/bumptech/glide/load/engine/g;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/g;->f()V

    .line 253
    return-void

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot release anything but an EngineResource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/g;)V
    .locals 1

    .prologue
    .line 288
    invoke-static {}, Lcom/bumptech/glide/g/h;->a()V

    .line 289
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->c:Lcom/bumptech/glide/load/engine/b/h;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/engine/b/h;->b(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/i;)Lcom/bumptech/glide/load/engine/i;

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->f:Lcom/bumptech/glide/load/engine/j;

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/load/engine/j;->a(Lcom/bumptech/glide/load/engine/i;)V

    goto :goto_0
.end method

.method public b(Lcom/bumptech/glide/load/engine/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/i",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 282
    invoke-static {}, Lcom/bumptech/glide/g/h;->a()V

    .line 283
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b;->f:Lcom/bumptech/glide/load/engine/j;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/j;->a(Lcom/bumptech/glide/load/engine/i;)V

    .line 284
    return-void
.end method
