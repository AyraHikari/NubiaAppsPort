.class final Lcom/hpplay/sdk/source/bean/MediaAssetBean$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/bean/MediaAssetBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/hpplay/sdk/source/bean/MediaAssetBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/hpplay/sdk/source/bean/MediaAssetBean;
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    invoke-direct {v0, p1}, Lcom/hpplay/sdk/source/bean/MediaAssetBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/bean/MediaAssetBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/hpplay/sdk/source/bean/MediaAssetBean;
    .locals 1

    .prologue
    .line 198
    new-array v0, p1, [Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/hpplay/sdk/source/bean/MediaAssetBean$1;->newArray(I)[Lcom/hpplay/sdk/source/bean/MediaAssetBean;

    move-result-object v0

    return-object v0
.end method
