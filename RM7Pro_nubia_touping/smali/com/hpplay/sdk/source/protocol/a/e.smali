.class public Lcom/hpplay/sdk/source/protocol/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/protocol/a/a;
.implements Ljava/lang/Runnable;


# static fields
.field private static final b:Ljava/lang/String; = "SpacialChannelHandler"


# instance fields
.field a:Lcom/hpplay/sdk/source/api/AudioStateListener;

.field private c:Ljava/io/InputStream;

.field private d:Ljava/net/Socket;

.field private e:Lcom/hpplay/sdk/source/protocol/a/b;

.field private f:Ljava/lang/String;

.field private g:Ljava/io/OutputStream;

.field private h:Lcom/hpplay/sdk/source/api/ISpacailChannelInteractive;

.field private i:Lcom/hpplay/sdk/source/api/AudioStateListener;


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/protocol/a/b;Ljava/io/InputStream;Ljava/net/Socket;Lcom/hpplay/sdk/source/api/AudioStateListener;)V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Lcom/hpplay/sdk/source/protocol/a/e$1;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/protocol/a/e$1;-><init>(Lcom/hpplay/sdk/source/protocol/a/e;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/e;->a:Lcom/hpplay/sdk/source/api/AudioStateListener;

    .line 32
    iput-object p2, p0, Lcom/hpplay/sdk/source/protocol/a/e;->c:Ljava/io/InputStream;

    .line 33
    iput-object p3, p0, Lcom/hpplay/sdk/source/protocol/a/e;->d:Ljava/net/Socket;

    .line 34
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/a/e;->e:Lcom/hpplay/sdk/source/protocol/a/b;

    .line 35
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/e;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/e;->f:Ljava/lang/String;

    .line 36
    const-string v0, "SpacialChannelHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/a/e;->d:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iput-object p4, p0, Lcom/hpplay/sdk/source/protocol/a/e;->i:Lcom/hpplay/sdk/source/api/AudioStateListener;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/hpplay/sdk/source/protocol/a/e;)Lcom/hpplay/sdk/source/api/AudioStateListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/e;->i:Lcom/hpplay/sdk/source/api/AudioStateListener;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    const-string v0, "SpacialChannelHandler"

    const-string v1, "space channel close"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/e;->i:Lcom/hpplay/sdk/source/api/AudioStateListener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/e;->i:Lcom/hpplay/sdk/source/api/AudioStateListener;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/AudioStateListener;->onAudioEncoderExit()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/e;->i:Lcom/hpplay/sdk/source/api/AudioStateListener;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/e;->h:Lcom/hpplay/sdk/source/api/ISpacailChannelInteractive;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/e;->h:Lcom/hpplay/sdk/source/api/ISpacailChannelInteractive;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ISpacailChannelInteractive;->stopTask()V

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/e;->c:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 136
    :try_start_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/e;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    :cond_2
    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/e;->d:Ljava/net/Socket;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    .line 143
    :try_start_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/e;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 148
    :cond_3
    :goto_1
    :try_start_5
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/e;->e:Lcom/hpplay/sdk/source/protocol/a/b;

    if-eqz v0, :cond_4

    .line 149
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/e;->e:Lcom/hpplay/sdk/source/protocol/a/b;

    invoke-interface {v0, p0}, Lcom/hpplay/sdk/source/protocol/a/b;->a(Lcom/hpplay/sdk/source/protocol/a/a;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 155
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    :try_start_6
    const-string v1, "SpacialChannelHandler"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 151
    :catch_1
    move-exception v0

    .line 152
    :try_start_7
    const-string v1, "SpacialChannelHandler"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 144
    :catch_2
    move-exception v0

    .line 145
    :try_start_8
    const-string v1, "SpacialChannelHandler"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method public b()V
    .locals 2

    .prologue
    .line 158
    invoke-static {}, Lcom/hpplay/sdk/source/b/a;->b()Lcom/hpplay/sdk/source/api/ISpacailChannelInteractive;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/e;->h:Lcom/hpplay/sdk/source/api/ISpacailChannelInteractive;

    .line 159
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/e;->h:Lcom/hpplay/sdk/source/api/ISpacailChannelInteractive;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/e;->h:Lcom/hpplay/sdk/source/api/ISpacailChannelInteractive;

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/a/e;->g:Ljava/io/OutputStream;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/api/ISpacailChannelInteractive;->setChannel(Ljava/io/OutputStream;)V

    .line 161
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/e;->h:Lcom/hpplay/sdk/source/api/ISpacailChannelInteractive;

    iget-object v1, p0, Lcom/hpplay/sdk/source/protocol/a/e;->a:Lcom/hpplay/sdk/source/api/AudioStateListener;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/api/ISpacailChannelInteractive;->setStateListener(Lcom/hpplay/sdk/source/api/AudioStateListener;)V

    .line 162
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/e;->h:Lcom/hpplay/sdk/source/api/ISpacailChannelInteractive;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ISpacailChannelInteractive;->startTask()V

    .line 166
    return-void

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "load audio failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v7, 0x5

    const/4 v1, 0x0

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 46
    new-instance v8, Lcom/hpplay/sdk/source/protocol/encrypt/g;

    const-string v2, ""

    invoke-direct {v8, v2}, Lcom/hpplay/sdk/source/protocol/encrypt/g;-><init>(Ljava/lang/String;)V

    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/a/e;->d:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/hpplay/sdk/source/protocol/a/e;->g:Ljava/io/OutputStream;

    .line 49
    const/4 v2, 0x5

    new-array v9, v2, [B

    move v4, v1

    move-object v5, v0

    move v6, v1

    move v0, v1

    .line 50
    :goto_0
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/a/e;->d:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    if-nez v6, :cond_1

    .line 52
    const-string v0, "SpacialChannelHandler"

    const-string v2, "--- start listen ---"

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/e;->c:Ljava/io/InputStream;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v0, v9, v2, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 54
    if-gtz v0, :cond_1

    .line 120
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/a/e;->a()V

    .line 122
    :goto_2
    return-void

    :cond_1
    move v3, v0

    .line 58
    if-nez v6, :cond_2

    if-ne v3, v7, :cond_2

    .line 60
    const/4 v0, 0x4

    :try_start_1
    new-array v0, v0, [B

    .line 61
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v9, v2, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    invoke-static {v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->bytesToInt([B)I

    move-result v2

    .line 63
    const-string v0, "SpacialChannelHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "spacial msg length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    if-eqz v2, :cond_0

    const/high16 v0, 0x200000

    if-gt v2, v0, :cond_0

    .line 68
    const/4 v0, 0x4

    aget-byte v0, v9, v0

    .line 70
    const/4 v4, 0x5

    .line 71
    new-array v2, v2, [B

    .line 72
    const-string v5, "SpacialChannelHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "header: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v10, v2

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "  len "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v0

    move-object v5, v2

    move v6, v7

    move v0, v3

    .line 73
    goto :goto_0

    :cond_2
    if-lez v6, :cond_7

    .line 74
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/e;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 75
    new-array v0, v2, [B

    .line 76
    array-length v10, v5

    sub-int/2addr v10, v6

    if-le v2, v10, :cond_3

    .line 77
    array-length v0, v5

    sub-int v2, v0, v6

    .line 78
    new-array v0, v2, [B

    .line 80
    :cond_3
    iget-object v10, p0, Lcom/hpplay/sdk/source/protocol/a/e;->c:Ljava/io/InputStream;

    const/4 v11, 0x0

    array-length v12, v0

    invoke-virtual {v10, v0, v11, v12}, Ljava/io/InputStream;->read([BII)I

    .line 81
    const/4 v10, 0x0

    array-length v11, v0

    invoke-static {v0, v10, v5, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    add-int v0, v6, v2

    .line 83
    if-eqz v5, :cond_4

    .line 84
    const-string v2, "SpacialChannelHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "body: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v10, v5

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "  len "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    array-length v2, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v2, :cond_4

    .line 88
    const/4 v0, 0x1

    if-ne v4, v0, :cond_5

    .line 89
    :try_start_2
    invoke-virtual {v8, v5, v4}, Lcom/hpplay/sdk/source/protocol/encrypt/g;->a([BB)[B

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/a/e;->g:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 92
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/e;->g:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :goto_3
    move v0, v1

    :cond_4
    move v6, v0

    move v0, v3

    .line 115
    goto/16 :goto_0

    .line 96
    :cond_5
    const/4 v0, 0x2

    if-ne v4, v0, :cond_6

    .line 97
    invoke-virtual {v8, v5, v4}, Lcom/hpplay/sdk/source/protocol/encrypt/g;->b([BB)[B

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/a/e;->g:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 100
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/a/e;->g:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 101
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/a/e;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 109
    :catch_0
    move-exception v0

    .line 110
    :try_start_3
    const-string v1, "SpacialChannelHandler"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 117
    :catch_1
    move-exception v0

    .line 118
    :try_start_4
    const-string v1, "SpacialChannelHandler"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/a/e;->a()V

    goto/16 :goto_2

    .line 106
    :cond_6
    :try_start_5
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/a/e;->a()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 120
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/a/e;->a()V

    throw v0

    :cond_7
    move v0, v3

    goto/16 :goto_0
.end method
