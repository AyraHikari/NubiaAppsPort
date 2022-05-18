.class Lcn/nubia/gallery3d/exif/ExifModifier$TagOffset;
.super Ljava/lang/Object;
.source "ExifModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/exif/ExifModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TagOffset"
.end annotation


# instance fields
.field final mOffset:I

.field final mTag:Lcn/nubia/gallery3d/exif/ExifTag;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/exif/ExifTag;I)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcn/nubia/gallery3d/exif/ExifModifier$TagOffset;->mTag:Lcn/nubia/gallery3d/exif/ExifTag;

    .line 44
    iput p2, p0, Lcn/nubia/gallery3d/exif/ExifModifier$TagOffset;->mOffset:I

    return-void
.end method
