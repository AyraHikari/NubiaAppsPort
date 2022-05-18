.class Lcn/nubia/camera/k/ah$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/k/ah;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/k/ah;


# direct methods
.method constructor <init>(Lcn/nubia/camera/k/ah;)V
    .locals 0

    .line 977
    iput-object p1, p0, Lcn/nubia/camera/k/ah$4;->a:Lcn/nubia/camera/k/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "StreamController"

    const-string v1, "config session"

    .line 980
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/k/ah$4;->a:Lcn/nubia/camera/k/ah;

    invoke-virtual {v1}, Lcn/nubia/camera/k/ah;->B()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 985
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/k/ah$4;->a:Lcn/nubia/camera/k/ah;

    invoke-static {v1}, Lcn/nubia/camera/k/ah;->q(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->a()Z

    .line 986
    iget-object v1, p0, Lcn/nubia/camera/k/ah$4;->a:Lcn/nubia/camera/k/ah;

    invoke-virtual {v1}, Lcn/nubia/camera/k/ah;->b()V

    .line 987
    iget-object v1, p0, Lcn/nubia/camera/k/ah$4;->a:Lcn/nubia/camera/k/ah;

    invoke-virtual {v1}, Lcn/nubia/camera/k/ah;->C()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Config Session meet a error. "

    .line 990
    invoke-static {v0, v2, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 991
    iget-object v0, p0, Lcn/nubia/camera/k/ah$4;->a:Lcn/nubia/camera/k/ah;

    invoke-static {v0}, Lcn/nubia/camera/k/ah;->v(Lcn/nubia/camera/k/ah;)Lcn/nubia/b/a$c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/b/a$c;->b(Lcn/nubia/b/a;)V

    :goto_0
    return-void
.end method
