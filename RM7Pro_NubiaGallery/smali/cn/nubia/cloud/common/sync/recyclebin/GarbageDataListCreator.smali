.class public Lcn/nubia/cloud/common/sync/recyclebin/GarbageDataListCreator;
.super Ljava/lang/Object;
.source "GarbageDataListCreator.java"

# interfaces
.implements Lcn/nubia/cloud/common/Jsonable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/common/Jsonable$Creator<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final KEY_DATA:Ljava/lang/String; = "data"


# instance fields
.field private final mCreator:Lcn/nubia/cloud/common/Jsonable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/common/Jsonable$Creator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/cloud/common/Jsonable$Creator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/common/Jsonable$Creator<",
            "TT;>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcn/nubia/cloud/common/sync/recyclebin/GarbageDataListCreator;->mCreator:Lcn/nubia/cloud/common/Jsonable$Creator;

    return-void
.end method

.method private handlerJson(Lcn/nubia/cloud/common/ParcelableJson;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/common/ParcelableJson;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "data"

    .line 37
    invoke-virtual {p1, v0}, Lcn/nubia/cloud/common/ParcelableJson;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {p1, v0}, Lcn/nubia/cloud/common/ParcelableJson;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 40
    invoke-direct {p0, p1}, Lcn/nubia/cloud/common/sync/recyclebin/GarbageDataListCreator;->handlerJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 43
    :cond_0
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "data error"

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handlerJsonArray(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    return-object v0

    .line 50
    :cond_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 52
    :try_start_0
    iget-object v4, p0, Lcn/nubia/cloud/common/sync/recyclebin/GarbageDataListCreator;->mCreator:Lcn/nubia/cloud/common/Jsonable$Creator;

    new-instance v5, Lcn/nubia/cloud/common/ParcelableJson;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lcn/nubia/cloud/common/ParcelableJson;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcn/nubia/cloud/common/Jsonable$Creator;->createFromJson(Lcn/nubia/cloud/common/ParcelableJson;)Ljava/lang/Object;

    move-result-object v3

    .line 53
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 55
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic createFromJson(Lcn/nubia/cloud/common/ParcelableJson;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/sync/recyclebin/GarbageDataListCreator;->createFromJson(Lcn/nubia/cloud/common/ParcelableJson;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public createFromJson(Lcn/nubia/cloud/common/ParcelableJson;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/common/ParcelableJson;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 24
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/cloud/common/sync/recyclebin/GarbageDataListCreator;->handlerJson(Lcn/nubia/cloud/common/ParcelableJson;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/common/sync/recyclebin/GarbageDataListCreator;->newArray(I)[Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 33
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
