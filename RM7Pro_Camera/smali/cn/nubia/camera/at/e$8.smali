.class Lcn/nubia/camera/at/e$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/at/e;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/at/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/at/e;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcn/nubia/camera/at/e$8;->a:Lcn/nubia/camera/at/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 404
    iget-object v0, p0, Lcn/nubia/camera/at/e$8;->a:Lcn/nubia/camera/at/e;

    invoke-static {v0}, Lcn/nubia/camera/at/e;->k(Lcn/nubia/camera/at/e;)Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    const/16 v1, 0x8

    const-string v2, "StarrySkyZoomTag"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 409
    iget-object v0, p0, Lcn/nubia/camera/at/e$8;->a:Lcn/nubia/camera/at/e;

    invoke-static {v0}, Lcn/nubia/camera/at/e;->k(Lcn/nubia/camera/at/e;)Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "StarrySkyZoomTag"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    return-void
.end method
