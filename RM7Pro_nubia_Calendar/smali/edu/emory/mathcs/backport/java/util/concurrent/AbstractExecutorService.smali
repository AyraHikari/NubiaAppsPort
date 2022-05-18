.class public abstract Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;
.super Ljava/lang/Object;
.source "AbstractExecutorService.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorService;


# static fields
.field static final $assertionsDisabled:Z

.field static class$edu$emory$mathcs$backport$java$util$concurrent$AbstractExecutorService:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;->class$edu$emory$mathcs$backport$java$util$concurrent$AbstractExecutorService:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "edu.emory.mathcs.backport.java.util.concurrent.AbstractExecutorService"

    invoke-static {v0}, Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;->class$edu$emory$mathcs$backport$java$util$concurrent$AbstractExecutorService:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;->$assertionsDisabled:Z

    return-void

    :cond_0
    sget-object v0, Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;->class$edu$emory$mathcs$backport$java$util$concurrent$AbstractExecutorService:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 47
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private doInvokeAny(Ljava/util/Collection;ZJ)Ljava/lang/Object;
    .locals 23
    .param p1, "tasks"    # Ljava/util/Collection;
    .param p2, "timed"    # Z
    .param p3, "nanos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;,
            Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    new-instance v19, Ljava/lang/NullPointerException;

    invoke-direct/range {v19 .. v19}, Ljava/lang/NullPointerException;-><init>()V

    throw v19

    .line 120
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v13

    .line 121
    .local v13, "ntasks":I
    if-nez v13, :cond_1

    .line 122
    new-instance v19, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v19 .. v19}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v19

    .line 123
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    .local v10, "futures":Ljava/util/List;
    new-instance v5, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/Executor;)V

    .line 136
    .local v5, "ecs":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;
    const/4 v6, 0x0

    .line 137
    .local v6, "ee":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    if-eqz p2, :cond_3

    :try_start_0
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v14

    .line 138
    .local v14, "lastTime":J
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 141
    .local v12, "it":Ljava/util/Iterator;
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ledu/emory/mathcs/backport/java/util/concurrent/Callable;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;->submit(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;)Ledu/emory/mathcs/backport/java/util/concurrent/Future;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    add-int/lit8 v13, v13, -0x1

    .line 143
    const/4 v4, 0x1

    .local v4, "active":I
    move-object v7, v6

    .line 146
    .end local v6    # "ee":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    .local v7, "ee":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;->poll()Ledu/emory/mathcs/backport/java/util/concurrent/Future;

    move-result-object v9

    .line 147
    .local v9, "f":Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    if-nez v9, :cond_2

    .line 148
    if-lez v13, :cond_4

    .line 149
    add-int/lit8 v13, v13, -0x1

    .line 150
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ledu/emory/mathcs/backport/java/util/concurrent/Callable;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;->submit(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;)Ledu/emory/mathcs/backport/java/util/concurrent/Future;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    add-int/lit8 v4, v4, 0x1

    .line 166
    :cond_2
    :goto_2
    if-eqz v9, :cond_b

    .line 167
    add-int/lit8 v4, v4, -0x1

    .line 169
    :try_start_2
    invoke-interface {v9}, Ledu/emory/mathcs/backport/java/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v20

    .line 185
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "f":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 186
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ledu/emory/mathcs/backport/java/util/concurrent/Future;

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/Future;->cancel(Z)Z

    goto :goto_3

    .line 137
    .end local v4    # "active":I
    .end local v7    # "ee":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    .end local v9    # "f":Ljava/util/Iterator;
    .end local v12    # "it":Ljava/util/Iterator;
    .end local v14    # "lastTime":J
    .restart local v6    # "ee":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    :cond_3
    const-wide/16 v14, 0x0

    goto :goto_0

    .line 153
    .end local v6    # "ee":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    .restart local v4    # "active":I
    .restart local v7    # "ee":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    .local v9, "f":Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    .restart local v12    # "it":Ljava/util/Iterator;
    .restart local v14    # "lastTime":J
    :cond_4
    if-nez v4, :cond_5

    .line 180
    if-nez v7, :cond_a

    .line 181
    :try_start_3
    new-instance v6, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;

    invoke-direct {v6}, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 182
    .end local v7    # "ee":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    .restart local v6    # "ee":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    :goto_4
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 185
    .end local v4    # "active":I
    .end local v9    # "f":Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    .end local v12    # "it":Ljava/util/Iterator;
    .end local v14    # "lastTime":J
    :catchall_0
    move-exception v19

    move-object/from16 v20, v19

    :goto_5
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "f":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 186
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ledu/emory/mathcs/backport/java/util/concurrent/Future;

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/Future;->cancel(Z)Z

    goto :goto_6

    .line 155
    .end local v6    # "ee":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    .restart local v4    # "active":I
    .restart local v7    # "ee":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    .local v9, "f":Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    .restart local v12    # "it":Ljava/util/Iterator;
    .restart local v14    # "lastTime":J
    :cond_5
    if-eqz p2, :cond_7

    .line 156
    :try_start_5
    sget-object v19, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    move-wide/from16 v0, p3

    move-object/from16 v2, v19

    invoke-virtual {v5, v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;->poll(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ledu/emory/mathcs/backport/java/util/concurrent/Future;

    move-result-object v9

    .line 157
    if-nez v9, :cond_6

    .line 158
    new-instance v19, Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException;

    invoke-direct/range {v19 .. v19}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException;-><init>()V

    throw v19

    .line 185
    .end local v9    # "f":Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    :catchall_1
    move-exception v19

    move-object/from16 v20, v19

    move-object v6, v7

    .end local v7    # "ee":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    .restart local v6    # "ee":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    goto :goto_5

    .line 159
    .end local v6    # "ee":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    .restart local v7    # "ee":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    .restart local v9    # "f":Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    :cond_6
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v16

    .line 160
    .local v16, "now":J
    sub-long v20, v16, v14

    sub-long p3, p3, v20

    .line 161
    move-wide/from16 v14, v16

    goto :goto_2

    .line 164
    .end local v16    # "now":J
    :cond_7
    invoke-virtual {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutorCompletionService;->take()Ledu/emory/mathcs/backport/java/util/concurrent/Future;

    move-result-object v9

    goto :goto_2

    .line 170
    :catch_0
    move-exception v11

    .line 171
    .local v11, "ie":Ljava/lang/InterruptedException;
    throw v11

    .line 172
    .end local v11    # "ie":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v8

    .line 173
    .local v8, "eex":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    move-object v6, v8

    .end local v7    # "ee":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    .end local v8    # "eex":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    .restart local v6    # "ee":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    :goto_7
    move-object v7, v6

    .line 176
    .end local v6    # "ee":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    .restart local v7    # "ee":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    goto/16 :goto_1

    .line 174
    :catch_2
    move-exception v18

    .line 175
    .local v18, "rex":Ljava/lang/RuntimeException;
    new-instance v6, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v7    # "ee":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    .restart local v6    # "ee":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    goto :goto_7

    .line 185
    .end local v4    # "active":I
    .end local v12    # "it":Ljava/util/Iterator;
    .end local v14    # "lastTime":J
    .end local v18    # "rex":Ljava/lang/RuntimeException;
    .local v9, "f":Ljava/util/Iterator;
    :cond_8
    throw v20

    .line 169
    .end local v6    # "ee":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    .restart local v4    # "active":I
    .restart local v7    # "ee":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    .restart local v12    # "it":Ljava/util/Iterator;
    .restart local v14    # "lastTime":J
    :cond_9
    return-object v20

    .local v9, "f":Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    :cond_a
    move-object v6, v7

    .end local v7    # "ee":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    .restart local v6    # "ee":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    goto :goto_4

    .end local v6    # "ee":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    .restart local v7    # "ee":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    :cond_b
    move-object v6, v7

    .end local v7    # "ee":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    .restart local v6    # "ee":Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
    goto :goto_7
.end method


# virtual methods
.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 8
    .param p1, "tasks"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 207
    if-nez p1, :cond_0

    .line 208
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 209
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 210
    .local v2, "futures":Ljava/util/List;
    const/4 v0, 0x0

    .line 212
    .local v0, "done":Z
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "t":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 213
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ledu/emory/mathcs/backport/java/util/concurrent/Callable;

    invoke-virtual {p0, v5}, Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;->newTaskFor(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;)Ledu/emory/mathcs/backport/java/util/concurrent/RunnableFuture;

    move-result-object v1

    .line 214
    .local v1, "f":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableFuture;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-virtual {p0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 230
    .end local v1    # "f":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableFuture;
    .end local v4    # "t":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    if-nez v0, :cond_4

    .line 231
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 232
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ledu/emory/mathcs/backport/java/util/concurrent/Future;

    .line 233
    .local v1, "f":Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    invoke-interface {v1, v7}, Ledu/emory/mathcs/backport/java/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    .line 217
    .end local v1    # "f":Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    .end local v3    # "i":Ljava/util/Iterator;
    .restart local v4    # "t":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 218
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ledu/emory/mathcs/backport/java/util/concurrent/Future;

    .line 219
    .restart local v1    # "f":Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    invoke-interface {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/Future;->isDone()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_2

    .line 221
    :try_start_2
    invoke-interface {v1}, Ledu/emory/mathcs/backport/java/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ledu/emory/mathcs/backport/java/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 222
    :catch_0
    move-exception v5

    goto :goto_2

    .line 227
    .end local v1    # "f":Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    :cond_3
    const/4 v0, 0x1

    .line 230
    if-nez v0, :cond_5

    .line 231
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 232
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ledu/emory/mathcs/backport/java/util/concurrent/Future;

    .line 233
    .restart local v1    # "f":Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    invoke-interface {v1, v7}, Ledu/emory/mathcs/backport/java/util/concurrent/Future;->cancel(Z)Z

    goto :goto_3

    .line 230
    .end local v1    # "f":Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    .end local v3    # "i":Ljava/util/Iterator;
    .end local v4    # "t":Ljava/util/Iterator;
    :cond_4
    throw v5

    .line 223
    .restart local v1    # "f":Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    .restart local v3    # "i":Ljava/util/Iterator;
    .restart local v4    # "t":Ljava/util/Iterator;
    :catch_1
    move-exception v5

    goto :goto_2

    .line 228
    .end local v1    # "f":Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    :cond_5
    return-object v2
.end method

.method public invokeAll(Ljava/util/Collection;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 20
    .param p1, "tasks"    # Ljava/util/Collection;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 241
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 242
    :cond_0
    new-instance v17, Ljava/lang/NullPointerException;

    invoke-direct/range {v17 .. v17}, Ljava/lang/NullPointerException;-><init>()V

    throw v17

    .line 243
    :cond_1
    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v12

    .line 244
    .local v12, "nanos":J
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 245
    .local v6, "futures":Ljava/util/List;
    const/4 v4, 0x0

    .line 247
    .local v4, "done":Z
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "t":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 248
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ledu/emory/mathcs/backport/java/util/concurrent/Callable;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;->newTaskFor(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;)Ledu/emory/mathcs/backport/java/util/concurrent/RunnableFuture;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 284
    .end local v9    # "t":Ljava/util/Iterator;
    :catchall_0
    move-exception v17

    if-nez v4, :cond_8

    .line 285
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 286
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ledu/emory/mathcs/backport/java/util/concurrent/Future;

    .line 287
    .local v5, "f":Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v5, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    .line 250
    .end local v5    # "f":Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    .end local v7    # "i":Ljava/util/Iterator;
    .restart local v9    # "t":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J

    move-result-wide v10

    .line 254
    .local v10, "lastTime":J
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 255
    .local v8, "it":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 256
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Runnable;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 257
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v14

    .line 258
    .local v14, "now":J
    sub-long v18, v14, v10

    sub-long v12, v12, v18

    .line 259
    move-wide v10, v14

    .line 260
    const-wide/16 v18, 0x0

    cmp-long v17, v12, v18

    if-gtz v17, :cond_3

    .line 284
    if-nez v4, :cond_9

    .line 285
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 286
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ledu/emory/mathcs/backport/java/util/concurrent/Future;

    .line 287
    .restart local v5    # "f":Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v5, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/Future;->cancel(Z)Z

    goto :goto_2

    .line 264
    .end local v5    # "f":Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    .end local v7    # "i":Ljava/util/Iterator;
    .end local v14    # "now":J
    :cond_4
    :try_start_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 265
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ledu/emory/mathcs/backport/java/util/concurrent/Future;

    .line 266
    .restart local v5    # "f":Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    invoke-interface {v5}, Ledu/emory/mathcs/backport/java/util/concurrent/Future;->isDone()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v17

    if-nez v17, :cond_5

    .line 267
    const-wide/16 v18, 0x0

    cmp-long v17, v12, v18

    if-gtz v17, :cond_6

    .line 284
    if-nez v4, :cond_9

    .line 285
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 286
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "f":Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    check-cast v5, Ledu/emory/mathcs/backport/java/util/concurrent/Future;

    .line 287
    .restart local v5    # "f":Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v5, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/Future;->cancel(Z)Z

    goto :goto_4

    .line 270
    :cond_6
    :try_start_3
    sget-object v17, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->NANOSECONDS:Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;

    move-object/from16 v0, v17

    invoke-interface {v5, v12, v13, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/Future;->get(JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_3
    .catch Ledu/emory/mathcs/backport/java/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 276
    :goto_5
    :try_start_4
    invoke-static {}, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils;->nanoTime()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v14

    .line 277
    .restart local v14    # "now":J
    sub-long v18, v14, v10

    sub-long v12, v12, v18

    .line 278
    move-wide v10, v14

    goto :goto_3

    .line 273
    .end local v14    # "now":J
    :catch_0
    move-exception v16

    .line 284
    .local v16, "toe":Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException;
    if-nez v4, :cond_9

    .line 285
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 286
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "f":Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    check-cast v5, Ledu/emory/mathcs/backport/java/util/concurrent/Future;

    .line 287
    .restart local v5    # "f":Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v5, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/Future;->cancel(Z)Z

    goto :goto_6

    .line 281
    .end local v5    # "f":Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    .end local v16    # "toe":Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException;
    :cond_7
    const/4 v4, 0x1

    .line 284
    if-nez v4, :cond_9

    .line 285
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 286
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ledu/emory/mathcs/backport/java/util/concurrent/Future;

    .line 287
    .restart local v5    # "f":Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v5, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/Future;->cancel(Z)Z

    goto :goto_7

    .line 284
    .end local v5    # "f":Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    .end local v7    # "i":Ljava/util/Iterator;
    .end local v8    # "it":Ljava/util/Iterator;
    .end local v9    # "t":Ljava/util/Iterator;
    .end local v10    # "lastTime":J
    :cond_8
    throw v17

    .line 282
    .restart local v8    # "it":Ljava/util/Iterator;
    .restart local v9    # "t":Ljava/util/Iterator;
    .restart local v10    # "lastTime":J
    :cond_9
    return-object v6

    .line 272
    .restart local v5    # "f":Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    .restart local v7    # "i":Ljava/util/Iterator;
    :catch_1
    move-exception v17

    goto :goto_5

    .line 271
    :catch_2
    move-exception v17

    goto :goto_5
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 4
    .param p1, "tasks"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 193
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1, v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;->doInvokeAny(Ljava/util/Collection;ZJ)Ljava/lang/Object;
    :try_end_0
    .catch Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 196
    :goto_0
    return-object v1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "cannotHappen":Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException;
    sget-boolean v1, Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 196
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public invokeAny(Ljava/util/Collection;JLedu/emory/mathcs/backport/java/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 4
    .param p1, "tasks"    # Ljava/util/Collection;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ledu/emory/mathcs/backport/java/util/concurrent/ExecutionException;,
            Ledu/emory/mathcs/backport/java/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x1

    invoke-virtual {p4, p2, p3}, Ledu/emory/mathcs/backport/java/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    invoke-direct {p0, p1, v0, v2, v3}, Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;->doInvokeAny(Ljava/util/Collection;ZJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected newTaskFor(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;)Ledu/emory/mathcs/backport/java/util/concurrent/RunnableFuture;
    .locals 1
    .param p1, "callable"    # Ledu/emory/mathcs/backport/java/util/concurrent/Callable;

    .prologue
    .line 76
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;-><init>(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;)V

    return-object v0
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/concurrent/RunnableFuture;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 62
    new-instance v0, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;

    invoke-direct {v0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public submit(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;)Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    .locals 2
    .param p1, "task"    # Ledu/emory/mathcs/backport/java/util/concurrent/Callable;

    .prologue
    .line 106
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 107
    :cond_0
    invoke-virtual {p0, p1}, Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;->newTaskFor(Ledu/emory/mathcs/backport/java/util/concurrent/Callable;)Ledu/emory/mathcs/backport/java/util/concurrent/RunnableFuture;

    move-result-object v0

    .line 108
    .local v0, "ftask":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableFuture;
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 109
    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 84
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 85
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/concurrent/RunnableFuture;

    move-result-object v0

    .line 86
    .local v0, "ftask":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableFuture;
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 87
    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/concurrent/Future;
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 95
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 96
    :cond_0
    invoke-virtual {p0, p1, p2}, Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ledu/emory/mathcs/backport/java/util/concurrent/RunnableFuture;

    move-result-object v0

    .line 97
    .local v0, "ftask":Ledu/emory/mathcs/backport/java/util/concurrent/RunnableFuture;
    invoke-virtual {p0, v0}, Ledu/emory/mathcs/backport/java/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 98
    return-object v0
.end method
