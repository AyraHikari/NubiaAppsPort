.class public Lcn/nubia/cloud/sync/CloudGallerySyncItem;
.super Lcn/nubia/cloud/common/sync/SyncItem;
.source "CloudGallerySyncItem.java"

# interfaces
.implements Lcn/nubia/cloud/common/Jsonable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;
    }
.end annotation


# static fields
.field public static final APERTURE:Ljava/lang/String; = "aperture"

.field public static final CLOUD_FILE:Ljava/lang/String; = "cloud_file"

.field public static final CLOUD_PATH:Ljava/lang/String; = "cloud_path"

.field public static CREATOR:Lcn/nubia/cloud/common/Jsonable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/common/Jsonable$Creator<",
            "Lcn/nubia/cloud/sync/CloudGallerySyncItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final CTIME:Ljava/lang/String; = "ctime"

.field public static final DATETIME:Ljava/lang/String; = "datetime"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final EXIF:Ljava/lang/String; = "exif"

.field public static final EXPOSURE_TIME:Ljava/lang/String; = "exposure_time"

.field public static final FLASH:Ljava/lang/String; = "flash"

.field public static final FOCAL:Ljava/lang/String; = "focal"

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final ISDIR:Ljava/lang/String; = "isdir"

.field public static final ISO:Ljava/lang/String; = "iso"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final MAKE:Ljava/lang/String; = "make"

.field public static final MD5:Ljava/lang/String; = "md5"

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final MODEL:Ljava/lang/String; = "model"

.field public static final ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final SIZE:Ljava/lang/String; = "size"

.field private static final TAG:Ljava/lang/String; = "CloudGallery"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final WHITE_BALANCE:Ljava/lang/String; = "white_balance"

.field public static final WIDTH:Ljava/lang/String; = "width"


# instance fields
.field private mCloudFile:Ljava/lang/String;

.field private mCloudPath:Ljava/lang/String;

.field private mCtime:I

.field private mExifItem:Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;

.field private mFileSize:I

.field private mIsDir:I

.field private mMd5:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mRawJsonData:Lcn/nubia/cloud/common/ParcelableJson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$1;

    invoke-direct {v0}, Lcn/nubia/cloud/sync/CloudGallerySyncItem$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->CREATOR:Lcn/nubia/cloud/common/Jsonable$Creator;

    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 0

    .line 55
    invoke-direct/range {p0 .. p5}, Lcn/nubia/cloud/common/sync/SyncItem;-><init>(JJI)V

    .line 14
    new-instance p1, Lcn/nubia/cloud/common/ParcelableJson;

    invoke-direct {p1}, Lcn/nubia/cloud/common/ParcelableJson;-><init>()V

    iput-object p1, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mRawJsonData:Lcn/nubia/cloud/common/ParcelableJson;

    .line 21
    new-instance p1, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;

    invoke-direct {p1}, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;-><init>()V

    iput-object p1, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mExifItem:Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;

    return-void
.end method

.method constructor <init>(Lcn/nubia/cloud/common/ParcelableJson;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1}, Lcn/nubia/cloud/common/sync/SyncItem;-><init>(Lcn/nubia/cloud/common/ParcelableJson;)V

    .line 14
    new-instance v0, Lcn/nubia/cloud/common/ParcelableJson;

    invoke-direct {v0}, Lcn/nubia/cloud/common/ParcelableJson;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mRawJsonData:Lcn/nubia/cloud/common/ParcelableJson;

    .line 21
    new-instance v0, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;

    invoke-direct {v0}, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mExifItem:Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;

    .line 62
    iput-object p1, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mRawJsonData:Lcn/nubia/cloud/common/ParcelableJson;

    return-void
.end method


# virtual methods
.method public getJsonContent()Lcn/nubia/cloud/common/ParcelableJson;
    .locals 1

    .line 238
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->getContent()Lcn/nubia/cloud/common/ParcelableJson;

    move-result-object v0

    return-object v0
.end method

.method public getRawJsonData()Lcn/nubia/cloud/common/ParcelableJson;
    .locals 1

    .line 234
    iget-object v0, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mRawJsonData:Lcn/nubia/cloud/common/ParcelableJson;

    return-object v0
.end method

.method protected onToJson()Lcn/nubia/cloud/common/ParcelableJson;
    .locals 3

    const-string v0, "CloudGallery"

    const-string v1, "onToJson called!"

    .line 210
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :try_start_0
    iget-object v0, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mRawJsonData:Lcn/nubia/cloud/common/ParcelableJson;

    const-string v1, "cloud_path"

    iget-object v2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mCloudPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/common/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    iget-object v0, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mRawJsonData:Lcn/nubia/cloud/common/ParcelableJson;

    const-string v1, "cloud_file"

    iget-object v2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mCloudFile:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/common/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    iget-object v0, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mRawJsonData:Lcn/nubia/cloud/common/ParcelableJson;

    const-string v1, "mime_type"

    iget-object v2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/common/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    iget-object v0, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mRawJsonData:Lcn/nubia/cloud/common/ParcelableJson;

    const-string v1, "size"

    iget v2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mFileSize:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/common/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 220
    iget-object v0, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mRawJsonData:Lcn/nubia/cloud/common/ParcelableJson;

    const-string v1, "md5"

    iget-object v2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mMd5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/common/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    iget-object v0, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mRawJsonData:Lcn/nubia/cloud/common/ParcelableJson;

    const-string v1, "ctime"

    iget v2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mCtime:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/common/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 222
    iget-object v0, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mRawJsonData:Lcn/nubia/cloud/common/ParcelableJson;

    const-string v1, "exif"

    iget-object v2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mExifItem:Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;

    invoke-virtual {v2}, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/common/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    iget-object v0, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mRawJsonData:Lcn/nubia/cloud/common/ParcelableJson;

    const-string v1, "isdir"

    iget v2, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mIsDir:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/common/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 226
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 229
    :goto_0
    iget-object v0, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mRawJsonData:Lcn/nubia/cloud/common/ParcelableJson;

    return-object v0
.end method

.method public setCloudFile(Ljava/lang/String;)V
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CloudFile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CloudGallery"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iput-object p1, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mCloudFile:Ljava/lang/String;

    return-void
.end method

.method public setCloudPath(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mCloudPath:Ljava/lang/String;

    return-void
.end method

.method public setCtime(J)V
    .locals 0

    long-to-int p1, p1

    .line 196
    div-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mCtime:I

    return-void
.end method

.method public setExifItem(Landroid/media/ExifInterface;Ljava/lang/String;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mExifItem:Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/cloud/sync/CloudGallerySyncItem$GalleryExifDataSyncItem;->setExifItem(Landroid/media/ExifInterface;Ljava/lang/String;)V

    return-void
.end method

.method public setIsDir(I)V
    .locals 0

    .line 200
    iput p1, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mIsDir:I

    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mMd5:Ljava/lang/String;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 187
    iput p1, p0, Lcn/nubia/cloud/sync/CloudGallerySyncItem;->mFileSize:I

    return-void
.end method
