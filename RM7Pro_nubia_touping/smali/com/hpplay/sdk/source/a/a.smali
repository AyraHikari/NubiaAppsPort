.class public abstract Lcom/hpplay/sdk/source/a/a;
.super Ljava/util/Observable;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/a/a$a;,
        Lcom/hpplay/sdk/source/a/a$b;
    }
.end annotation


# static fields
.field public static f:I

.field private static i:S


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:I

.field protected final c:Ljava/lang/String;

.field protected final d:Ljava/lang/String;

.field protected final e:Ljava/lang/String;

.field g:Ljava/net/Socket;

.field private final h:Ljava/lang/String;

.field private final j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/hpplay/sdk/source/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final k:I

.field private l:I

.field private m:I

.field private final n:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/io/DataOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/io/DataInputStream;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/hpplay/common/asyncmanager/AsyncThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x1000

    sput-short v0, Lcom/hpplay/sdk/source/a/a;->i:S

    .line 44
    const v0, 0x186a0

    sput v0, Lcom/hpplay/sdk/source/a/a;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 54
    sget-short v6, Lcom/hpplay/sdk/source/a/a;->i:S

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/hpplay/sdk/source/a/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 25
    const-string v0, "AbstractBlockingClient"

    iput-object v0, p0, Lcom/hpplay/sdk/source/a/a;->h:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/hpplay/sdk/source/a/a$b;->STOPPED:Lcom/hpplay/sdk/source/a/a$b;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/a/a;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 36
    const v0, 0xc350

    iput v0, p0, Lcom/hpplay/sdk/source/a/a;->l:I

    .line 37
    const v0, 0x2bf20

    iput v0, p0, Lcom/hpplay/sdk/source/a/a;->m:I

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/a/a;->n:Ljava/util/concurrent/atomic/AtomicReference;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/a/a;->o:Ljava/util/concurrent/atomic/AtomicReference;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/a/a;->g:Ljava/net/Socket;

    .line 69
    iput-object p1, p0, Lcom/hpplay/sdk/source/a/a;->a:Ljava/lang/String;

    .line 70
    iput p2, p0, Lcom/hpplay/sdk/source/a/a;->b:I

    .line 71
    iput-object p3, p0, Lcom/hpplay/sdk/source/a/a;->c:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/hpplay/sdk/source/a/a;->e:Ljava/lang/String;

    .line 73
    iput-object p5, p0, Lcom/hpplay/sdk/source/a/a;->d:Ljava/lang/String;

    .line 74
    iput p6, p0, Lcom/hpplay/sdk/source/a/a;->k:I

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/a/a;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a;->j:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/a/a;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/hpplay/sdk/source/a/a;->l:I

    return v0
.end method

.method private b(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 312
    .line 313
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move v1, v0

    .line 314
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 315
    aget-byte v3, v2, v0

    add-int/2addr v1, v3

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_0
    return v1
.end method

.method private l()V
    .locals 2

    .prologue
    .line 324
    const-string v0, "AbstractBlockingClient"

    const-string v1, "heartBeat"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    new-instance v0, Lcom/hpplay/common/asyncmanager/AsyncThread;

    new-instance v1, Lcom/hpplay/sdk/source/a/a$a;

    invoke-direct {v1, p0}, Lcom/hpplay/sdk/source/a/a$a;-><init>(Lcom/hpplay/sdk/source/a/a;)V

    invoke-direct {v0, v1}, Lcom/hpplay/common/asyncmanager/AsyncThread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/a/a;->p:Lcom/hpplay/common/asyncmanager/AsyncThread;

    .line 326
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a;->p:Lcom/hpplay/common/asyncmanager/AsyncThread;

    invoke-virtual {v0}, Lcom/hpplay/common/asyncmanager/AsyncThread;->start()V

    .line 327
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/hpplay/sdk/source/a/a;->b:I

    return v0
.end method

.method protected abstract a(JLjava/lang/String;)V
.end method

.method protected abstract a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method protected abstract a(Z)V
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/hpplay/sdk/source/a/a$b;->RUNNING:Lcom/hpplay/sdk/source/a/a$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/hpplay/sdk/source/a/a$b;->STOPPED:Lcom/hpplay/sdk/source/a/a$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 201
    sget v0, Lcom/hpplay/sdk/source/a/a;->f:I

    int-to-long v0, v0

    const-string v2, "reConnect"

    invoke-virtual {p0, v0, v1, v2}, Lcom/hpplay/sdk/source/a/a;->a(JLjava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a;->p:Lcom/hpplay/common/asyncmanager/AsyncThread;

    if-eqz v0, :cond_0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a;->p:Lcom/hpplay/common/asyncmanager/AsyncThread;

    invoke-virtual {v0}, Lcom/hpplay/common/asyncmanager/AsyncThread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    const-string v1, "AbstractBlockingClient"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/a/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 219
    const-string v0, "imserver"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a;->j:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/hpplay/sdk/source/a/a$b;->STOPPED:Lcom/hpplay/sdk/source/a/a$b;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a;->g:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/a/a;->g:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a;->o:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 232
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 238
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a;->p:Lcom/hpplay/common/asyncmanager/AsyncThread;

    invoke-virtual {v0}, Lcom/hpplay/common/asyncmanager/AsyncThread;->interrupt()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 250
    :goto_2
    const/4 v0, 0x0

    return v0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    const-string v1, "AbstractBlockingClient"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/a/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 233
    :catch_1
    move-exception v0

    .line 234
    const-string v1, "AbstractBlockingClient"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/a/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 239
    :catch_2
    move-exception v0

    .line 240
    const-string v1, "AbstractBlockingClient"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/a/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public declared-synchronized g()Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hpplay/sdk/source/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    .line 263
    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 266
    int-to-long v4, v0

    const/4 v0, 0x0

    const/4 v3, 0x4

    invoke-static {v2, v4, v5, v0, v3}, Lcom/hpplay/sdk/source/a/b;->a([BJII)I

    move-result v0

    .line 268
    const-wide/16 v4, 0x10

    const/4 v3, 0x2

    invoke-static {v2, v4, v5, v0, v3}, Lcom/hpplay/sdk/source/a/b;->a([BJII)I

    move-result v0

    .line 270
    const-wide/16 v4, 0x1

    const/4 v3, 0x2

    invoke-static {v2, v4, v5, v0, v3}, Lcom/hpplay/sdk/source/a/b;->a([BJII)I

    move-result v0

    .line 272
    const-wide/16 v4, 0x7

    const/4 v3, 0x4

    invoke-static {v2, v4, v5, v0, v3}, Lcom/hpplay/sdk/source/a/b;->a([BJII)I

    move-result v0

    .line 274
    const-wide/16 v4, 0x1

    const/4 v3, 0x4

    invoke-static {v2, v4, v5, v0, v3}, Lcom/hpplay/sdk/source/a/b;->a([BJII)I

    .line 275
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/a/b;->a([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 276
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 277
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    const-string v0, "AbstractBlockingClient"

    const-string v1, "heartBeatWrite"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/hpplay/sdk/source/a/a;->c:Ljava/lang/String;

    .line 290
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    .line 291
    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 294
    int-to-long v4, v0

    const/4 v0, 0x0

    const/4 v3, 0x4

    invoke-static {v2, v4, v5, v0, v3}, Lcom/hpplay/sdk/source/a/b;->a([BJII)I

    move-result v0

    .line 296
    const-wide/16 v4, 0x10

    const/4 v3, 0x2

    invoke-static {v2, v4, v5, v0, v3}, Lcom/hpplay/sdk/source/a/b;->a([BJII)I

    move-result v0

    .line 298
    const-wide/16 v4, 0x1

    const/4 v3, 0x2

    invoke-static {v2, v4, v5, v0, v3}, Lcom/hpplay/sdk/source/a/b;->a([BJII)I

    move-result v0

    .line 300
    const-wide/16 v4, 0x2

    const/4 v3, 0x4

    invoke-static {v2, v4, v5, v0, v3}, Lcom/hpplay/sdk/source/a/b;->a([BJII)I

    move-result v0

    .line 302
    const-wide/16 v4, 0x1

    const/4 v3, 0x4

    invoke-static {v2, v4, v5, v0, v3}, Lcom/hpplay/sdk/source/a/b;->a([BJII)I

    .line 303
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/a/b;->a([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 304
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 305
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract i()V
.end method

.method protected abstract j()V
.end method

.method protected abstract k()V
.end method

.method public run()V
    .locals 6

    .prologue
    .line 126
    const-string v0, "AbstractBlockingClient"

    const-string v1, "run"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/a/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/a/a;->g:Ljava/net/Socket;

    .line 130
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lcom/hpplay/sdk/source/a/a;->a:Ljava/lang/String;

    iget v2, p0, Lcom/hpplay/sdk/source/a/a;->b:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/a/a;->g:Ljava/net/Socket;

    .line 131
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a;->g:Ljava/net/Socket;

    iget v1, p0, Lcom/hpplay/sdk/source/a/a;->m:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 132
    const-string v0, "imserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start connect im IP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/a/a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a;->n:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/hpplay/sdk/source/a/a;->g:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a;->o:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/io/DataInputStream;

    iget-object v2, p0, Lcom/hpplay/sdk/source/a/a;->g:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a;->j:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/hpplay/sdk/source/a/a$b;->STOPPED:Lcom/hpplay/sdk/source/a/a$b;

    sget-object v2, Lcom/hpplay/sdk/source/a/a$b;->RUNNING:Lcom/hpplay/sdk/source/a/a$b;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/a/a;->g()Ljava/lang/Boolean;

    .line 141
    :goto_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/hpplay/sdk/source/a/a$b;->RUNNING:Lcom/hpplay/sdk/source/a/a$b;

    if-ne v0, v1, :cond_3

    .line 143
    iget v0, p0, Lcom/hpplay/sdk/source/a/a;->k:I

    new-array v1, v0, [B

    .line 144
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/DataInputStream;

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->read([B)I

    move-result v0

    .line 145
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 146
    array-length v0, v1

    add-int/lit8 v0, v0, -0x10

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/a/b;->a([BI)[B

    move-result-object v0

    .line 148
    const/16 v2, 0x8

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lcom/hpplay/sdk/source/a/b;->a([BII)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 149
    const-wide/16 v2, 0x3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 150
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/a/a;->i()V

    .line 171
    :cond_1
    :goto_2
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    const-string v1, "AbstractBlockingClient"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/a/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    const-string v1, "AbstractBlockingClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client failure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/a/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a;->j:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/hpplay/sdk/source/a/a$b;->STOPPED:Lcom/hpplay/sdk/source/a/a$b;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a;->g:Ljava/net/Socket;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a;->g:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 181
    :cond_2
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/a/a;->k()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 186
    :goto_3
    const-wide/32 v0, 0xea60

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 191
    :goto_4
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/a/a;->e()V

    .line 193
    :cond_3
    const-string v0, "AbstractBlockingClient"

    const-string v1, "run end"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/a/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    :cond_4
    const-wide/16 v2, 0x8

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 152
    const-string v0, "AbstractBlockingClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/a/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/a/a;->j()V

    .line 154
    invoke-direct {p0}, Lcom/hpplay/sdk/source/a/a;->l()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 157
    :cond_5
    :try_start_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 159
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 160
    const-string v2, "AbstractBlockingClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run operation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/a/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 164
    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v0}, Lcom/hpplay/sdk/source/a/a;->a(JLjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 165
    :catch_1
    move-exception v0

    .line 166
    :try_start_5
    const-string v1, "AbstractBlockingClient"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/a/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 182
    :catch_2
    move-exception v0

    .line 183
    const-string v1, "AbstractBlockingClient"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/a/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 187
    :catch_3
    move-exception v0

    .line 188
    const-string v1, "AbstractBlockingClient"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/a/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4
.end method
