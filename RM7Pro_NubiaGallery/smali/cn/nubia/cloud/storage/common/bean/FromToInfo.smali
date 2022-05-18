.class public Lcn/nubia/cloud/storage/common/bean/FromToInfo;
.super Lcn/nubia/cloud/storage/common/bean/BaseBean;
.source "FromToInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/cloud/storage/common/bean/FromToInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private source:Ljava/lang/String;

.field private target:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcn/nubia/cloud/storage/common/bean/FromToInfo$1;

    invoke-direct {v0}, Lcn/nubia/cloud/storage/common/bean/FromToInfo$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/storage/common/bean/FromToInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>()V

    .line 59
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/storage/common/bean/FromToInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/nubia/cloud/storage/common/bean/FromToInfo$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcn/nubia/cloud/storage/common/bean/FromToInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, p1, p2, v0, v1}, Lcn/nubia/cloud/storage/common/bean/FromToInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p3, p4}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>(ILjava/lang/String;)V

    .line 31
    invoke-static {p1}, Lcn/nubia/cloud/storage/common/utils/FileUtil;->genPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/FromToInfo;->source:Ljava/lang/String;

    .line 32
    invoke-static {p2}, Lcn/nubia/cloud/storage/common/utils/FileUtil;->genPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/FromToInfo;->target:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FromToInfo;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FromToInfo;->target:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lcn/nubia/cloud/storage/common/bean/FromToInfo;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->init(Lcn/nubia/cloud/storage/common/bean/BaseBean;)V

    .line 37
    iget-object v0, p1, Lcn/nubia/cloud/storage/common/bean/FromToInfo;->source:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FromToInfo;->source:Ljava/lang/String;

    .line 38
    iget-object p1, p1, Lcn/nubia/cloud/storage/common/bean/FromToInfo;->target:Ljava/lang/String;

    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/FromToInfo;->target:Ljava/lang/String;

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->readFromParcel(Landroid/os/Parcel;)V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FromToInfo;->source:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/FromToInfo;->target:Ljava/lang/String;

    return-void
.end method

.method public renameTarget(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/FromToInfo;->target:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "source:"

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/FromToInfo;->source:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " target:"

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/FromToInfo;->target:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 74
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->writeToParcel(Landroid/os/Parcel;I)V

    .line 75
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/FromToInfo;->source:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/FromToInfo;->target:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
