.class public Lcom/android/gallery3d/filtershow/materials/u/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/materials/u/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/android/gallery3d/filtershow/materials/u/b;)Ljava/util/Vector;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/gallery3d/filtershow/materials/u/b;",
            ")",
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/materials/c;",
            ">;"
        }
    .end annotation

    const-string v0, "size"

    const-string v1, "version"

    const-string v2, "name"

    const-string v3, "id"

    const-string v4, "data"

    const-string v5, "code"

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lcom/android/gallery3d/filtershow/materials/u/b;->a(I)V

    :cond_1
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, p2, :cond_7

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v9, Lcom/android/gallery3d/filtershow/materials/c;

    invoke-direct {v9}, Lcom/android/gallery3d/filtershow/materials/c;-><init>()V

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/filtershow/materials/c;->o(I)V

    :cond_2
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/filtershow/materials/c;->q(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/filtershow/materials/c;->v(I)V

    :cond_4
    invoke-virtual {v9, v4}, Lcom/android/gallery3d/filtershow/materials/c;->v(I)V

    :cond_5
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/android/gallery3d/filtershow/materials/c;->u(J)V

    :cond_6
    invoke-virtual {v9, v7}, Lcom/android/gallery3d/filtershow/materials/c;->m(I)V

    invoke-virtual {v6, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    return-object v6

    :cond_8
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
