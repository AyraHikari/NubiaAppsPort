.class Lcn/nubia/improve/slideshow/SlideShowEffectPage$2;
.super Lcn/nubia/gallery3d/ui/SynchronizedHandler;
.source "SlideShowEffectPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/slideshow/SlideShowEffectPage;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/slideshow/SlideShowEffectPage;


# direct methods
.method constructor <init>(Lcn/nubia/improve/slideshow/SlideShowEffectPage;Lcn/nubia/gallery3d/ui/GLRoot;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage$2;->this$0:Lcn/nubia/improve/slideshow/SlideShowEffectPage;

    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/ui/SynchronizedHandler;-><init>(Lcn/nubia/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 120
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 122
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage$2;->this$0:Lcn/nubia/improve/slideshow/SlideShowEffectPage;

    invoke-static {p1}, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->access$100(Lcn/nubia/improve/slideshow/SlideShowEffectPage;)V

    goto :goto_0

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 125
    :cond_1
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage$2;->this$0:Lcn/nubia/improve/slideshow/SlideShowEffectPage;

    invoke-static {p1}, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->access$200(Lcn/nubia/improve/slideshow/SlideShowEffectPage;)V

    :goto_0
    return-void
.end method
