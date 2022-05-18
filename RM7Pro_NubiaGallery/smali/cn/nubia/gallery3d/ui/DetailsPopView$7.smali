.class Lcn/nubia/gallery3d/ui/DetailsPopView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DetailsPopView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/DetailsPopView;->startExitAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/DetailsPopView;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/DetailsPopView;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView$7;->this$0:Lcn/nubia/gallery3d/ui/DetailsPopView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 307
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView$7;->this$0:Lcn/nubia/gallery3d/ui/DetailsPopView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/DetailsPopView;->access$300(Lcn/nubia/gallery3d/ui/DetailsPopView;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 308
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView$7;->this$0:Lcn/nubia/gallery3d/ui/DetailsPopView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/DetailsPopView;->access$300(Lcn/nubia/gallery3d/ui/DetailsPopView;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 310
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/DetailsPopView$7;->this$0:Lcn/nubia/gallery3d/ui/DetailsPopView;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/DetailsPopView;->access$400(Lcn/nubia/gallery3d/ui/DetailsPopView;)Lcn/nubia/gallery3d/ui/DetailsHelper$CloseListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/ui/DetailsHelper$CloseListener;->onClose()V

    return-void
.end method
