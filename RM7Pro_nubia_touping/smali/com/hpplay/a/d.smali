.class public abstract Lcom/hpplay/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/a/d$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "EglTask"

.field private static final d:I = 0x0

.field private static final e:I = -0x1

.field private static final f:I = -0x8

.field private static final g:I = -0x9


# instance fields
.field protected a:Z

.field protected b:Ljava/lang/Object;

.field private final h:Ljava/lang/Object;

.field private final i:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/hpplay/a/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lcom/hpplay/a/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Lcom/hpplay/a/b;

.field private m:Lcom/hpplay/a/g;


# direct methods
.method public constructor <init>(Landroid/opengl/EGLContext;I)V
    .locals 3

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hpplay/a/d;->h:Ljava/lang/Object;

    .line 58
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/hpplay/a/d;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 59
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/hpplay/a/d;->j:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/a/d;->k:Z

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/a/d;->l:Lcom/hpplay/a/b;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hpplay/a/d;->b:Ljava/lang/Object;

    .line 66
    const-string v0, "EglTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shared_context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, -0x8

    invoke-virtual {p0, v0, p2, p1}, Lcom/hpplay/a/d;->c(IILjava/lang/Object;)V

    .line 68
    return-void
.end method

.method private b(Ljava/lang/Exception;)Z
    .locals 2

    .prologue
    .line 170
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/hpplay/a/d;->a(Ljava/lang/Exception;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 174
    :goto_0
    return v0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    const-string v0, "EglTask"

    const-string v1, "exception occurred in callOnError"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public a(Lcom/hpplay/a/d$a;)V
    .locals 1

    .prologue
    .line 222
    :cond_0
    iget-object v0, p0, Lcom/hpplay/a/d;->j:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 217
    if-eqz p1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/hpplay/a/d;->j:Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lcom/hpplay/a/d;->b(IILjava/lang/Object;)Lcom/hpplay/a/d$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 219
    :cond_0
    return-void
.end method

.method protected abstract a(IILjava/lang/Object;)Z
.end method

.method protected abstract a(Ljava/lang/Exception;)Z
.end method

.method protected b(IILjava/lang/Object;)Lcom/hpplay/a/d$a;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/hpplay/a/d;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/a/d$a;

    .line 179
    if-eqz v0, :cond_0

    .line 180
    iput p1, v0, Lcom/hpplay/a/d$a;->a:I

    .line 181
    iput p2, v0, Lcom/hpplay/a/d$a;->b:I

    .line 182
    iput-object p3, v0, Lcom/hpplay/a/d$a;->c:Ljava/lang/Object;

    .line 186
    :goto_0
    return-object v0

    .line 184
    :cond_0
    new-instance v0, Lcom/hpplay/a/d$a;

    invoke-direct {v0, p1, p2, p3}, Lcom/hpplay/a/d$a;-><init>(IILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected abstract b()V
.end method

.method protected abstract c()V
.end method

.method public c(IILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/hpplay/a/d;->j:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p0, p1, p2, p3}, Lcom/hpplay/a/d;->b(IILjava/lang/Object;)Lcom/hpplay/a/d$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 198
    return-void
.end method

.method protected abstract d()V
.end method

.method public d(IILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/hpplay/a/d;->j:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p0, p1, p2, p3}, Lcom/hpplay/a/d;->b(IILjava/lang/Object;)Lcom/hpplay/a/d$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    .line 209
    return-void
.end method

.method public e()Lcom/hpplay/a/b;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/hpplay/a/d;->l:Lcom/hpplay/a/b;

    return-object v0
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/hpplay/a/d;->m:Lcom/hpplay/a/g;

    invoke-virtual {v0}, Lcom/hpplay/a/g;->d()V

    .line 232
    return-void
.end method

.method public g()V
    .locals 4

    .prologue
    .line 238
    iget-object v0, p0, Lcom/hpplay/a/d;->j:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 239
    iget-object v1, p0, Lcom/hpplay/a/d;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    :try_start_0
    iget-boolean v0, p0, Lcom/hpplay/a/d;->k:Z

    if-eqz v0, :cond_0

    .line 241
    const/16 v0, -0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/hpplay/a/d;->d(IILjava/lang/Object;)V

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/a/d;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/a/d;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 250
    return-void

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 245
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public h()V
    .locals 4

    .prologue
    .line 253
    iget-object v0, p0, Lcom/hpplay/a/d;->j:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 254
    iget-object v1, p0, Lcom/hpplay/a/d;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 255
    :try_start_0
    iget-boolean v0, p0, Lcom/hpplay/a/d;->k:Z

    if-eqz v0, :cond_0

    .line 256
    const/16 v0, -0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/hpplay/a/d;->d(IILjava/lang/Object;)V

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/a/d;->k:Z

    .line 259
    :cond_0
    monitor-exit v1

    .line 260
    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 86
    const/4 v1, 0x0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/a/d;->j:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/a/d$a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5

    move-object v1, v0

    .line 92
    :goto_0
    iget-object v3, p0, Lcom/hpplay/a/d;->h:Ljava/lang/Object;

    monitor-enter v3

    .line 93
    :try_start_1
    iget-object v0, v1, Lcom/hpplay/a/d$a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/hpplay/a/d$a;->c:Ljava/lang/Object;

    instance-of v0, v0, Landroid/opengl/EGLContext;

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    new-instance v4, Lcom/hpplay/a/b;

    iget-object v0, v1, Lcom/hpplay/a/d$a;->c:Ljava/lang/Object;

    check-cast v0, Landroid/opengl/EGLContext;

    iget v1, v1, Lcom/hpplay/a/d$a;->b:I

    invoke-direct {v4, v0, v1}, Lcom/hpplay/a/b;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v4, p0, Lcom/hpplay/a/d;->l:Lcom/hpplay/a/b;

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/hpplay/a/d;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 96
    iget-object v0, p0, Lcom/hpplay/a/d;->l:Lcom/hpplay/a/b;

    if-nez v0, :cond_2

    .line 97
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed to create EglCore"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/hpplay/a/d;->b(Ljava/lang/Exception;)Z

    .line 98
    monitor-exit v3

    .line 166
    :goto_1
    return-void

    .line 100
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    new-instance v0, Lcom/hpplay/a/g;

    iget-object v1, p0, Lcom/hpplay/a/d;->l:Lcom/hpplay/a/b;

    invoke-direct {v0, v1, v5, v5}, Lcom/hpplay/a/g;-><init>(Lcom/hpplay/a/b;II)V

    iput-object v0, p0, Lcom/hpplay/a/d;->m:Lcom/hpplay/a/g;

    .line 102
    iget-object v0, p0, Lcom/hpplay/a/d;->m:Lcom/hpplay/a/g;

    invoke-virtual {v0}, Lcom/hpplay/a/g;->d()V

    .line 104
    :try_start_2
    invoke-virtual {p0}, Lcom/hpplay/a/d;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 110
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/hpplay/a/d;->k:Z

    if-eqz v0, :cond_4

    .line 112
    :try_start_3
    iget-object v0, p0, Lcom/hpplay/a/d;->j:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/a/d$a;

    .line 113
    iget-object v1, p0, Lcom/hpplay/a/d;->m:Lcom/hpplay/a/g;

    invoke-virtual {v1}, Lcom/hpplay/a/g;->d()V

    .line 114
    iget v1, v0, Lcom/hpplay/a/d$a;->a:I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    sparse-switch v1, :sswitch_data_0

    .line 139
    :try_start_4
    iget v1, v0, Lcom/hpplay/a/d$a;->a:I

    iget v3, v0, Lcom/hpplay/a/d$a;->b:I

    iget-object v4, v0, Lcom/hpplay/a/d$a;->c:Ljava/lang/Object;

    invoke-virtual {p0, v1, v3, v4}, Lcom/hpplay/a/d;->a(IILjava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v1

    .line 144
    :goto_3
    if-eqz v1, :cond_6

    .line 154
    :cond_4
    :goto_4
    :sswitch_0
    iget-object v0, p0, Lcom/hpplay/a/d;->m:Lcom/hpplay/a/g;

    invoke-virtual {v0}, Lcom/hpplay/a/g;->d()V

    .line 156
    :try_start_5
    invoke-virtual {p0}, Lcom/hpplay/a/d;->b()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 160
    :goto_5
    iget-object v0, p0, Lcom/hpplay/a/d;->m:Lcom/hpplay/a/g;

    invoke-virtual {v0}, Lcom/hpplay/a/g;->g()V

    .line 161
    iget-object v0, p0, Lcom/hpplay/a/d;->l:Lcom/hpplay/a/b;

    invoke-virtual {v0}, Lcom/hpplay/a/b;->a()V

    .line 162
    iget-object v1, p0, Lcom/hpplay/a/d;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 163
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lcom/hpplay/a/d;->k:Z

    .line 164
    iget-object v0, p0, Lcom/hpplay/a/d;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 165
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 100
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    invoke-direct {p0, v0}, Lcom/hpplay/a/d;->b(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    iput-boolean v2, p0, Lcom/hpplay/a/d;->k:Z

    goto :goto_2

    .line 122
    :sswitch_1
    :try_start_8
    invoke-virtual {p0}, Lcom/hpplay/a/d;->d()V

    .line 123
    iget-boolean v1, p0, Lcom/hpplay/a/d;->a:Z

    if-eqz v1, :cond_5

    .line 124
    iget-object v3, p0, Lcom/hpplay/a/d;->b:Ljava/lang/Object;

    monitor-enter v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1

    .line 125
    :try_start_9
    iget-object v1, p0, Lcom/hpplay/a/d;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 126
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 128
    :cond_5
    :try_start_a
    invoke-virtual {p0}, Lcom/hpplay/a/d;->c()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1

    .line 148
    :cond_6
    :sswitch_2
    const/4 v1, 0x0

    :try_start_b
    iput v1, v0, Lcom/hpplay/a/d$a;->a:I

    .line 149
    iget-object v1, p0, Lcom/hpplay/a/d;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_2

    .line 150
    :catch_1
    move-exception v0

    goto :goto_4

    .line 126
    :catchall_2
    move-exception v1

    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_1

    .line 129
    :catch_2
    move-exception v1

    .line 130
    :try_start_e
    invoke-direct {p0, v1}, Lcom/hpplay/a/d;->b(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    .line 140
    :catch_3
    move-exception v1

    .line 141
    invoke-direct {p0, v1}, Lcom/hpplay/a/d;->b(Ljava/lang/Exception;)Z
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_1

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_3

    .line 157
    :catch_4
    move-exception v0

    .line 158
    invoke-direct {p0, v0}, Lcom/hpplay/a/d;->b(Ljava/lang/Exception;)Z

    goto :goto_5

    .line 89
    :catch_5
    move-exception v0

    goto/16 :goto_0

    .line 114
    :sswitch_data_0
    .sparse-switch
        -0x9 -> :sswitch_0
        -0x1 -> :sswitch_1
        0x0 -> :sswitch_2
    .end sparse-switch
.end method
