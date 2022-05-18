.class public Lcom/android/gallery3d/filtershow/materials/u/d;
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
    .locals 7
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

    const-string p2, "name"

    const-string v0, "id"

    const-string v1, "data"

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lcom/android/gallery3d/filtershow/materials/c;

    invoke-direct {v5}, Lcom/android/gallery3d/filtershow/materials/c;-><init>()V

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/filtershow/materials/c;->o(I)V

    :cond_0
    invoke-virtual {v4, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/materials/c;->q(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    return-object v2
.end method
