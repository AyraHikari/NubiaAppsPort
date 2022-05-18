.class public interface abstract Lcom/android/calculator2/DragLayout$DragCallback;
.super Ljava/lang/Object;
.source "DragLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/DragLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DragCallback"
.end annotation


# virtual methods
.method public abstract getDisplayHeight()I
.end method

.method public abstract onInstanceStateRestored(Z)V
.end method

.method public abstract onStartDraggingOpen()V
.end method

.method public abstract shouldCaptureView(Landroid/view/View;II)Z
.end method

.method public abstract whileDragging(F)V
.end method
