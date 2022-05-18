.class Lcn/nubia/camera/pretty/a/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/a/f;->c(Lcn/nubia/camera/pretty/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/a/b;

.field final synthetic b:Lcn/nubia/camera/pretty/a/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/a/f;Lcn/nubia/camera/pretty/a/b;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcn/nubia/camera/pretty/a/f$2;->b:Lcn/nubia/camera/pretty/a/f;

    iput-object p2, p0, Lcn/nubia/camera/pretty/a/f$2;->a:Lcn/nubia/camera/pretty/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/k/e;Lcn/nubia/b/d;)V
    .locals 3

    .line 334
    iget-object p2, p0, Lcn/nubia/camera/pretty/a/f$2;->a:Lcn/nubia/camera/pretty/a/b;

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p2, v0, v1, v2, v2}, Lcn/nubia/camera/pretty/a/b;->a(Lcn/nubia/camera/pretty/a/d;IFF)V

    .line 335
    iget-object p2, p0, Lcn/nubia/camera/pretty/a/f$2;->a:Lcn/nubia/camera/pretty/a/b;

    invoke-virtual {p2, v0}, Lcn/nubia/camera/pretty/a/b;->b([B)V

    .line 336
    iget-object p2, p0, Lcn/nubia/camera/pretty/a/f$2;->a:Lcn/nubia/camera/pretty/a/b;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/nubia/camera/k/e;->a()[B

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Lcn/nubia/camera/pretty/a/b;->a([B)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 331
    check-cast p1, Lcn/nubia/camera/k/e;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/pretty/a/f$2;->a(Lcn/nubia/camera/k/e;Lcn/nubia/b/d;)V

    return-void
.end method
