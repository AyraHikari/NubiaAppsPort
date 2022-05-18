.class Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;
.super Lcn/nubia/cloud/common/ParcelableJson;
.source "CloudGallerySyncItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/sync/CloudGallerySyncItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GalleryExifDataSyncItem"
.end annotation


# instance fields
.field private mAperture:Ljava/lang/String;

.field private mDateTime:Ljava/lang/String;

.field private mDuration:Ljava/lang/String;

.field private mExposure_time:Ljava/lang/String;

.field private mFlash:Ljava/lang/String;

.field private mFocal:Ljava/lang/String;

.field private mHeight:I

.field private mISO:Ljava/lang/String;

.field private mLocation:Ljava/lang/String;

.field private mMake:Ljava/lang/String;

.field private mModel:Ljava/lang/String;

.field private mOrientation:I

.field private mTitle:Ljava/lang/String;

.field private mWb:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcn/nubia/cloud/common/ParcelableJson;-><init>()V

    return-void
.end method


# virtual methods
.method public setExifItem(Landroid/media/ExifInterface;Ljava/lang/String;)V
    .locals 4

    const-string v0, "GPSLongitude"

    .line 122
    invoke-virtual {p1, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPSLatitude"

    .line 123
    invoke-virtual {p1, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 124
    iput-object p2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mTitle:Ljava/lang/String;

    const-string p2, "DateTime"

    .line 125
    invoke-virtual {p1, p2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mDateTime:Ljava/lang/String;

    if-nez v1, :cond_0

    if-eqz v3, :cond_1

    .line 127
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mLocation:Ljava/lang/String;

    :cond_1
    const-string p2, "ImageWidth"

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p1, p2, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mWidth:I

    const-string p2, "ImageLength"

    .line 129
    invoke-virtual {p1, p2, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mHeight:I

    const-string p2, "0"

    .line 130
    iput-object p2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mDuration:Ljava/lang/String;

    const-string p2, "Orientation"

    .line 131
    invoke-virtual {p1, p2, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mOrientation:I

    const-string p2, "Make"

    .line 132
    invoke-virtual {p1, p2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mMake:Ljava/lang/String;

    const-string p2, "Model"

    .line 133
    invoke-virtual {p1, p2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mModel:Ljava/lang/String;

    const-string p2, "Flash"

    .line 134
    invoke-virtual {p1, p2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mFlash:Ljava/lang/String;

    const-string p2, "FocalLength"

    .line 135
    invoke-virtual {p1, p2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mFocal:Ljava/lang/String;

    const-string p2, "ExposureTime"

    .line 136
    invoke-virtual {p1, p2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mExposure_time:Ljava/lang/String;

    const-string p2, "WhiteBalance"

    .line 137
    invoke-virtual {p1, p2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mWb:Ljava/lang/String;

    const-string p2, "ISOSpeedRatings"

    .line 138
    invoke-virtual {p1, p2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mISO:Ljava/lang/String;

    const-string p2, "FNumber"

    .line 139
    invoke-virtual {p1, p2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mAperture:Ljava/lang/String;

    :try_start_0
    const-string p1, "title"

    .line 143
    iget-object p2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "datetime"

    .line 144
    iget-object p2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mDateTime:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "location"

    .line 145
    iget-object p2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mLocation:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "width"

    .line 146
    iget p2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mWidth:I

    invoke-virtual {p0, p1, p2}, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "height"

    .line 147
    iget p2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mHeight:I

    invoke-virtual {p0, p1, p2}, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "duration"

    .line 148
    iget-object p2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mDuration:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "orientation"

    .line 149
    iget p2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mOrientation:I

    invoke-virtual {p0, p1, p2}, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "make"

    .line 150
    iget-object p2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mMake:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "model"

    .line 151
    iget-object p2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mModel:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "flash"

    .line 152
    iget-object p2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mFlash:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "focal"

    .line 153
    iget-object p2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mFocal:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "exposure_time"

    .line 154
    iget-object p2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mExposure_time:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "white_balance"

    .line 155
    iget-object p2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mWb:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "iso"

    .line 156
    iget-object p2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mISO:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "aperture"

    .line 157
    iget-object p2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->mAperture:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 159
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
