.class Lcn/nubia/camera/elefnovideo/g$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/elefnovideo/g;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/nubia/camera/elefnovideo/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/elefnovideo/g;I)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcn/nubia/camera/elefnovideo/g$3;->b:Lcn/nubia/camera/elefnovideo/g;

    iput p2, p0, Lcn/nubia/camera/elefnovideo/g$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 485
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g$3;->b:Lcn/nubia/camera/elefnovideo/g;

    invoke-static {v0}, Lcn/nubia/camera/elefnovideo/g;->j(Lcn/nubia/camera/elefnovideo/g;)Lcn/nubia/camera/bb/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g$3;->b:Lcn/nubia/camera/elefnovideo/g;

    invoke-static {v0}, Lcn/nubia/camera/elefnovideo/g;->j(Lcn/nubia/camera/elefnovideo/g;)Lcn/nubia/camera/bb/z;

    move-result-object v0

    iget v1, p0, Lcn/nubia/camera/elefnovideo/g$3;->a:I

    invoke-interface {v0, v1}, Lcn/nubia/camera/bb/z;->c(I)V

    :cond_0
    return-void
.end method
