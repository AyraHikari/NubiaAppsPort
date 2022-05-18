.class Lcn/nubia/commonui/widget/VideoForceTouchWidget$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/commonui/widget/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/widget/VideoForceTouchWidget;->f(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcn/nubia/commonui/widget/VideoForceTouchWidget;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/VideoForceTouchWidget;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget$a;->b:Lcn/nubia/commonui/widget/VideoForceTouchWidget;

    iput-object p2, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget$a;->b:Lcn/nubia/commonui/widget/VideoForceTouchWidget;

    const/4 v2, 0x3

    iget-object v3, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget$a;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->k(ILandroid/content/Context;)V

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-ltz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget$a;->b:Lcn/nubia/commonui/widget/VideoForceTouchWidget;

    invoke-static {v1}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->b(Lcn/nubia/commonui/widget/VideoForceTouchWidget;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 5
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    const v5, 0x7f090038

    .line 6
    invoke-virtual {v1, v5, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 7
    iget-object v1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget$a;->b:Lcn/nubia/commonui/widget/VideoForceTouchWidget;

    const v4, 0x7f09003e

    const v6, 0x7f09003b

    invoke-virtual {v1, v2, v5, v4, v6}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->i(ZIII)V

    .line 8
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-gt v2, v1, :cond_2

    .line 9
    iget-object v1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget$a;->b:Lcn/nubia/commonui/widget/VideoForceTouchWidget;

    invoke-static {v1}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->b(Lcn/nubia/commonui/widget/VideoForceTouchWidget;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 10
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    const v5, 0x7f090039

    .line 11
    invoke-virtual {v1, v5, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 12
    iget-object v1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget$a;->b:Lcn/nubia/commonui/widget/VideoForceTouchWidget;

    const v4, 0x7f09003f

    const v6, 0x7f09003c

    invoke-virtual {v1, v2, v5, v4, v6}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->i(ZIII)V

    .line 13
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_4

    .line 14
    iget-object v1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget$a;->b:Lcn/nubia/commonui/widget/VideoForceTouchWidget;

    const v4, 0x7f090040

    const v5, 0x7f09003d

    const v6, 0x7f09003a

    invoke-virtual {v1, v2, v6, v4, v5}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->i(ZIII)V

    .line 15
    iget-object v1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget$a;->b:Lcn/nubia/commonui/widget/VideoForceTouchWidget;

    invoke-static {v1}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->b(Lcn/nubia/commonui/widget/VideoForceTouchWidget;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 16
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 17
    invoke-virtual {v1, v6, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 18
    iget-object p1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget$a;->b:Lcn/nubia/commonui/widget/VideoForceTouchWidget;

    invoke-static {p1}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->b(Lcn/nubia/commonui/widget/VideoForceTouchWidget;)Landroid/widget/RemoteViews;

    move-result-object p1

    const v0, 0x7f090177

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 19
    :cond_3
    :goto_0
    iget-object p1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget$a;->b:Lcn/nubia/commonui/widget/VideoForceTouchWidget;

    iget-object v1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget$a;->a:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->k(ILandroid/content/Context;)V

    .line 20
    iget-object p1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget$a;->b:Lcn/nubia/commonui/widget/VideoForceTouchWidget;

    const v0, 0x7f090171

    iget-object v1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget$a;->a:Landroid/content/Context;

    const-string v2, "ACTION_CLICK_OPEN_CAMERA"

    invoke-static {p1, v2, v0, v1}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->a(Lcn/nubia/commonui/widget/VideoForceTouchWidget;Ljava/lang/String;ILandroid/content/Context;)V

    .line 21
    :cond_4
    :goto_1
    iget-object p1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget$a;->b:Lcn/nubia/commonui/widget/VideoForceTouchWidget;

    invoke-static {p1}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->d(Lcn/nubia/commonui/widget/VideoForceTouchWidget;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget$a;->b:Lcn/nubia/commonui/widget/VideoForceTouchWidget;

    invoke-static {v0}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->c(Lcn/nubia/commonui/widget/VideoForceTouchWidget;)[I

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/widget/VideoForceTouchWidget$a;->b:Lcn/nubia/commonui/widget/VideoForceTouchWidget;

    invoke-static {v1}, Lcn/nubia/commonui/widget/VideoForceTouchWidget;->b(Lcn/nubia/commonui/widget/VideoForceTouchWidget;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    return-void
.end method
