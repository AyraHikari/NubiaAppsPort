.class public Lcn/nubia/nubiafile/NubiaFileType;
.super Ljava/lang/Object;
.source "NubiaFileType.java"


# static fields
.field public static final BIG_APERTURE_VERSION_ALTEK:I = 0x1

.field public static final BIG_APERTURE_VERSION_ARCSOFT:I = 0x2

.field private static final FIRST_TYPE_ID:I = 0x1

.field private static final LAST_TYPE_ID:I = 0x3

.field public static final NUBIA_BIG_APERTURE:I = 0x3

.field public static final NUBIA_IMAGE_3D:I = 0x2

.field public static final NUBIA_LIVE_PHOTO:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNubiaFileType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x3

    if-gt p0, v1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
