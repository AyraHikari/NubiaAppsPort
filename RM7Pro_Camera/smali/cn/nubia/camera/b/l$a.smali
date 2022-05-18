.class Lcn/nubia/camera/b/l$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcn/nubia/camera/b/l;


# direct methods
.method constructor <init>(Lcn/nubia/camera/b/l;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcn/nubia/camera/b/l$a;->b:Lcn/nubia/camera/b/l;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 84
    iput-boolean p1, p0, Lcn/nubia/camera/b/l$a;->a:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcn/nubia/camera/b/l$a;->a:Z

    .line 179
    iget-object v0, p0, Lcn/nubia/camera/b/l$a;->b:Lcn/nubia/camera/b/l;

    monitor-enter v0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/b/l$a;->b:Lcn/nubia/camera/b/l;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 181
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 14

    :try_start_0
    const-string v0, "SceneClassifier"

    const-string v1, "init snpe"

    .line 91
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    iget-object v1, p0, Lcn/nubia/camera/b/l$a;->b:Lcn/nubia/camera/b/l;

    invoke-static {v1}, Lcn/nubia/camera/b/l;->a(Lcn/nubia/camera/b/l;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;-><init>(Landroid/app/Application;)V

    .line 93
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/pictureclassifier/PictureClassifier"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setModel(Ljava/io/File;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    .line 94
    invoke-static {}, Lcn/nubia/camera/ba/a;->A()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v1, v2, [Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .line 98
    sget-object v4, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->GPU_FLOAT16:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setRuntimeOrder([Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    goto :goto_1

    :cond_1
    :goto_0
    new-array v1, v2, [Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .line 95
    sget-object v4, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->GPU:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setRuntimeOrder([Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    .line 100
    :goto_1
    sget-object v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;->LOW:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setExecutionPriorityHint(Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    .line 101
    invoke-virtual {v0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->build()Lcom/qualcomm/qti/snpe/NeuralNetwork;

    move-result-object v0

    .line 102
    invoke-interface {v0}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getInputTensorsNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/String;

    .line 103
    invoke-interface {v0}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getInputTensorsShapes()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 104
    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    aget v5, v4, v5

    invoke-static {v5}, Lcn/nubia/camera/b/l;->b(I)I

    .line 105
    array-length v5, v4

    add-int/lit8 v5, v5, -0x3

    aget v4, v4, v5

    invoke-static {v4}, Lcn/nubia/camera/b/l;->c(I)I

    .line 106
    invoke-interface {v0}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getInputTensorsShapes()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-interface {v0, v4}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->createFloatTensor([I)Lcom/qualcomm/qti/snpe/FloatTensor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 112
    iget-object v5, p0, Lcn/nubia/camera/b/l$a;->b:Lcn/nubia/camera/b/l;

    sget-object v6, Lcn/nubia/camera/b/l;->a:Lcn/nubia/camera/b/h;

    invoke-static {}, Lcn/nubia/camera/b/l;->c()I

    move-result v7

    invoke-static {}, Lcn/nubia/camera/b/l;->d()I

    move-result v8

    invoke-interface {v6, v7, v8}, Lcn/nubia/camera/b/h;->a(II)Lcn/nubia/camera/v/b;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/camera/b/l;->a(Lcn/nubia/camera/b/l;Lcn/nubia/camera/v/b;)Lcn/nubia/camera/v/b;

    .line 113
    iget-object v5, p0, Lcn/nubia/camera/b/l$a;->b:Lcn/nubia/camera/b/l;

    invoke-static {v5}, Lcn/nubia/camera/b/l;->a(Lcn/nubia/camera/b/l;)Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcn/nubia/camera/a/a;

    invoke-virtual {v5}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/camera/b/l$a;->b:Lcn/nubia/camera/b/l;

    invoke-static {v6}, Lcn/nubia/camera/b/l;->b(Lcn/nubia/camera/b/l;)Lcn/nubia/camera/v/b;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 114
    iget-object v5, p0, Lcn/nubia/camera/b/l$a;->b:Lcn/nubia/camera/b/l;

    invoke-static {v5}, Lcn/nubia/camera/b/l;->b(Lcn/nubia/camera/b/l;)Lcn/nubia/camera/v/b;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcn/nubia/camera/v/b;->a(Z)V

    .line 115
    invoke-static {}, Lcn/nubia/camera/b/l;->c()I

    move-result v2

    invoke-static {}, Lcn/nubia/camera/b/l;->d()I

    move-result v5

    mul-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0x3

    new-array v13, v2, [F

    .line 117
    :cond_2
    :goto_2
    iget-boolean v5, p0, Lcn/nubia/camera/b/l$a;->a:Z

    if-nez v5, :cond_6

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 120
    iget-object v7, p0, Lcn/nubia/camera/b/l$a;->b:Lcn/nubia/camera/b/l;

    invoke-static {v7}, Lcn/nubia/camera/b/l;->c(Lcn/nubia/camera/b/l;)J

    move-result-wide v7

    sub-long v7, v5, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/16 v9, 0xfa

    cmp-long v11, v7, v9

    if-gez v11, :cond_3

    .line 122
    iget-object v11, p0, Lcn/nubia/camera/b/l$a;->b:Lcn/nubia/camera/b/l;

    monitor-enter v11

    .line 124
    :try_start_1
    iget-object v5, p0, Lcn/nubia/camera/b/l$a;->b:Lcn/nubia/camera/b/l;

    sub-long/2addr v9, v7

    invoke-virtual {v5, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v5

    .line 126
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 128
    :goto_3
    monitor-exit v11

    goto :goto_2

    :goto_4
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 132
    :cond_3
    iget-object v7, p0, Lcn/nubia/camera/b/l$a;->b:Lcn/nubia/camera/b/l;

    invoke-static {v7}, Lcn/nubia/camera/b/l;->b(Lcn/nubia/camera/b/l;)Lcn/nubia/camera/v/b;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/camera/b/l$a;->b:Lcn/nubia/camera/b/l;

    iget-object v8, v8, Lcn/nubia/camera/b/l;->b:Lcn/nubia/camera/v/b$c;

    invoke-virtual {v7, v8}, Lcn/nubia/camera/v/b;->a(Lcn/nubia/camera/v/b$c;)V

    .line 133
    iget-object v7, p0, Lcn/nubia/camera/b/l$a;->b:Lcn/nubia/camera/b/l;

    monitor-enter v7

    .line 134
    :goto_5
    :try_start_3
    iget-object v8, p0, Lcn/nubia/camera/b/l$a;->b:Lcn/nubia/camera/b/l;

    invoke-static {v8}, Lcn/nubia/camera/b/l;->d(Lcn/nubia/camera/b/l;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lcn/nubia/camera/b/l$a;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v8, :cond_4

    .line 136
    :try_start_4
    iget-object v8, p0, Lcn/nubia/camera/b/l$a;->b:Lcn/nubia/camera/b/l;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catch_1
    move-exception v8

    .line 138
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 141
    :cond_4
    iget-object v8, p0, Lcn/nubia/camera/b/l$a;->b:Lcn/nubia/camera/b/l;

    invoke-static {v8, v3}, Lcn/nubia/camera/b/l;->a(Lcn/nubia/camera/b/l;Z)Z

    .line 142
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 144
    iget-object v7, p0, Lcn/nubia/camera/b/l$a;->b:Lcn/nubia/camera/b/l;

    invoke-static {v7}, Lcn/nubia/camera/b/l;->b(Lcn/nubia/camera/b/l;)Lcn/nubia/camera/v/b;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/camera/v/b;->e()[B

    move-result-object v7

    .line 145
    iget-object v8, p0, Lcn/nubia/camera/b/l$a;->b:Lcn/nubia/camera/b/l;

    invoke-static {v8}, Lcn/nubia/camera/b/l;->b(Lcn/nubia/camera/b/l;)Lcn/nubia/camera/v/b;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/camera/v/b;->g()I

    move-result v8

    .line 146
    iget-object v9, p0, Lcn/nubia/camera/b/l$a;->b:Lcn/nubia/camera/b/l;

    invoke-static {v9}, Lcn/nubia/camera/b/l;->b(Lcn/nubia/camera/b/l;)Lcn/nubia/camera/v/b;

    move-result-object v9

    invoke-virtual {v9}, Lcn/nubia/camera/v/b;->h()I

    move-result v9

    if-eqz v7, :cond_2

    .line 147
    array-length v10, v7

    mul-int v11, v9, v8

    mul-int/lit8 v11, v11, 0x4

    if-eq v10, v11, :cond_5

    goto/16 :goto_2

    .line 150
    :cond_5
    iget-object v10, p0, Lcn/nubia/camera/b/l$a;->b:Lcn/nubia/camera/b/l;

    invoke-static {v10, v5, v6}, Lcn/nubia/camera/b/l;->a(Lcn/nubia/camera/b/l;J)J

    .line 152
    sget-object v5, Lcn/nubia/camera/b/l;->a:Lcn/nubia/camera/b/h;

    iget-object v6, p0, Lcn/nubia/camera/b/l$a;->b:Lcn/nubia/camera/b/l;

    invoke-static {v6}, Lcn/nubia/camera/b/l;->e(Lcn/nubia/camera/b/l;)I

    move-result v10

    invoke-static {}, Lcn/nubia/camera/b/l;->c()I

    move-result v11

    invoke-static {}, Lcn/nubia/camera/b/l;->d()I

    move-result v12

    move-object v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move-object v10, v13

    invoke-interface/range {v5 .. v12}, Lcn/nubia/camera/b/h;->a([BIII[FII)V

    new-array v5, v3, [I

    .line 154
    invoke-virtual {v4, v13, v3, v2, v5}, Lcom/qualcomm/qti/snpe/FloatTensor;->write([FII[I)V

    .line 155
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 156
    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-interface {v0, v5}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->execute(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 160
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qualcomm/qti/snpe/FloatTensor;

    .line 161
    invoke-virtual {v5}, Lcom/qualcomm/qti/snpe/FloatTensor;->getSize()I

    move-result v6

    new-array v7, v6, [F

    new-array v8, v3, [I

    .line 162
    invoke-virtual {v5, v7, v3, v6, v8}, Lcom/qualcomm/qti/snpe/FloatTensor;->read([FII[I)I

    .line 164
    invoke-virtual {v5}, Lcom/qualcomm/qti/snpe/FloatTensor;->release()V

    .line 166
    sget-object v5, Lcn/nubia/camera/b/l;->a:Lcn/nubia/camera/b/h;

    invoke-interface {v5, v7}, Lcn/nubia/camera/b/h;->a([F)V

    .line 167
    iget-object v5, p0, Lcn/nubia/camera/b/l$a;->b:Lcn/nubia/camera/b/l;

    invoke-static {v5}, Lcn/nubia/camera/b/l;->f(Lcn/nubia/camera/b/l;)Lcn/nubia/camera/b/l$b;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 168
    iget-object v5, p0, Lcn/nubia/camera/b/l$a;->b:Lcn/nubia/camera/b/l;

    invoke-static {v5}, Lcn/nubia/camera/b/l;->f(Lcn/nubia/camera/b/l;)Lcn/nubia/camera/b/l$b;

    move-result-object v5

    invoke-interface {v5, v7}, Lcn/nubia/camera/b/l$b;->a([F)V

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    .line 142
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :cond_6
    const-string v1, "SceneClassifier"

    const-string v2, "release snpe"

    .line 171
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v1, p0, Lcn/nubia/camera/b/l$a;->b:Lcn/nubia/camera/b/l;

    invoke-static {v1}, Lcn/nubia/camera/b/l;->b(Lcn/nubia/camera/b/l;)Lcn/nubia/camera/v/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/v/b;->a()V

    .line 173
    invoke-virtual {v4}, Lcom/qualcomm/qti/snpe/FloatTensor;->release()V

    .line 174
    invoke-interface {v0}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->release()V

    return-void

    :catch_2
    move-exception v0

    const-string v1, "SceneClassifier"

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init snpe fail. Model size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/pictureclassifier/PictureClassifier"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
