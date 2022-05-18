.class Lcn/nubia/camera/ae/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ae/a;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ae/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ae/a;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcn/nubia/camera/ae/a$2;->a:Lcn/nubia/camera/ae/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 257
    iget-object p1, p0, Lcn/nubia/camera/ae/a$2;->a:Lcn/nubia/camera/ae/a;

    invoke-static {p1}, Lcn/nubia/camera/ae/a;->c(Lcn/nubia/camera/ae/a;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->p()Z

    move-result p1

    const/4 p2, 0x1

    const-string v0, "MemberScrollerManager"

    if-eqz p1, :cond_0

    const-string p1, "onTouch is invoked after activity pause"

    .line 258
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 261
    :cond_0
    invoke-static {}, Lcn/nubia/camera/f/b;->a()Lcn/nubia/camera/f/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/f/b;->b()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "CommandManager can\'t add"

    .line 262
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 265
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/ae/a$2;->a:Lcn/nubia/camera/ae/a;

    invoke-static {p1}, Lcn/nubia/camera/ae/a;->d(Lcn/nubia/camera/ae/a;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Disable Scroller For A While"

    .line 266
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 270
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/ae/a$2;->a:Lcn/nubia/camera/ae/a;

    invoke-static {p1}, Lcn/nubia/camera/ae/a;->c(Lcn/nubia/camera/ae/a;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->E()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "FirstFrame not Available"

    .line 271
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 275
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/ae/a$2;->a:Lcn/nubia/camera/ae/a;

    invoke-static {p1}, Lcn/nubia/camera/ae/a;->c(Lcn/nubia/camera/ae/a;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object p1

    .line 276
    iget-object v1, p0, Lcn/nubia/camera/ae/a$2;->a:Lcn/nubia/camera/ae/a;

    invoke-static {v1}, Lcn/nubia/camera/ae/a;->c(Lcn/nubia/camera/ae/a;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v1

    .line 277
    iget-object v2, p0, Lcn/nubia/camera/ae/a$2;->a:Lcn/nubia/camera/ae/a;

    invoke-static {v2}, Lcn/nubia/camera/ae/a;->c(Lcn/nubia/camera/ae/a;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v2

    .line 279
    sget-object v3, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    if-eq v1, v3, :cond_4

    sget-object v3, Lcn/nubia/camera/d/e;->f:Lcn/nubia/camera/d/e;

    if-ne v1, v3, :cond_6

    :cond_4
    sget-object v3, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    if-eq v2, v3, :cond_5

    sget-object v3, Lcn/nubia/camera/d/c;->f:Lcn/nubia/camera/d/c;

    if-eq v2, v3, :cond_5

    sget-object v3, Lcn/nubia/camera/d/c;->h:Lcn/nubia/camera/d/c;

    if-ne v2, v3, :cond_6

    .line 281
    :cond_5
    invoke-virtual {p1}, Lcn/nubia/camera/d/b;->a()I

    move-result v3

    sget-object v4, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v4}, Lcn/nubia/camera/d/b;->a()I

    move-result v4

    if-le v3, v4, :cond_7

    .line 282
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state not sufficient. UIState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", FunctionState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", DeviceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_7
    const/4 p1, 0x0

    return p1
.end method
