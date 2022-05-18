.class Lcn/nubia/camera/elefnovideo/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/elefnovideo/g;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/elefnovideo/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/elefnovideo/g;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcn/nubia/camera/elefnovideo/g$2;->a:Lcn/nubia/camera/elefnovideo/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 468
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g$2;->a:Lcn/nubia/camera/elefnovideo/g;

    invoke-static {v0}, Lcn/nubia/camera/elefnovideo/g;->j(Lcn/nubia/camera/elefnovideo/g;)Lcn/nubia/camera/bb/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g$2;->a:Lcn/nubia/camera/elefnovideo/g;

    invoke-static {v0}, Lcn/nubia/camera/elefnovideo/g;->j(Lcn/nubia/camera/elefnovideo/g;)Lcn/nubia/camera/bb/z;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/bb/z;->e()V

    :cond_0
    return-void
.end method
