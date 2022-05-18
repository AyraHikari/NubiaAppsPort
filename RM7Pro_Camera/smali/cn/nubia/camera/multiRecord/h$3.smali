.class Lcn/nubia/camera/multiRecord/h$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/multiRecord/h;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/multiRecord/h;


# direct methods
.method constructor <init>(Lcn/nubia/camera/multiRecord/h;)V
    .locals 0

    .line 663
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/h$3;->a:Lcn/nubia/camera/multiRecord/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 666
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h$3;->a:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/h;->k(Lcn/nubia/camera/multiRecord/h;)Lcn/nubia/camera/bb/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h$3;->a:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/h;->k(Lcn/nubia/camera/multiRecord/h;)Lcn/nubia/camera/bb/z;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/bb/z;->e()V

    :cond_0
    return-void
.end method
