.class public Lcn/nubia/cloud/storage/common/bean/ThumbnailRes;
.super Lcn/nubia/cloud/storage/common/bean/BaseBean;
.source "ThumbnailRes.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/cloud/storage/common/bean/ThumbnailRes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcn/nubia/cloud/storage/common/bean/ThumbnailRes$1;

    invoke-direct {v0}, Lcn/nubia/cloud/storage/common/bean/ThumbnailRes$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/storage/common/bean/ThumbnailRes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/ThumbnailRes;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/ThumbnailRes;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/ThumbnailRes;->bitmap:Landroid/graphics/Bitmap;

    .line 36
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/storage/common/bean/ThumbnailRes;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/nubia/cloud/storage/common/bean/ThumbnailRes$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcn/nubia/cloud/storage/common/bean/ThumbnailRes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->readFromParcel(Landroid/os/Parcel;)V

    .line 49
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/ThumbnailRes;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 65
    invoke-super {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bitmap:"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/ThumbnailRes;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 57
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->writeToParcel(Landroid/os/Parcel;I)V

    .line 58
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/ThumbnailRes;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_0
    return-void
.end method
