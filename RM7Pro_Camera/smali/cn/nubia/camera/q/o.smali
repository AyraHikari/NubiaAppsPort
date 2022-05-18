.class public Lcn/nubia/camera/q/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field c:Lcn/nubia/camera/q/n;


# virtual methods
.method public a(I)V
    .locals 1

    .line 31
    iput p1, p0, Lcn/nubia/camera/q/o;->a:I

    .line 32
    iget-object v0, p0, Lcn/nubia/camera/q/o;->c:Lcn/nubia/camera/q/n;

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0, p1}, Lcn/nubia/camera/q/n;->a(I)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uiviewITems setBottom bottom = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";doesDeviceHasNavigationBar ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/nubia/camera/ba/a;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UiViewItems"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {}, Lcn/nubia/camera/ba/a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/nubia/camera/ba/a;->c()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/camera/q/o;->b:I

    .line 45
    iget-object v0, p0, Lcn/nubia/camera/q/o;->c:Lcn/nubia/camera/q/n;

    if-eqz v0, :cond_1

    .line 46
    invoke-interface {v0, p1}, Lcn/nubia/camera/q/n;->a(I)V

    :cond_1
    return-void
.end method
