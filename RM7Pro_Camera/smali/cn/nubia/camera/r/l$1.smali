.class Lcn/nubia/camera/r/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/r/l;->a(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcn/nubia/camera/r/l;


# direct methods
.method constructor <init>(Lcn/nubia/camera/r/l;Ljava/lang/Exception;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcn/nubia/camera/r/l$1;->b:Lcn/nubia/camera/r/l;

    iput-object p2, p0, Lcn/nubia/camera/r/l$1;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 553
    iget-object v0, p0, Lcn/nubia/camera/r/l$1;->b:Lcn/nubia/camera/r/l;

    invoke-static {v0}, Lcn/nubia/camera/r/l;->p(Lcn/nubia/camera/r/l;)Lcn/nubia/camera/r/l$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcn/nubia/camera/r/l$1;->b:Lcn/nubia/camera/r/l;

    invoke-static {v0}, Lcn/nubia/camera/r/l;->p(Lcn/nubia/camera/r/l;)Lcn/nubia/camera/r/l$c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/r/l$1;->a:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcn/nubia/camera/r/l$c;->a(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
