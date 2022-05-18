.class Lcn/nubia/camera/multiRecord/h$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/multiRecord/h$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/multiRecord/h$a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/multiRecord/h$a;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/h$a$1;->a:Lcn/nubia/camera/multiRecord/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 408
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h$a$1;->a:Lcn/nubia/camera/multiRecord/h$a;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/h$a;->b:Lcn/nubia/camera/multiRecord/h;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/h$a$1;->a:Lcn/nubia/camera/multiRecord/h$a;

    iget v1, v1, Lcn/nubia/camera/multiRecord/h$a;->a:I

    invoke-static {v0, v1}, Lcn/nubia/camera/multiRecord/h;->b(Lcn/nubia/camera/multiRecord/h;I)V

    .line 409
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/h$a$1;->a:Lcn/nubia/camera/multiRecord/h$a;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/h$a;->b:Lcn/nubia/camera/multiRecord/h;

    invoke-static {v0}, Lcn/nubia/camera/multiRecord/h;->j(Lcn/nubia/camera/multiRecord/h;)V

    return-void
.end method
