.class Lcn/nubia/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/a/a;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/a/a;


# direct methods
.method constructor <init>(Lcn/nubia/a/a;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcn/nubia/a/a$1;->a:Lcn/nubia/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcn/nubia/a/a$1;->a:Lcn/nubia/a/a;

    invoke-static {v0}, Lcn/nubia/a/a;->a(Lcn/nubia/a/a;)Lcn/nubia/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcn/nubia/a/a$1;->a:Lcn/nubia/a/a;

    invoke-static {v0}, Lcn/nubia/a/a;->a(Lcn/nubia/a/a;)Lcn/nubia/a/g;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/a/g;->a()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcn/nubia/a/a$1;->a:Lcn/nubia/a/a;

    const-string v1, "onFamilyShowStart"

    invoke-static {v0, v1}, Lcn/nubia/a/a;->a(Lcn/nubia/a/a;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcn/nubia/a/a$1;->a:Lcn/nubia/a/a;

    invoke-static {v0}, Lcn/nubia/a/a;->b(Lcn/nubia/a/a;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcn/nubia/a/a$1;->a:Lcn/nubia/a/a;

    invoke-static {v0}, Lcn/nubia/a/a;->c(Lcn/nubia/a/a;)Lcn/nubia/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcn/nubia/a/a$1;->a:Lcn/nubia/a/a;

    invoke-static {v0}, Lcn/nubia/a/a;->c(Lcn/nubia/a/a;)Lcn/nubia/a/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/a/b;->a(Z)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcn/nubia/a/a$1;->a:Lcn/nubia/a/a;

    invoke-static {v0}, Lcn/nubia/a/a;->a(Lcn/nubia/a/a;)Lcn/nubia/a/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcn/nubia/a/a$1;->a:Lcn/nubia/a/a;

    invoke-static {v0}, Lcn/nubia/a/a;->a(Lcn/nubia/a/a;)Lcn/nubia/a/g;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/a/g;->b()V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcn/nubia/a/a$1;->a:Lcn/nubia/a/a;

    const-string v1, "onPageShowEnd"

    invoke-static {v0, v1}, Lcn/nubia/a/a;->a(Lcn/nubia/a/a;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcn/nubia/a/a$1;->a:Lcn/nubia/a/a;

    invoke-static {v0}, Lcn/nubia/a/a;->a(Lcn/nubia/a/a;)Lcn/nubia/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcn/nubia/a/a$1;->a:Lcn/nubia/a/a;

    invoke-static {v0}, Lcn/nubia/a/a;->a(Lcn/nubia/a/a;)Lcn/nubia/a/g;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/a/g;->c()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcn/nubia/a/a$1;->a:Lcn/nubia/a/a;

    const-string v1, "onPageHideStart"

    invoke-static {v0, v1}, Lcn/nubia/a/a;->a(Lcn/nubia/a/a;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcn/nubia/a/a$1;->a:Lcn/nubia/a/a;

    invoke-static {v0}, Lcn/nubia/a/a;->a(Lcn/nubia/a/a;)Lcn/nubia/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcn/nubia/a/a$1;->a:Lcn/nubia/a/a;

    invoke-static {v0}, Lcn/nubia/a/a;->a(Lcn/nubia/a/a;)Lcn/nubia/a/g;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/a/g;->d()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "CameraFamily"

    const-string v1, "onPageHideEnd"

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcn/nubia/a/a$1;->a:Lcn/nubia/a/a;

    invoke-static {v0}, Lcn/nubia/a/a;->b(Lcn/nubia/a/a;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/a/a$1;->a:Lcn/nubia/a/a;

    invoke-static {v1}, Lcn/nubia/a/a;->d(Lcn/nubia/a/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcn/nubia/a/a$1;->a:Lcn/nubia/a/a;

    invoke-static {v0}, Lcn/nubia/a/a;->a(Lcn/nubia/a/a;)Lcn/nubia/a/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcn/nubia/a/a$1;->a:Lcn/nubia/a/a;

    invoke-static {v0}, Lcn/nubia/a/a;->a(Lcn/nubia/a/a;)Lcn/nubia/a/g;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/a/g;->e()V

    :cond_0
    return-void
.end method
