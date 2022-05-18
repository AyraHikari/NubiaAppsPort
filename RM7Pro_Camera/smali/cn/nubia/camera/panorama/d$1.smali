.class Lcn/nubia/camera/panorama/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/panorama/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/panorama/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/panorama/d;


# direct methods
.method constructor <init>(Lcn/nubia/camera/panorama/d;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcn/nubia/camera/panorama/d$1;->a:Lcn/nubia/camera/panorama/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcn/nubia/camera/panorama/d$1;->a:Lcn/nubia/camera/panorama/d;

    invoke-static {v0}, Lcn/nubia/camera/panorama/d;->a(Lcn/nubia/camera/panorama/d;)Lcom/morpho/core/MorphoPanoramaGP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/morpho/core/MorphoPanoramaGP;->a()I

    .line 117
    iget-object v0, p0, Lcn/nubia/camera/panorama/d$1;->a:Lcn/nubia/camera/panorama/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/panorama/d;->a(Lcn/nubia/camera/panorama/d;Lcom/morpho/core/MorphoPanoramaGP;)Lcom/morpho/core/MorphoPanoramaGP;

    .line 118
    iget-object v0, p0, Lcn/nubia/camera/panorama/d$1;->a:Lcn/nubia/camera/panorama/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/panorama/d;->a(Lcn/nubia/camera/panorama/d;Z)Z

    .line 119
    iget-object v0, p0, Lcn/nubia/camera/panorama/d$1;->a:Lcn/nubia/camera/panorama/d;

    iget-object v0, v0, Lcn/nubia/camera/panorama/d;->d:Lcn/nubia/camera/panorama/i;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcn/nubia/camera/panorama/d$1;->a:Lcn/nubia/camera/panorama/d;

    iget-object v0, v0, Lcn/nubia/camera/panorama/d;->d:Lcn/nubia/camera/panorama/i;

    invoke-interface {v0, p1, p2, p3}, Lcn/nubia/camera/panorama/i;->a(Landroid/net/Uri;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
