.class public Lcn/nubia/gallery3d/data/PanoramaItem;
.super Lcn/nubia/gallery3d/data/LocalImage;
.source "PanoramaItem.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PanoramaItem"


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/gallery3d/data/LocalImage;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/gallery3d/data/LocalImage;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public getMediaType()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method
