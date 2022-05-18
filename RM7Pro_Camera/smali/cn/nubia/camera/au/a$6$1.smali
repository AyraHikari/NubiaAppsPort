.class Lcn/nubia/camera/au/a$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/au/a$6;->a(Z[BII[BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/au/a$6;


# direct methods
.method constructor <init>(Lcn/nubia/camera/au/a$6;)V
    .locals 0

    .line 1255
    iput-object p1, p0, Lcn/nubia/camera/au/a$6$1;->a:Lcn/nubia/camera/au/a$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1258
    iget-object v0, p0, Lcn/nubia/camera/au/a$6$1;->a:Lcn/nubia/camera/au/a$6;

    iget-object v0, v0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    invoke-virtual {v0}, Lcn/nubia/camera/au/a;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1261
    :cond_0
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/au/a$6$1;->a:Lcn/nubia/camera/au/a$6;

    iget-object v1, v1, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    const v2, 0x7f0f015e

    invoke-virtual {v1, v2}, Lcn/nubia/camera/au/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2, v3}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;IIZ)V

    .line 1262
    iget-object v0, p0, Lcn/nubia/camera/au/a$6$1;->a:Lcn/nubia/camera/au/a$6;

    iget-object v0, v0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    invoke-static {v0}, Lcn/nubia/camera/au/a;->x(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 1263
    iget-object v0, p0, Lcn/nubia/camera/au/a$6$1;->a:Lcn/nubia/camera/au/a$6;

    iget-object v0, v0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    invoke-static {v0}, Lcn/nubia/camera/au/a;->y(Lcn/nubia/camera/au/a;)V

    return-void
.end method
