.class Lcn/nubia/camera/ao/h$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/ao/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ao/h;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ao/h;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ao/h;)V
    .locals 0

    .line 665
    iput-object p1, p0, Lcn/nubia/camera/ao/h$6;->a:Lcn/nubia/camera/ao/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([III)V
    .locals 5

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 669
    iget-object p2, p0, Lcn/nubia/camera/ao/h$6;->a:Lcn/nubia/camera/ao/h;

    invoke-static {p2}, Lcn/nubia/camera/ao/h;->m(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/extendedUI/HistogramView;

    move-result-object p2

    const/4 v0, 0x0

    int-to-double v1, p3

    invoke-virtual {p2, p1, v0, v1, v2}, Lcn/nubia/camera/extendedUI/HistogramView;->a([IID)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 671
    iget-object p2, p0, Lcn/nubia/camera/ao/h$6;->a:Lcn/nubia/camera/ao/h;

    invoke-static {p2}, Lcn/nubia/camera/ao/h;->m(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/extendedUI/HistogramView;

    move-result-object p2

    int-to-double v3, p3

    invoke-virtual {p2, p1, v1, v3, v4}, Lcn/nubia/camera/extendedUI/HistogramView;->a([IID)V

    .line 672
    iget-object p2, p0, Lcn/nubia/camera/ao/h$6;->a:Lcn/nubia/camera/ao/h;

    invoke-static {p2}, Lcn/nubia/camera/ao/h;->n(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/extendedUI/HistogramView;

    move-result-object p2

    invoke-virtual {p2, p1, v2, v3, v4}, Lcn/nubia/camera/extendedUI/HistogramView;->a([IID)V

    .line 673
    iget-object p2, p0, Lcn/nubia/camera/ao/h$6;->a:Lcn/nubia/camera/ao/h;

    invoke-static {p2}, Lcn/nubia/camera/ao/h;->o(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/extendedUI/HistogramView;

    move-result-object p2

    invoke-virtual {p2, p1, v0, v3, v4}, Lcn/nubia/camera/extendedUI/HistogramView;->a([IID)V

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_2

    .line 675
    iget-object p2, p0, Lcn/nubia/camera/ao/h$6;->a:Lcn/nubia/camera/ao/h;

    invoke-static {p2}, Lcn/nubia/camera/ao/h;->m(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/extendedUI/HistogramView;

    move-result-object p2

    const/4 v0, 0x4

    int-to-double v1, p3

    invoke-virtual {p2, p1, v0, v1, v2}, Lcn/nubia/camera/extendedUI/HistogramView;->a([IID)V

    :cond_2
    :goto_0
    return-void
.end method
