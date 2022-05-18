.class Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;
.super Ljava/lang/Object;
.source "AlbumSlotRenderer.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/AlbumSlidingWindow$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataModelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$1;)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;-><init>(Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;)V

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 1

    .line 322
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->access$100(Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SlotView;->onContentChanged()V

    .line 323
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->access$100(Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SlotView;->invalidate()V

    return-void
.end method

.method public onSizeChanged(I)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->access$100(Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/ui/SlotView;->setSlotCount(I)Z

    .line 329
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;->this$0:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;->access$100(Lcn/nubia/gallery3d/ui/AlbumSlotRenderer;)Lcn/nubia/gallery3d/ui/SlotView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SlotView;->invalidate()V

    return-void
.end method
