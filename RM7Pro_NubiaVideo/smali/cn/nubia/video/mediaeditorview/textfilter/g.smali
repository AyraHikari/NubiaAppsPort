.class public Lcn/nubia/video/mediaeditorview/textfilter/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v0, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
