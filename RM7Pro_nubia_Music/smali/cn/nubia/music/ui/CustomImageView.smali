.class public Lcn/nubia/music/ui/CustomImageView;
.super Landroid/widget/ImageView;
.source "CustomImageView.java"


# instance fields
.field private mCallback:Lcn/nubia/music/app/listener/ICurrentAlbumCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/music/ui/CustomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/music/ui/CustomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public setCurrentAlbumCallback(Lcn/nubia/music/app/listener/ICurrentAlbumCallback;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcn/nubia/music/ui/CustomImageView;->mCallback:Lcn/nubia/music/app/listener/ICurrentAlbumCallback;

    .line 28
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 33
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/music/ui/CustomImageView;->mCallback:Lcn/nubia/music/app/listener/ICurrentAlbumCallback;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcn/nubia/music/ui/CustomImageView;->mCallback:Lcn/nubia/music/app/listener/ICurrentAlbumCallback;

    invoke-interface {v0, p1}, Lcn/nubia/music/app/listener/ICurrentAlbumCallback;->onCurrentAlbumUpdate(Landroid/graphics/Bitmap;)V

    .line 36
    :cond_0
    return-void
.end method
