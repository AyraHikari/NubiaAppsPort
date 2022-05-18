.class Lcn/nubia/camera/b/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/b/k;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/b/k;


# direct methods
.method constructor <init>(Lcn/nubia/camera/b/k;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcn/nubia/camera/b/k$1;->a:Lcn/nubia/camera/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 100
    iget-object p1, p0, Lcn/nubia/camera/b/k$1;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcn/nubia/camera/b/k$1;->a:Lcn/nubia/camera/b/k;

    .line 101
    invoke-static {p1}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcn/nubia/camera/b/k$1;->a:Lcn/nubia/camera/b/k;

    .line 102
    invoke-static {p1}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 105
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/b/k$1;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1}, Lcn/nubia/camera/b/k;->b(Lcn/nubia/camera/b/k;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "microspur"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 106
    iget-object p1, p0, Lcn/nubia/camera/b/k$1;->a:Lcn/nubia/camera/b/k;

    sget-object v0, Lcn/nubia/camera/af/a;->F:Lcn/nubia/camera/af/a;

    invoke-static {p1, v0}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;Lcn/nubia/camera/af/a;)V

    goto :goto_1

    .line 107
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/b/k$1;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1}, Lcn/nubia/camera/b/k;->b(Lcn/nubia/camera/b/k;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "face"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 108
    iget-object p1, p0, Lcn/nubia/camera/b/k$1;->a:Lcn/nubia/camera/b/k;

    sget-object v0, Lcn/nubia/camera/af/a;->x:Lcn/nubia/camera/af/a;

    invoke-static {p1, v0}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;Lcn/nubia/camera/af/a;)V

    goto :goto_1

    .line 109
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/b/k$1;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1}, Lcn/nubia/camera/b/k;->b(Lcn/nubia/camera/b/k;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "fireworks"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcn/nubia/camera/b/k$1;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1}, Lcn/nubia/camera/b/k;->b(Lcn/nubia/camera/b/k;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "night_sky"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcn/nubia/camera/b/k$1;->a:Lcn/nubia/camera/b/k;

    .line 110
    invoke-static {p1}, Lcn/nubia/camera/b/k;->b(Lcn/nubia/camera/b/k;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "night_scene"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 112
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/b/k$1;->a:Lcn/nubia/camera/b/k;

    invoke-static {p1}, Lcn/nubia/camera/b/k;->b(Lcn/nubia/camera/b/k;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "waterfall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 113
    iget-object p1, p0, Lcn/nubia/camera/b/k$1;->a:Lcn/nubia/camera/b/k;

    sget-object v0, Lcn/nubia/camera/af/a;->c:Lcn/nubia/camera/af/a;

    invoke-static {p1, v0}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;Lcn/nubia/camera/af/a;)V

    goto :goto_1

    .line 111
    :cond_4
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/b/k$1;->a:Lcn/nubia/camera/b/k;

    sget-object v0, Lcn/nubia/camera/af/a;->O:Lcn/nubia/camera/af/a;

    invoke-static {p1, v0}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/b/k;Lcn/nubia/camera/af/a;)V

    :cond_5
    :goto_1
    return-void
.end method
