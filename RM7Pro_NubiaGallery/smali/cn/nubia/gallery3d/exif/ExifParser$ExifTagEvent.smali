.class Lcn/nubia/gallery3d/exif/ExifParser$ExifTagEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/exif/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifTagEvent"
.end annotation


# instance fields
.field isRequested:Z

.field tag:Lcn/nubia/gallery3d/exif/ExifTag;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/exif/ExifTag;Z)V
    .locals 0

    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 905
    iput-object p1, p0, Lcn/nubia/gallery3d/exif/ExifParser$ExifTagEvent;->tag:Lcn/nubia/gallery3d/exif/ExifTag;

    .line 906
    iput-boolean p2, p0, Lcn/nubia/gallery3d/exif/ExifParser$ExifTagEvent;->isRequested:Z

    return-void
.end method
