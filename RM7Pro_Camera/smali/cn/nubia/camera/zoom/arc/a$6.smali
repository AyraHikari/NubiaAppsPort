.class Lcn/nubia/camera/zoom/arc/a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/zoom/arc/a;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcn/nubia/camera/zoom/arc/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/zoom/arc/a;F)V
    .locals 0

    .line 562
    iput-object p1, p0, Lcn/nubia/camera/zoom/arc/a$6;->b:Lcn/nubia/camera/zoom/arc/a;

    iput p2, p0, Lcn/nubia/camera/zoom/arc/a$6;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 565
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a$6;->b:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/a;->b(Lcn/nubia/camera/zoom/arc/a;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ArcZoomUI"

    const-string v0, "ZoomButton click has disable"

    .line 566
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 569
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a$6;->b:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/a;->f(Lcn/nubia/camera/zoom/arc/a;)Lcn/nubia/camera/zoom/arc/ArcZoomView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 570
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a$6;->b:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/a;->f(Lcn/nubia/camera/zoom/arc/a;)Lcn/nubia/camera/zoom/arc/ArcZoomView;

    move-result-object p1

    iget v0, p0, Lcn/nubia/camera/zoom/arc/a$6;->a:F

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(FZ)V

    :cond_1
    return-void
.end method
