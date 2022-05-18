.class public Lcn/nubia/cloud/sync/common/recyclebin/GarbageDataListCreator;
.super Ljava/lang/Object;
.source "GarbageDataListCreator.java"

# interfaces
.implements Lcn/nubia/cloud/utils/Jsonable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/utils/Jsonable$Creator",
        "<",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final KEY_DATA:Ljava/lang/String; = "data"


# instance fields
.field private final mCreator:Lcn/nubia/cloud/utils/Jsonable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/Jsonable$Creator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/cloud/utils/Jsonable$Creator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/utils/Jsonable$Creator",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcn/nubia/cloud/sync/common/recyclebin/GarbageDataListCreator;, "Lcn/nubia/cloud/sync/common/recyclebin/GarbageDataListCreator<TT;>;"
    .local p1, "mCreator":Lcn/nubia/cloud/utils/Jsonable$Creator;, "Lcn/nubia/cloud/utils/Jsonable$Creator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcn/nubia/cloud/sync/common/recyclebin/GarbageDataListCreator;->mCreator:Lcn/nubia/cloud/utils/Jsonable$Creator;

    .line 21
    return-void
.end method

.method private handlerJson(Lcn/nubia/cloud/utils/ParcelableJson;)Ljava/util/List;
    .locals 3
    .param p1, "json"    # Lcn/nubia/cloud/utils/ParcelableJson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/utils/ParcelableJson;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcn/nubia/cloud/sync/common/recyclebin/GarbageDataListCreator;, "Lcn/nubia/cloud/sync/common/recyclebin/GarbageDataListCreator<TT;>;"
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lcn/nubia/cloud/utils/ParcelableJson;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lcn/nubia/cloud/utils/ParcelableJson;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 41
    .local v0, "data":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 42
    invoke-direct {p0, v0}, Lcn/nubia/cloud/sync/common/recyclebin/GarbageDataListCreator;->handlerJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 45
    .end local v0    # "data":Lorg/json/JSONArray;
    :cond_0
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "data error"

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private handlerJsonArray(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 9
    .param p1, "dataArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcn/nubia/cloud/sync/common/recyclebin/GarbageDataListCreator;, "Lcn/nubia/cloud/sync/common/recyclebin/GarbageDataListCreator<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v1, "garbageDatas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 51
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 52
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 54
    .local v4, "object":Lorg/json/JSONObject;
    :try_start_0
    iget-object v6, p0, Lcn/nubia/cloud/sync/common/recyclebin/GarbageDataListCreator;->mCreator:Lcn/nubia/cloud/utils/Jsonable$Creator;

    new-instance v7, Lcn/nubia/cloud/utils/ParcelableJson;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcn/nubia/cloud/utils/ParcelableJson;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lcn/nubia/cloud/utils/Jsonable$Creator;->createFromJson(Lcn/nubia/cloud/utils/ParcelableJson;)Ljava/lang/Object;

    move-result-object v5

    .line 55
    .local v5, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v5    # "t":Ljava/lang/Object;, "TT;"
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 60
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v4    # "object":Lorg/json/JSONObject;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public bridge synthetic createFromJson(Lcn/nubia/cloud/utils/ParcelableJson;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcn/nubia/cloud/utils/ParcelableJson;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "this":Lcn/nubia/cloud/sync/common/recyclebin/GarbageDataListCreator;, "Lcn/nubia/cloud/sync/common/recyclebin/GarbageDataListCreator<TT;>;"
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/sync/common/recyclebin/GarbageDataListCreator;->createFromJson(Lcn/nubia/cloud/utils/ParcelableJson;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createFromJson(Lcn/nubia/cloud/utils/ParcelableJson;)Ljava/util/List;
    .locals 2
    .param p1, "json"    # Lcn/nubia/cloud/utils/ParcelableJson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/utils/ParcelableJson;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcn/nubia/cloud/sync/common/recyclebin/GarbageDataListCreator;, "Lcn/nubia/cloud/sync/common/recyclebin/GarbageDataListCreator<TT;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/cloud/sync/common/recyclebin/GarbageDataListCreator;->handlerJson(Lcn/nubia/cloud/utils/ParcelableJson;)Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 30
    :goto_0
    return-object v1

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 15
    .local p0, "this":Lcn/nubia/cloud/sync/common/recyclebin/GarbageDataListCreator;, "Lcn/nubia/cloud/sync/common/recyclebin/GarbageDataListCreator<TT;>;"
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/sync/common/recyclebin/GarbageDataListCreator;->newArray(I)[Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ljava/util/List;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcn/nubia/cloud/sync/common/recyclebin/GarbageDataListCreator;, "Lcn/nubia/cloud/sync/common/recyclebin/GarbageDataListCreator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
