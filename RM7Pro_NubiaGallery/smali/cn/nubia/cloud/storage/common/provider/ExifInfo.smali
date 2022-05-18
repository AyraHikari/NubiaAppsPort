.class public Lcn/nubia/cloud/storage/common/provider/ExifInfo;
.super Ljava/lang/Object;
.source "ExifInfo.java"

# interfaces
.implements Lcn/nubia/cloud/storage/common/provider/CloudStoreContract$ExifColumns;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/cloud/storage/common/provider/ExifInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY:Ljava/lang/String; = "exif_info"

.field public static PROJECTION:[Ljava/lang/String; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "exif_info"


# instance fields
.field public aperture:Ljava/lang/String;

.field public datetime:Ljava/lang/String;

.field public duartion:I

.field public exposure_time:Ljava/lang/String;

.field public flash:Ljava/lang/String;

.field public focal:Ljava/lang/String;

.field public height:I

.field public iso:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field public make:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public orientation:I

.field public title:Ljava/lang/String;

.field public white_balance:Ljava/lang/String;

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 12
    sget-object v0, Lcn/nubia/cloud/storage/common/provider/CloudStoreContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "exif_info"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v2, "file_id"

    const-string v3, "title"

    const-string v4, "datetime"

    const-string v5, "location"

    const-string v6, "width"

    const-string v7, "height"

    const-string v8, "duartion"

    const-string v9, "orientation"

    const-string v10, "make"

    const-string v11, "model"

    const-string v12, "flash"

    const-string v13, "focal"

    const-string v14, "exposure_time"

    const-string v15, "white_balance"

    const-string v16, "iso"

    const-string v17, "aperture"

    .line 15
    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->PROJECTION:[Ljava/lang/String;

    .line 119
    new-instance v0, Lcn/nubia/cloud/storage/common/provider/ExifInfo$1;

    invoke-direct {v0}, Lcn/nubia/cloud/storage/common/provider/ExifInfo$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/nubia/cloud/storage/common/provider/ExifInfo$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcn/nubia/cloud/storage/common/provider/ExifInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 1

    const-string v0, "title"

    .line 55
    invoke-static {p1, v0}, Lcn/nubia/cloud/utils/CursorUtil;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->title:Ljava/lang/String;

    const-string v0, "datetime"

    .line 56
    invoke-static {p1, v0}, Lcn/nubia/cloud/utils/CursorUtil;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->datetime:Ljava/lang/String;

    const-string v0, "location"

    .line 57
    invoke-static {p1, v0}, Lcn/nubia/cloud/utils/CursorUtil;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->location:Ljava/lang/String;

    const-string v0, "width"

    .line 58
    invoke-static {p1, v0}, Lcn/nubia/cloud/utils/CursorUtil;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->width:I

    const-string v0, "height"

    .line 59
    invoke-static {p1, v0}, Lcn/nubia/cloud/utils/CursorUtil;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->height:I

    const-string v0, "duartion"

    .line 60
    invoke-static {p1, v0}, Lcn/nubia/cloud/utils/CursorUtil;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->duartion:I

    const-string v0, "orientation"

    .line 61
    invoke-static {p1, v0}, Lcn/nubia/cloud/utils/CursorUtil;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->orientation:I

    const-string v0, "make"

    .line 62
    invoke-static {p1, v0}, Lcn/nubia/cloud/utils/CursorUtil;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->make:Ljava/lang/String;

    const-string v0, "model"

    .line 63
    invoke-static {p1, v0}, Lcn/nubia/cloud/utils/CursorUtil;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->model:Ljava/lang/String;

    const-string v0, "flash"

    .line 64
    invoke-static {p1, v0}, Lcn/nubia/cloud/utils/CursorUtil;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->flash:Ljava/lang/String;

    const-string v0, "focal"

    .line 65
    invoke-static {p1, v0}, Lcn/nubia/cloud/utils/CursorUtil;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->focal:Ljava/lang/String;

    const-string v0, "exposure_time"

    .line 66
    invoke-static {p1, v0}, Lcn/nubia/cloud/utils/CursorUtil;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->exposure_time:Ljava/lang/String;

    const-string v0, "white_balance"

    .line 67
    invoke-static {p1, v0}, Lcn/nubia/cloud/utils/CursorUtil;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->white_balance:Ljava/lang/String;

    const-string v0, "iso"

    .line 68
    invoke-static {p1, v0}, Lcn/nubia/cloud/utils/CursorUtil;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->iso:Ljava/lang/String;

    const-string v0, "aperture"

    .line 69
    invoke-static {p1, v0}, Lcn/nubia/cloud/utils/CursorUtil;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->aperture:Ljava/lang/String;

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->title:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->datetime:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->location:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->width:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->height:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->duartion:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->orientation:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->make:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->model:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->flash:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->focal:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->exposure_time:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->white_balance:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->iso:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->aperture:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 102
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->datetime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->location:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget p2, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget p2, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget p2, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->duartion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget p2, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->orientation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->make:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->model:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->flash:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->focal:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->exposure_time:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->white_balance:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->iso:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/provider/ExifInfo;->aperture:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
