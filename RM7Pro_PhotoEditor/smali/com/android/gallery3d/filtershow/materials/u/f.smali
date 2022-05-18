.class public Lcom/android/gallery3d/filtershow/materials/u/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/materials/u/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/u/f;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/u/f;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/u/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/materials/u/f;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/android/gallery3d/filtershow/materials/u/b;)Ljava/util/Vector;
    .locals 13
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

    const-string p2, "size"

    const-string v0, "version"

    const-string v1, "name"

    const-string v2, "id"

    const-string v3, "data"

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v3, :cond_7

    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v9, Lcom/android/gallery3d/filtershow/materials/c;

    invoke-direct {v9}, Lcom/android/gallery3d/filtershow/materials/c;-><init>()V

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/filtershow/materials/c;->o(I)V

    :cond_1
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/filtershow/materials/c;->q(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, ""

    if-eqz v10, :cond_4

    :try_start_1
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v9, v6}, Lcom/android/gallery3d/filtershow/materials/c;->v(I)V

    goto :goto_1

    :cond_3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/filtershow/materials/c;->v(I)V

    :cond_4
    :goto_1
    invoke-virtual {v8, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v8, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/gallery3d/filtershow/materials/c;->u(J)V

    goto :goto_2

    :cond_5
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/android/gallery3d/filtershow/materials/c;->u(J)V

    :cond_6
    :goto_2
    invoke-virtual {v9, v5}, Lcom/android/gallery3d/filtershow/materials/c;->n(Z)V

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/materials/u/f;->a:Ljava/lang/String;

    invoke-virtual {v9, v8}, Lcom/android/gallery3d/filtershow/materials/c;->p(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/materials/u/f;->b:Ljava/lang/String;

    invoke-virtual {v9, v8}, Lcom/android/gallery3d/filtershow/materials/c;->l(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    return-object v4

    :cond_8
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method
