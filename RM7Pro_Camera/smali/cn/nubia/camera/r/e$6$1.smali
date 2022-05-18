.class Lcn/nubia/camera/r/e$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/r/e$6;->a(Lcn/nubia/camera/r/n$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/r/n$b;

.field final synthetic b:Lcn/nubia/camera/r/e$6;


# direct methods
.method constructor <init>(Lcn/nubia/camera/r/e$6;Lcn/nubia/camera/r/n$b;)V
    .locals 0

    .line 704
    iput-object p1, p0, Lcn/nubia/camera/r/e$6$1;->b:Lcn/nubia/camera/r/e$6;

    iput-object p2, p0, Lcn/nubia/camera/r/e$6$1;->a:Lcn/nubia/camera/r/n$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 707
    iget-object v0, p0, Lcn/nubia/camera/r/e$6$1;->b:Lcn/nubia/camera/r/e$6;

    iget-object v0, v0, Lcn/nubia/camera/r/e$6;->a:Lcn/nubia/camera/r/e;

    const v1, 0x7f0f00be

    invoke-virtual {v0, v1}, Lcn/nubia/camera/r/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 708
    sget-boolean v1, Lcn/nubia/camera/r/a;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/camera/r/e$6$1;->a:Lcn/nubia/camera/r/n$b;

    iget v1, v1, Lcn/nubia/camera/r/n$b;->c:F

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const-string v0, "\u5149\u6d41\u5f02\u5e38\uff0c\u505c\u6b62\u62cd\u6444"

    .line 711
    :cond_0
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;IIZ)V

    .line 712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/r/a;->b(Ljava/lang/String;)V

    return-void
.end method
