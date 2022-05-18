.class Lcn/nubia/camera/r/l$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/r/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:[B

.field b:Landroid/media/MediaCodec$BufferInfo;

.field final synthetic c:Lcn/nubia/camera/r/l;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/r/l;[BLandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcn/nubia/camera/r/l$b;->c:Lcn/nubia/camera/r/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p2, p0, Lcn/nubia/camera/r/l$b;->a:[B

    .line 243
    iput-object p3, p0, Lcn/nubia/camera/r/l$b;->b:Landroid/media/MediaCodec$BufferInfo;

    return-void
.end method
