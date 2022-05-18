.class public Lcn/nubia/cloud/storage/common/bean/QuotaRes;
.super Lcn/nubia/cloud/storage/common/bean/BaseBean;
.source "QuotaRes.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/cloud/storage/common/bean/QuotaRes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mTotal:J

.field private mUsed:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcn/nubia/cloud/storage/common/bean/QuotaRes$1;

    invoke-direct {v0}, Lcn/nubia/cloud/storage/common/bean/QuotaRes$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/storage/common/bean/QuotaRes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>()V

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/QuotaRes;->mTotal:J

    .line 15
    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/QuotaRes;->mUsed:J

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>(ILjava/lang/String;)V

    const-wide/16 p1, 0x0

    .line 12
    iput-wide p1, p0, Lcn/nubia/cloud/storage/common/bean/QuotaRes;->mTotal:J

    .line 15
    iput-wide p1, p0, Lcn/nubia/cloud/storage/common/bean/QuotaRes;->mUsed:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>()V

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/QuotaRes;->mTotal:J

    .line 15
    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/QuotaRes;->mUsed:J

    .line 38
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/storage/common/bean/QuotaRes;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/nubia/cloud/storage/common/bean/QuotaRes$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcn/nubia/cloud/storage/common/bean/QuotaRes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTotal()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/QuotaRes;->mTotal:J

    return-wide v0
.end method

.method public getUsed()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/QuotaRes;->mUsed:J

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->readFromParcel(Landroid/os/Parcel;)V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/QuotaRes;->mTotal:J

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/QuotaRes;->mUsed:J

    return-void
.end method

.method public setTotal(J)V
    .locals 0

    .line 71
    iput-wide p1, p0, Lcn/nubia/cloud/storage/common/bean/QuotaRes;->mTotal:J

    return-void
.end method

.method public setUsed(J)V
    .locals 0

    .line 85
    iput-wide p1, p0, Lcn/nubia/cloud/storage/common/bean/QuotaRes;->mUsed:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 91
    invoke-super {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mTotal:"

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/nubia/cloud/storage/common/bean/QuotaRes;->mTotal:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mUsed:"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/nubia/cloud/storage/common/bean/QuotaRes;->mUsed:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 55
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->writeToParcel(Landroid/os/Parcel;I)V

    .line 56
    iget-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/QuotaRes;->mTotal:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 57
    iget-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/QuotaRes;->mUsed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
