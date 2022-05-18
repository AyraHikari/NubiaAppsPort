.class public Lcn/nubia/image3d/Image3DFileHeader;
.super Ljava/lang/Object;
.source "Image3DFileHeader.java"


# static fields
.field public static final IMAGE3D_HEADER_SIZE:I = 0x20

.field public static final VERSION:I = 0x2713


# instance fields
.field dataNum:I

.field datasize:J

.field direction:I

.field directionMaxOffset:I

.field height:I

.field rotation:I

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcn/nubia/image3d/Image3DFileHeader;->datasize:J

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcn/nubia/image3d/Image3DFileHeader;->dataNum:I

    .line 8
    iput v0, p0, Lcn/nubia/image3d/Image3DFileHeader;->direction:I

    .line 9
    iput v0, p0, Lcn/nubia/image3d/Image3DFileHeader;->directionMaxOffset:I

    .line 10
    iput v0, p0, Lcn/nubia/image3d/Image3DFileHeader;->rotation:I

    .line 11
    iput v0, p0, Lcn/nubia/image3d/Image3DFileHeader;->width:I

    .line 12
    iput v0, p0, Lcn/nubia/image3d/Image3DFileHeader;->height:I

    return-void
.end method
