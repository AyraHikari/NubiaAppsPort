.class Lcn/nubia/gallery3d/app/SlideshowPage$2;
.super Lcn/nubia/gallery3d/ui/SynchronizedHandler;
.source "SlideshowPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/SlideshowPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

.field final synthetic val$data:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/SlideshowPage;Lcn/nubia/gallery3d/ui/GLRoot;Landroid/os/Bundle;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$2;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    iput-object p3, p0, Lcn/nubia/gallery3d/app/SlideshowPage$2;->val$data:Landroid/os/Bundle;

    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;-><init>(Lcn/nubia/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 234
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 245
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$2;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$602(Lcn/nubia/gallery3d/app/SlideshowPage;Z)Z

    .line 246
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$2;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$2;->val$data:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$700(Lcn/nubia/gallery3d/app/SlideshowPage;Landroid/os/Bundle;)V

    .line 247
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$2;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$800(Lcn/nubia/gallery3d/app/SlideshowPage;)V

    goto :goto_0

    .line 249
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 242
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$2;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->playOrStop()V

    goto :goto_0

    .line 236
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$2;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$400(Lcn/nubia/gallery3d/app/SlideshowPage;)V

    goto :goto_0

    .line 239
    :cond_3
    iget-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$2;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$500(Lcn/nubia/gallery3d/app/SlideshowPage;)V

    :goto_0
    return-void
.end method
