.class public Lcn/nubia/gallery3d/data/GridCoverItem$CoverEntry;
.super Ljava/lang/Object;
.source "GridCoverItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/GridCoverItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoverEntry"
.end annotation


# instance fields
.field public filePath:Ljava/lang/String;

.field public mediaType:I

.field public mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 34
    iput v0, p0, Lcn/nubia/gallery3d/data/GridCoverItem$CoverEntry;->mediaType:I

    return-void
.end method
