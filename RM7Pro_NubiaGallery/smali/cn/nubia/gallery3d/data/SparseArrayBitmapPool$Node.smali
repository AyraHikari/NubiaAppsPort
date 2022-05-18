.class public Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;
.super Ljava/lang/Object;
.source "SparseArrayBitmapPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/SparseArrayBitmapPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Node"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field nextInBucket:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

.field nextInPool:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

.field prevInBucket:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;

.field prevInPool:Lcn/nubia/gallery3d/data/SparseArrayBitmapPool$Node;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
