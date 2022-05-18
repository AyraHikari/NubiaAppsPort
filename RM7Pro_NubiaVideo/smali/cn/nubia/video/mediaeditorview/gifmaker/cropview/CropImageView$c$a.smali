.class final Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;
    .locals 2

    .line 1
    new-instance v0, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;-><init>(Landroid/os/Parcel;Lcn/nubia/video/mediaeditorview/gifmaker/cropview/a;)V

    return-object v0
.end method

.method public b(I)[Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;
    .locals 0

    .line 1
    new-array p1, p1, [Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c$a;->a(Landroid/os/Parcel;)Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c$a;->b(I)[Lcn/nubia/video/mediaeditorview/gifmaker/cropview/CropImageView$c;

    move-result-object p1

    return-object p1
.end method
