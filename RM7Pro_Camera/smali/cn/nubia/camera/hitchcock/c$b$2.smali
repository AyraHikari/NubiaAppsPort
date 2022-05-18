.class Lcn/nubia/camera/hitchcock/c$b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/hitchcock/c$b;->a(Landroid/graphics/Rect;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcn/nubia/camera/hitchcock/c$b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/hitchcock/c$b;ZZ)V
    .locals 0

    .line 586
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/c$b$2;->c:Lcn/nubia/camera/hitchcock/c$b;

    iput-boolean p2, p0, Lcn/nubia/camera/hitchcock/c$b$2;->a:Z

    iput-boolean p3, p0, Lcn/nubia/camera/hitchcock/c$b$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 590
    iget-boolean v0, p0, Lcn/nubia/camera/hitchcock/c$b$2;->a:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const v0, 0x7f0f00f7

    goto :goto_0

    .line 593
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/camera/hitchcock/c$b$2;->b:Z

    if-eqz v0, :cond_2

    .line 594
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c$b$2;->c:Lcn/nubia/camera/hitchcock/c$b;

    iget-object v0, v0, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/c;->g(Lcn/nubia/camera/hitchcock/c;)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    const v0, 0x7f0f00f5

    goto :goto_0

    :cond_1
    const v0, 0x7f0f00f4

    goto :goto_0

    :cond_2
    move v0, v1

    .line 601
    :goto_0
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/hitchcock/c$b$2;->c:Lcn/nubia/camera/hitchcock/c$b;

    iget-object v3, v3, Lcn/nubia/camera/hitchcock/c$b;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-virtual {v3, v0}, Lcn/nubia/camera/hitchcock/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v1, v4}, Lcn/nubia/camera/ba/f;->a(Ljava/lang/String;IIZ)V

    return-void
.end method
