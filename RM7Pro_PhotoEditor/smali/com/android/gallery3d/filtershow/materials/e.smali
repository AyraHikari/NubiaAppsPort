.class public Lcom/android/gallery3d/filtershow/materials/e;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x14

    :try_start_0
    const-string v2, "borders/1/"

    const-string v3, "borders/2/"

    const-string v4, "borders/3/"

    const-string v5, "borders/4/"

    const-string v6, "borders/5/"

    const-string v7, "borders/6/"

    const-string v8, "borders/7/"

    const-string v9, "borders/8/"

    const-string v10, "borders/9/"

    const-string v11, "borders/10/"

    const-string v12, "borders/11/"

    const-string v13, "borders/12/"

    const-string v14, "borders/13/"

    const-string v15, "borders/14/"

    const-string v16, "borders/15/"

    const-string v17, "borders/16/"

    const-string v18, "borders/17/"

    const-string v19, "borders/18/"

    const-string v20, "borders/19/"

    const-string v21, "borders/20/"

    filled-new-array/range {v2 .. v21}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    new-instance v4, Lcom/android/gallery3d/filtershow/materials/h;

    aget-object v5, v2, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "thumb.png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p0

    invoke-direct {v4, v7, v5, v6}, Lcom/android/gallery3d/filtershow/materials/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/materials/h;->h()Lcom/android/gallery3d/filtershow/d/a;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/filtershow/d/a;->e(Landroid/content/res/Resources;)V

    new-instance v5, Lcom/android/gallery3d/filtershow/filters/r;

    const-string v6, "offline"

    invoke-direct {v5, v4, v6}, Lcom/android/gallery3d/filtershow/filters/r;-><init>(Lcom/android/gallery3d/filtershow/materials/g;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v1
.end method

.method public static b(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xd

    :try_start_0
    const-string v2, "bubble/1/"

    const-string v3, "bubble/2/"

    const-string v4, "bubble/3/"

    const-string v5, "bubble/4/"

    const-string v6, "bubble/5/"

    const-string v7, "bubble/6/"

    const-string v8, "bubble/7/"

    const-string v9, "bubble/8/"

    const-string v10, "bubble/9/"

    const-string v11, "bubble/10/"

    const-string v12, "bubble/11/"

    const-string v13, "bubble/12/"

    const-string v14, "bubble/13/"

    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    new-instance v4, Lcom/android/gallery3d/filtershow/materials/i;

    aget-object v5, v2, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "thumb.png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Lcom/android/gallery3d/filtershow/materials/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/android/gallery3d/filtershow/filters/f0;

    const-string v6, "offline"

    invoke-direct {v5, p0, v4, v6}, Lcom/android/gallery3d/filtershow/filters/f0;-><init>(Landroid/content/Context;Lcom/android/gallery3d/filtershow/materials/g;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, "bubble/1/"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    new-instance v3, Lcom/android/gallery3d/filtershow/materials/k;

    aget-object v4, v1, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "thumb.png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/android/gallery3d/filtershow/materials/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v2, 0x0

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/materials/g;->f(I)V

    new-instance v4, Lcom/android/gallery3d/filtershow/filters/t;

    invoke-direct {v4, p0, v3}, Lcom/android/gallery3d/filtershow/filters/t;-><init>(Landroid/content/Context;Lcom/android/gallery3d/filtershow/materials/g;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0xf

    :try_start_0
    const-string v3, "sticker/1/"

    const-string v4, "sticker/2/"

    const-string v5, "sticker/3/"

    const-string v6, "sticker/4/"

    const-string v7, "sticker/5/"

    const-string v8, "sticker/6/"

    const-string v9, "sticker/7/"

    const-string v10, "sticker/8/"

    const-string v11, "sticker/9/"

    const-string v12, "sticker/10/"

    const-string v13, "sticker/11/"

    const-string v14, "sticker/12/"

    const-string v15, "sticker/13/"

    const-string v16, "sticker/14/"

    const-string v17, "sticker/15/"

    filled-new-array/range {v3 .. v17}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    new-instance v5, Lcom/android/gallery3d/filtershow/materials/l;

    aget-object v6, v3, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v3, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "thumb.png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v0, v6, v7}, Lcom/android/gallery3d/filtershow/materials/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/android/gallery3d/filtershow/filters/a0;

    const-string v7, "offline"

    invoke-direct {v6, v0, v5, v7}, Lcom/android/gallery3d/filtershow/filters/a0;-><init>(Landroid/content/Context;Lcom/android/gallery3d/filtershow/materials/g;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v1
.end method
