.class Lcn/nubia/camera/w/a$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/w/a;->a(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/w/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/w/a;)V
    .locals 0

    .line 962
    iput-object p1, p0, Lcn/nubia/camera/w/a$11;->a:Lcn/nubia/camera/w/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 965
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    const/high16 v0, 0x42960000    # 75.0f

    cmpg-float p2, p2, v0

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return v0

    .line 968
    :cond_0
    iget-object p2, p0, Lcn/nubia/camera/w/a$11;->a:Lcn/nubia/camera/w/a;

    invoke-static {p2}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/w/c;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/w/c;->c()I

    move-result p2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p2, v1, :cond_2

    iget-object p2, p0, Lcn/nubia/camera/w/a$11;->a:Lcn/nubia/camera/w/a;

    .line 969
    invoke-static {p2}, Lcn/nubia/camera/w/a;->b(Lcn/nubia/camera/w/a;)Ljava/util/List;

    move-result-object p2

    iget-object v1, p0, Lcn/nubia/camera/w/a$11;->a:Lcn/nubia/camera/w/a;

    invoke-static {v1}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/w/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/w/c;->c()I

    move-result v1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/camera/w/d$a;

    invoke-virtual {p2}, Lcn/nubia/camera/w/d$a;->a()Lcn/nubia/camera/w/b;

    move-result-object p2

    sget-object v1, Lcn/nubia/camera/w/b;->a:Lcn/nubia/camera/w/b;

    if-ne p2, v1, :cond_2

    iget-object p2, p0, Lcn/nubia/camera/w/a$11;->a:Lcn/nubia/camera/w/a;

    .line 970
    invoke-static {p2}, Lcn/nubia/camera/w/a;->d(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/camera/w/d;->k(Lcn/nubia/camera/ad/a;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-lez p2, :cond_2

    const p2, 0x7f090188

    .line 971
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    move v0, v2

    :cond_1
    return v0

    .line 973
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    move v0, v2

    :cond_3
    return v0
.end method
