.class public Lcn/nubia/camera/s/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Application;

.field private b:Lcom/qualcomm/qti/snpe/NeuralNetwork;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcn/nubia/camera/s/b;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    .line 34
    iput-object v0, p0, Lcn/nubia/camera/s/b;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcn/nubia/camera/s/b;->d:I

    .line 36
    iput v0, p0, Lcn/nubia/camera/s/b;->e:I

    .line 37
    iput v0, p0, Lcn/nubia/camera/s/b;->f:I

    .line 38
    iput v0, p0, Lcn/nubia/camera/s/b;->g:I

    .line 41
    iput-object p1, p0, Lcn/nubia/camera/s/b;->a:Landroid/app/Application;

    .line 42
    invoke-direct {p0}, Lcn/nubia/camera/s/b;->b()V

    return-void
.end method

.method private a([B)V
    .locals 5

    .line 138
    :try_start_0
    new-instance v0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    iget-object v1, p0, Lcn/nubia/camera/s/b;->a:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;-><init>(Landroid/app/Application;)V

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    const/4 v3, 0x0

    .line 139
    sget-object v4, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->GPU:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setRuntimeOrder([Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    .line 140
    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setCpuFallbackEnabled(Z)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    .line 141
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setModel(Ljava/io/InputStream;I)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    .line 142
    invoke-virtual {v0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->build()Lcom/qualcomm/qti/snpe/NeuralNetwork;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/s/b;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "GenderNetwork"

    const-string v1, "buildNetwork error"

    .line 144
    invoke-static {v0, v1, p1}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    iget-object p1, p0, Lcn/nubia/camera/s/b;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-eqz p1, :cond_0

    .line 146
    invoke-interface {p1}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->release()V

    const/4 p1, 0x0

    .line 147
    iput-object p1, p0, Lcn/nubia/camera/s/b;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    :cond_0
    :goto_0
    return-void
.end method

.method private b()V
    .locals 1

    .line 112
    invoke-direct {p0}, Lcn/nubia/camera/s/b;->c()[B

    move-result-object v0

    .line 113
    invoke-direct {p0, v0}, Lcn/nubia/camera/s/b;->a([B)V

    .line 114
    invoke-direct {p0}, Lcn/nubia/camera/s/b;->d()V

    return-void
.end method

.method private c()[B
    .locals 6

    const/4 v0, 0x0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/s/b;->a:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "gender_model.dlc"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 121
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/high16 v3, 0x100000

    new-array v3, v3, [B

    .line 124
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    .line 125
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 128
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 129
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "GenderNetwork"

    const-string v3, "getModel error"

    .line 131
    invoke-static {v2, v3, v1}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v0
.end method

.method private d()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcn/nubia/camera/s/b;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-eqz v0, :cond_0

    .line 154
    invoke-interface {v0}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getInputTensorsNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/camera/s/b;->c:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcn/nubia/camera/s/b;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    invoke-interface {v0}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getInputTensorsShapes()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/s/b;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    .line 156
    aget v1, v0, v1

    iput v1, p0, Lcn/nubia/camera/s/b;->d:I

    const/4 v1, 0x1

    .line 157
    aget v1, v0, v1

    iput v1, p0, Lcn/nubia/camera/s/b;->e:I

    const/4 v1, 0x2

    .line 158
    aget v1, v0, v1

    iput v1, p0, Lcn/nubia/camera/s/b;->f:I

    const/4 v1, 0x3

    .line 159
    aget v0, v0, v1

    iput v0, p0, Lcn/nubia/camera/s/b;->g:I

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a([F)I
    .locals 6

    monitor-enter p0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "GenderNetwork"

    const-string v1, "recognize: input = null"

    .line 78
    invoke-static {p1, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return v0

    .line 81
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcn/nubia/camera/s/b;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-nez v1, :cond_1

    const-string p1, "GenderNetwork"

    const-string v1, "recognize: mNetwork = null"

    .line 82
    invoke-static {p1, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    monitor-exit p0

    return v0

    :cond_1
    const/4 v2, 0x4

    :try_start_2
    new-array v2, v2, [I

    .line 86
    iget v3, p0, Lcn/nubia/camera/s/b;->d:I

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcn/nubia/camera/s/b;->f:I

    aput v3, v2, v0

    const/4 v3, 0x2

    iget v5, p0, Lcn/nubia/camera/s/b;->e:I

    aput v5, v2, v3

    const/4 v3, 0x3

    iget v5, p0, Lcn/nubia/camera/s/b;->g:I

    aput v5, v2, v3

    invoke-interface {v1, v2}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->createFloatTensor([I)Lcom/qualcomm/qti/snpe/FloatTensor;

    move-result-object v1

    .line 87
    array-length v2, p1

    new-array v3, v4, [I

    invoke-virtual {v1, p1, v4, v2, v3}, Lcom/qualcomm/qti/snpe/FloatTensor;->write([FII[I)V

    .line 89
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 90
    iget-object v2, p0, Lcn/nubia/camera/s/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lcn/nubia/camera/s/b;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    invoke-interface {v1, p1}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->execute(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 93
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qualcomm/qti/snpe/FloatTensor;

    .line 94
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/FloatTensor;->getSize()I

    move-result v1

    new-array v2, v1, [F

    new-array v3, v4, [I

    .line 95
    invoke-virtual {p1, v2, v4, v1, v3}, Lcom/qualcomm/qti/snpe/FloatTensor;->read([FII[I)I

    .line 97
    aget p1, v2, v4

    aget v1, v2, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    move v0, v4

    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/s/b;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->release()V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcn/nubia/camera/s/b;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
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

    if-nez p1, :cond_0

    const-string v1, "GenderNetwork"

    const-string v2, "toInputData: bitmap = null"

    .line 47
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    .line 52
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 54
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 55
    iget v1, v0, Lcn/nubia/camera/s/b;->e:I

    int-to-float v2, v1

    int-to-float v3, v4

    div-float/2addr v2, v3

    int-to-float v1, v1

    int-to-float v3, v5

    div-float/2addr v1, v3

    invoke-virtual {v6, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p1

    .line 56
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 57
    iget v14, v0, Lcn/nubia/camera/s/b;->e:I

    iget v15, v0, Lcn/nubia/camera/s/b;->f:I

    mul-int v1, v14, v15

    new-array v1, v1, [I

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v9, v1

    move v11, v14

    .line 58
    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 61
    iget v2, v0, Lcn/nubia/camera/s/b;->e:I

    iget v3, v0, Lcn/nubia/camera/s/b;->f:I

    mul-int/2addr v2, v3

    iget v3, v0, Lcn/nubia/camera/s/b;->g:I

    mul-int/2addr v2, v3

    new-array v2, v2, [F

    const/4 v3, 0x0

    move v4, v3

    .line 63
    :goto_0
    iget v5, v0, Lcn/nubia/camera/s/b;->e:I

    if-ge v4, v5, :cond_2

    move v5, v3

    .line 64
    :goto_1
    iget v6, v0, Lcn/nubia/camera/s/b;->f:I

    if-ge v5, v6, :cond_1

    .line 65
    iget v6, v0, Lcn/nubia/camera/s/b;->e:I

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

    .line 69
    aput v8, v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public declared-synchronized b(Landroid/graphics/Bitmap;)I
    .locals 0

    monitor-enter p0

    .line 101
    :try_start_0
    invoke-virtual {p0, p1}, Lcn/nubia/camera/s/b;->a(Landroid/graphics/Bitmap;)[F

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/camera/s/b;->a([F)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
