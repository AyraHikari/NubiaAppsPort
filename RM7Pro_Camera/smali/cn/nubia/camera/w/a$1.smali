.class Lcn/nubia/camera/w/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/w/a;->h()V
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

    .line 148
    iput-object p1, p0, Lcn/nubia/camera/w/a$1;->a:Lcn/nubia/camera/w/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 151
    iget-object p1, p0, Lcn/nubia/camera/w/a$1;->a:Lcn/nubia/camera/w/a;

    invoke-static {p1}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/w/c;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/w/a$1;->a:Lcn/nubia/camera/w/a;

    invoke-static {p1}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/w/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/w/c;->c()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/w/a$1;->a:Lcn/nubia/camera/w/a;

    .line 152
    invoke-static {p1}, Lcn/nubia/camera/w/a;->b(Lcn/nubia/camera/w/a;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/w/a$1;->a:Lcn/nubia/camera/w/a;

    invoke-static {p1}, Lcn/nubia/camera/w/a;->b(Lcn/nubia/camera/w/a;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/w/a$1;->a:Lcn/nubia/camera/w/a;

    invoke-static {v0}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/w/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/w/c;->c()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/w/d$a;

    invoke-virtual {p1}, Lcn/nubia/camera/w/d$a;->c()I

    move-result p1

    if-eqz p1, :cond_1

    .line 153
    iget-object p1, p0, Lcn/nubia/camera/w/a$1;->a:Lcn/nubia/camera/w/a;

    invoke-static {p1}, Lcn/nubia/camera/w/a;->c(Lcn/nubia/camera/w/a;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/w/a$1;->a:Lcn/nubia/camera/w/a;

    .line 154
    invoke-static {v0}, Lcn/nubia/camera/w/a;->b(Lcn/nubia/camera/w/a;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/w/a$1;->a:Lcn/nubia/camera/w/a;

    invoke-static {v1}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/w/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/w/c;->c()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v0}, Lcn/nubia/camera/w/d$a;->d()I

    move-result v0

    .line 153
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 155
    iget-object v0, p0, Lcn/nubia/camera/w/a$1;->a:Lcn/nubia/camera/w/a;

    invoke-static {v0}, Lcn/nubia/camera/w/a;->c(Lcn/nubia/camera/w/a;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/w/a$1;->a:Lcn/nubia/camera/w/a;

    .line 156
    invoke-static {v1}, Lcn/nubia/camera/w/a;->b(Lcn/nubia/camera/w/a;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/w/a$1;->a:Lcn/nubia/camera/w/a;

    invoke-static {v2}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/w/c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/w/c;->c()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/w/d$a;

    invoke-virtual {v1}, Lcn/nubia/camera/w/d$a;->c()I

    move-result v1

    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 157
    instance-of v1, p1, Lcn/nubia/camera/prosetting/ui/a;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 161
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/w/a$1;->a:Lcn/nubia/camera/w/a;

    invoke-static {p1}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/w/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/camera/w/c;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 164
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/w/a$1;->a:Lcn/nubia/camera/w/a;

    invoke-static {p1}, Lcn/nubia/camera/w/a;->a(Lcn/nubia/camera/w/a;)Lcn/nubia/camera/w/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/camera/w/c;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
