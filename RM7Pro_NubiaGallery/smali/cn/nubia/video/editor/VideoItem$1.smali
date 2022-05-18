.class Lcn/nubia/video/editor/VideoItem$1;
.super Ljava/lang/Object;
.source "VideoItem.java"

# interfaces
.implements Lcn/nubia/video/editor/VideoItem$NativeGetThumbnailListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/editor/VideoItem;->getThumbnailList(IIJJILcn/nubia/video/editor/VideoItem$GetThumbnailListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/editor/VideoItem;

.field final synthetic val$callback:Lcn/nubia/video/editor/VideoItem$GetThumbnailListCallback;

.field final synthetic val$decArray:[I

.field final synthetic val$decBuffer:Ljava/nio/IntBuffer;

.field final synthetic val$decHeight:I

.field final synthetic val$decWidth:I

.field final synthetic val$thumbnailSize:I


# direct methods
.method constructor <init>(Lcn/nubia/video/editor/VideoItem;IILjava/nio/IntBuffer;[IILcn/nubia/video/editor/VideoItem$GetThumbnailListCallback;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcn/nubia/video/editor/VideoItem$1;->this$0:Lcn/nubia/video/editor/VideoItem;

    iput p2, p0, Lcn/nubia/video/editor/VideoItem$1;->val$decWidth:I

    iput p3, p0, Lcn/nubia/video/editor/VideoItem$1;->val$decHeight:I

    iput-object p4, p0, Lcn/nubia/video/editor/VideoItem$1;->val$decBuffer:Ljava/nio/IntBuffer;

    iput-object p5, p0, Lcn/nubia/video/editor/VideoItem$1;->val$decArray:[I

    iput p6, p0, Lcn/nubia/video/editor/VideoItem$1;->val$thumbnailSize:I

    iput-object p7, p0, Lcn/nubia/video/editor/VideoItem$1;->val$callback:Lcn/nubia/video/editor/VideoItem$GetThumbnailListCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnail(I)V
    .locals 5

    .line 80
    iget v0, p0, Lcn/nubia/video/editor/VideoItem$1;->val$decWidth:I

    iget v1, p0, Lcn/nubia/video/editor/VideoItem$1;->val$decHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcn/nubia/video/editor/VideoItem$1;->val$decBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 83
    iget-object v1, p0, Lcn/nubia/video/editor/VideoItem$1;->val$decBuffer:Ljava/nio/IntBuffer;

    iget-object v2, p0, Lcn/nubia/video/editor/VideoItem$1;->val$decArray:[I

    iget v3, p0, Lcn/nubia/video/editor/VideoItem$1;->val$thumbnailSize:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 84
    iget-object v1, p0, Lcn/nubia/video/editor/VideoItem$1;->val$decBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 85
    iget-object v1, p0, Lcn/nubia/video/editor/VideoItem$1;->val$decBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 86
    iget-object v1, p0, Lcn/nubia/video/editor/VideoItem$1;->val$callback:Lcn/nubia/video/editor/VideoItem$GetThumbnailListCallback;

    invoke-interface {v1, v0, p1}, Lcn/nubia/video/editor/VideoItem$GetThumbnailListCallback;->onThumbnail(Landroid/graphics/Bitmap;I)V

    return-void
.end method
