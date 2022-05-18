.class Lcn/nubia/gallery3d/app/PhotoPage$19;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/PhotoPage;)V
    .locals 0

    .line 1360
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$19;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmDialogDismissed(Z)V
    .locals 0

    .line 1376
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$19;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    return-void
.end method

.method public onConfirmDialogShown()V
    .locals 2

    .line 1371
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$19;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$700(Lcn/nubia/gallery3d/app/PhotoPage;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onProgressComplete(I)V
    .locals 0

    return-void
.end method

.method public onProgressUpdate(I)V
    .locals 0

    return-void
.end method
