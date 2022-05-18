.class Lcn/nubia/camera/pretty/d$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/pretty/WaterDropSeekbar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/d;->c(Landroid/view/View;)V
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

    .line 434
    iput-object p1, p0, Lcn/nubia/camera/pretty/d$8;->a:Lcn/nubia/camera/pretty/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/camera/pretty/d$8;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {v1}, Lcn/nubia/camera/pretty/d;->n(Lcn/nubia/camera/pretty/d;)Lcn/nubia/camera/pretty/d$b;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/camera/pretty/d$b;->b()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 2

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/camera/pretty/d$8;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {v1}, Lcn/nubia/camera/pretty/d;->n(Lcn/nubia/camera/pretty/d;)Lcn/nubia/camera/pretty/d$b;

    move-result-object v1

    invoke-interface {v1, p1}, Lcn/nubia/camera/pretty/d$b;->a(I)F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/camera/pretty/d$8;->a:Lcn/nubia/camera/pretty/d;

    invoke-static {v1}, Lcn/nubia/camera/pretty/d;->n(Lcn/nubia/camera/pretty/d;)Lcn/nubia/camera/pretty/d$b;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/camera/pretty/d$b;->c()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
