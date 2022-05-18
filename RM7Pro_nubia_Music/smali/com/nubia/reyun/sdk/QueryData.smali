.class public Lcom/nubia/reyun/sdk/QueryData;
.super Ljava/lang/Object;
.source "QueryData.java"


# instance fields
.field public dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public idList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public jsonStr:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lorg/json/JSONArray;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONArray;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/nubia/reyun/sdk/QueryData;->idList:Ljava/util/ArrayList;

    .line 19
    iput-object p2, p0, Lcom/nubia/reyun/sdk/QueryData;->jsonStr:Lorg/json/JSONArray;

    .line 20
    iput-object p3, p0, Lcom/nubia/reyun/sdk/QueryData;->dataList:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public RemoveData(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 24
    move v1, v2

    .line 25
    :goto_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/QueryData;->idList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    move v1, v3

    .line 33
    :cond_0
    if-eq v1, v3, :cond_1

    .line 35
    iget-object v0, p0, Lcom/nubia/reyun/sdk/QueryData;->idList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 37
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 39
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/QueryData;->jsonStr:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lt v2, v0, :cond_3

    .line 48
    :goto_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/nubia/reyun/sdk/QueryData;->jsonStr:Lorg/json/JSONArray;

    .line 50
    :cond_1
    return-void

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/nubia/reyun/sdk/QueryData;->idList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 41
    :cond_3
    if-eq v1, v2, :cond_4

    .line 42
    :try_start_1
    iget-object v0, p0, Lcom/nubia/reyun/sdk/QueryData;->jsonStr:Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method
