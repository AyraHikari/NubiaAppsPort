.class public interface abstract Lcn/nubia/gallery3d/ui/SlotView$SlotRenderer;
.super Ljava/lang/Object;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SlotRenderer"
.end annotation


# virtual methods
.method public abstract getBitmap(I)Landroid/graphics/Bitmap;
.end method

.method public abstract onSlotSizeChanged(II)V
.end method

.method public abstract onVisibleRangeChanged(II)V
.end method

.method public abstract prepareDrawing()V
.end method

.method public abstract renderSlot(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)I
.end method
