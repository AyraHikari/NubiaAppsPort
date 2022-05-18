.class Lcn/nubia/camera/q/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/q/c;->a(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/nubia/camera/q/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/c;Ljava/lang/String;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcn/nubia/camera/q/c$4;->b:Lcn/nubia/camera/q/c;

    iput-object p2, p0, Lcn/nubia/camera/q/c$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 229
    iget-object p1, p0, Lcn/nubia/camera/q/c$4;->b:Lcn/nubia/camera/q/c;

    invoke-static {p1}, Lcn/nubia/camera/q/c;->a(Lcn/nubia/camera/q/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/c;->e:Lcn/nubia/camera/d/c;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 232
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/q/c$4;->b:Lcn/nubia/camera/q/c;

    invoke-static {p1}, Lcn/nubia/camera/q/c;->a(Lcn/nubia/camera/q/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object p1

    new-instance v0, Lcn/nubia/camera/af/b;

    iget-object v1, p0, Lcn/nubia/camera/q/c$4;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/af/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 233
    iget-object p1, p0, Lcn/nubia/camera/q/c$4;->b:Lcn/nubia/camera/q/c;

    invoke-static {p1}, Lcn/nubia/camera/q/c;->a(Lcn/nubia/camera/q/c;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->s()Lcn/nubia/camera/aw/b;

    move-result-object p1

    new-instance v0, Lcn/nubia/camera/af/b;

    iget-object v1, p0, Lcn/nubia/camera/q/c$4;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/aw/b;->b(Lcn/nubia/camera/af/b;)V

    .line 234
    iget-object p1, p0, Lcn/nubia/camera/q/c$4;->b:Lcn/nubia/camera/q/c;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v1, v1, v0}, Lcn/nubia/camera/q/c;->a(Lcn/nubia/camera/q/c;ZZZZ)V

    :cond_1
    return-void
.end method
