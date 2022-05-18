.class Lcn/nubia/camera/elefnovideo/g$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/elefnovideo/g$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/elefnovideo/g$a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/elefnovideo/g$a;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcn/nubia/camera/elefnovideo/g$a$1;->a:Lcn/nubia/camera/elefnovideo/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 305
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g$a$1;->a:Lcn/nubia/camera/elefnovideo/g$a;

    iget-object v0, v0, Lcn/nubia/camera/elefnovideo/g$a;->b:Lcn/nubia/camera/elefnovideo/g;

    iget-object v1, p0, Lcn/nubia/camera/elefnovideo/g$a$1;->a:Lcn/nubia/camera/elefnovideo/g$a;

    iget v1, v1, Lcn/nubia/camera/elefnovideo/g$a;->a:I

    invoke-static {v0, v1}, Lcn/nubia/camera/elefnovideo/g;->a(Lcn/nubia/camera/elefnovideo/g;I)V

    .line 306
    iget-object v0, p0, Lcn/nubia/camera/elefnovideo/g$a$1;->a:Lcn/nubia/camera/elefnovideo/g$a;

    iget-object v0, v0, Lcn/nubia/camera/elefnovideo/g$a;->b:Lcn/nubia/camera/elefnovideo/g;

    invoke-static {v0}, Lcn/nubia/camera/elefnovideo/g;->h(Lcn/nubia/camera/elefnovideo/g;)V

    return-void
.end method
