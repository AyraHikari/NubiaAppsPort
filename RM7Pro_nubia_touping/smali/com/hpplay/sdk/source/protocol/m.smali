.class public Lcom/hpplay/sdk/source/protocol/m;
.super Lcom/hpplay/sdk/source/protocol/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/protocol/m$b;,
        Lcom/hpplay/sdk/source/protocol/m$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "success"

.field public static final n:Ljava/lang/String; = "encrypt_failed"

.field public static final o:Ljava/lang/String; = "failed"

.field private static final p:Ljava/lang/String; = "ProtocolSender"


# instance fields
.field private q:I

.field private r:Z

.field private s:Lcom/hpplay/sdk/source/protocol/k;

.field private t:Lcom/hpplay/sdk/source/protocol/m$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/hpplay/sdk/source/protocol/h;-><init>()V

    .line 22
    const/16 v0, 0xdf3

    iput v0, p0, Lcom/hpplay/sdk/source/protocol/m;->q:I

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/m;->r:Z

    .line 24
    new-instance v0, Lcom/hpplay/sdk/source/protocol/k;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/k;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/m;->s:Lcom/hpplay/sdk/source/protocol/k;

    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/protocol/m;)Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/m;->r:Z

    return v0
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/protocol/m;Z)Z
    .locals 0

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/protocol/m;->r:Z

    return p1
.end method

.method static synthetic b(Lcom/hpplay/sdk/source/protocol/m;)Lcom/hpplay/sdk/source/protocol/k;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m;->s:Lcom/hpplay/sdk/source/protocol/k;

    return-object v0
.end method


# virtual methods
.method public varargs a(Lcom/hpplay/sdk/source/protocol/j;[[B)V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/hpplay/sdk/source/protocol/i;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/protocol/i;-><init>()V

    .line 99
    invoke-virtual {v0, p2}, Lcom/hpplay/sdk/source/protocol/i;->a([[B)V

    .line 100
    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/protocol/i;->a(Lcom/hpplay/sdk/source/protocol/j;)V

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/m;->s:Lcom/hpplay/sdk/source/protocol/k;

    invoke-virtual {v1, v0}, Lcom/hpplay/sdk/source/protocol/k;->a(Lcom/hpplay/sdk/source/protocol/i;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    const-string v1, "ProtocolSender"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ILcom/hpplay/sdk/source/protocol/m$a;)V
    .locals 3

    .prologue
    .line 40
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/m;->g:Ljava/lang/String;

    .line 41
    iput p2, p0, Lcom/hpplay/sdk/source/protocol/m;->h:I

    .line 42
    iget v0, p0, Lcom/hpplay/sdk/source/protocol/m;->q:I

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/hpplay/sdk/source/protocol/m;->q:I

    .line 43
    const-string v0, "ProtocolSender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   keepAlive mPort "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hpplay/sdk/source/protocol/m;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/hpplay/sdk/source/protocol/m$b;

    invoke-direct {v0, p0, p3}, Lcom/hpplay/sdk/source/protocol/m$b;-><init>(Lcom/hpplay/sdk/source/protocol/m;Lcom/hpplay/sdk/source/protocol/m$a;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/m;->t:Lcom/hpplay/sdk/source/protocol/m$b;

    .line 45
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m;->t:Lcom/hpplay/sdk/source/protocol/m$b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m$b;->start()V

    .line 46
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Lcom/hpplay/sdk/source/protocol/m$a;)V
    .locals 4

    .prologue
    .line 58
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/m;->g:Ljava/lang/String;

    .line 59
    iput p2, p0, Lcom/hpplay/sdk/source/protocol/m;->h:I

    .line 60
    new-instance v0, Lcom/hpplay/sdk/source/protocol/encrypt/d;

    invoke-direct {v0, p3}, Lcom/hpplay/sdk/source/protocol/encrypt/d;-><init>(Ljava/lang/String;)V

    .line 61
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a(Ljava/lang/String;)V

    .line 62
    const-string v1, "ProtocolSender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   keepAlive mPort "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/hpplay/sdk/source/protocol/m;->q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v1, Lcom/hpplay/sdk/source/protocol/m$b;

    invoke-direct {v1, p0, v0, p4}, Lcom/hpplay/sdk/source/protocol/m$b;-><init>(Lcom/hpplay/sdk/source/protocol/m;Lcom/hpplay/sdk/source/protocol/encrypt/d;Lcom/hpplay/sdk/source/protocol/m$a;)V

    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/m;->t:Lcom/hpplay/sdk/source/protocol/m$b;

    .line 64
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m;->t:Lcom/hpplay/sdk/source/protocol/m$b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m$b;->start()V

    .line 65
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/protocol/m$a;)V
    .locals 4

    .prologue
    .line 78
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/m;->g:Ljava/lang/String;

    .line 79
    iput p2, p0, Lcom/hpplay/sdk/source/protocol/m;->h:I

    .line 80
    new-instance v0, Lcom/hpplay/sdk/source/protocol/encrypt/d;

    invoke-direct {v0, p3}, Lcom/hpplay/sdk/source/protocol/encrypt/d;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, p4}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a(Ljava/lang/String;)V

    .line 82
    const-string v1, "ProtocolSender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   keepAlive mPort "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/hpplay/sdk/source/protocol/m;->q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v1, Lcom/hpplay/sdk/source/protocol/m$b;

    invoke-direct {v1, p0, v0, p5}, Lcom/hpplay/sdk/source/protocol/m$b;-><init>(Lcom/hpplay/sdk/source/protocol/m;Lcom/hpplay/sdk/source/protocol/encrypt/d;Lcom/hpplay/sdk/source/protocol/m$a;)V

    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/m;->t:Lcom/hpplay/sdk/source/protocol/m$b;

    .line 84
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m;->t:Lcom/hpplay/sdk/source/protocol/m$b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m$b;->start()V

    .line 85
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m;->t:Lcom/hpplay/sdk/source/protocol/m$b;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m;->t:Lcom/hpplay/sdk/source/protocol/m$b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m$b;->isStartListen()Z

    move-result v0

    .line 249
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized b()V
    .locals 3

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m;->t:Lcom/hpplay/sdk/source/protocol/m$b;

    if-eqz v0, :cond_0

    .line 255
    const-string v0, "clskt"

    const-string v1, "stop thread"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m;->t:Lcom/hpplay/sdk/source/protocol/m$b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m$b;->clearCallbackListener()V

    .line 257
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m;->t:Lcom/hpplay/sdk/source/protocol/m$b;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/m$b;->interrupt()V

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/m;->t:Lcom/hpplay/sdk/source/protocol/m$b;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m;->s:Lcom/hpplay/sdk/source/protocol/k;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/k;->b()V

    .line 261
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m;->e:Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 263
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m;->e:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    .line 270
    :try_start_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 275
    :cond_2
    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m;->b:Ljava/net/Socket;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_3

    .line 277
    :try_start_5
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 278
    const-string v0, "ProtocolSender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/m;->b:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 282
    const/4 v0, 0x0

    :try_start_6
    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/m;->b:Ljava/net/Socket;

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/m;->e:Ljava/io/FileOutputStream;

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/m;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 289
    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    :try_start_7
    const-string v1, "ProtocolSender"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 271
    :catch_1
    move-exception v0

    .line 272
    :try_start_8
    const-string v1, "ProtocolSender"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 279
    :catch_2
    move-exception v0

    .line 280
    :try_start_9
    const-string v1, "ProtocolSender"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 282
    const/4 v0, 0x0

    :try_start_a
    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/m;->b:Ljava/net/Socket;

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/m;->e:Ljava/io/FileOutputStream;

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/m;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    goto :goto_2

    .line 282
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/m;->b:Ljava/net/Socket;

    .line 283
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/m;->e:Ljava/io/FileOutputStream;

    .line 284
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/m;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public b(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/m;->g:Ljava/lang/String;

    .line 90
    iput p2, p0, Lcom/hpplay/sdk/source/protocol/m;->h:I

    .line 91
    return-void
.end method
