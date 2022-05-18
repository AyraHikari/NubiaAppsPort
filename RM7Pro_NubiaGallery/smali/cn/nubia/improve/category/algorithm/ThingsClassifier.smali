.class public Lcn/nubia/improve/category/algorithm/ThingsClassifier;
.super Ljava/lang/Object;
.source "ThingsClassifier.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThingsClassifier"

.field public static final sModelDataProcesser:Lcn/nubia/improve/category/algorithm/IModel;


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mChannel:I

.field private mHeight:I

.field private mInputKey:Ljava/lang/String;

.field private mInputShape:[I

.field private mModel:[B

.field private mNetwork:Lcom/qualcomm/qti/snpe/NeuralNetwork;

.field private mOutputKey:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcn/nubia/improve/category/algorithm/XuAihuiModel;

    invoke-direct {v0}, Lcn/nubia/improve/category/algorithm/XuAihuiModel;-><init>()V

    sput-object v0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->sModelDataProcesser:Lcn/nubia/improve/category/algorithm/IModel;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;[B)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mApplication:Landroid/app/Application;

    .line 37
    iput-object p2, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mModel:[B

    .line 38
    invoke-direct {p0, p1, p2}, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->initNetwork(Landroid/app/Application;[B)V

    .line 39
    invoke-direct {p0}, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->obtainMetaData()V

    return-void
.end method

.method private static dump([F)V
    .locals 4

    .line 223
    :try_start_0
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 224
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 225
    sget-object v2, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->sModelDataProcesser:Lcn/nubia/improve/category/algorithm/IModel;

    aget v3, p0, v1

    invoke-interface {v2, v3}, Lcn/nubia/improve/category/algorithm/IModel;->renormalization(F)B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/rc/dump"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ".yuv"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 228
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 230
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 232
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private encode([FI)Ljava/lang/String;
    .locals 10

    const-string v0, ""

    const-string v1, "ThingsClassifier"

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 149
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_4

    .line 150
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 151
    new-instance v5, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget v7, p1, v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 154
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_2

    .line 156
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aget v8, p1, v4

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_1

    .line 157
    new-instance v7, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aget v9, p1, v4

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 161
    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v5, :cond_3

    .line 162
    new-instance v5, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget v7, p1, v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-lez p2, :cond_5

    .line 167
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p2, p1, :cond_5

    goto :goto_4

    .line 170
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 172
    :goto_4
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    :goto_5
    if-ge v3, p2, :cond_6

    .line 175
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 176
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 177
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pair["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v4

    .line 181
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 184
    :cond_6
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private encodeEx([FI)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([FI)",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 190
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_4

    .line 191
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 192
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget v5, p1, v2

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 195
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_2

    .line 197
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aget v6, p1, v2

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1

    .line 198
    new-instance v5, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget v7, p1, v2

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 202
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 203
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget v5, p1, v2

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-lez p2, :cond_5

    .line 208
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p2, p1, :cond_5

    goto :goto_4

    .line 211
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 213
    :goto_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    if-ge v1, p2, :cond_6

    .line 215
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 216
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    return-object p1
.end method

.method private initNetwork(Landroid/app/Application;[B)V
    .locals 6

    const-string v0, "ThingsClassifier"

    .line 44
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "snpe version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/qualcomm/qti/snpe/SNPE;->getRuntimeVersion(Landroid/app/Application;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v3, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    invoke-direct {v3, p1}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;-><init>(Landroid/app/Application;)V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    const/4 v4, 0x0

    .line 51
    sget-object v5, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->GPU:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    aput-object v5, p1, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->CPU:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    aput-object v5, p1, v4

    invoke-virtual {v3, p1}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setRuntimeOrder([Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    .line 54
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p2, p2

    invoke-virtual {v3, p1, p2}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setModel(Ljava/io/InputStream;I)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    .line 56
    invoke-virtual {v3}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->build()Lcom/qualcomm/qti/snpe/NeuralNetwork;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mNetwork:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initNetwork "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long/2addr p1, v1

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, ""

    .line 61
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    invoke-virtual {p0}, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->release()V

    :goto_0
    return-void
.end method

.method private obtainMetaData()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mNetwork:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getInputTensorsNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mInputKey:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mNetwork:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    invoke-interface {v0}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getInputTensorsShapes()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mInputKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mInputShape:[I

    .line 70
    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    aget v1, v0, v1

    iput v1, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mWidth:I

    .line 71
    array-length v1, v0

    add-int/lit8 v1, v1, -0x3

    aget v1, v0, v1

    iput v1, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mHeight:I

    .line 72
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    iput v0, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mChannel:I

    .line 73
    iget-object v0, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mNetwork:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    invoke-interface {v0}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getOutputLayers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mOutputKey:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inputKey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mInputKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\noutputKey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mOutputKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ninputShape "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThingsClassifier"

    .line 77
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private runNetwork([F)[F
    .locals 5

    .line 122
    iget-object v0, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mNetwork:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mApplication:Landroid/app/Application;

    iget-object v1, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mModel:[B

    invoke-direct {p0, v0, v1}, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->initNetwork(Landroid/app/Application;[B)V

    .line 124
    invoke-direct {p0}, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->obtainMetaData()V

    .line 126
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mNetwork:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    iget-object v1, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mInputShape:[I

    invoke-interface {v0, v1}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->createFloatTensor([I)Lcom/qualcomm/qti/snpe/FloatTensor;

    move-result-object v0

    .line 129
    array-length v1, p1

    const/4 v2, 0x0

    new-array v3, v2, [I

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/qualcomm/qti/snpe/FloatTensor;->write([FII[I)V

    .line 131
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 132
    iget-object v1, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mInputKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mNetwork:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    invoke-interface {v1, p1}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->execute(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 136
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qualcomm/qti/snpe/FloatTensor;

    .line 137
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/FloatTensor;->getSize()I

    move-result v1

    new-array v3, v1, [F

    new-array v4, v2, [I

    .line 138
    invoke-virtual {p1, v3, v2, v1, v4}, Lcom/qualcomm/qti/snpe/FloatTensor;->read([FII[I)I

    .line 140
    invoke-virtual {v0}, Lcom/qualcomm/qti/snpe/FloatTensor;->release()V

    .line 141
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/FloatTensor;->release()V

    return-object v3
.end method


# virtual methods
.method public declared-synchronized classify(Landroid/graphics/Bitmap;II)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "II)",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mNetwork:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-nez v0, :cond_0

    const-string p1, "ThingsClassifier"

    const-string p2, "NeuralNetwork is release!"

    .line 100
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 101
    monitor-exit p0

    return-object p1

    .line 103
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 105
    iget v6, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mWidth:I

    iget v7, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mHeight:I

    mul-int v2, v6, v7

    iget v3, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mChannel:I

    mul-int/2addr v2, v3

    new-array v8, v2, [F

    .line 106
    sget-object v9, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->sModelDataProcesser:Lcn/nubia/improve/category/algorithm/IModel;

    move-object v2, v9

    move-object v3, p1

    move v4, p2

    move-object v5, v8

    invoke-interface/range {v2 .. v7}, Lcn/nubia/improve/category/algorithm/IModel;->preProcessInputData(Landroid/graphics/Bitmap;I[FII)V

    .line 108
    invoke-direct {p0, v8}, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->runNetwork([F)[F

    move-result-object p1

    .line 110
    invoke-interface {v9, p1}, Lcn/nubia/improve/category/algorithm/IModel;->postProcess([F)V

    .line 111
    invoke-static {p1}, Lcn/nubia/improve/category/algorithm/ThingsDisplayStrategy;->filter([F)[F

    move-result-object p1

    .line 113
    invoke-direct {p0, p1, p3}, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->encodeEx([FI)Ljava/util/ArrayList;

    move-result-object p1

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-string v2, "ThingsClassifier"

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "classify "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long/2addr p2, v0

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "ms"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release()V
    .locals 3

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mNetwork:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-eqz v0, :cond_0

    const-string v0, "ThingsClassifier"

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronized release network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mNetwork:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    invoke-interface {v0}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->release()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->mNetwork:Lcom/qualcomm/qti/snpe/NeuralNetwork;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
