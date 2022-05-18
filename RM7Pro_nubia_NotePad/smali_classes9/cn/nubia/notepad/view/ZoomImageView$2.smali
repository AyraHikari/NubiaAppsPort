.class Lcn/nubia/notepad/view/ZoomImageView$2;
.super Ljava/lang/Object;
.source "ZoomImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/view/ZoomImageView;
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
    .line 427
    iput-object p1, p0, Lcn/nubia/notepad/view/ZoomImageView$2;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcn/nubia/notepad/view/ZoomImageView$2;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v0}, Lcn/nubia/notepad/view/ZoomImageView;->access$1400(Lcn/nubia/notepad/view/ZoomImageView;)Lcn/nubia/notepad/view/ZoomImageView$OnOneTouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcn/nubia/notepad/view/ZoomImageView$2;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v0}, Lcn/nubia/notepad/view/ZoomImageView;->access$1400(Lcn/nubia/notepad/view/ZoomImageView;)Lcn/nubia/notepad/view/ZoomImageView$OnOneTouchListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/notepad/view/ZoomImageView$OnOneTouchListener;->onOneTouch()V

    .line 432
    :cond_0
    return-void
.end method
