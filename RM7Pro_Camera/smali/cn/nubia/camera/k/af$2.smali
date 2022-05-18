.class Lcn/nubia/camera/k/af$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ah$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/k/af;->a(JLcn/nubia/camera/k/af$b;Lcn/nubia/camera/k/af$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/k/af;


# direct methods
.method constructor <init>(Lcn/nubia/camera/k/af;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcn/nubia/camera/k/af$2;->a:Lcn/nubia/camera/k/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfingSuccess(Lcn/nubia/b/a;)V
    .locals 1

    const-string p1, "SlowShutterCapture"

    const-string v0, "Config session done"

    .line 101
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object p1, p0, Lcn/nubia/camera/k/af$2;->a:Lcn/nubia/camera/k/af;

    invoke-static {p1}, Lcn/nubia/camera/k/af;->d(Lcn/nubia/camera/k/af;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcn/nubia/camera/k/af$2;->a:Lcn/nubia/camera/k/af;

    invoke-static {p1}, Lcn/nubia/camera/k/af;->a(Lcn/nubia/camera/k/af;)Lcn/nubia/camera/k/ah;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->a()Z

    .line 104
    iget-object p1, p0, Lcn/nubia/camera/k/af$2;->a:Lcn/nubia/camera/k/af;

    invoke-static {p1}, Lcn/nubia/camera/k/af;->a(Lcn/nubia/camera/k/af;)Lcn/nubia/camera/k/ah;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->a()V

    .line 106
    iget-object p1, p0, Lcn/nubia/camera/k/af$2;->a:Lcn/nubia/camera/k/af;

    invoke-static {p1}, Lcn/nubia/camera/k/af;->a(Lcn/nubia/camera/k/af;)Lcn/nubia/camera/k/ah;

    move-result-object p1

    new-instance v0, Lcn/nubia/camera/k/af$2$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/k/af$2$1;-><init>(Lcn/nubia/camera/k/af$2;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ab$a;)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/k/af$2;->a:Lcn/nubia/camera/k/af;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/camera/k/af;->b(Lcn/nubia/camera/k/af;Z)V

    .line 118
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/k/af$2;->a:Lcn/nubia/camera/k/af;

    invoke-static {p1}, Lcn/nubia/camera/k/af;->a(Lcn/nubia/camera/k/af;)Lcn/nubia/camera/k/ah;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ah$b;)V

    return-void
.end method
