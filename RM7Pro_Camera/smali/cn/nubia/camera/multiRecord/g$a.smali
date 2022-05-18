.class Lcn/nubia/camera/multiRecord/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/multiRecord/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field final synthetic c:Lcn/nubia/camera/multiRecord/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/multiRecord/g;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/g$a;->c:Lcn/nubia/camera/multiRecord/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    .line 189
    iput p1, p0, Lcn/nubia/camera/multiRecord/g$a;->a:I

    return-void
.end method

.method private a()V
    .locals 3

    const-string v0, "MultiRecordFragment"

    const-string v1, "onCaptureReady"

    .line 204
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$a;->c:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->h(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/multiRecord/g$a$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/multiRecord/g$a$1;-><init>(Lcn/nubia/camera/multiRecord/g$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 226
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$a;->c:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->i(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/ae/a;->a(J)V

    .line 227
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$a;->c:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->j(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->e:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->b(Lcn/nubia/camera/d/c;)V

    .line 228
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$a;->c:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->k(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/multiRecord/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/camera/multiRecord/l;->d(Lcn/nubia/camera/k/ab$a;)V

    .line 229
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$a;->c:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->k(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/multiRecord/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/camera/multiRecord/l;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 230
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$a;->c:Lcn/nubia/camera/multiRecord/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/multiRecord/g;->a(Lcn/nubia/camera/multiRecord/g;Z)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 4

    .line 194
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v0

    iget p1, p0, Lcn/nubia/camera/multiRecord/g$a;->a:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 195
    iget p1, p0, Lcn/nubia/camera/multiRecord/g$a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/camera/multiRecord/g$a;->b:I

    .line 197
    :cond_0
    iget p1, p0, Lcn/nubia/camera/multiRecord/g$a;->b:I

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$a;->c:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/g;->a(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/af/b;->a()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 198
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/g$a;->a()V

    :cond_1
    return-void
.end method
