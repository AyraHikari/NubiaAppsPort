.class Lcn/nubia/camera/bb/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/bb/b;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/b;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcn/nubia/camera/bb/b$3;->a:Lcn/nubia/camera/bb/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 441
    iget-object v0, p0, Lcn/nubia/camera/bb/b$3;->a:Lcn/nubia/camera/bb/b;

    invoke-static {v0}, Lcn/nubia/camera/bb/b;->j(Lcn/nubia/camera/bb/b;)Lcn/nubia/camera/bb/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcn/nubia/camera/bb/b$3;->a:Lcn/nubia/camera/bb/b;

    invoke-static {v0}, Lcn/nubia/camera/bb/b;->j(Lcn/nubia/camera/bb/b;)Lcn/nubia/camera/bb/z;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/bb/z;->e()V

    :cond_0
    return-void
.end method
