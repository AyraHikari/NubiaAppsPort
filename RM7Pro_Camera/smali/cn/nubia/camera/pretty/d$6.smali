.class Lcn/nubia/camera/pretty/d$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/pretty/WaterDropSeekbar$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/d;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/d;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/d;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcn/nubia/camera/pretty/d$6;->a:Lcn/nubia/camera/pretty/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 386
    iget-object v0, p0, Lcn/nubia/camera/pretty/d$6;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {v0}, Lcn/nubia/camera/pretty/d;->m(Lcn/nubia/camera/pretty/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    invoke-static {}, Lcn/nubia/camera/trackclinet/a;->a()Lcn/nubia/camera/trackclinet/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PRETTY_ADJUST_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/pretty/d$6;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {v2}, Lcn/nubia/camera/pretty/d;->b(Lcn/nubia/camera/pretty/d;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.camera"

    invoke-virtual {v0, v2, v1}, Lcn/nubia/camera/trackclinet/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcn/nubia/camera/pretty/d$6;->a:Lcn/nubia/camera/pretty/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/camera/pretty/d;->c(Lcn/nubia/camera/pretty/d;Z)Z

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 378
    iget-object v0, p0, Lcn/nubia/camera/pretty/d$6;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {v0, p1}, Lcn/nubia/camera/pretty/d;->a(Lcn/nubia/camera/pretty/d;I)V

    .line 379
    iget-object p1, p0, Lcn/nubia/camera/pretty/d$6;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {p1}, Lcn/nubia/camera/pretty/d;->l(Lcn/nubia/camera/pretty/d;)Lcn/nubia/camera/pretty/a$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 380
    iget-object p1, p0, Lcn/nubia/camera/pretty/d$6;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {p1}, Lcn/nubia/camera/pretty/d;->l(Lcn/nubia/camera/pretty/d;)Lcn/nubia/camera/pretty/a$b;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/pretty/a$b;->a()V

    :cond_0
    return-void
.end method
