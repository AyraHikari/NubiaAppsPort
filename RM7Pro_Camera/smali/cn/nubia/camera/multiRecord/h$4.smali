.class Lcn/nubia/camera/multiRecord/h$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/multiRecord/h;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/nubia/camera/multiRecord/h;


# direct methods
.method constructor <init>(Lcn/nubia/camera/multiRecord/h;I)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/h$4;->b:Lcn/nubia/camera/multiRecord/h;

    iput p2, p0, Lcn/nubia/camera/multiRecord/h$4;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 683
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h$4;->b:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/h;->k(Lcn/nubia/camera/multiRecord/h;)Lcn/nubia/camera/bb/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h$4;->b:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/h;->k(Lcn/nubia/camera/multiRecord/h;)Lcn/nubia/camera/bb/z;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/multiRecord/h$4;->a:I

    invoke-interface {v0, v1}, Lcn/nubia/camera/bb/z;->c(I)V

    :cond_0
    return-void
.end method
