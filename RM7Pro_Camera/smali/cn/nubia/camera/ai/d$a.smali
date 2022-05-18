.class Lcn/nubia/camera/ai/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ai/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ai/d;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/ai/d;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcn/nubia/camera/ai/d$a;->a:Lcn/nubia/camera/ai/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/ai/d;Lcn/nubia/camera/ai/d$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcn/nubia/camera/ai/d$a;-><init>(Lcn/nubia/camera/ai/d;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcn/nubia/camera/ai/d$a;->a:Lcn/nubia/camera/ai/d;

    invoke-static {v0}, Lcn/nubia/camera/ai/d;->a(Lcn/nubia/camera/ai/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/ai/d$a;->a:Lcn/nubia/camera/ai/d;

    invoke-static {v0}, Lcn/nubia/camera/ai/d;->b(Lcn/nubia/camera/ai/d;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    :try_start_0
    sget-object v0, Lcn/nubia/camera/k/a/a$c;->j:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/ai/d$a;->a:Lcn/nubia/camera/ai/d;

    invoke-static {v0}, Lcn/nubia/camera/ai/d;->c(Lcn/nubia/camera/ai/d;)Lcn/nubia/camera/k/u;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcn/nubia/camera/ai/d$a;->a:Lcn/nubia/camera/ai/d;

    invoke-static {v0}, Lcn/nubia/camera/ai/d;->c(Lcn/nubia/camera/ai/d;)Lcn/nubia/camera/k/u;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/camera/k/u;->a(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 44
    iget-object p1, p0, Lcn/nubia/camera/ai/d$a;->a:Lcn/nubia/camera/ai/d;

    invoke-static {p1}, Lcn/nubia/camera/ai/d;->e(Lcn/nubia/camera/ai/d;)Lcn/nubia/camera/k/ah;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/ai/d$a;->a:Lcn/nubia/camera/ai/d;

    invoke-static {v0}, Lcn/nubia/camera/ai/d;->d(Lcn/nubia/camera/ai/d;)Lcn/nubia/camera/ai/d$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ab$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
