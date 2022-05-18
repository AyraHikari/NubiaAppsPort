.class public Lcn/nubia/camera/as/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Application;

.field private b:Lcom/qualcomm/qti/snpe/NeuralNetwork;

.field private c:Lcom/qualcomm/qti/snpe/FloatTensor;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:J

.field private i:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcn/nubia/camera/as/a;->a:Landroid/app/Application;

    .line 36
    iput-object v0, p0, Lcn/nubia/camera/as/a;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    .line 37
    iput-object v0, p0, Lcn/nubia/camera/as/a;->c:Lcom/qualcomm/qti/snpe/FloatTensor;

    .line 38
    iput-object v0, p0, Lcn/nubia/camera/as/a;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcn/nubia/camera/as/a;->e:I

    .line 40
    iput v0, p0, Lcn/nubia/camera/as/a;->f:I

    .line 41
    iput v0, p0, Lcn/nubia/camera/as/a;->g:I

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lcn/nubia/camera/as/a;->h:J

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/as/a;->i:Ljava/util/LinkedList;

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/as/a;->j:Ljava/util/LinkedList;

    .line 51
    iput-object p1, p0, Lcn/nubia/camera/as/a;->a:Landroid/app/Application;

    .line 52
    invoke-direct {p0}, Lcn/nubia/camera/as/a;->b()V

    return-void
.end method

.method private a([B)V
    .locals 6

    const-string v0, "SmileNetwork"

    .line 184
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "snpe version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/as/a;->a:Landroid/app/Application;

    invoke-static {v2}, Lcom/qualcomm/qti/snpe/SNPE;->getRuntimeVersion(Landroid/app/Application;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v1, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    iget-object v2, p0, Lcn/nubia/camera/as/a;->a:Landroid/app/Application;

    invoke-direct {v1, v2}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;-><init>(Landroid/app/Application;)V

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    const/4 v4, 0x0

    .line 186
    sget-object v5, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->GPU:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setRuntimeOrder([Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    .line 187
    invoke-virtual {v1, v2}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setCpuFallbackEnabled(Z)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    .line 188
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-virtual {v1, v2, p1}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setModel(Ljava/io/InputStream;I)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    .line 189
    invoke-virtual {v1}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->build()Lcom/qualcomm/qti/snpe/NeuralNetwork;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/as/a;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "buildNetwork error"

    .line 191
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    iget-object p1, p0, Lcn/nubia/camera/as/a;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-eqz p1, :cond_0

    .line 193
    invoke-interface {p1}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->release()V

    const/4 p1, 0x0

    .line 194
    iput-object p1, p0, Lcn/nubia/camera/as/a;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    :cond_0
    :goto_0
    return-void
.end method

.method private b()V
    .locals 2

    const-string v0, "SmileNetwork"

    const-string v1, "zjy init "

    .line 156
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0}, Lcn/nubia/camera/as/a;->c()[B

    move-result-object v1

    .line 158
    invoke-direct {p0, v1}, Lcn/nubia/camera/as/a;->a([B)V

    .line 159
    invoke-direct {p0}, Lcn/nubia/camera/as/a;->d()V

    const-string v1, "zjy init end"

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private c()[B
    .locals 6

    const/4 v0, 0x0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/as/a;->a:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "smile_model.dlc"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 167
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/high16 v3, 0x100000

    new-array v3, v3, [B

    .line 170
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    .line 171
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 174
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 175
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "SmileNetwork"

    const-string v3, "getModel error"

    .line 177
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v0
.end method

.method private d()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcn/nubia/camera/as/a;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getInputTensorsNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/camera/as/a;->d:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcn/nubia/camera/as/a;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    invoke-interface {v0}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getInputTensorsShapes()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/as/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 203
    array-length v1, v0

    add-int/lit8 v1, v1, -0x3

    aget v1, v0, v1

    iput v1, p0, Lcn/nubia/camera/as/a;->f:I

    .line 204
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    aget v1, v0, v1

    iput v1, p0, Lcn/nubia/camera/as/a;->e:I

    .line 205
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    iput v1, p0, Lcn/nubia/camera/as/a;->g:I

    .line 208
    iget-object v1, p0, Lcn/nubia/camera/as/a;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    invoke-interface {v1, v0}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->createFloatTensor([I)Lcom/qualcomm/qti/snpe/FloatTensor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/as/a;->c:Lcom/qualcomm/qti/snpe/FloatTensor;

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(I)I
    .locals 9

    monitor-enter p0

    .line 109
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const-string p1, "SmileNetwork"

    const-string v3, "steadyEmotion SMILE"

    .line 112
    invoke-static {p1, v3}, Lcn/nubia/camera/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object p1, p0, Lcn/nubia/camera/as/a;->i:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "SmileNetwork"

    const-string v3, "steadyEmotion NON_SMILE"

    .line 116
    invoke-static {p1, v3}, Lcn/nubia/camera/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p1, p0, Lcn/nubia/camera/as/a;->j:Ljava/util/LinkedList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 120
    :goto_0
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 121
    iget-object v3, p0, Lcn/nubia/camera/as/a;->i:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-wide/16 v5, 0x12c

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 122
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v7, v0, v7

    cmp-long v5, v7, v5

    if-gtz v5, :cond_1

    .line 123
    invoke-virtual {p1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 126
    :cond_2
    iput-object p1, p0, Lcn/nubia/camera/as/a;->i:Ljava/util/LinkedList;

    .line 128
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 129
    iget-object v3, p0, Lcn/nubia/camera/as/a;->j:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 130
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v7, v0, v7

    cmp-long v7, v7, v5

    if-gtz v7, :cond_3

    .line 131
    invoke-virtual {p1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 134
    :cond_4
    iput-object p1, p0, Lcn/nubia/camera/as/a;->j:Ljava/util/LinkedList;

    .line 136
    iget-object p1, p0, Lcn/nubia/camera/as/a;->i:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v3, 0x3

    if-lt p1, v3, :cond_5

    iget-object p1, p0, Lcn/nubia/camera/as/a;->j:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_5

    .line 138
    iget-wide v3, p0, Lcn/nubia/camera/as/a;->h:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x384

    cmp-long p1, v3, v5

    if-ltz p1, :cond_5

    .line 139
    iput-wide v0, p0, Lcn/nubia/camera/as/a;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return v2

    :cond_5
    const/4 p1, 0x0

    .line 144
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a([F)I
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "SmileNetwork"

    const-string v1, "recognizeEmotion: input = null"

    .line 87
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return v0

    .line 90
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcn/nubia/camera/as/a;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 91
    monitor-exit p0

    return v0

    .line 94
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcn/nubia/camera/as/a;->c:Lcom/qualcomm/qti/snpe/FloatTensor;

    array-length v2, p1

    new-array v3, v0, [I

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/qualcomm/qti/snpe/FloatTensor;->write([FII[I)V

    .line 96
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 97
    iget-object v1, p0, Lcn/nubia/camera/as/a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/camera/as/a;->c:Lcom/qualcomm/qti/snpe/FloatTensor;

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lcn/nubia/camera/as/a;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    invoke-interface {v1, p1}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->execute(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 100
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qualcomm/qti/snpe/FloatTensor;

    .line 101
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/FloatTensor;->getSize()I

    move-result v1

    new-array v2, v1, [F

    new-array v3, v0, [I

    .line 102
    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/qualcomm/qti/snpe/FloatTensor;->read([FII[I)I

    .line 104
    aget p1, v2, v0

    const/4 v1, 0x1

    aget v2, v2, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "SmileNetwork"

    const-string v1, "zjy release"

    .line 148
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcn/nubia/camera/as/a;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->release()V

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcn/nubia/camera/as/a;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/graphics/Bitmap;)[F
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImageData: bitmap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmileNetwork"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    .line 61
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 63
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 64
    iget v2, v0, Lcn/nubia/camera/as/a;->e:I

    int-to-float v3, v2

    int-to-float v7, v4

    div-float/2addr v3, v7

    int-to-float v2, v2

    int-to-float v7, v5

    div-float/2addr v2, v7

    invoke-virtual {v6, v3, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p1

    .line 65
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 66
    iget v14, v0, Lcn/nubia/camera/as/a;->e:I

    iget v15, v0, Lcn/nubia/camera/as/a;->f:I

    mul-int v1, v14, v15

    new-array v1, v1, [I

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v9, v1

    move v11, v14

    .line 67
    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 70
    iget v2, v0, Lcn/nubia/camera/as/a;->e:I

    iget v3, v0, Lcn/nubia/camera/as/a;->f:I

    mul-int/2addr v2, v3

    iget v3, v0, Lcn/nubia/camera/as/a;->g:I

    mul-int/2addr v2, v3

    new-array v2, v2, [F

    const/4 v3, 0x0

    move v4, v3

    .line 72
    :goto_0
    iget v5, v0, Lcn/nubia/camera/as/a;->e:I

    if-ge v4, v5, :cond_2

    move v5, v3

    .line 73
    :goto_1
    iget v6, v0, Lcn/nubia/camera/as/a;->f:I

    if-ge v5, v6, :cond_1

    .line 74
    iget v6, v0, Lcn/nubia/camera/as/a;->e:I

    mul-int v7, v4, v6

    add-int/2addr v7, v5

    aget v7, v1, v7

    const v8, -0xff0001

    or-int/2addr v8, v7

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    const v9, -0xff01

    or-int/2addr v9, v7

    shr-int/lit8 v9, v9, 0x8

    and-int/lit16 v9, v9, 0xff

    or-int/lit16 v7, v7, -0x100

    and-int/lit16 v7, v7, 0xff

    mul-int/2addr v6, v4

    add-int/2addr v6, v5

    int-to-float v8, v8

    const v10, 0x3e991687    # 0.299f

    mul-float/2addr v8, v10

    int-to-float v9, v9

    const v10, 0x3f1645a2    # 0.587f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    int-to-float v7, v7

    const v9, 0x3de978d5    # 0.114f

    mul-float/2addr v7, v9

    add-float/2addr v8, v7

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v8, v7

    .line 78
    aput v8, v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method
