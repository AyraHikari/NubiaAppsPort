.class public Lcn/nubia/gallery3d/video/VideoToast;
.super Ljava/lang/Object;
.source "VideoToast.java"


# instance fields
.field private mCancelRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/video/VideoToast;->mHandler:Landroid/os/Handler;

    .line 38
    new-instance v0, Lcn/nubia/gallery3d/video/VideoToast$1;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/video/VideoToast$1;-><init>(Lcn/nubia/gallery3d/video/VideoToast;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/video/VideoToast;->mCancelRunnable:Ljava/lang/Runnable;

    .line 14
    iput-object p1, p0, Lcn/nubia/gallery3d/video/VideoToast;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/video/VideoToast;)Landroid/widget/Toast;
    .locals 0

    .line 7
    iget-object p0, p0, Lcn/nubia/gallery3d/video/VideoToast;->mToast:Landroid/widget/Toast;

    return-object p0
.end method

.method private cancelToast()V
    .locals 4

    .line 51
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/gallery3d/video/VideoToast;->mCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 52
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/gallery3d/video/VideoToast;->mCancelRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoToast;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/gallery3d/video/VideoToast;->mCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 34
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

.method public showToast(I)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoToast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/video/VideoToast;->showToast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showToast(Ljava/lang/CharSequence;)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoToast;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoToast;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/video/VideoToast;->mToast:Landroid/widget/Toast;

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :goto_0
    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 28
    invoke-direct {p0}, Lcn/nubia/gallery3d/video/VideoToast;->cancelToast()V

    return-void
.end method
