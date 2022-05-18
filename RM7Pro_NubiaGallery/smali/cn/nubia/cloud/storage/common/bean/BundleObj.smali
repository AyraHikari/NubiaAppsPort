.class public Lcn/nubia/cloud/storage/common/bean/BundleObj;
.super Ljava/lang/Object;
.source "BundleObj.java"


# instance fields
.field private mKeyValueBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/BundleObj;->mKeyValueBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/BundleObj;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/BundleObj;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init(Lcn/nubia/cloud/storage/common/bean/BundleObj;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/BundleObj;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 35
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/BundleObj;->mKeyValueBundle:Landroid/os/Bundle;

    iget-object p1, p1, Lcn/nubia/cloud/storage/common/bean/BundleObj;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-void
.end method

.method public put(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/BundleObj;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/BundleObj;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/BundleObj;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/BundleObj;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/BundleObj;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
