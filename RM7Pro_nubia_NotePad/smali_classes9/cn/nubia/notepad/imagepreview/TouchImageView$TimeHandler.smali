.class Lcn/nubia/notepad/imagepreview/TouchImageView$TimeHandler;
.super Landroid/os/Handler;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/imagepreview/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeHandler"
.end annotation


# instance fields
.field private final mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/notepad/imagepreview/TouchImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcn/nubia/notepad/imagepreview/TouchImageView;)V
    .locals 1
    .param p1, "view"    # Lcn/nubia/notepad/imagepreview/TouchImageView;

    .prologue
    .line 506
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 507
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$TimeHandler;->mService:Ljava/lang/ref/WeakReference;

    .line 509
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 513
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$TimeHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/imagepreview/TouchImageView;

    invoke-virtual {v0}, Lcn/nubia/notepad/imagepreview/TouchImageView;->performClick()Z

    .line 514
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$TimeHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/imagepreview/TouchImageView;

    invoke-static {v0}, Lcn/nubia/notepad/imagepreview/TouchImageView;->access$1500(Lcn/nubia/notepad/imagepreview/TouchImageView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$TimeHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/imagepreview/TouchImageView;

    invoke-static {v0}, Lcn/nubia/notepad/imagepreview/TouchImageView;->access$1500(Lcn/nubia/notepad/imagepreview/TouchImageView;)Landroid/view/View$OnClickListener;

    move-result-object v1

    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$TimeHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 516
    :cond_0
    return-void
.end method
