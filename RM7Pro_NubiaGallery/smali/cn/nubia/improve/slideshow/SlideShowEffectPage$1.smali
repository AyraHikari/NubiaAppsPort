.class Lcn/nubia/improve/slideshow/SlideShowEffectPage$1;
.super Lcn/nubia/gallery3d/ui/GLView;
.source "SlideShowEffectPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/slideshow/SlideShowEffectPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcn/nubia/improve/slideshow/SlideShowEffectPage;


# direct methods
.method constructor <init>(Lcn/nubia/improve/slideshow/SlideShowEffectPage;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage$1;->this$0:Lcn/nubia/improve/slideshow/SlideShowEffectPage;

    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/GLView;-><init>()V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 82
    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage$1;->mMatrix:[F

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage$1;->this$0:Lcn/nubia/improve/slideshow/SlideShowEffectPage;

    invoke-static {p1}, Lcn/nubia/improve/slideshow/SlideShowEffectPage;->access$000(Lcn/nubia/improve/slideshow/SlideShowEffectPage;)Lcn/nubia/improve/slideshow/SlideShowEffectView;

    move-result-object p1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p4, p5}, Lcn/nubia/improve/slideshow/SlideShowEffectView;->layout(IIII)V

    .line 87
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage$1;->mMatrix:[F

    div-int/lit8 p4, p4, 0x2

    int-to-float p2, p4

    div-int/lit8 p5, p5, 0x2

    int-to-float p3, p5

    const/high16 p4, 0x43fa0000    # 500.0f

    .line 88
    invoke-static {p4}, Lcn/nubia/gallery3d/util/GalleryUtils;->meterToPixel(F)I

    move-result p4

    neg-int p4, p4

    int-to-float p4, p4

    .line 87
    invoke-static {p1, p2, p3, p4}, Lcn/nubia/gallery3d/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    const/4 p1, 0x1

    return p1
.end method

.method protected render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 2

    const/4 v0, 0x2

    .line 101
    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 102
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowEffectPage$1;->mMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    .line 103
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/ui/GLView;->render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    .line 105
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method protected renderBackground(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 0

    .line 110
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->clearBuffer()V

    return-void
.end method
