.class public Lcn/nubia/improve/photos/views/TiledImageView$ImageRendererWrapper;
.super Ljava/lang/Object;
.source "TiledImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/photos/views/TiledImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageRendererWrapper"
.end annotation


# instance fields
.field centerX:I

.field centerY:I

.field image:Lcn/nubia/improve/photos/views/TiledImageRenderer;

.field isReadyCallback:Ljava/lang/Runnable;

.field rotation:I

.field scale:F

.field source:Lcn/nubia/improve/photos/views/TiledImageRenderer$TileSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
