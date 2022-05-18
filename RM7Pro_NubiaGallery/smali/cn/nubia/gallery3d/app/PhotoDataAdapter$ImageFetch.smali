.class Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageFetch;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageFetch"
.end annotation


# instance fields
.field imageBit:I

.field indexOffset:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageFetch;->indexOffset:I

    .line 95
    iput p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$ImageFetch;->imageBit:I

    return-void
.end method
