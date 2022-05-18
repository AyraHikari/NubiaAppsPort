.class public Lcom/hpplay/sdk/source/protocol/l;
.super Lcom/hpplay/sdk/source/protocol/h;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final a:Ljava/lang/String; = "encrypt_failed"

.field private static final n:Ljava/lang/String; = "ProtocolReceiver"

.field private static final o:Ljava/lang/String; = "POST /heart"

.field private static final p:Ljava/lang/String; = "POST /event"

.field private static final q:Ljava/lang/String; = "POST /photo"


# instance fields
.field private r:Lcom/hpplay/sdk/source/protocol/j;

.field private s:Ljava/lang/Thread;

.field private t:I

.field private u:[B

.field private v:[B

.field private w:Z

.field private x:Lcom/hpplay/sdk/source/protocol/encrypt/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/hpplay/sdk/source/protocol/h;-><init>()V

    .line 26
    iput v1, p0, Lcom/hpplay/sdk/source/protocol/l;->t:I

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->u:[B

    .line 29
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/protocol/l;->w:Z

    .line 33
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/l;->g:Ljava/lang/String;

    .line 34
    iput p2, p0, Lcom/hpplay/sdk/source/protocol/l;->h:I

    .line 35
    const-string v0, "ProtocolReceiver"

    const-string v1, "create reverse"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lcom/hpplay/sdk/source/protocol/h;-><init>()V

    .line 26
    iput v0, p0, Lcom/hpplay/sdk/source/protocol/l;->t:I

    .line 27
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/l;->u:[B

    .line 29
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/l;->w:Z

    .line 39
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/l;->g:Ljava/lang/String;

    .line 40
    iput p2, p0, Lcom/hpplay/sdk/source/protocol/l;->h:I

    .line 41
    new-instance v0, Lcom/hpplay/sdk/source/protocol/encrypt/d;

    invoke-direct {v0, p3}, Lcom/hpplay/sdk/source/protocol/encrypt/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->x:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    .line 42
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->x:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a(Ljava/lang/String;)V

    .line 43
    const-string v0, "ProtocolReceiver"

    const-string v1, "create reverse"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/hpplay/sdk/source/protocol/h;-><init>()V

    .line 26
    iput v1, p0, Lcom/hpplay/sdk/source/protocol/l;->t:I

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->u:[B

    .line 29
    iput-boolean v1, p0, Lcom/hpplay/sdk/source/protocol/l;->w:Z

    .line 47
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/l;->g:Ljava/lang/String;

    .line 48
    iput p2, p0, Lcom/hpplay/sdk/source/protocol/l;->h:I

    .line 49
    new-instance v0, Lcom/hpplay/sdk/source/protocol/encrypt/d;

    invoke-direct {v0, p3}, Lcom/hpplay/sdk/source/protocol/encrypt/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->x:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    .line 50
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->x:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    invoke-virtual {v0, p4}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a(Ljava/lang/String;)V

    .line 51
    const-string v0, "ProtocolReceiver"

    const-string v1, "create reverse"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 228
    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/l;->e:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/l;->v:[B

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 231
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/l;->e:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 232
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/l;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v1, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([B)I

    move-result v1

    .line 233
    if-gez v1, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    .line 237
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->r:Lcom/hpplay/sdk/source/protocol/j;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->r:Lcom/hpplay/sdk/source/protocol/j;

    invoke-interface {v0, v2}, Lcom/hpplay/sdk/source/protocol/j;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    const-string v1, "ProtocolReceiver"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->x:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/l;->v:[B

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([[B)[B

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/l;->e:Ljava/io/FileOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 249
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->e:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    const-string v1, "ProtocolReceiver"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private declared-synchronized m()V
    .locals 2

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 330
    :try_start_1
    const-string v0, "ProtocolReceiver"

    const-string v1, "----------->closeSocket"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->e:Ljava/io/FileOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 339
    :try_start_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->e:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 345
    :cond_1
    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->b:Ljava/net/Socket;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_2

    .line 347
    :try_start_5
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 352
    :cond_2
    :goto_2
    const/4 v0, 0x0

    :try_start_6
    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->b:Ljava/net/Socket;

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->e:Ljava/io/FileOutputStream;

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 355
    monitor-exit p0

    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    :try_start_7
    const-string v1, "ProtocolReceiver"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 340
    :catch_1
    move-exception v0

    .line 341
    :try_start_8
    const-string v1, "ProtocolReceiver"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 348
    :catch_2
    move-exception v0

    .line 349
    const-string v1, "ProtocolReceiver"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->s:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 61
    const-string v0, "ProtocolReceiver"

    const-string v1, "---------------------->startReceive"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->s:Ljava/lang/Thread;

    .line 63
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->s:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 65
    :cond_0
    return-void
.end method

.method public a(Lcom/hpplay/sdk/source/protocol/j;[B)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/l;->r:Lcom/hpplay/sdk/source/protocol/j;

    .line 56
    iput-object p2, p0, Lcom/hpplay/sdk/source/protocol/l;->v:[B

    .line 57
    return-void
.end method

.method a([B)V
    .locals 5

    .prologue
    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->x:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->e([B)[B

    move-result-object v1

    .line 309
    if-eqz v1, :cond_1

    array-length v0, v1

    if-lez v0, :cond_1

    .line 310
    invoke-static {v1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getBody([B)[B

    move-result-object v2

    .line 312
    if-eqz v2, :cond_0

    array-length v0, v2

    const/16 v3, 0xa

    if-ge v0, v3, :cond_2

    .line 313
    :cond_0
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, v1

    const-string v4, "utf-8"

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 317
    :goto_0
    const-string v1, "ProtocolReceiver"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/l;->r:Lcom/hpplay/sdk/source/protocol/j;

    if-eqz v1, :cond_1

    .line 319
    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/l;->r:Lcom/hpplay/sdk/source/protocol/j;

    invoke-interface {v1, v0}, Lcom/hpplay/sdk/source/protocol/j;->onResult(Ljava/lang/String;)V

    .line 325
    :cond_1
    :goto_1
    return-void

    .line 315
    :cond_2
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v3, v2

    const-string v4, "utf-8"

    invoke-direct {v0, v2, v1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    const-string v1, "ProtocolReceiver"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 68
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/l;->w:Z

    .line 69
    invoke-direct {p0}, Lcom/hpplay/sdk/source/protocol/l;->m()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->r:Lcom/hpplay/sdk/source/protocol/j;

    .line 71
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->s:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "ProtocolReceiver"

    const-string v1, "---------------------->stopReceive"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->s:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->s:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_0
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 262
    const/4 v2, 0x4

    :try_start_0
    new-array v2, v2, [B

    .line 263
    iget v3, p0, Lcom/hpplay/sdk/source/protocol/l;->t:I

    if-nez v3, :cond_4

    .line 265
    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/l;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->available()I

    move-result v3

    .line 267
    iget-object v4, p0, Lcom/hpplay/sdk/source/protocol/l;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    move-result v4

    .line 268
    if-gez v4, :cond_0

    .line 303
    :goto_0
    return v0

    .line 271
    :cond_0
    invoke-static {v2}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->bytesToInt([B)I

    move-result v4

    .line 272
    if-eqz v4, :cond_1

    const/high16 v5, 0x200000

    if-le v4, v5, :cond_2

    :cond_1
    move v0, v1

    .line 273
    goto :goto_0

    .line 275
    :cond_2
    const/4 v5, 0x4

    iput v5, p0, Lcom/hpplay/sdk/source/protocol/l;->t:I

    .line 276
    iget v5, p0, Lcom/hpplay/sdk/source/protocol/l;->t:I

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x10

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/hpplay/sdk/source/protocol/l;->u:[B

    .line 277
    const-string v5, "ProtocolReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " get header ----------> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/hpplay/sdk/source/protocol/l;->t:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dataLength -->  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v4, "ProtocolReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " get header data -->  ilen :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/hpplay/sdk/source/protocol/l;->u:[B

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_1
    move v0, v1

    .line 303
    goto :goto_0

    .line 281
    :cond_4
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/l;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->available()I

    move-result v3

    .line 282
    const-string v2, "ProtocolReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " get body receveData.len-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/hpplay/sdk/source/protocol/l;->u:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   totalLength  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/hpplay/sdk/source/protocol/l;->t:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  ilen -->  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    new-array v2, v3, [B

    .line 284
    iget-object v4, p0, Lcom/hpplay/sdk/source/protocol/l;->u:[B

    array-length v4, v4

    iget v5, p0, Lcom/hpplay/sdk/source/protocol/l;->t:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_5

    .line 285
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/l;->u:[B

    array-length v2, v2

    iget v3, p0, Lcom/hpplay/sdk/source/protocol/l;->t:I

    sub-int v3, v2, v3

    .line 286
    new-array v2, v3, [B

    .line 288
    :cond_5
    iget-object v4, p0, Lcom/hpplay/sdk/source/protocol/l;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([BII)I

    .line 289
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/hpplay/sdk/source/protocol/l;->u:[B

    iget v6, p0, Lcom/hpplay/sdk/source/protocol/l;->t:I

    array-length v7, v2

    invoke-static {v2, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    iget v2, p0, Lcom/hpplay/sdk/source/protocol/l;->t:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/hpplay/sdk/source/protocol/l;->t:I

    .line 291
    iget v2, p0, Lcom/hpplay/sdk/source/protocol/l;->t:I

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/l;->u:[B

    array-length v3, v3

    if-ne v2, v3, :cond_3

    .line 292
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/l;->u:[B

    invoke-virtual {p0, v2}, Lcom/hpplay/sdk/source/protocol/l;->a([B)V

    .line 293
    const/4 v2, 0x0

    iput v2, p0, Lcom/hpplay/sdk/source/protocol/l;->t:I

    .line 294
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/hpplay/sdk/source/protocol/l;->u:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 298
    :catch_0
    move-exception v1

    .line 299
    const-string v2, "ProtocolReceiver"

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    const-string v2, "ProtocolReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " start read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public run()V
    .locals 14

    .prologue
    const/4 v1, 0x1

    const/16 v13, 0xb

    const/4 v2, 0x0

    .line 80
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->b:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/l;->f()Z

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->x:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    if-eqz v0, :cond_6

    .line 84
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->x:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    const-string v3, "ProtocolReceiver"

    invoke-virtual {p0, v0, v3}, Lcom/hpplay/sdk/source/protocol/l;->a(Lcom/hpplay/sdk/source/protocol/encrypt/d;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->r:Lcom/hpplay/sdk/source/protocol/j;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->r:Lcom/hpplay/sdk/source/protocol/j;

    const-string v1, "encrypt_failed"

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/protocol/j;->onResult(Ljava/lang/String;)V

    .line 225
    :cond_1
    :goto_0
    return-void

    .line 90
    :cond_2
    invoke-direct {p0}, Lcom/hpplay/sdk/source/protocol/l;->e()V

    .line 91
    iput v2, p0, Lcom/hpplay/sdk/source/protocol/l;->t:I

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->u:[B

    .line 93
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/protocol/l;->w:Z

    .line 94
    :cond_3
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/l;->w:Z

    if-nez v0, :cond_4

    .line 95
    const-string v3, "ProtocolReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lcom/hpplay/sdk/source/protocol/l;->w:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " start read "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->r:Lcom/hpplay/sdk/source/protocol/j;

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/l;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    :cond_4
    invoke-direct {p0}, Lcom/hpplay/sdk/source/protocol/l;->m()V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 95
    goto :goto_1

    .line 102
    :cond_6
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->v:[B

    if-eqz v0, :cond_7

    .line 103
    invoke-direct {p0}, Lcom/hpplay/sdk/source/protocol/l;->d()V

    .line 106
    :cond_7
    const-string v3, "ProtocolReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lcom/hpplay/sdk/source/protocol/l;->w:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "----------sendReverse---------------"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/l;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    if-nez v0, :cond_9

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-array v0, v13, [B

    .line 109
    iput-boolean v2, p0, Lcom/hpplay/sdk/source/protocol/l;->w:Z

    .line 110
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 111
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    move-object v5, v0

    move v0, v2

    .line 113
    :cond_8
    :goto_3
    iget-boolean v4, p0, Lcom/hpplay/sdk/source/protocol/l;->w:Z

    if-nez v4, :cond_18

    .line 114
    iget-object v4, p0, Lcom/hpplay/sdk/source/protocol/l;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    if-eqz v4, :cond_8

    .line 118
    :try_start_0
    iget-object v4, p0, Lcom/hpplay/sdk/source/protocol/l;->f:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-virtual {v4, v5}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 122
    :goto_4
    if-gtz v4, :cond_a

    move v0, v4

    .line 123
    goto :goto_3

    :cond_9
    move v0, v2

    .line 106
    goto :goto_2

    .line 119
    :catch_0
    move-exception v4

    .line 120
    const-string v6, "ProtocolReceiver"

    invoke-static {v6, v4}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v4, v0

    goto :goto_4

    .line 130
    :cond_a
    array-length v0, v5

    if-ne v0, v1, :cond_f

    .line 131
    aget-byte v0, v5, v2

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-static {v8}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getProtocolDivide(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 133
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v6, v0, [B

    move v5, v2

    .line 134
    :goto_5
    array-length v0, v6

    if-ge v5, v0, :cond_b

    .line 135
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v6, v5

    .line 134
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_5

    .line 137
    :cond_b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    .line 138
    const-string v5, "header"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v5, "POST /photo"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 140
    iget-object v5, p0, Lcom/hpplay/sdk/source/protocol/l;->r:Lcom/hpplay/sdk/source/protocol/j;

    if-eqz v5, :cond_c

    .line 141
    iget-object v5, p0, Lcom/hpplay/sdk/source/protocol/l;->r:Lcom/hpplay/sdk/source/protocol/j;

    invoke-interface {v5, v0}, Lcom/hpplay/sdk/source/protocol/j;->onResult(Ljava/lang/String;)V

    .line 143
    :cond_c
    new-array v0, v13, [B

    :goto_6
    move-object v5, v0

    move v0, v4

    .line 160
    goto :goto_3

    .line 146
    :cond_d
    :try_start_1
    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getContentLength(Ljava/lang/String;)I

    move-result v0

    .line 147
    const-string v5, "ProtocolReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "contentLength"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    if-lez v0, :cond_e

    const/high16 v5, 0x200000

    if-ge v0, v5, :cond_e

    .line 149
    new-array v0, v0, [B

    .line 150
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    .line 155
    :catch_1
    move-exception v0

    .line 156
    const-string v5, "ProtocolReceiver"

    invoke-static {v5, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    new-array v0, v13, [B

    goto :goto_6

    .line 152
    :cond_e
    const/16 v0, 0xb

    :try_start_2
    new-array v0, v0, [B

    .line 153
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    .line 163
    :cond_f
    array-length v0, v5

    if-ne v0, v13, :cond_12

    if-nez v3, :cond_12

    .line 165
    :try_start_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 166
    new-instance v6, Ljava/lang/String;

    const/4 v0, 0x0

    array-length v7, v5

    invoke-direct {v6, v5, v0, v7}, Ljava/lang/String;-><init>([BII)V

    .line 167
    const-string v0, "POST /heart"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "POST /event"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "POST /photo"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    move v0, v2

    .line 168
    :goto_7
    array-length v7, v5

    if-ge v0, v7, :cond_11

    .line 169
    aget-byte v7, v5, v0

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 172
    :cond_11
    const-string v0, "ProtocolReceiver"

    invoke-static {v0, v6}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    new-array v0, v1, [B

    :goto_8
    move-object v5, v0

    move v0, v4

    goto/16 :goto_3

    .line 173
    :catch_2
    move-exception v0

    .line 174
    :try_start_4
    const-string v5, "ProtocolReceiver"

    invoke-static {v5, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 176
    new-array v0, v1, [B

    goto :goto_8

    :catchall_0
    move-exception v0

    new-array v1, v1, [B

    throw v0

    .line 181
    :cond_12
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 184
    :try_start_5
    array-length v0, v5

    if-ge v4, v0, :cond_13

    .line 185
    const-string v0, "ProtocolReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---------------------->"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "  ----------------   "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-array v0, v4, [B

    .line 187
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v5, v3, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    array-length v0, v5

    sub-int/2addr v0, v4

    .line 190
    new-array v3, v0, [B

    .line 191
    if-ne v0, v13, :cond_17

    move v0, v1

    :goto_9
    move-object v5, v3

    move v3, v0

    move v0, v4

    .line 220
    goto/16 :goto_3

    :cond_13
    move v3, v2

    move v7, v4

    .line 196
    :goto_a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_14

    .line 197
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int v6, v7, v0

    .line 196
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v7, v6

    goto :goto_a

    .line 199
    :cond_14
    new-array v10, v7, [B

    move v3, v2

    move v6, v2

    .line 201
    :goto_b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_15

    .line 202
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x0

    .line 203
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    .line 202
    invoke-static {v11, v12, v10, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v6, v0

    .line 201
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_b

    .line 206
    :cond_15
    const/4 v0, 0x0

    invoke-static {v5, v0, v10, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    new-instance v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v10, v3, v7}, Ljava/lang/String;-><init>([BII)V

    .line 208
    const-string v3, "ProtocolReceiver"

    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/l;->r:Lcom/hpplay/sdk/source/protocol/j;

    if-eqz v3, :cond_16

    .line 210
    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/l;->r:Lcom/hpplay/sdk/source/protocol/j;

    invoke-interface {v3, v0}, Lcom/hpplay/sdk/source/protocol/j;->onResult(Ljava/lang/String;)V

    .line 212
    :cond_16
    const/16 v0, 0xb

    new-array v3, v0, [B

    .line 213
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_17
    move v0, v2

    goto :goto_9

    .line 216
    :catch_3
    move-exception v0

    .line 217
    const-string v3, "ProtocolReceiver"

    invoke-static {v3, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    new-array v0, v13, [B

    .line 219
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    move v3, v2

    move-object v5, v0

    move v0, v4

    .line 220
    goto/16 :goto_3

    .line 224
    :cond_18
    invoke-direct {p0}, Lcom/hpplay/sdk/source/protocol/l;->m()V

    goto/16 :goto_0

    :cond_19
    move v0, v4

    goto/16 :goto_3
.end method
