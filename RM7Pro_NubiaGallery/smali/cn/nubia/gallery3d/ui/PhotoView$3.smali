.class Lcn/nubia/gallery3d/ui/PhotoView$3;
.super Ljava/util/TimerTask;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/ui/PhotoView;->startShowPlayIconAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/ui/PhotoView;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/ui/PhotoView;)V
    .locals 0

    .line 1434
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$3;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1438
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$3;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/nubia/gallery3d/ui/PhotoView;->mShowPlayIcon:Z

    .line 1439
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$3;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->invalidate()V

    return-void
.end method
