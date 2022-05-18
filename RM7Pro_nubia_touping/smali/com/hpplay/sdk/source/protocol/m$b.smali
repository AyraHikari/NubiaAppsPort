.class Lcom/hpplay/sdk/source/protocol/m$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/protocol/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/protocol/m;

.field private b:Lcom/hpplay/sdk/source/protocol/m$a;

.field private c:Lcom/hpplay/sdk/source/protocol/encrypt/d;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/hpplay/sdk/source/protocol/m;Lcom/hpplay/sdk/source/protocol/encrypt/d;Lcom/hpplay/sdk/source/protocol/m$a;)V
    .locals 1

    .prologue
    .line 120
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/m$b;->a:Lcom/hpplay/sdk/source/protocol/m;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->d:Z

    .line 121
    iput-object p3, p0, Lcom/hpplay/sdk/source/protocol/m$b;->b:Lcom/hpplay/sdk/source/protocol/m$a;

    .line 122
    iput-object p2, p0, Lcom/hpplay/sdk/source/protocol/m$b;->c:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/sdk/source/protocol/m;Lcom/hpplay/sdk/source/protocol/m$a;)V
    .locals 1

    .prologue
    .line 115
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/m$b;->a:Lcom/hpplay/sdk/source/protocol/m;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->d:Z

    .line 116
    iput-object p2, p0, Lcom/hpplay/sdk/source/protocol/m$b;->b:Lcom/hpplay/sdk/source/protocol/m$a;

    .line 117
    return-void
.end method


# virtual methods
.method public clearCallbackListener()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/m$b;->b:Lcom/hpplay/sdk/source/protocol/m$a;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->d:Z

    .line 128
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->c:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->c:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->h()V

    .line 130
    iput-object v1, p0, Lcom/hpplay/sdk/source/protocol/m$b;->c:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    .line 132
    :cond_0
    return-void
.end method

.method public isStartListen()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->d:Z

    return v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 141
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->a:Lcom/hpplay/sdk/source/protocol/m;

    iget-object v0, v0, Lcom/hpplay/sdk/source/protocol/m;->b:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->a:Lcom/hpplay/sdk/source/protocol/m;

    iget-object v0, v0, Lcom/hpplay/sdk/source/protocol/m;->e:Ljava/io/FileOutputStream;

    if-nez v0, :cond_3

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->a:Lcom/hpplay/sdk/source/protocol/m;

    iget-object v2, p0, Lcom/hpplay/sdk/source/protocol/m$b;->a:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/protocol/m;->f()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/m;Z)Z

    .line 143
    const-string v0, "ProtocolSender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create local socket "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/m$b;->a:Lcom/hpplay/sdk/source/protocol/m;

    invoke-static {v3}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/m;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->a:Lcom/hpplay/sdk/source/protocol/m;

    invoke-static {v0}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/m;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 145
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->c:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    if-eqz v0, :cond_1

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 147
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->a:Lcom/hpplay/sdk/source/protocol/m;

    iget-object v4, p0, Lcom/hpplay/sdk/source/protocol/m$b;->c:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    const-string v5, "ProtocolSender"

    invoke-virtual {v0, v4, v5}, Lcom/hpplay/sdk/source/protocol/m;->a(Lcom/hpplay/sdk/source/protocol/encrypt/d;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->d:Z

    .line 148
    const-string v0, "ProtocolSender"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/hpplay/sdk/source/protocol/m$b;->d:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " thread name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/m$b;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->d:Z

    if-nez v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->b:Lcom/hpplay/sdk/source/protocol/m$a;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->c:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "failed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->b:Lcom/hpplay/sdk/source/protocol/m$a;

    const-string v2, "encrypt_failed"

    invoke-interface {v0, v2}, Lcom/hpplay/sdk/source/protocol/m$a;->onResult(Ljava/lang/String;)V

    .line 163
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->b:Lcom/hpplay/sdk/source/protocol/m$a;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->d:Z

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->b:Lcom/hpplay/sdk/source/protocol/m$a;

    const-string v2, "success"

    invoke-interface {v0, v2}, Lcom/hpplay/sdk/source/protocol/m$a;->onResult(Ljava/lang/String;)V

    .line 166
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->d:Z

    if-eqz v0, :cond_3

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->a:Lcom/hpplay/sdk/source/protocol/m;

    invoke-static {v0}, Lcom/hpplay/sdk/source/protocol/m;->b(Lcom/hpplay/sdk/source/protocol/m;)Lcom/hpplay/sdk/source/protocol/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/k;->a()Lcom/hpplay/sdk/source/protocol/i;

    move-result-object v2

    .line 171
    if-nez v2, :cond_6

    .line 172
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->d:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    .line 240
    :cond_3
    :goto_2
    return-void

    .line 154
    :cond_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->c:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "603"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 155
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->b:Lcom/hpplay/sdk/source/protocol/m$a;

    const-string v2, "603"

    invoke-interface {v0, v2}, Lcom/hpplay/sdk/source/protocol/m$a;->onResult(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_5
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->c:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "453"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->b:Lcom/hpplay/sdk/source/protocol/m$a;

    const-string v2, "453"

    invoke-interface {v0, v2}, Lcom/hpplay/sdk/source/protocol/m$a;->onResult(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_6
    :try_start_1
    const-string v0, "ProtocolSenderptc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  thread name :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hpplay/sdk/source/protocol/m$b;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/protocol/i;->a()[[B

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->c:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    if-eqz v0, :cond_b

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    .line 184
    :try_start_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->c:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/protocol/i;->a()[[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->a([[B)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 189
    :try_start_3
    const-string v3, "usetime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "build time ------> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    if-nez v0, :cond_8

    move-object v0, v1

    .line 196
    :goto_3
    if-eqz v0, :cond_7

    array-length v3, v0

    if-nez v3, :cond_9

    .line 197
    :cond_7
    const-string v0, "failed"

    .line 226
    :goto_4
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/protocol/i;->b()Lcom/hpplay/sdk/source/protocol/j;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/protocol/i;->b()Lcom/hpplay/sdk/source/protocol/j;

    move-result-object v3

    instance-of v3, v3, Lcom/hpplay/sdk/source/protocol/j;

    if-eqz v3, :cond_2

    .line 227
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/protocol/i;->b()Lcom/hpplay/sdk/source/protocol/j;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/hpplay/sdk/source/protocol/j;->onResult(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 229
    :catch_0
    move-exception v0

    .line 230
    const-string v2, "ProtocolSender"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 185
    :catch_1
    move-exception v0

    .line 186
    :try_start_4
    const-string v2, "ProtocolSender"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 194
    :cond_8
    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/m$b;->a:Lcom/hpplay/sdk/source/protocol/m;

    const/4 v6, 0x1

    new-array v6, v6, [[B

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v3, v6}, Lcom/hpplay/sdk/source/protocol/m;->c([[B)[B
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    goto :goto_3

    .line 201
    :cond_9
    :try_start_5
    iget-object v3, p0, Lcom/hpplay/sdk/source/protocol/m$b;->c:Lcom/hpplay/sdk/source/protocol/encrypt/d;

    invoke-virtual {v3, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/d;->e([B)[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v3

    .line 206
    :try_start_6
    const-string v0, "usetime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send time and decode ------> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    if-eqz v3, :cond_a

    .line 208
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_4

    .line 202
    :catch_2
    move-exception v0

    .line 203
    const-string v2, "ProtocolSender"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 210
    :cond_a
    const-string v0, "failed"

    goto :goto_4

    .line 214
    :cond_b
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/protocol/i;->b()Lcom/hpplay/sdk/source/protocol/j;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/protocol/i;->b()Lcom/hpplay/sdk/source/protocol/j;

    move-result-object v0

    instance-of v0, v0, Lcom/hpplay/sdk/source/protocol/a;

    if-eqz v0, :cond_c

    .line 215
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->a:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/protocol/i;->a()[[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/protocol/m;->b([[B)[B

    move-result-object v3

    .line 216
    invoke-virtual {v2}, Lcom/hpplay/sdk/source/protocol/i;->b()Lcom/hpplay/sdk/source/protocol/j;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/protocol/a;

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Lcom/hpplay/sdk/source/protocol/a;->onDataResult(I[B)V

    move-object v0, v1

    .line 217
    goto/16 :goto_4

    .line 218
    :cond_c
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->a:Lcom/hpplay/sdk/source/protocol/m;

    invoke-virtual {v2}, Lcom/hpplay/sdk/source/protocol/i;->a()[[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/hpplay/sdk/source/protocol/m;->a([[B)[B

    move-result-object v3

    .line 219
    if-eqz v3, :cond_d

    array-length v0, v3

    if-nez v0, :cond_e

    .line 220
    :cond_d
    const-string v0, "failed"

    goto/16 :goto_4

    .line 222
    :cond_e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_4

    .line 235
    :cond_f
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->b:Lcom/hpplay/sdk/source/protocol/m$a;

    if-eqz v0, :cond_3

    .line 236
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/m$b;->b:Lcom/hpplay/sdk/source/protocol/m$a;

    const-string v1, "failed"

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/protocol/m$a;->onResult(Ljava/lang/String;)V

    goto/16 :goto_2
.end method
