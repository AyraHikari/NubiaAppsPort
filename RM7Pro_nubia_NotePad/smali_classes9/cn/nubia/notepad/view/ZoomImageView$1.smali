.class Lcn/nubia/notepad/view/ZoomImageView$1;
.super Ljava/lang/Object;
.source "ZoomImageView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/view/ZoomImageView;->getImageViewWidthHeight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/view/ZoomImageView;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/view/ZoomImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/view/ZoomImageView;

    .prologue
    .line 405
    iput-object p1, p0, Lcn/nubia/notepad/view/ZoomImageView$1;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcn/nubia/notepad/view/ZoomImageView$1;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/ZoomImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 409
    iget-object v0, p0, Lcn/nubia/notepad/view/ZoomImageView$1;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    iget-object v1, p0, Lcn/nubia/notepad/view/ZoomImageView$1;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-virtual {v1}, Lcn/nubia/notepad/view/ZoomImageView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/notepad/view/ZoomImageView;->access$1202(Lcn/nubia/notepad/view/ZoomImageView;I)I

    .line 410
    iget-object v0, p0, Lcn/nubia/notepad/view/ZoomImageView$1;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    iget-object v1, p0, Lcn/nubia/notepad/view/ZoomImageView$1;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-virtual {v1}, Lcn/nubia/notepad/view/ZoomImageView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/notepad/view/ZoomImageView;->access$1102(Lcn/nubia/notepad/view/ZoomImageView;I)I

    .line 412
    return-void
.end method
