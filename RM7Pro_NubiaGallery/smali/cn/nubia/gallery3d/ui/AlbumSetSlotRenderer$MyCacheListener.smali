.class Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;
.super Ljava/lang/Object;
.source "AlbumSetSlotRenderer.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/AlbumSetSlidingWindow$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCacheListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$1;)V
    .locals 0

    .line 253
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;-><init>(Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;)V

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 1

    .line 266
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->access$100(Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SlotView;->invalidate()V

    return-void
.end method

.method public onSizeChanged(I)V
    .locals 1

    .line 257
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->access$100(Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/SlotView;->setSlotCount(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 259
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;->access$100(Lcn/nubia/gallery3d/ui/AlbumSetSlotRenderer;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SlotView;->invalidate()V

    :cond_0
    return-void
.end method
