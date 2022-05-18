.class Lcn/nubia/improve/category/CategoryProcessTask$CategoryInterfaceImpl;
.super Ljava/lang/Object;
.source "CategoryProcessTask.java"

# interfaces
.implements Lcn/nubia/improve/category/algorithm/ICategoryInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/category/CategoryProcessTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CategoryInterfaceImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/category/CategoryProcessTask;


# direct methods
.method constructor <init>(Lcn/nubia/improve/category/CategoryProcessTask;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcn/nubia/improve/category/CategoryProcessTask$CategoryInterfaceImpl;->this$0:Lcn/nubia/improve/category/CategoryProcessTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFaceTag(Lcn/nubia/improve/category/FaceTag$Param;)Lcn/nubia/improve/category/FaceTag;
    .locals 14

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/16 v2, 0x14

    new-array v2, v2, [I

    new-array v0, v0, [F

    .line 277
    invoke-virtual {p1}, Lcn/nubia/improve/category/FaceTag$Param;->getId()I

    move-result v3

    .line 278
    invoke-virtual {p1}, Lcn/nubia/improve/category/FaceTag$Param;->getFilePath()Ljava/lang/String;

    move-result-object v4

    .line 277
    invoke-static {v3, v4, v1, v2, v0}, Lcn/nubia/improve/category/algorithm/FaceClassify;->FaceClassifyOnProcessEx(ILjava/lang/String;[I[I[F)I

    move-result v3

    const/4 v4, 0x0

    if-gez v3, :cond_0

    return-object v4

    :cond_0
    if-nez v3, :cond_1

    .line 288
    new-instance v0, Lcn/nubia/improve/category/FaceTag;

    invoke-direct {v0, v3, v4}, Lcn/nubia/improve/category/FaceTag;-><init>(I[Lcn/nubia/improve/category/FaceInfo;)V

    .line 289
    invoke-virtual {v0, p1}, Lcn/nubia/improve/category/FaceTag;->setParam(Lcn/nubia/improve/category/FaceTag$Param;)V

    return-object v0

    .line 292
    :cond_1
    new-array v4, v3, [Lcn/nubia/improve/category/FaceInfo;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    .line 294
    new-instance v13, Lcn/nubia/improve/category/FaceInfo;

    aget v7, v1, v5

    mul-int/lit8 v6, v5, 0x4

    aget v8, v2, v6

    add-int/lit8 v9, v6, 0x1

    aget v9, v2, v9

    add-int/lit8 v10, v6, 0x2

    aget v10, v2, v10

    add-int/lit8 v6, v6, 0x3

    aget v11, v2, v6

    aget v12, v0, v5

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Lcn/nubia/improve/category/FaceInfo;-><init>(IIIIIF)V

    .line 301
    aput-object v13, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 303
    :cond_2
    new-instance v0, Lcn/nubia/improve/category/FaceTag;

    invoke-direct {v0, v3, v4}, Lcn/nubia/improve/category/FaceTag;-><init>(I[Lcn/nubia/improve/category/FaceInfo;)V

    .line 304
    invoke-virtual {v0, p1}, Lcn/nubia/improve/category/FaceTag;->setParam(Lcn/nubia/improve/category/FaceTag$Param;)V

    return-object v0
.end method

.method public getImagePlace(Lcn/nubia/improve/category/PlaceTag$Param;)Lcn/nubia/improve/category/PlaceTag;
    .locals 8

    .line 209
    invoke-virtual {p1}, Lcn/nubia/improve/category/PlaceTag$Param;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcn/nubia/improve/category/PlaceTag$Param;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lcn/nubia/improve/category/PlaceTag;

    invoke-direct {v0}, Lcn/nubia/improve/category/PlaceTag;-><init>()V

    .line 211
    invoke-virtual {v0, p1}, Lcn/nubia/improve/category/PlaceTag;->setParam(Lcn/nubia/improve/category/PlaceTag$Param;)V

    goto/16 :goto_3

    .line 214
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryProcessTask$CategoryInterfaceImpl;->this$0:Lcn/nubia/improve/category/CategoryProcessTask;

    invoke-static {v0}, Lcn/nubia/improve/category/CategoryProcessTask;->access$600(Lcn/nubia/improve/category/CategoryProcessTask;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v7, Lcn/nubia/improve/category/CategoryProcessTask$AddressLookupJob;

    iget-object v2, p0, Lcn/nubia/improve/category/CategoryProcessTask$CategoryInterfaceImpl;->this$0:Lcn/nubia/improve/category/CategoryProcessTask;

    .line 215
    invoke-virtual {p1}, Lcn/nubia/improve/category/PlaceTag$Param;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Lcn/nubia/improve/category/PlaceTag$Param;->getLongitude()D

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcn/nubia/improve/category/CategoryProcessTask$AddressLookupJob;-><init>(Lcn/nubia/improve/category/CategoryProcessTask;DD)V

    .line 214
    invoke-virtual {v0, v7}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v0

    .line 215
    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    if-eqz v0, :cond_5

    .line 218
    new-instance v1, Lcn/nubia/improve/category/PlaceTag;

    invoke-direct {v1}, Lcn/nubia/improve/category/PlaceTag;-><init>()V

    .line 219
    invoke-virtual {v1, p1}, Lcn/nubia/improve/category/PlaceTag;->setParam(Lcn/nubia/improve/category/PlaceTag$Param;)V

    .line 220
    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-virtual {v1, p1}, Lcn/nubia/improve/category/PlaceTag;->setCountry(Ljava/lang/String;)V

    .line 222
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-gt v2, v3, :cond_1

    .line 223
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/improve/category/PlaceTag;->setCity(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/improve/category/PlaceTag;->setDistrict(Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {v0}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/improve/category/PlaceTag;->setCity(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/improve/category/PlaceTag;->setDistrict(Ljava/lang/String;)V

    :goto_0
    const-string v2, "\u4e2d\u56fd"

    .line 229
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "China"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 232
    :cond_2
    invoke-virtual {v1, p1}, Lcn/nubia/improve/category/PlaceTag;->setCityClassification(Ljava/lang/String;)V

    goto :goto_2

    .line 230
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcn/nubia/improve/category/PlaceTag;->getCity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcn/nubia/improve/category/PlaceTag;->setCityClassification(Ljava/lang/String;)V

    .line 234
    :goto_2
    invoke-virtual {v0}, Landroid/location/Address;->getLocale()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 235
    invoke-virtual {v0}, Landroid/location/Address;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcn/nubia/improve/category/PlaceTag;->setLanguage(Ljava/lang/String;)V

    :cond_4
    move-object v0, v1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    return-object v0
.end method

.method public getThingsTag(Lcn/nubia/improve/category/ThingsTag$Param;)Lcn/nubia/improve/category/ThingsTag;
    .locals 4

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 246
    invoke-virtual {p1}, Lcn/nubia/improve/category/ThingsTag$Param;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/common/BitmapUtils;->getExifDegree(Ljava/lang/String;)I

    move-result v0

    .line 247
    invoke-virtual {p1}, Lcn/nubia/improve/category/ThingsTag$Param;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/improve/category/CategoryProcessTask$CategoryInterfaceImpl;->this$0:Lcn/nubia/improve/category/CategoryProcessTask;

    invoke-static {v2}, Lcn/nubia/improve/category/CategoryProcessTask;->access$700(Lcn/nubia/improve/category/CategoryProcessTask;)I

    move-result v2

    iget-object v3, p0, Lcn/nubia/improve/category/CategoryProcessTask$CategoryInterfaceImpl;->this$0:Lcn/nubia/improve/category/CategoryProcessTask;

    invoke-static {v3}, Lcn/nubia/improve/category/CategoryProcessTask;->access$800(Lcn/nubia/improve/category/CategoryProcessTask;)I

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcn/nubia/gallery3d/common/BitmapUtils;->getThingsBitmap(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 251
    :cond_0
    iget-object v2, p0, Lcn/nubia/improve/category/CategoryProcessTask$CategoryInterfaceImpl;->this$0:Lcn/nubia/improve/category/CategoryProcessTask;

    invoke-static {v2}, Lcn/nubia/improve/category/CategoryProcessTask;->access$900(Lcn/nubia/improve/category/CategoryProcessTask;)Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v1, v0, v3}, Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;->classify(Landroid/graphics/Bitmap;II)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 256
    new-instance v2, Lcn/nubia/improve/category/ThingsTag;

    invoke-direct {v2, v1, v0}, Lcn/nubia/improve/category/ThingsTag;-><init>(ILjava/util/ArrayList;)V

    .line 257
    invoke-virtual {v2, p1}, Lcn/nubia/improve/category/ThingsTag;->setParam(Lcn/nubia/improve/category/ThingsTag$Param;)V

    return-object v2
.end method
