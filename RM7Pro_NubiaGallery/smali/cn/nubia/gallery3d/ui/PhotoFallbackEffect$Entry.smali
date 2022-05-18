.class public Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;
.super Ljava/lang/Object;
.source "PhotoFallbackEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/PhotoFallbackEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public dest:Landroid/graphics/Rect;

.field public index:I

.field public path:Lcn/nubia/gallery3d/data/Path;

.field public source:Landroid/graphics/Rect;

.field public texture:Lcn/nubia/gallery3d/glrenderer/RawTexture;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Landroid/graphics/Rect;Lcn/nubia/gallery3d/glrenderer/RawTexture;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;->path:Lcn/nubia/gallery3d/data/Path;

    .line 46
    iput-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;->source:Landroid/graphics/Rect;

    .line 47
    iput-object p3, p0, Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$Entry;->texture:Lcn/nubia/gallery3d/glrenderer/RawTexture;

    return-void
.end method
