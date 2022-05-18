.class Lcn/nubia/camera/r/i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/r/i;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/r/i;


# direct methods
.method constructor <init>(Lcn/nubia/camera/r/i;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcn/nubia/camera/r/i$2;->a:Lcn/nubia/camera/r/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 395
    iget-object v0, p0, Lcn/nubia/camera/r/i$2;->a:Lcn/nubia/camera/r/i;

    invoke-static {v0}, Lcn/nubia/camera/r/i;->c(Lcn/nubia/camera/r/i;)Lcn/nubia/camera/bb/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcn/nubia/camera/r/i$2;->a:Lcn/nubia/camera/r/i;

    invoke-static {v0}, Lcn/nubia/camera/r/i;->c(Lcn/nubia/camera/r/i;)Lcn/nubia/camera/bb/z;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/bb/z;->e()V

    :cond_0
    return-void
.end method
