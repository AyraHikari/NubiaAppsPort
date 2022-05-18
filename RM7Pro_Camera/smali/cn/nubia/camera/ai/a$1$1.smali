.class Lcn/nubia/camera/ai/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ai/a$1;->a(Landroid/hardware/camera2/TotalCaptureResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ai/a$1;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ai/a$1;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcn/nubia/camera/ai/a$1$1;->a:Lcn/nubia/camera/ai/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcn/nubia/camera/ai/a$1$1;->a:Lcn/nubia/camera/ai/a$1;

    iget-object v0, v0, Lcn/nubia/camera/ai/a$1;->a:Lcn/nubia/camera/ai/a;

    invoke-static {v0}, Lcn/nubia/camera/ai/a;->a(Lcn/nubia/camera/ai/a;)F

    move-result v0

    const/high16 v1, 0x43be0000    # 380.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcn/nubia/camera/ai/a$1$1;->a:Lcn/nubia/camera/ai/a$1;

    iget-object v0, v0, Lcn/nubia/camera/ai/a$1;->a:Lcn/nubia/camera/ai/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/camera/ai/a;->a(Lcn/nubia/camera/ai/a;Z)Z

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ai/a$1$1;->a:Lcn/nubia/camera/ai/a$1;

    iget-object v0, v0, Lcn/nubia/camera/ai/a$1;->a:Lcn/nubia/camera/ai/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/ai/a;->a(Lcn/nubia/camera/ai/a;Z)Z

    :goto_0
    return-void
.end method
