.class Lcn/nubia/camera/au/a$7$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/au/a$7;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/au/a$7;


# direct methods
.method constructor <init>(Lcn/nubia/camera/au/a$7;)V
    .locals 0

    .line 1344
    iput-object p1, p0, Lcn/nubia/camera/au/a$7$3;->a:Lcn/nubia/camera/au/a$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1347
    iget-object v0, p0, Lcn/nubia/camera/au/a$7$3;->a:Lcn/nubia/camera/au/a$7;

    iget-object v0, v0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    invoke-static {v0}, Lcn/nubia/camera/au/a;->U(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 1348
    iget-object v0, p0, Lcn/nubia/camera/au/a$7$3;->a:Lcn/nubia/camera/au/a$7;

    iget-object v0, v0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    invoke-static {v0}, Lcn/nubia/camera/au/a;->y(Lcn/nubia/camera/au/a;)V

    return-void
.end method
