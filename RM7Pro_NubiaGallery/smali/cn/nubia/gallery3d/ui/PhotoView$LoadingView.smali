.class Lcn/nubia/gallery3d/ui/PhotoView$LoadingView;
.super Ljava/lang/Object;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingView"
.end annotation


# instance fields
.field hintTexture:Lcn/nubia/gallery3d/glrenderer/StringTexture;

.field spec:Lcn/nubia/gallery3d/ui/PhotoView$LoadingViewSpec;

.field textPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lcn/nubia/gallery3d/ui/PhotoView;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/ui/PhotoView;Lcn/nubia/gallery3d/ui/PhotoView$LoadingViewSpec;)V
    .locals 1

    .line 112
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$LoadingView;->this$0:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$LoadingView;->spec:Lcn/nubia/gallery3d/ui/PhotoView$LoadingViewSpec;

    .line 114
    iget p1, p2, Lcn/nubia/gallery3d/ui/PhotoView$LoadingViewSpec;->loadingTextSize:I

    int-to-float p1, p1

    iget v0, p2, Lcn/nubia/gallery3d/ui/PhotoView$LoadingViewSpec;->loadingTextColor:I

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getNoShadowPaint(FI)Landroid/text/TextPaint;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$LoadingView;->textPaint:Landroid/text/TextPaint;

    .line 115
    iget-object p1, p2, Lcn/nubia/gallery3d/ui/PhotoView$LoadingViewSpec;->loadingText:Ljava/lang/String;

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/PhotoView$LoadingView;->textPaint:Landroid/text/TextPaint;

    invoke-static {p1, p2}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcn/nubia/gallery3d/glrenderer/StringTexture;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/PhotoView$LoadingView;->hintTexture:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    return-void
.end method


# virtual methods
.method public drawDataLoadingView(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 7

    .line 119
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$LoadingView;->spec:Lcn/nubia/gallery3d/ui/PhotoView$LoadingViewSpec;

    iget v6, v0, Lcn/nubia/gallery3d/ui/PhotoView$LoadingViewSpec;->loadingViewColor:I

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    .line 120
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PhotoView$LoadingView;->hintTexture:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$LoadingView;->hintTexture:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PhotoView$LoadingView;->textPaint:Landroid/text/TextPaint;

    .line 121
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p2, v2

    .line 120
    invoke-virtual {v0, p1, v1, p2}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    return-void
.end method
