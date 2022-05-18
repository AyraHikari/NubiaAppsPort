.class Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageEntry"
.end annotation


# instance fields
.field public failToLoad:Z

.field public fullImage:Landroid/graphics/BitmapRegionDecoder;

.field public fullImageTask:Lcn/nubia/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/Future<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private isNeedColorSpace:Z

.field public requestedFullImage:J

.field public requestedScreenNail:J

.field public screenNail:Lcn/nubia/gallery3d/ui/ScreenNail;

.field public screenNailTask:Lcn/nubia/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/Future<",
            "Lcn/nubia/gallery3d/ui/ScreenNail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 1284
    iput-wide v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    .line 1285
    iput-wide v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    const/4 v0, 0x0

    .line 1286
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    .line 1287
    iput-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->isNeedColorSpace:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter$1;)V
    .locals 0

    .line 1279
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public isNeedColorSpace()Z
    .locals 1

    .line 1290
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->isNeedColorSpace:Z

    return v0
.end method

.method public setNeedColorSpace(Z)V
    .locals 2

    .line 1294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sheyx setNeedColorSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoDataAdapter"

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/data/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    iput-boolean p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageEntry;->isNeedColorSpace:Z

    return-void
.end method
