.class Lcn/nubia/camera/x/a$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/x/a$6;->a(Lcn/nubia/camera/k/e;Lcn/nubia/b/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/x/a$6;


# direct methods
.method constructor <init>(Lcn/nubia/camera/x/a$6;)V
    .locals 0

    .line 683
    iput-object p1, p0, Lcn/nubia/camera/x/a$6$1;->a:Lcn/nubia/camera/x/a$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 686
    iget-object v0, p0, Lcn/nubia/camera/x/a$6$1;->a:Lcn/nubia/camera/x/a$6;

    iget-object v0, v0, Lcn/nubia/camera/x/a$6;->a:Lcn/nubia/camera/x/a;

    invoke-static {v0}, Lcn/nubia/camera/x/a;->e(Lcn/nubia/camera/x/a;)Z

    .line 687
    iget-object v0, p0, Lcn/nubia/camera/x/a$6$1;->a:Lcn/nubia/camera/x/a$6;

    iget-object v0, v0, Lcn/nubia/camera/x/a$6;->a:Lcn/nubia/camera/x/a;

    invoke-static {v0}, Lcn/nubia/camera/x/a;->i(Lcn/nubia/camera/x/a;)V

    return-void
.end method
