.class public Lcn/nubia/cloud/storage/common/bean/FromToRes;
.super Lcn/nubia/cloud/storage/common/bean/BaseBean;
.source "FromToRes.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/cloud/storage/common/bean/FromToRes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/cloud/storage/common/bean/FromToInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcn/nubia/cloud/storage/common/bean/FromToRes$1;

    invoke-direct {v0}, Lcn/nubia/cloud/storage/common/bean/FromToRes$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/storage/common/bean/FromToRes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FromToRes;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>(ILjava/lang/String;)V

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/FromToRes;->list:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FromToRes;->list:Ljava/util/List;

    .line 37
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/storage/common/bean/FromToRes;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/nubia/cloud/storage/common/bean/FromToRes$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcn/nubia/cloud/storage/common/bean/FromToRes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .line 48
    invoke-super {p0, p1}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->readFromParcel(Landroid/os/Parcel;)V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcn/nubia/cloud/storage/common/bean/FromToRes;->list:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 53
    sget-object v2, Lcn/nubia/cloud/storage/common/bean/FromToInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/cloud/storage/common/bean/FromToInfo;

    .line 54
    iget-object v3, p0, Lcn/nubia/cloud/storage/common/bean/FromToRes;->list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 74
    invoke-super {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Lcn/nubia/cloud/storage/common/bean/FromToRes;->list:Ljava/util/List;

    if-eqz v1, :cond_0

    const-string v1, " list size:"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/FromToRes;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 77
    :goto_0
    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/FromToRes;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, " index:"

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " source:"

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/cloud/storage/common/bean/FromToRes;->list:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/cloud/storage/common/bean/FromToInfo;

    invoke-virtual {v3}, Lcn/nubia/cloud/storage/common/bean/FromToInfo;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " target:"

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/cloud/storage/common/bean/FromToRes;->list:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/cloud/storage/common/bean/FromToInfo;

    invoke-virtual {v3}, Lcn/nubia/cloud/storage/common/bean/FromToInfo;->getTarget()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 61
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->writeToParcel(Landroid/os/Parcel;I)V

    .line 62
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FromToRes;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 66
    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/FromToRes;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/cloud/storage/common/bean/FromToInfo;

    invoke-virtual {v2, p1, p2}, Lcn/nubia/cloud/storage/common/bean/FromToInfo;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
