.class Lcn/nubia/notepad/view/ZoomImageView$3;
.super Ljava/lang/Object;
.source "ZoomImageView.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/view/ZoomImageView;->setUrl(Ljava/lang/String;)V
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
    .line 497
    iput-object p1, p0, Lcn/nubia/notepad/view/ZoomImageView$3;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    .line 522
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 515
    iget-object v0, p0, Lcn/nubia/notepad/view/ZoomImageView$3;->this$0:Lcn/nubia/notepad/view/ZoomImageView;

    invoke-static {v0}, Lcn/nubia/notepad/view/ZoomImageView;->access$1500(Lcn/nubia/notepad/view/ZoomImageView;)V

    .line 516
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 509
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    .line 502
    return-void
.end method
