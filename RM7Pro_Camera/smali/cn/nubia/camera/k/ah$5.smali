.class Lcn/nubia/camera/k/ah$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/k/ah;->a(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcn/nubia/camera/k/ah;


# direct methods
.method constructor <init>(Lcn/nubia/camera/k/ah;F)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcn/nubia/camera/k/ah$5;->b:Lcn/nubia/camera/k/ah;

    iput p2, p0, Lcn/nubia/camera/k/ah$5;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 271
    iget-object v0, p0, Lcn/nubia/camera/k/ah$5;->b:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->B()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 275
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/k/ah$5;->b:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->c()F

    move-result v0

    .line 277
    iget v1, p0, Lcn/nubia/camera/k/ah$5;->a:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    const/4 v1, 0x3

    .line 280
    iget v2, p0, Lcn/nubia/camera/k/ah$5;->a:F

    sub-float/2addr v2, v0

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 282
    iget-object v4, p0, Lcn/nubia/camera/k/ah$5;->b:Lcn/nubia/camera/k/ah;

    invoke-virtual {v4}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v4

    int-to-float v5, v3

    mul-float/2addr v5, v2

    add-float/2addr v5, v0

    invoke-virtual {v4, v5}, Lcn/nubia/camera/k/y;->a(F)V

    .line 283
    iget-object v4, p0, Lcn/nubia/camera/k/ah$5;->b:Lcn/nubia/camera/k/ah;

    invoke-virtual {v4}, Lcn/nubia/camera/k/ah;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 286
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/k/ah$5;->b:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/k/ah$5;->a:F

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/y;->a(F)V

    .line 287
    iget-object v0, p0, Lcn/nubia/camera/k/ah$5;->b:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/k/ah$5;->b:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->C()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/nubia/camera/k/ah$5;->b:Lcn/nubia/camera/k/ah;

    invoke-virtual {v1}, Lcn/nubia/camera/k/ah;->C()V

    .line 291
    throw v0
.end method
