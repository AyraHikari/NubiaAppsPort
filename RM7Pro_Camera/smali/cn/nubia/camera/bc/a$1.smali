.class Lcn/nubia/camera/bc/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zte/camera/b/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/bc/a;->d(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bc/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bc/a;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcn/nubia/camera/bc/a$1;->a:Lcn/nubia/camera/bc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcn/nubia/camera/bc/a$1;->a:Lcn/nubia/camera/bc/a;

    const-string v1, "ui_change_vlog"

    invoke-static {v0, v1}, Lcn/nubia/camera/bc/a;->a(Lcn/nubia/camera/bc/a;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcn/nubia/camera/bc/a$1;->a:Lcn/nubia/camera/bc/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/bc/a;->a(Lcn/nubia/camera/bc/a;Z)Z

    return-void
.end method

.method public a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 158
    iget-object v0, p0, Lcn/nubia/camera/bc/a$1;->a:Lcn/nubia/camera/bc/a;

    invoke-static {v0}, Lcn/nubia/camera/bc/a;->a(Lcn/nubia/camera/bc/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v0

    new-instance v1, Lcn/nubia/l/b/b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2, v2}, Lcn/nubia/l/b/b;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)V

    invoke-virtual {v0, v1}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/b/d;)V

    :cond_0
    return-void
.end method
