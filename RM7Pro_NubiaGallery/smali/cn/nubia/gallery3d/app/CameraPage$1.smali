.class Lcn/nubia/gallery3d/app/CameraPage$1;
.super Ljava/lang/Object;
.source "CameraPage.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/PhotoFallbackEffect$PositionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/CameraPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/CameraPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/CameraPage;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CameraPage$1;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemIndex(Lcn/nubia/gallery3d/data/Path;)I
    .locals 3

    .line 170
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$1;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$000(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SlotView;->getVisibleStart()I

    move-result v0

    .line 171
    iget-object v1, p0, Lcn/nubia/gallery3d/app/CameraPage$1;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/CameraPage;->access$000(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SlotView;->getVisibleEnd()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 173
    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage$1;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/CameraPage;->access$100(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/app/AlbumDataLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/nubia/gallery3d/app/AlbumDataLoader;->get(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 174
    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getPosition(I)Landroid/graphics/Rect;
    .locals 3

    .line 162
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$1;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$000(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object p1

    .line 163
    iget-object v0, p0, Lcn/nubia/gallery3d/app/CameraPage$1;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/CameraPage;->access$000(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SlotView;->bounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 164
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage$1;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/CameraPage;->access$000(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/SlotView;->getScrollX()I

    move-result v2

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcn/nubia/gallery3d/app/CameraPage$1;->this$0:Lcn/nubia/gallery3d/app/CameraPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/CameraPage;->access$000(Lcn/nubia/gallery3d/app/CameraPage;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/SlotView;->getScrollY()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    return-object p1
.end method
