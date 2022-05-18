.class Lcn/nubia/camera/panorama/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/panorama/a;->a([BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/panorama/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/panorama/a;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcn/nubia/camera/panorama/a$1;->a:Lcn/nubia/camera/panorama/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcn/nubia/camera/panorama/a$1;->a:Lcn/nubia/camera/panorama/a;

    iget-object v0, v0, Lcn/nubia/camera/panorama/a;->d:Lcn/nubia/camera/panorama/i;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcn/nubia/camera/panorama/a$1;->a:Lcn/nubia/camera/panorama/a;

    iget-object v0, v0, Lcn/nubia/camera/panorama/a;->d:Lcn/nubia/camera/panorama/i;

    iget-object v1, p0, Lcn/nubia/camera/panorama/a$1;->a:Lcn/nubia/camera/panorama/a;

    iget v1, v1, Lcn/nubia/camera/panorama/a;->e:I

    const/4 v2, 0x0

    invoke-interface {v0, v2, v2, v1}, Lcn/nubia/camera/panorama/i;->a(Landroid/net/Uri;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
