.class public Lcn/nubia/camera/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Application;

.field private b:Lcom/qualcomm/qti/snpe/NeuralNetwork;

.field private c:Ljava/lang/String;

.field private d:[I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcn/nubia/camera/i/a;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    .line 27
    iput-object v0, p0, Lcn/nubia/camera/i/a;->c:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcn/nubia/camera/i/a;->d:[I

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcn/nubia/camera/i/a;->e:I

    .line 30
    iput v0, p0, Lcn/nubia/camera/i/a;->f:I

    .line 31
    iput v0, p0, Lcn/nubia/camera/i/a;->g:I

    .line 32
    iput v0, p0, Lcn/nubia/camera/i/a;->h:I

    .line 33
    iput v0, p0, Lcn/nubia/camera/i/a;->i:I

    .line 34
    iput v0, p0, Lcn/nubia/camera/i/a;->j:I

    .line 35
    iput v0, p0, Lcn/nubia/camera/i/a;->k:I

    .line 36
    iput v0, p0, Lcn/nubia/camera/i/a;->l:I

    .line 39
    iput-object p1, p0, Lcn/nubia/camera/i/a;->a:Landroid/app/Application;

    return-void
.end method

.method private a([B)V
    .locals 5

    .line 131
    :try_start_0
    new-instance v0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    iget-object v1, p0, Lcn/nubia/camera/i/a;->a:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;-><init>(Landroid/app/Application;)V

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    const/4 v3, 0x0

    .line 132
    sget-object v4, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->GPU:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setRuntimeOrder([Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    .line 133
    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setCpuFallbackEnabled(Z)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    .line 134
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setModel(Ljava/io/InputStream;I)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    .line 135
    invoke-virtual {v0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->build()Lcom/qualcomm/qti/snpe/NeuralNetwork;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/i/a;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "NeuralNetwork"

    const-string v1, "buildNeuralNetwork error"

    .line 137
    invoke-static {v0, v1, p1}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    iget-object p1, p0, Lcn/nubia/camera/i/a;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-eqz p1, :cond_0

    .line 139
    invoke-interface {p1}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->release()V

    const/4 p1, 0x0

    .line 140
    iput-object p1, p0, Lcn/nubia/camera/i/a;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    :cond_0
    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;)[B
    .locals 5

    const/4 v0, 0x0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/i/a;->a:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 114
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/high16 v2, 0x100000

    new-array v2, v2, [B

    .line 117
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    .line 118
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 121
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 122
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "NeuralNetwork"

    const-string v2, "readModelFile error"

    .line 124
    invoke-static {v1, v2, p1}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v0
.end method

.method private g()V
    .locals 6

    .line 146
    iget-object v0, p0, Lcn/nubia/camera/i/a;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v0}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getInputTensorsNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/camera/i/a;->c:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcn/nubia/camera/i/a;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    invoke-interface {v0}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getInputTensorsShapes()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/i/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcn/nubia/camera/i/a;->d:[I

    const/4 v1, 0x0

    .line 149
    aget v2, v0, v1

    iput v2, p0, Lcn/nubia/camera/i/a;->e:I

    const/4 v2, 0x1

    .line 150
    aget v3, v0, v2

    iput v3, p0, Lcn/nubia/camera/i/a;->f:I

    const/4 v3, 0x2

    .line 151
    aget v4, v0, v3

    iput v4, p0, Lcn/nubia/camera/i/a;->g:I

    const/4 v4, 0x3

    .line 152
    aget v0, v0, v4

    iput v0, p0, Lcn/nubia/camera/i/a;->h:I

    .line 154
    iget-object v0, p0, Lcn/nubia/camera/i/a;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    invoke-interface {v0}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getOutputLayers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    iget-object v5, p0, Lcn/nubia/camera/i/a;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    invoke-interface {v5}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getOutputTensorsShapes()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 156
    aget v1, v0, v1

    iput v1, p0, Lcn/nubia/camera/i/a;->i:I

    .line 157
    aget v1, v0, v2

    iput v1, p0, Lcn/nubia/camera/i/a;->j:I

    .line 158
    aget v1, v0, v3

    iput v1, p0, Lcn/nubia/camera/i/a;->k:I

    .line 159
    aget v0, v0, v4

    iput v0, p0, Lcn/nubia/camera/i/a;->l:I

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/i/a;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->release()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcn/nubia/camera/i/a;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/i/a;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-nez v0, :cond_0

    .line 47
    invoke-direct {p0, p1}, Lcn/nubia/camera/i/a;->b(Ljava/lang/String;)[B

    move-result-object p1

    .line 48
    invoke-direct {p0, p1}, Lcn/nubia/camera/i/a;->a([B)V

    .line 49
    invoke-direct {p0}, Lcn/nubia/camera/i/a;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a([F)[F
    .locals 4

    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/i/a;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 55
    monitor-exit p0

    return-object p1

    .line 57
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcn/nubia/camera/i/a;->d:[I

    invoke-interface {v0, v1}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->createFloatTensor([I)Lcom/qualcomm/qti/snpe/FloatTensor;

    move-result-object v0

    .line 58
    array-length v1, p1

    const/4 v2, 0x0

    new-array v3, v2, [I

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/qualcomm/qti/snpe/FloatTensor;->write([FII[I)V

    .line 60
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 61
    iget-object v1, p0, Lcn/nubia/camera/i/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcn/nubia/camera/i/a;->b:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    invoke-interface {v0, p1}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->execute(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 64
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qualcomm/qti/snpe/FloatTensor;

    .line 65
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/FloatTensor;->getSize()I

    move-result v0

    new-array v1, v0, [F

    new-array v3, v2, [I

    .line 66
    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/qualcomm/qti/snpe/FloatTensor;->read([FII[I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()I
    .locals 1

    .line 83
    iget v0, p0, Lcn/nubia/camera/i/a;->f:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 87
    iget v0, p0, Lcn/nubia/camera/i/a;->g:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 91
    iget v0, p0, Lcn/nubia/camera/i/a;->h:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 99
    iget v0, p0, Lcn/nubia/camera/i/a;->j:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 103
    iget v0, p0, Lcn/nubia/camera/i/a;->k:I

    return v0
.end method
