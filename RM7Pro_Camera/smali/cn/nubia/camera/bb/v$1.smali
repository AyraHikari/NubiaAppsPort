.class Lcn/nubia/camera/bb/v$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/bb/v;->a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/v;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/v;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcn/nubia/camera/bb/v$1;->a:Lcn/nubia/camera/bb/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcn/nubia/camera/bb/v$1;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v0}, Lcn/nubia/camera/bb/v;->a(Lcn/nubia/camera/bb/v;)V

    return-void
.end method
