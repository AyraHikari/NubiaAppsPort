.class public Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;
.super Lcn/nubia/cloud/storage/common/bean/MetaRes;
.source "VideoMetaRes.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cateogry:Ljava/lang/String;

.field public dateTaken:J

.field public duration:J

.field public hasthumbnail:Z

.field public resolution:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes$1;

    invoke-direct {v0}, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 38
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/MetaRes;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;->hasthumbnail:Z

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;->resolution:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 18
    iput-wide v1, p0, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;->duration:J

    .line 21
    iput-wide v1, p0, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;->dateTaken:J

    .line 24
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;->cateogry:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 43
    invoke-direct {p0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/MetaRes;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;->hasthumbnail:Z

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;->resolution:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;->duration:J

    .line 21
    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;->dateTaken:J

    .line 24
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;->cateogry:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 46
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/MetaRes;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;->hasthumbnail:Z

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;->resolution:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 18
    iput-wide v1, p0, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;->duration:J

    .line 21
    iput-wide v1, p0, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;->dateTaken:J

    .line 24
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;->cateogry:Ljava/lang/String;

    .line 47
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/nubia/cloud/storage/common/bean/VideoMetaRes$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 58
    invoke-super {p0, p1}, Lcn/nubia/cloud/storage/common/bean/MetaRes;->readFromParcel(Landroid/os/Parcel;)V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;->hasthumbnail:Z

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;->resolution:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;->duration:J

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;->dateTaken:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;->cateogry:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 68
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/MetaRes;->writeToParcel(Landroid/os/Parcel;I)V

    .line 69
    iget-boolean p2, p0, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;->hasthumbnail:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;->resolution:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    iget-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;->dateTaken:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 73
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/VideoMetaRes;->cateogry:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
